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
//using com.trollworks.toolkit.ui.widget.outline.Outline;
//using com.trollworks.toolkit.ui.widget.outline.Row;
//using com.trollworks.toolkit.ui.widget.outline.TextCell;

//using java.awt.Color;
//using java.awt.Font;
//using java.awt.Rectangle;
//using java.awt.event.MouseEvent;

//using javax.swing.UIManager;
//namespace com.trollworks.gcs.widgets.outline
//{
//    /** Represents cells in a {@link Outline}. */
//    public class ListTextCell extends TextCell {
//	/**
//	 * Create a new text cell.
//	 * 
//	 * @param alignment The horizontal text alignment to use.
//	 * @param wrapped Pass in <code>true</code> to enable wrapping.
//	 */
//	public ListTextCell(int alignment, bool wrapped) {
//		super(alignment, wrapped);
//	}

//	@Override
//	public Font getFont(Row row, Column column) {
//		return UIManager.getFont(GCSFonts.KEY_FIELD);
//	}

//	@Override
//	public Color getColor(bool selected, bool active, Row row, Column column) {
//		if (row instanceof ListRow && !((ListRow) row).isSatisfied()) {
//			return Color.red;
//		}
//		return super.getColor(selected, active, row, column);
//	}

//	@Override
//	public String getToolTipText(MouseEvent event, Rectangle bounds, Row row, Column column) {
//		if (!(row instanceof ListRow) || ((ListRow) row).isSatisfied()) {
//			return super.getToolTipText(event, bounds, row, column);
//		}
//		return ((ListRow) row).getReasonForUnsatisfied();
//	}
//}
