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

using com.trollworks.gcs.widgets.outline.ListRow;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.ui.widget.BandedPanel;
using com.trollworks.toolkit.utility.Localization;

/** Displays and edits {@link Prereq} objects. */
public class PrereqsPanel extends BandedPanel {
	@Localize("Prerequisites")
	@Localize(locale = "de", value = "Bedingungen")
	@Localize(locale = "ru", value = "Требования")
	@Localize(locale = "es", value = "Prerrequisitos")
	private static String PREREQUISITES;

	static {
		Localization.initialize();
	}

	/**
	 * Creates a new prerequisite editor.
	 *
	 * @param row The row these prerequisites will belong to.
	 * @param prereqs The initial prerequisites to display.
	 */
	public PrereqsPanel(ListRow row, PrereqList prereqs) {
		super(PREREQUISITES);
		addPrereqs(row, new PrereqList(null, prereqs), 0);
	}

	/** @return The current prerequisite list. */
	public PrereqList getPrereqList() {
		return (PrereqList) ((ListPrereqEditor) getComponent(0)).getPrereq();
	}

	private void addPrereqs(ListRow row, PrereqList prereqs, int depth) {
		add(PrereqEditor.create(row, prereqs, depth++));
		for (Prereq prereq : prereqs.getChildren()) {
			if (prereq instanceof PrereqList) {
				addPrereqs(row, (PrereqList) prereq, depth);
			} else {
				add(PrereqEditor.create(row, prereq, depth));
			}
		}
	}
}
