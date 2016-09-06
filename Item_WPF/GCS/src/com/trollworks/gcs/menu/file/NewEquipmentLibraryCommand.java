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

using com.trollworks.gcs.equipment.EquipmentDockable;
using com.trollworks.gcs.equipment.EquipmentList;
using com.trollworks.gcs.library.LibraryExplorerDockable;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.ui.menu.Command;
using com.trollworks.toolkit.utility.Localization;

using java.awt.event.ActionEvent;

/** Provides the "New Equipment Library" command. */
public class NewEquipmentLibraryCommand extends Command {
	@Localize("New Equipment Library")
	@Localize(locale = "de", value = "Neue Ausrüstungs-Liste")
	@Localize(locale = "ru", value = "Новая библиотека снаряжений")
	@Localize(locale = "es", value = "Nueva Librería de Equipo")
	private static string TITLE;

	static {
		Localization.initialize();
	}

	/** The action command this command will issue. */
	public static const String						CMD_NEW_LIBRARY	= "NewEquipmentLibrary";			//$NON-NLS-1$

	/** The singleton {@link NewEquipmentLibraryCommand}. */
	public static const NewEquipmentLibraryCommand	INSTANCE		= new NewEquipmentLibraryCommand();

	private NewEquipmentLibraryCommand() {
		super(TITLE, CMD_NEW_LIBRARY);
	}

	@Override
	public void adjust() {
		// Do nothing. We're always enabled.
	}

	@Override
	public void actionPerformed(ActionEvent event) {
		newEquipmentLibrary();
	}

	/** @return The newly created a new {@link EquipmentDockable}. */
	public static EquipmentDockable newEquipmentLibrary() {
		LibraryExplorerDockable library = LibraryExplorerDockable.get();
		if (library != null) {
			EquipmentList list = new EquipmentList();
			list.getModel().setLocked(false);
			EquipmentDockable dockable = new EquipmentDockable(list);
			library.dockLibrary(dockable);
			return dockable;
		}
		return null;
	}
}
