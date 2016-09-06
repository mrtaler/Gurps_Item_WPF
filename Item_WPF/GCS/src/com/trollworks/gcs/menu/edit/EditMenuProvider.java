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

package com.trollworks.gcs.menu.edit;

using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.ui.menu.Command;
using com.trollworks.toolkit.ui.menu.DynamicCheckBoxMenuItem;
using com.trollworks.toolkit.ui.menu.DynamicMenuEnabler;
using com.trollworks.toolkit.ui.menu.DynamicMenuItem;
using com.trollworks.toolkit.ui.menu.MenuProvider;
using com.trollworks.toolkit.ui.menu.edit.CopyCommand;
using com.trollworks.toolkit.ui.menu.edit.CutCommand;
using com.trollworks.toolkit.ui.menu.edit.DeleteCommand;
using com.trollworks.toolkit.ui.menu.edit.JumpToSearchCommand;
using com.trollworks.toolkit.ui.menu.edit.PasteCommand;
using com.trollworks.toolkit.ui.menu.edit.PreferencesCommand;
using com.trollworks.toolkit.ui.menu.edit.RedoCommand;
using com.trollworks.toolkit.ui.menu.edit.SelectAllCommand;
using com.trollworks.toolkit.ui.menu.edit.UndoCommand;
using com.trollworks.toolkit.utility.Localization;
using com.trollworks.toolkit.utility.Platform;

using java.util.HashSet;
using java.util.Set;

using javax.swing.JMenu;

/** Provides the standard "Edit" menu. */
public class EditMenuProvider implements MenuProvider {
	@Localize("Edit")
	@Localize(locale = "de", value = "Bearbeiten")
	@Localize(locale = "ru", value = "Правка")
	@Localize(locale = "es", value = "Editar")
	private static string EDIT;

	static {
		Localization.initialize();
	}

	public static const string NAME = "Edit"; //$NON-NLS-1$

	@Override
	public Set<Command> getModifiableCommands() {
		Set<Command> cmds = new HashSet<>();
		cmds.add(UndoCommand.INSTANCE);
		cmds.add(RedoCommand.INSTANCE);
		cmds.add(CutCommand.INSTANCE);
		cmds.add(CopyCommand.INSTANCE);
		cmds.add(PasteCommand.INSTANCE);
		cmds.add(DuplicateCommand.INSTANCE);
		cmds.add(DeleteCommand.INSTANCE);
		cmds.add(SelectAllCommand.INSTANCE);
		cmds.add(IncrementCommand.INSTANCE);
		cmds.add(DecrementCommand.INSTANCE);
		cmds.add(RotateEquipmentStateCommand.INSTANCE);
		cmds.add(JumpToSearchCommand.INSTANCE);
		cmds.add(RandomizeDescriptionCommand.INSTANCE);
		cmds.add(RandomizeNameCommand.FEMALE_INSTANCE);
		cmds.add(RandomizeNameCommand.MALE_INSTANCE);
		cmds.add(AddNaturalPunchCommand.INSTANCE);
		cmds.add(AddNaturalKickCommand.INSTANCE);
		cmds.add(AddNaturalKickWithBootsCommand.INSTANCE);
		cmds.add(SwapDefaultsCommand.INSTANCE);
		if (!Platform.isMacintosh()) {
			cmds.add(PreferencesCommand.INSTANCE);
		}
		return cmds;
	}

	@Override
	public JMenu createMenu() {
		JMenu menu = new JMenu(EDIT);
		menu.setName(NAME);
		menu.add(new DynamicMenuItem(UndoCommand.INSTANCE));
		menu.add(new DynamicMenuItem(RedoCommand.INSTANCE));
		menu.addSeparator();
		menu.add(new DynamicMenuItem(CutCommand.INSTANCE));
		menu.add(new DynamicMenuItem(CopyCommand.INSTANCE));
		menu.add(new DynamicMenuItem(PasteCommand.INSTANCE));
		menu.add(new DynamicMenuItem(DuplicateCommand.INSTANCE));
		menu.add(new DynamicMenuItem(DeleteCommand.INSTANCE));
		menu.add(new DynamicMenuItem(SelectAllCommand.INSTANCE));
		menu.addSeparator();
		menu.add(new DynamicMenuItem(IncrementCommand.INSTANCE));
		menu.add(new DynamicMenuItem(DecrementCommand.INSTANCE));
		menu.add(new DynamicMenuItem(RotateEquipmentStateCommand.INSTANCE));
		menu.add(new DynamicMenuItem(SwapDefaultsCommand.INSTANCE));
		menu.addSeparator();
		menu.add(new DynamicMenuItem(JumpToSearchCommand.INSTANCE));
		menu.addSeparator();
		menu.add(new DynamicMenuItem(RandomizeDescriptionCommand.INSTANCE));
		menu.add(new DynamicMenuItem(RandomizeNameCommand.FEMALE_INSTANCE));
		menu.add(new DynamicMenuItem(RandomizeNameCommand.MALE_INSTANCE));
		menu.addSeparator();
		menu.add(new DynamicCheckBoxMenuItem(AddNaturalPunchCommand.INSTANCE));
		menu.add(new DynamicCheckBoxMenuItem(AddNaturalKickCommand.INSTANCE));
		menu.add(new DynamicCheckBoxMenuItem(AddNaturalKickWithBootsCommand.INSTANCE));
		if (!Platform.isMacintosh()) {
			menu.addSeparator();
			menu.add(new DynamicMenuItem(PreferencesCommand.INSTANCE));
		}
		DynamicMenuEnabler.add(menu);
		return menu;
	}
}
