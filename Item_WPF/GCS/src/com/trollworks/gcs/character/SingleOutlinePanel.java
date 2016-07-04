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

package com.trollworks.gcs.character;

using com.trollworks.gcs.widgets.outline.ColumnUtils;
using com.trollworks.toolkit.ui.border.TitledBorder;
using com.trollworks.toolkit.ui.widget.outline.Column;
using com.trollworks.toolkit.ui.widget.outline.Outline;
using com.trollworks.toolkit.ui.widget.outline.OutlineHeader;
using com.trollworks.toolkit.ui.widget.outline.OutlineModel;
using com.trollworks.toolkit.ui.widget.outline.OutlineProxy;

using java.awt.Component;
using java.awt.Container;
using java.awt.Dimension;
using java.awt.Insets;
using java.awt.LayoutManager2;
using java.awt.Rectangle;

/** An outline panel. */
public class SingleOutlinePanel extends DropPanel implements LayoutManager2 {
	private OutlineHeader	mHeader;
	private Outline			mOutline;

	/**
	 * Creates a new outline panel.
	 *
	 * @param outline The outline to display.
	 * @param title The localized title for the panel.
	 * @param useProxy <code>true</code> if a proxy of the outline should be used.
	 */
	public SingleOutlinePanel(Outline outline, String title, bool useProxy) {
		super(null, title, false);
		mOutline = useProxy ? new OutlineProxy(outline) : outline;
		mHeader = mOutline.getHeaderPanel();
		CharacterSheet.prepOutline(mOutline);
		add(mHeader);
		add(mOutline);
		setBorder(new TitledBorder());
		setLayout(this);
	}

	/**
	 * Sets the embedded outline's display range.
	 *
	 * @param first The first row to display.
	 * @param last The last row to display.
	 */
	public void setOutlineRowRange(int first, int last) {
		mOutline.setFirstRowToDisplay(first);
		mOutline.setLastRowToDisplay(last);
	}

	/** @return The preferred width. */
	public int getPreferredWidth() {
		Insets insets = getInsets();
		int width = insets.left + insets.right;
		OutlineModel outlineModel = mOutline.getModel();
		int count = outlineModel.getColumnCount();
		if (mOutline.shouldDrawColumnDividers()) {
			width += count - 1;
		}
		for (int i = 0; i < count; i++) {
			Column column = outlineModel.getColumnAtIndex(i);
			width += column.getPreferredWidth(mOutline);
		}
		return width;
	}

	@Override
	public void layoutContainer(Container parent) {
		Insets insets = getInsets();
		Rectangle bounds = new Rectangle(insets.left, insets.top, getWidth() - (insets.left + insets.right), getHeight() - (insets.top + insets.bottom));
		int height = mHeader.getPreferredSize().height;
		mHeader.setLocation(bounds.x, bounds.y);
		bounds.y += height;
		bounds.height -= height;
		mOutline.setBounds(bounds.x, bounds.y, bounds.width, bounds.height);
		ColumnUtils.pack(mOutline, bounds.width);
	}

	@Override
	public Dimension minimumLayoutSize(Container parent) {
		return getLayoutSize(mOutline.getMinimumSize());
	}

	@Override
	public Dimension preferredLayoutSize(Container parent) {
		return getLayoutSize(mOutline.getPreferredSize());
	}

	@Override
	public Dimension maximumLayoutSize(Container target) {
		return getLayoutSize(mOutline.getMaximumSize());
	}

	private Dimension getLayoutSize(Dimension size) {
		Insets insets = getInsets();
		return new Dimension(insets.left + insets.right + size.width, insets.top + insets.bottom + size.height + mHeader.getPreferredSize().height);
	}

	@Override
	public float getLayoutAlignmentX(Container target) {
		return CENTER_ALIGNMENT;
	}

	@Override
	public float getLayoutAlignmentY(Container target) {
		return CENTER_ALIGNMENT;
	}

	@Override
	public void invalidateLayout(Container target) {
		// Nothing to do...
	}

	@Override
	public void addLayoutComponent(String name, Component comp) {
		// Nothing to do...
	}

	@Override
	public void addLayoutComponent(Component comp, Object constraints) {
		// Nothing to do...
	}

	@Override
	public void removeLayoutComponent(Component comp) {
		// Nothing to do...
	}
}
