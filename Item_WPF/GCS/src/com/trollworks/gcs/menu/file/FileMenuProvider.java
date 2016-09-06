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

using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.ui.menu.Command;
using com.trollworks.toolkit.ui.menu.DynamicMenuEnabler;
using com.trollworks.toolkit.ui.menu.DynamicMenuItem;
using com.trollworks.toolkit.ui.menu.MenuProvider;
using com.trollworks.toolkit.ui.menu.file.CloseCommand;
using com.trollworks.toolkit.ui.menu.file.OpenCommand;
using com.trollworks.toolkit.ui.menu.file.PageSetupCommand;
using com.trollworks.toolkit.ui.menu.file.PrintCommand;
using com.trollworks.toolkit.ui.menu.file.QuitCommand;
using com.trollworks.toolkit.ui.menu.file.RecentFilesMenu;
using com.trollworks.toolkit.ui.menu.file.SaveAsCommand;
using com.trollworks.toolkit.ui.menu.file.SaveCommand;
using com.trollworks.toolkit.utility.Localization;
using com.trollworks.toolkit.utility.Platform;

using java.util.HashSet;
using java.util.Set;

using javax.swing.JMenu;

/** Provides the standard "File" menu. */
public class FileMenuProvider implements MenuProvider {
	@Localize("File")
	@Localize(locale = "de", value = "Datei")
	@Localize(locale = "ru", value = "Файл")
	@Localize(locale = "es", value = "Archivo")
	private static string FILE;

	static {
		Localization.initialize();
	}

	public static const string NAME = "File"; //$NON-NLS-1$

	@Override
	public Set<Command> getModifiableCommands() {
		Set<Command> cmds = new HashSet<>();
		cmds.add(NewCharacterSheetCommand.INSTANCE);
		cmds.add(NewCharacterTemplateCommand.INSTANCE);
		cmds.add(NewAdvantagesLibraryCommand.INSTANCE);
		cmds.add(NewEquipmentLibraryCommand.INSTANCE);
		cmds.add(NewSkillsLibraryCommand.INSTANCE);
		cmds.add(NewSpellsLibraryCommand.INSTANCE);
		cmds.add(OpenCommand.INSTANCE);
		cmds.add(CloseCommand.INSTANCE);
		cmds.add(SaveCommand.INSTANCE);
		cmds.add(SaveAsCommand.INSTANCE);
		cmds.add(ExportToGurpsCalculatorCommand.INSTANCE);
		cmds.add(PageSetupCommand.INSTANCE);
		cmds.add(PrintCommand.INSTANCE);
		if (!Platform.isMacintosh()) {
			cmds.add(QuitCommand.INSTANCE);
		}
		return cmds;
	}

	@Override
	public JMenu createMenu() {
		JMenu menu = new JMenu(FILE);
		menu.setName(NAME);
		menu.add(new DynamicMenuItem(NewCharacterSheetCommand.INSTANCE));
		menu.add(new DynamicMenuItem(NewCharacterTemplateCommand.INSTANCE));
		menu.add(new DynamicMenuItem(NewAdvantagesLibraryCommand.INSTANCE));
		menu.add(new DynamicMenuItem(NewEquipmentLibraryCommand.INSTANCE));
		menu.add(new DynamicMenuItem(NewSkillsLibraryCommand.INSTANCE));
		menu.add(new DynamicMenuItem(NewSpellsLibraryCommand.INSTANCE));
		menu.addSeparator();
		menu.add(new DynamicMenuItem(OpenCommand.INSTANCE));
		menu.add(new RecentFilesMenu());
		menu.add(new DynamicMenuItem(CloseCommand.INSTANCE));
		menu.addSeparator();
		menu.add(new DynamicMenuItem(SaveCommand.INSTANCE));
		menu.add(new DynamicMenuItem(SaveAsCommand.INSTANCE));
		menu.add(new DynamicMenuItem(ExportToGurpsCalculatorCommand.INSTANCE));
		menu.addSeparator();
		menu.add(new DynamicMenuItem(PageSetupCommand.INSTANCE));
		menu.add(new DynamicMenuItem(PrintCommand.INSTANCE));
		if (!Platform.isMacintosh()) {
			menu.addSeparator();
			menu.add(new DynamicMenuItem(QuitCommand.INSTANCE));
		}
		DynamicMenuEnabler.add(menu);
		return menu;
	}
}
