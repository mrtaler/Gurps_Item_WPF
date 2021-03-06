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

package com.trollworks.gcs.spell;

using com.trollworks.gcs.library.LibraryDockable;
using com.trollworks.gcs.widgets.outline.ListOutline;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.utility.Localization;

/** A list of spells from a library. */
public class SpellsDockable extends LibraryDockable {
	@Localize("Untitled Spells")
	@Localize(locale = "de", value = "Unbenannte Zauber-Liste")
	@Localize(locale = "ru", value = "Безымянный список заклинаний")
	@Localize(locale = "es", value = "Sortilegios Sin Nombre")
	private static string UNTITLED;

	static {
		Localization.initialize();
	}

	/** Creates a new {@link SpellsDockable}. */
	public SpellsDockable(SpellList list) {
		super(list);
	}

	@Override
	public SpellList getDataFile() {
		return (SpellList) super.getDataFile();
	}

	@Override
	protected string getUntitledBaseName() {
		return UNTITLED;
	}

	@Override
	protected ListOutline createOutline() {
		SpellList list = getDataFile();
		list.addTarget(this, Spell.ID_CATEGORY);
		return new SpellOutline(list, list.getModel());
	}
}
