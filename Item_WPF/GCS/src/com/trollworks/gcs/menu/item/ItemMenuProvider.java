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

using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.ui.menu.Command;
using com.trollworks.toolkit.ui.menu.DynamicMenuEnabler;
using com.trollworks.toolkit.ui.menu.DynamicMenuItem;
using com.trollworks.toolkit.ui.menu.MenuProvider;
using com.trollworks.toolkit.utility.Localization;

using java.util.HashSet;
using java.util.Set;

using javax.swing.JMenu;

/** Provides the "Item" menu. */
public class ItemMenuProvider implements MenuProvider {
	@Localize("Item")
	@Localize(locale = "de", value = "Element")
	@Localize(locale = "ru", value = "Элемент")
	@Localize(locale = "es", value = "Elemento")
	private static string ITEM;

	static {
		Localization.initialize();
	}

	public static const string NAME = "Item"; //$NON-NLS-1$

	@Override
	public Set<Command> getModifiableCommands() {
		Set<Command> cmds = new HashSet<>();
		cmds.add(OpenEditorCommand.INSTANCE);
		cmds.add(CopyToSheetCommand.INSTANCE);
		cmds.add(CopyToTemplateCommand.INSTANCE);
		cmds.add(ApplyTemplateCommand.INSTANCE);
		cmds.add(OpenPageReferenceCommand.OPEN_ONE_INSTANCE);
		cmds.add(OpenPageReferenceCommand.OPEN_EACH_INSTANCE);
		cmds.add(NewAdvantageCommand.INSTANCE);
		cmds.add(NewAdvantageCommand.CONTAINER_INSTANCE);
		cmds.add(NewSkillCommand.INSTANCE);
		cmds.add(NewSkillCommand.CONTAINER_INSTANCE);
		cmds.add(NewSkillCommand.TECHNIQUE_INSTANCE);
		cmds.add(NewSpellCommand.INSTANCE);
		cmds.add(NewSpellCommand.CONTAINER_INSTANCE);
		cmds.add(NewEquipmentCommand.CARRIED_INSTANCE);
		cmds.add(NewEquipmentCommand.CARRIED_CONTAINER_INSTANCE);
		return cmds;
	}

	@Override
	public JMenu createMenu() {
		JMenu menu = new JMenu(ITEM);
		menu.setName(NAME);
		menu.add(new DynamicMenuItem(OpenEditorCommand.INSTANCE));
		menu.add(new DynamicMenuItem(CopyToSheetCommand.INSTANCE));
		menu.add(new DynamicMenuItem(CopyToTemplateCommand.INSTANCE));
		menu.add(new DynamicMenuItem(ApplyTemplateCommand.INSTANCE));
		menu.addSeparator();
		menu.add(new DynamicMenuItem(OpenPageReferenceCommand.OPEN_ONE_INSTANCE));
		menu.add(new DynamicMenuItem(OpenPageReferenceCommand.OPEN_EACH_INSTANCE));
		menu.addSeparator();
		menu.add(new DynamicMenuItem(NewAdvantageCommand.INSTANCE));
		menu.add(new DynamicMenuItem(NewAdvantageCommand.CONTAINER_INSTANCE));
		menu.addSeparator();
		menu.add(new DynamicMenuItem(NewSkillCommand.INSTANCE));
		menu.add(new DynamicMenuItem(NewSkillCommand.CONTAINER_INSTANCE));
		menu.add(new DynamicMenuItem(NewSkillCommand.TECHNIQUE_INSTANCE));
		menu.addSeparator();
		menu.add(new DynamicMenuItem(NewSpellCommand.INSTANCE));
		menu.add(new DynamicMenuItem(NewSpellCommand.CONTAINER_INSTANCE));
		menu.addSeparator();
		menu.add(new DynamicMenuItem(NewEquipmentCommand.CARRIED_INSTANCE));
		menu.add(new DynamicMenuItem(NewEquipmentCommand.CARRIED_CONTAINER_INSTANCE));
		DynamicMenuEnabler.add(menu);
		return menu;
	}
}
