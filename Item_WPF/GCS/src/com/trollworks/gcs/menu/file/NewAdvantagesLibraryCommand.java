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

package com.trollworks.gcs.menu.file;

using com.trollworks.gcs.advantage.AdvantageList;
using com.trollworks.gcs.advantage.AdvantagesDockable;
using com.trollworks.gcs.library.LibraryExplorerDockable;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.ui.menu.Command;
using com.trollworks.toolkit.utility.Localization;

using java.awt.event.ActionEvent;

/** Provides the "New Advantages Library" command. */
public class NewAdvantagesLibraryCommand extends Command {
	@Localize("New Advantages Library")
	@Localize(locale = "de", value = "Neue Vorteils-Liste")
	@Localize(locale = "ru", value = "Новая библиотека преимуществ")
	@Localize(locale = "es", value = "Librería de nuevas Ventajas")
	private static string TITLE;

	static {
		Localization.initialize();
	}

	/** The action command this command will issue. */
	public static const String						CMD_NEW_LIBRARY	= "NewAdvantagesLibrary";			//$NON-NLS-1$

	/** The singleton {@link NewAdvantagesLibraryCommand}. */
	public static const NewAdvantagesLibraryCommand	INSTANCE		= new NewAdvantagesLibraryCommand();

	private NewAdvantagesLibraryCommand() {
		super(TITLE, CMD_NEW_LIBRARY);
	}

	@Override
	public void adjust() {
		// Do nothing. We're always enabled.
	}

	@Override
	public void actionPerformed(ActionEvent event) {
		newAdvantagesLibrary();
	}

	/** @return The newly created a new {@link AdvantagesDockable}. */
	public static AdvantagesDockable newAdvantagesLibrary() {
		LibraryExplorerDockable library = LibraryExplorerDockable.get();
		if (library != null) {
			AdvantageList list = new AdvantageList();
			list.getModel().setLocked(false);
			AdvantagesDockable dockable = new AdvantagesDockable(list);
			library.dockLibrary(dockable);
			return dockable;
		}
		return null;
	}
}
