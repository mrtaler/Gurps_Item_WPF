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

//package com.trollworks.gcs.widgets.outline;

//using com.trollworks.gcs.app.GCSFonts;
//using com.trollworks.toolkit.ui.Colors;
//using com.trollworks.toolkit.ui.TextDrawing;
//using com.trollworks.toolkit.ui.widget.outline.Cell;
//using com.trollworks.toolkit.ui.widget.outline.Column;
//using com.trollworks.toolkit.ui.widget.outline.Outline;
//using com.trollworks.toolkit.ui.widget.outline.Row;
//using com.trollworks.toolkit.utility.text.NumericComparator;

//using java.awt.Color;
//using java.awt.Cursor;
//using java.awt.Font;
//using java.awt.Graphics;
//using java.awt.Rectangle;
//using java.awt.event.MouseEvent;

//using javax.swing.SwingConstants;
//using javax.swing.UIManager;
//namespace com.trollworks.gcs.widgets.outline
//{
//    /**
//     * A {@link Cell} for displaying both a piece of primary information and a piece of secondary
//     * information for a {@link ListRow}.
//     */
//    public class MultiCell implements Cell
//    {

//    private static const int H_MARGIN = 2;
//    private int mMaxPreferredWidth;
//    private bool mForEditor;

//    /** Creates a new {@link MultiCell} with a maximum preferred width of 250. */
//    public MultiCell()
//    {
//        this(false);
//    }

//    /**
//	 * Creates a new {@link MultiCell} with a maximum preferred width of 250.
//	 *
//	 * @param forEditor Whether this is for an editor dialog or for a character sheet.
//	 */
//    public MultiCell(bool forEditor)
//    {
//        this(250, forEditor);
//    }

//    /** @return The primary font. */
//    public Font getPrimaryFont()
//    {
//        return UIManager.getFont(mForEditor ? "TextField.font" : GCSFonts.KEY_FIELD); //$NON-NLS-1$
//    }

//    /** @return The secondary font, for notes. */
//    public Font getSecondaryFont()
//    {
//        if (mForEditor)
//        {
//            Font font = getPrimaryFont();
//            return font.deriveFont(font.getSize() * 7f / 8f);
//        }
//        return UIManager.getFont(GCSFonts.KEY_FIELD_NOTES);
//    }

//    /**
//	 * Creates a new {@link MultiCell}.
//	 *
//	 * @param maxPreferredWidth The maximum preferred width to use. Pass in -1 for no limit.
//	 * @param forEditor Whether this is for an editor dialog or for a character sheet.
//	 */
//    public MultiCell(int maxPreferredWidth, bool forEditor)
//    {
//        mMaxPreferredWidth = maxPreferredWidth;
//        mForEditor = forEditor;
//    }

//    /**
//	 * @param row The row to use.
//	 * @return The primary text to display.
//	 */
//    @SuppressWarnings("static-method")

//    protected string getPrimaryText(ListRow row)
//    {
//        return row.toString();
//    }

//    /**
//	 * @param row The row to use.
//	 * @return The text to sort.
//	 */
//    protected string getSortText(ListRow row)
//    {
//        String text = getPrimaryText(row);
//        String secondary = getSecondaryText(row);
//        if (secondary != null && secondary.length() > 0)
//        {
//            text += '\n';
//            text += secondary;
//        }
//        return text;
//    }

//    /**
//	 * @param row The row to use.
//	 * @return The secondary text to display.
//	 */
//    @SuppressWarnings("static-method")

//    protected string getSecondaryText(ListRow row)
//    {
//        String modifierNotes = row.getModifierNotes();
//        String notes = row.getNotes();
//        return modifierNotes.length() == 0 ? notes : modifierNotes + '\n' + notes;
//    }

