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

package com.trollworks.gcs.prereq;

using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.ui.GraphicsUtilities;
using com.trollworks.toolkit.ui.UIUtilities;
using com.trollworks.toolkit.utility.Localization;

using java.awt.Graphics;

using javax.swing.JLabel;
using javax.swing.SwingConstants;

/** A label that displays the "and" or the "or" message, or nothing if it is the first one. */
public class AndOrLabel extends JLabel {
	@Localize("and")
	@Localize(locale = "de", value = "und")
	@Localize(locale = "ru", value = "и")
	@Localize(locale = "es", value = "y")
	private static String	AND;
	@Localize("or")
	@Localize(locale = "de", value = "oder")
	@Localize(locale = "ru", value = "или")
	@Localize(locale = "es", value = "o")
	private static String	OR;

	static {
		Localization.initialize();
	}

	private Prereq mOwner;

	/**
	 * Creates a new {@link AndOrLabel}.
	 *
	 * @param owner The owning {@link Prereq}.
	 */
	public AndOrLabel(Prereq owner) {
		super(AND, SwingConstants.RIGHT);
		mOwner = owner;
		UIUtilities.setOnlySize(this, getPreferredSize());
	}

	@Override
	protected void paintComponent(Graphics gc) {
		PrereqList parent = mOwner.getParent();
		if (parent != null && parent.getChildren().get(0) != mOwner) {
			setText(parent.requiresAll() ? AND : OR);
		} else {
			setText(""); //$NON-NLS-1$
		}
		super.paintComponent(GraphicsUtilities.prepare(gc));
	}
}
