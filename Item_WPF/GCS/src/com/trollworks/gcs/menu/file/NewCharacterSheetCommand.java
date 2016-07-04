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

using com.trollworks.gcs.character.GURPSCharacter;
using com.trollworks.gcs.character.SheetDockable;
using com.trollworks.gcs.library.LibraryExplorerDockable;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.ui.menu.Command;
using com.trollworks.toolkit.utility.Localization;

using java.awt.event.ActionEvent;
using java.awt.event.KeyEvent;

/** Provides the "New Character Sheet" command. */
public class NewCharacterSheetCommand extends Command {
	@Localize("New Character Sheet")
	@Localize(locale = "de", value = "Neues Charakterblatt")
	@Localize(locale = "ru", value = "Новый лист персонажа")
	@Localize(locale = "es", value = "Nueva hoja de personaje")
	private static String NEW_CHARACTER_SHEET;

	static {
		Localization.initialize();
	}

	/** The action command this command will issue. */
	public static const String						CMD_NEW_CHARACTER_SHEET	= "NewCharacterSheet";				//$NON-NLS-1$

	/** The singleton {@link NewCharacterSheetCommand}. */
	public static const NewCharacterSheetCommand	INSTANCE				= new NewCharacterSheetCommand();

	private NewCharacterSheetCommand() {
		super(NEW_CHARACTER_SHEET, CMD_NEW_CHARACTER_SHEET, KeyEvent.VK_N);
	}

	@Override
	public void adjust() {
		// Do nothing. We're always enabled.
	}

	@Override
	public void actionPerformed(ActionEvent event) {
		newSheet();
	}

	/** @return The newly created a new {@link SheetDockable}. */
	public static SheetDockable newSheet() {
		LibraryExplorerDockable library = LibraryExplorerDockable.get();
		if (library != null) {
			SheetDockable sheet = new SheetDockable(new GURPSCharacter());
			library.dockSheet(sheet);
			return sheet;
		}
		return null;
	}
}
