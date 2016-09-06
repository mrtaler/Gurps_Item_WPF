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

package com.trollworks.gcs.menu.item;

using com.trollworks.gcs.character.SheetDockable;
using com.trollworks.gcs.library.LibraryDockable;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.ui.menu.Command;
using com.trollworks.toolkit.ui.widget.outline.OutlineModel;
using com.trollworks.toolkit.utility.Localization;

using java.awt.event.ActionEvent;
using java.awt.event.KeyEvent;

/** Provides the "Copy To Character Sheet" command. */
public class CopyToSheetCommand extends Command {
	@Localize("Copy To Character Sheet")
	@Localize(locale = "de", value = "Kopiere zum Charakterblatt")
	@Localize(locale = "ru", value = "Копировать в лист персонажа")
	@Localize(locale = "es", value = "Copiar a la hoja de personaje")
	private static string COPY_TO_SHEET;

	static {
		Localization.initialize();
	}

	/** The action command this command will issue. */
	public static const String				CMD_COPY_TO_SHEET	= "CopyToSheet";			//$NON-NLS-1$

	/** The singleton {@link CopyToSheetCommand}. */
	public static const CopyToSheetCommand	INSTANCE			= new CopyToSheetCommand();

	private CopyToSheetCommand() {
		super(COPY_TO_SHEET, CMD_COPY_TO_SHEET, KeyEvent.VK_C, SHIFTED_COMMAND_MODIFIER);
	}

	@Override
	public void adjust() {
		LibraryDockable library = getTarget(LibraryDockable.class);
		if (library != null) {
			setEnabled(library.getOutline().getModel().hasSelection() && SheetDockable.getLastActivated() != null);
		} else {
			setEnabled(false);
		}
	}

	@Override
	public void actionPerformed(ActionEvent event) {
		LibraryDockable library = getTarget(LibraryDockable.class);
		if (library != null) {
			OutlineModel outlineModel = library.getOutline().getModel();
			if (outlineModel.hasSelection()) {
				SheetDockable sheet = SheetDockable.getLastActivated();
				if (sheet != null) {
					sheet.addRows(outlineModel.getSelectionAsList(true));
				}
			}
		}
	}
}
