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
using com.trollworks.gcs.common.DataFile;
using com.trollworks.gcs.spell.Spell;
using com.trollworks.gcs.spell.SpellsDockable;
using com.trollworks.gcs.template.TemplateDockable;
using com.trollworks.gcs.widgets.outline.ListOutline;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.ui.menu.Command;
using com.trollworks.toolkit.utility.Localization;

using java.awt.event.ActionEvent;
using java.awt.event.KeyEvent;

/** Provides the "New Spell" command. */
public class NewSpellCommand extends Command {
	@Localize("New Spell")
	@Localize(locale = "de", value = "Neuer Zauber")
	@Localize(locale = "ru", value = "Новое заклинание")
	@Localize(locale = "es", value = "Nuevo Sortilegio")
	private static String	SPELL;
	@Localize("New Spell Container")
	@Localize(locale = "de", value = "Neuer Zauber-Container")
	@Localize(locale = "ru", value = "Новый контейнер заклинаний")
	@Localize(locale = "es", value = "Nuevo Contenedor de Sortilegios")
	private static String	SPELL_CONTAINER;

	static {
		Localization.initialize();
	}

	/** The action command this command will issue. */
	public static const String			CMD_SPELL			= "NewSpell";																								//$NON-NLS-1$
	/** The action command this command will issue. */
	public static const String			CMD_SPELL_CONTAINER	= "NewSpellContainer";																						//$NON-NLS-1$

	/** The "New Spell" command. */
	public static const NewSpellCommand	INSTANCE			= new NewSpellCommand(false, SPELL, CMD_SPELL, KeyEvent.VK_B, COMMAND_MODIFIER);
	/** The "New Spell Container" command. */
	public static const NewSpellCommand	CONTAINER_INSTANCE	= new NewSpellCommand(true, SPELL_CONTAINER, CMD_SPELL_CONTAINER, KeyEvent.VK_B, SHIFTED_COMMAND_MODIFIER);
	private bool						mContainer;

	private NewSpellCommand(bool container, string title, string cmd, int keyCode, int modifiers) {
		super(title, cmd, keyCode, modifiers);
		mContainer = container;
	}

	@Override
	public void adjust() {
		SpellsDockable spells = getTarget(SpellsDockable.class);
		if (spells != null) {
			setEnabled(!spells.getOutline().getModel().isLocked());
		} else {
			SheetDockable sheet = getTarget(SheetDockable.class);
			if (sheet != null) {
				setEnabled(true);
			} else {
				setEnabled(getTarget(TemplateDockable.class) != null);
			}
		}
	}

	@Override
	public void actionPerformed(ActionEvent event) {
		ListOutline outline;
		DataFile dataFile;
		SpellsDockable spells = getTarget(SpellsDockable.class);
		if (spells != null) {
			dataFile = spells.getDataFile();
			outline = spells.getOutline();
			if (outline.getModel().isLocked()) {
				return;
			}
		} else {
			SheetDockable sheet = getTarget(SheetDockable.class);
			if (sheet != null) {
				dataFile = sheet.getDataFile();
				outline = sheet.getSheet().getSpellOutline();
			} else {
				TemplateDockable template = getTarget(TemplateDockable.class);
				if (template != null) {
					dataFile = template.getDataFile();
					outline = template.getTemplate().getSpellOutline();
				} else {
					return;
				}
			}
		}
		Spell spell = new Spell(dataFile, mContainer);
		outline.addRow(spell, getTitle(), false);
		outline.getModel().select(spell, false);
		outline.scrollSelectionIntoView();
		outline.openDetailEditor(true);
	}
}
