/*
 * Copyright (c) 1998-2016 by Richard A. Wilkes. All rights reserved.
 *
 * This Source Code Form is subject to the terms of the Mozilla Public License,
 * version 2.0. If a copy of the MPL was not distributed with this file, You
 * can obtain one at http://mozilla.org/MPL/2.0/.
 *
 * This Source Code Form is "Incompatible With Secondary Licenses", as defined
 * by the Mozilla Public License, version 2.0.
 */

package com.trollworks.gcs.pdfview;

using com.trollworks.toolkit.io.DummyWriter;
using com.trollworks.toolkit.io.Log;

using java.awt.BasicStroke;
using java.awt.Color;
using java.awt.Graphics2D;
using java.awt.Shape;
using java.awt.Toolkit;
using java.awt.geom.AffineTransform;
using java.awt.geom.Rectangle2D;
using java.awt.image.BufferedImage;
using java.io.IOException;
using java.util.List;

using org.apache.fontbox.util.BoundingBox;
using org.apache.pdfbox.pdmodel.PDDocument;
using org.apache.pdfbox.pdmodel.PDPage;
using org.apache.pdfbox.pdmodel.common.PDRectangle;
using org.apache.pdfbox.pdmodel.font.PDFont;
using org.apache.pdfbox.pdmodel.font.PDType3Font;
using org.apache.pdfbox.pdmodel.graphics.blend.BlendComposite;
using org.apache.pdfbox.pdmodel.graphics.blend.BlendMode;
using org.apache.pdfbox.rendering.PDFRenderer;
using org.apache.pdfbox.text.PDFTextStripper;
using org.apache.pdfbox.text.TextPosition;

public class PdfRenderer extends PDFTextStripper {
	private Graphics2D	mGC;
	private String		mTextToHighlight;

	public static BufferedImage create(PDDocument pdf, int pageIndex, float scale, String textToHighlight) {
		try {
			PDFRenderer renderer = new PDFRenderer(pdf);
			scale = scale * Toolkit.getDefaultToolkit().getScreenResolution() / 72f;
			BufferedImage img = renderer.renderImage(pageIndex, scale);
			if (textToHighlight != null) {
				Graphics2D gc = img.createGraphics();
				gc.setStroke(new BasicStroke(0.1f));
				gc.scale(scale, scale);
				PdfRenderer processor = new PdfRenderer(gc, textToHighlight);
				processor.setSortByPosition(true);
				processor.setStartPage(pageIndex + 1);
				processor.setEndPage(pageIndex + 1);
				try (DummyWriter writer = new DummyWriter()) {
					processor.writeText(pdf, writer);
				}
				gc.dispose();
			}
			return img;
		} catch (Exception exception) {
			Log.error(exception);
			return null;
		}
	}

	private PdfRenderer(Graphics2D gc, String textToHighlight) throws IOException {
		super();
		mGC = gc;
		mGC.setColor(Color.YELLOW);
		mGC.setComposite(BlendComposite.getInstance(BlendMode.MULTIPLY, 0.3f));
		mTextToHighlight = textToHighlight.toLowerCase();
	}

	@Override
	protected void writeString(String text, List<TextPosition> textPositions) throws IOException {
		text = text.toLowerCase();
		int index = text.indexOf(mTextToHighlight);
		if (index != -1) {
			PDPage currentPage = getCurrentPage();
			PDRectangle pageBoundingBox = currentPage.getBBox();
			AffineTransform flip = new AffineTransform();
			flip.translate(0, pageBoundingBox.getHeight());
			flip.scale(1, -1);
			PDRectangle mediaBox = currentPage.getMediaBox();
			float mediaHeight = mediaBox.getHeight();
			float mediaWidth = mediaBox.getWidth();
			int size = textPositions.size();
			while (index != -1) {
				int last = index + mTextToHighlight.length() - 1;
				for (int i = index; i <= last; i++) {
					TextPosition pos = textPositions.get(i);
					PDFont font = pos.getFont();
					BoundingBox bbox = font.getBoundingBox();
					Rectangle2D.Float rect = new Rectangle2D.Float(0, bbox.getLowerLeftY(), font.getWidth(pos.getCharacterCodes()[0]), bbox.getHeight());
					AffineTransform at = pos.getTextMatrix().createAffineTransform();
					if (font instanceof PDType3Font) {
						at.concatenate(font.getFontMatrix().createAffineTransform());
					} else {
						at.scale(1 / 1000f, 1 / 1000f);
					}
					Shape shape = flip.createTransformedShape(at.createTransformedShape(rect));
					AffineTransform transform = mGC.getTransform();
					int rotation = currentPage.getRotation();
					if (rotation != 0) {
						switch (rotation) {
							case 90:
								mGC.translate(mediaHeight, 0);
								break;
							case 270:
								mGC.translate(0, mediaWidth);
								break;
							case 180:
								mGC.translate(mediaWidth, mediaHeight);
								break;
							default:
								break;
						}
						mGC.rotate(Math.toRadians(rotation));
					}
					mGC.fill(shape);
					if (rotation != 0) {
						mGC.setTransform(transform);
					}
				}
				index = last < size - 1 ? text.indexOf(mTextToHighlight, last + 1) : -1;
			}
		}
	}
}
