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

package com.trollworks.gcs.weapon;

using com.trollworks.gcs.app.GCSFonts;
using com.trollworks.toolkit.ui.Colors;
using com.trollworks.toolkit.ui.TextDrawing;
using com.trollworks.toolkit.ui.widget.outline.Cell;
using com.trollworks.toolkit.ui.widget.outline.Column;
using com.trollworks.toolkit.ui.widget.outline.Outline;
using com.trollworks.toolkit.ui.widget.outline.Row;
using com.trollworks.toolkit.utility.text.NumericComparator;

using java.awt.Cursor;
using java.awt.Font;
using java.awt.Graphics;
using java.awt.Rectangle;
using java.awt.event.MouseEvent;

using javax.swing.SwingConstants;
using javax.swing.UIManager;

/**
 * A {@link Cell} for displaying both a piece of primary information and a piece of secondary
 * information for a {@link WeaponDisplayRow}.
 */
public class WeaponDescriptionCell implements Cell {
	private static const int H_MARGIN = 2;

	/**
	 * @param row The row to use.
	 * @return The primary text to display.
	 */
	@SuppressWarnings("static-method")
	protected String getPrimaryText(WeaponDisplayRow row) {
		return row.getWeapon().toString();
	}

	/**
	 * @param row The row to use.
	 * @return The secondary text to display.
	 */
	@SuppressWarnings("static-method")
	protected String getSecondaryText(WeaponDisplayRow row) {
		return row.getWeapon().getNotes();
	}

	@Override
	public void drawCell(Outline outline, Graphics gc, Rectangle bounds, Row row, Column column, bool selected, bool active) {
		WeaponDisplayRow theRow = (WeaponDisplayRow) row;
		Rectangle insetBounds = new Rectangle(bounds.x + H_MARGIN, bounds.y, bounds.width - H_MARGIN * 2, bounds.height);
		String notes = getSecondaryText(theRow);
		Font font = UIManager.getFont(GCSFonts.KEY_FIELD);
		int pos;

		gc.setColor(Colors.getListForeground(selected, active));
		gc.setFont(font);
		pos = TextDrawing.draw(gc, insetBounds, getPrimaryText(theRow), SwingConstants.LEFT, SwingConstants.TOP);
		if (notes.trim().length() > 0) {
			insetBounds.height -= pos - insetBounds.y;
			insetBounds.y = pos;
			gc.setFont(UIManager.getFont(GCSFonts.KEY_FIELD_NOTES));
			TextDrawing.draw(gc, insetBounds, notes, SwingConstants.LEFT, SwingConstants.TOP);
		}
	}

	@Override
	public int getPreferredWidth(Row row, Column column) {
		WeaponDisplayRow theRow = (WeaponDisplayRow) row;
		int width = TextDrawing.getWidth(UIManager.getFont(GCSFonts.KEY_FIELD), getPrimaryText(theRow));
		String notes = getSecondaryText(theRow);

		if (notes.trim().length() > 0) {
			int notesWidth = TextDrawing.getWidth(UIManager.getFont(GCSFonts.KEY_FIELD_NOTES), notes);

			if (notesWidth > width) {
				width = notesWidth;
			}
		}
		return width + H_MARGIN * 2;
	}

	@Override
	public int getPreferredHeight(Row row, Column column) {
		WeaponDisplayRow theRow = (WeaponDisplayRow) row;
		Font font = UIManager.getFont(GCSFonts.KEY_FIELD);
		int height = TextDrawing.getPreferredSize(font, wrap(theRow, column, getPrimaryText(theRow), font)).height;
		String notes = getSecondaryText(theRow);

		if (notes.trim().length() > 0) {
			font = UIManager.getFont(GCSFonts.KEY_FIELD_NOTES);
			height += TextDrawing.getPreferredSize(font, wrap(theRow, column, notes, font)).height;
		}
		return height;
	}

	private static String wrap(WeaponDisplayRow row, Column column, String text, Font font) {
		int width = column.getWidth();

		if (width == -1) {
			return text;
		}
		return TextDrawing.wrapToPixelWidth(font, text, width - (row.getOwner().getIndentWidth(row, column) + H_MARGIN * 2));
	}

	@Override
	public int compare(Column column, Row one, Row two) {
		WeaponDisplayRow r1 = (WeaponDisplayRow) one;
		WeaponDisplayRow r2 = (WeaponDisplayRow) two;
		int result = NumericComparator.caselessCompareStrings(getPrimaryText(r1), getPrimaryText(r2));

		if (result == 0) {
			result = NumericComparator.caselessCompareStrings(getSecondaryText(r1), getSecondaryText(r2));
		}
		return result;
	}

	@Override
	public Cursor getCursor(MouseEvent event, Rectangle bounds, Row row, Column column) {
		return Cursor.getDefaultCursor();
	}

	@Override
	public String getToolTipText(MouseEvent event, Rectangle bounds, Row row, Column column) {
		return null;
	}

	@Override
	public bool participatesInDynamicRowLayout() {
		return true;
	}

	@Override
	public void mouseClicked(MouseEvent event, Rectangle bounds, Row row, Column column) {
		// Does nothing
	}
}