//    @Override
//    public void drawCell(Outline outline, Graphics gc, Rectangle bounds, Row row, Column column, bool selected, bool active)
//    {
//        ListRow theRow = (ListRow)row;
//        Rectangle insetBounds = new Rectangle(bounds.x + H_MARGIN, bounds.y, bounds.width - H_MARGIN * 2, bounds.height);
//        String notes = getSecondaryText(theRow);
//        Font font = getPrimaryFont();
//        int pos;
//        gc.setColor(getColor(selected, active, row, column));
//        gc.setFont(font);
//        pos = TextDrawing.draw(gc, insetBounds, getPrimaryText(theRow), SwingConstants.LEFT, SwingConstants.TOP);
//        if (notes.trim().length() > 0)
//        {
//            insetBounds.height -= pos - insetBounds.y;
//            insetBounds.y = pos;
//            gc.setFont(getSecondaryFont());
//            TextDrawing.draw(gc, insetBounds, notes, SwingConstants.LEFT, SwingConstants.TOP);
//        }
//    }

//    /**
//	 * @param selected Whether or not the selected version of the color is needed.
//	 * @param active Whether or not the active version of the color is needed.
//	 * @param row The row.
//	 * @param column The column.
//	 * @return The foreground color.
//	 */
//    @SuppressWarnings("static-method")

//    public Color getColor(bool selected, bool active, Row row, Column column)
//    {
//        if (((ListRow)row).isSatisfied())
//        {
//            return Colors.getListForeground(selected, active);
//        }
//        return Color.RED;
//    }

//    @Override
//    public int getPreferredWidth(Row row, Column column)
//    {
//        ListRow theRow = (ListRow)row;
//        int width = TextDrawing.getWidth(getPrimaryFont(), getPrimaryText(theRow));
//        String notes = getSecondaryText(theRow);
//        if (notes.trim().length() > 0)
//        {
//            int notesWidth = TextDrawing.getWidth(getSecondaryFont(), notes);

//            if (notesWidth > width)
//            {
//                width = notesWidth;
//            }
//        }
//        width += H_MARGIN * 2;
//        return mMaxPreferredWidth != -1 && mMaxPreferredWidth < width ? mMaxPreferredWidth : width;
//    }

//    @Override
//    public int getPreferredHeight(Row row, Column column)
//    {
//        ListRow theRow = (ListRow)row;
//        Font font = getPrimaryFont();
//        int height = TextDrawing.getPreferredSize(font, wrap(theRow, column, getPrimaryText(theRow), font)).height;
//        String notes = getSecondaryText(theRow);
//        if (notes.trim().length() > 0)
//        {
//            font = getSecondaryFont();
//            height += TextDrawing.getPreferredSize(font, wrap(theRow, column, notes, font)).height;
//        }
//        return height;
//    }

//    private string wrap(ListRow row, Column column, string text, Font font)
//    {
//        int width = column.getWidth();
//        if (width == -1)
//        {
//            if (mMaxPreferredWidth == -1)
//            {
//                return text;
//            }
//            width = mMaxPreferredWidth;
//        }
//        return TextDrawing.wrapToPixelWidth(font, text, width - (row.getOwner().getIndentWidth(row, column) + H_MARGIN * 2));
//    }

//    @Override
//    public int compare(Column column, Row one, Row two)
//    {
//        return NumericComparator.caselessCompareStrings(getSortText((ListRow)one), getSortText((ListRow)two));
//    }

//    @Override
//    public Cursor getCursor(MouseEvent event, Rectangle bounds, Row row, Column column)
//    {
//        return Cursor.getDefaultCursor();
//    }

//    @Override
//    public string getToolTipText(MouseEvent event, Rectangle bounds, Row row, Column column)
//    {
//        ListRow theRow = (ListRow)row;

//        return theRow.isSatisfied() ? null : theRow.getReasonForUnsatisfied();
//    }

//    @Override
//    public bool participatesInDynamicRowLayout()
//    {
//        return true;
//    }

//    @Override
//    public void mouseClicked(MouseEvent event, Rectangle bounds, Row row, Column column)
//    {
//        // Does nothing
//    }
//}
