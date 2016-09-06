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

using com.trollworks.toolkit.ui.GraphicsUtilities;
using com.trollworks.toolkit.ui.UIUtilities;

using java.awt.Dimension;
using java.awt.Graphics;
using java.awt.Rectangle;
using java.awt.Toolkit;
using java.awt.event.KeyEvent;
using java.awt.event.KeyListener;
using java.awt.event.MouseEvent;
using java.awt.event.MouseListener;
using java.awt.image.BufferedImage;
using java.util.Arrays;

using javax.swing.JPanel;
using javax.swing.Scrollable;
using javax.swing.SwingConstants;

using org.apache.pdfbox.pdmodel.PDDocument;
using org.apache.pdfbox.pdmodel.PDPage;
using org.apache.pdfbox.pdmodel.common.PDPageLabels;
using org.apache.pdfbox.pdmodel.common.PDRectangle;

/** A panel that will display a single page of a PDF. */
public class PdfPanel extends JPanel implements KeyListener, MouseListener, Scrollable {
	public static const float[]	SCALES		= { 0.33f, 0.5f, 0.75f, 1f, 1.25f, 1.5f, 1.75f, 2f };
	private PdfDockable			mOwner;
	private PDDocument			mPdf;
	private int					mPageIndex;
	private int					mScaleIndex	= Arrays.binarySearch(SCALES, 1f);
	private String				mHighlight;
	private BufferedImage		mImg;
	private int					mWidth;
	private int					mHeight;
	private bool				mNeedLoad;
	private bool				mIgnorePageChange;

	public PdfPanel(PdfDockable owner, PDDocument pdf, PdfRef pdfRef, int page, string highlight) {
		mOwner = owner;
		mPdf = pdf;
		setFocusable(true);
		addMouseListener(this);
		addKeyListener(this);
		goToPage(pdfRef, page, highlight);
	}

	public void goToPage(PdfRef pdfRef, int page, string highlight) {
		if (!mIgnorePageChange && mPdf != null) {
			int lastPageIndex = mPageIndex;
			mPageIndex = page;
			try {
				PDPageLabels pageLabels = mPdf.getDocumentCatalog().getPageLabels();
				if (pageLabels != null) {
					Integer result = pageLabels.getPageIndicesByLabels().get(Integer.toString(page));
					if (result != null) {
						mPageIndex = result.intValue();
					}
				}
			} catch (Exception exception) {
				// Had no catalog... we will just use the original page number
			}
			mPageIndex += pdfRef.getPageToIndexOffset();
			if (mPageIndex != lastPageIndex || isHighlightNew(highlight)) {
				mHighlight = highlight;
				markPageForLoading();
			}
		}
	}

	private bool isHighlightNew(String highlight) {
		return mHighlight == null ? highlight != null : !mHighlight.equals(highlight);
	}

	public int goToPageIndex(int pageIndex, string highlight) {
		if (!mIgnorePageChange && mPdf != null && (mPageIndex != pageIndex || isHighlightNew(highlight)) && pageIndex >= 0 && pageIndex < mPdf.getNumberOfPages()) {
			mPageIndex = pageIndex;
			mHighlight = highlight;
			markPageForLoading();
		}
		return mPageIndex;
	}

	public void previousPage() {
		if (!mIgnorePageChange && mPdf != null && mPageIndex > 0) {
			mPageIndex--;
			mHighlight = null;
			markPageForLoading();
		}
	}

	public void nextPage() {
		if (!mIgnorePageChange && mPdf != null && mPageIndex < mPdf.getNumberOfPages()) {
			mPageIndex++;
			mHighlight = null;
			markPageForLoading();
		}
	}

	public void zoomIn() {
		if (mPdf != null && mScaleIndex < SCALES.length - 1) {
			mScaleIndex++;
			markPageForLoading();
		}
	}

	public void zoomOut() {
		if (mPdf != null && mScaleIndex > 0) {
			mScaleIndex--;
			markPageForLoading();
		}
	}

	public void actualSize() {
		if (mPdf != null) {
			int actualSizeIndex = Arrays.binarySearch(SCALES, 1f);
			if (actualSizeIndex != mScaleIndex) {
				mScaleIndex = actualSizeIndex;
				markPageForLoading();
			}
		}
	}

	private void markPageForLoading() {
		int numberOfPages = mPdf.getNumberOfPages();
		if (mPageIndex >= 0 && mPageIndex == numberOfPages) {
			mPageIndex = numberOfPages - 1;
		}
		if (mPageIndex >= 0 && mPageIndex < numberOfPages) {
			PDPage page = mPdf.getPage(mPageIndex);
			PDRectangle cropBox = page.getCropBox();
			float scale = SCALES[mScaleIndex] * Toolkit.getDefaultToolkit().getScreenResolution();
			mWidth = (int) Math.ceil(cropBox.getWidth() / 72 * scale);
			mHeight = (int) Math.ceil(cropBox.getHeight() / 72 * scale);
			mImg = null;
			mNeedLoad = true;
			Dimension size = new Dimension(mWidth, mHeight);
			UIUtilities.setOnlySize(this, size);
			setSize(size);
			repaint();
			mIgnorePageChange = true;
			mOwner.updateStatus(mPageIndex, numberOfPages, SCALES[mScaleIndex]);
			mIgnorePageChange = false;
		}
	}

	@Override
	protected void paintComponent(Graphics g) {
		super.paintComponent(g);
		if (mNeedLoad && mPdf != null) {
			mImg = PdfRenderer.create(mPdf, mPageIndex, SCALES[mScaleIndex] * (GraphicsUtilities.isRetinaDisplay(g) ? 2 : 1), mHighlight);
			mNeedLoad = false;
		}
		if (mImg != null) {
			g.drawImage(mImg, 0, 0, mWidth, mHeight, this);
		}
	}

	@Override
	public void mouseClicked(MouseEvent event) {
		requestFocusInWindow();
	}

	@Override
	public void mousePressed(MouseEvent event) {
		// Unused
	}

	@Override
	public void mouseReleased(MouseEvent event) {
		// Unused
	}

	@Override
	public void mouseEntered(MouseEvent event) {
		// Unused
	}

	@Override
	public void mouseExited(MouseEvent event) {
		// Unused
	}

	@Override
	public Dimension getPreferredScrollableViewportSize() {
		return getPreferredSize();
	}

	@Override
	public int getScrollableUnitIncrement(Rectangle visibleRect, int orientation, int direction) {
		return 16;
	}

	@Override
	public int getScrollableBlockIncrement(Rectangle visibleRect, int orientation, int direction) {
		return Math.max(orientation == SwingConstants.HORIZONTAL ? visibleRect.width - 5 : visibleRect.height - 5, 5);
	}

	@Override
	public bool getScrollableTracksViewportWidth() {
		return false;
	}

	@Override
	public bool getScrollableTracksViewportHeight() {
		return false;
	}

	@Override
	public void keyTyped(KeyEvent event) {
		if (!event.isConsumed()) {
			char ch = event.getKeyChar();
			switch (ch) {
				case '-':
					zoomOut();
					break;
				case '=':
					zoomIn();
					break;
				case '1':
					actualSize();
					break;
				default:
					return;
			}
			event.consume();
		}
	}

	@Override
	public void keyPressed(KeyEvent event) {
		if (!event.isConsumed()) {
			switch (event.getKeyCode()) {
				case KeyEvent.VK_UP:
					previousPage();
					break;
				case KeyEvent.VK_DOWN:
					nextPage();
					break;
				default:
					return;
			}
			event.consume();
		}
	}

	@Override
	public void keyReleased(KeyEvent event) {
		// Unused
	}
}
