///*
// * Copyright (c) 1998-2016 by Richard A. Wilkes. All rights reserved.
// *
// * This Source Code Form is subject to the terms of the Mozilla Public License,
// * version 2.0. If a copy of the MPL was not distributed with this file, You
// * can obtain one at http://mozilla.org/MPL/2.0/.
// *
// * This Source Code Form is "Incompatible With Secondary Licenses", as defined
// * by the Mozilla Public License, version 2.0.
// */



//using com.trollworks.gcs.app.GCSFonts;
//using com.trollworks.toolkit.ui.widget.outline.Column;
//using com.trollworks.toolkit.ui.widget.outline.HeaderCell;
//using com.trollworks.toolkit.ui.widget.outline.Outline;
//using com.trollworks.toolkit.ui.widget.outline.Row;

//using java.awt.Color;
//using java.awt.Font;
//using java.awt.Graphics;
//using java.awt.Rectangle;

//using javax.swing.UIManager;

//namespace com.trollworks.gcs.widgets.outline
//{
//    /** Used to draw headers in the lists. */
//    public class ListHeaderCell extends HeaderCell {
//	private bool mForSheet;

//	/**
//	 * Create a new header cell.
//	 * 
//	 * @param forSheet Whether the header will be displayed in the sheet or not.
//	 */
//	public ListHeaderCell(bool forSheet) {
//		super();
//		mForSheet = forSheet;
//	}

//	@Override
//	public Font getFont(Row row, Column column) {
//		return UIManager.getFont(GCSFonts.KEY_LABEL);
//	}

//	@Override
//	public void drawCell(Outline outline, Graphics gc, Rectangle bounds, Row row, Column column, bool selected, bool active) {
//		if (mForSheet) {
//			drawCellSuper(outline, gc, bounds, row, column, selected, active);
//		} else {
//			super.drawCell(outline, gc, bounds, row, column, selected, active);
//		}
//	}

//	@Override
//	public int getPreferredWidth(Row row, Column column) {
//		int width = super.getPreferredWidth(row, column);

//		if (mForSheet) {
//			width -= SORTER_WIDTH + 4;
//		}
//		return width;
//	}

//	@Override
//	public Color getColor(bool selected, bool active, Row row, Column column) {
//		if (mForSheet) {
//			return Color.white;
//		}
//		return super.getColor(selected, active, row, column);
//	}
//}
//}