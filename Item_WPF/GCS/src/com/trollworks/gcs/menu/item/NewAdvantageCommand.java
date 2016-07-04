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

using com.trollworks.gcs.advantage.Advantage;
using com.trollworks.gcs.advantage.AdvantagesDockable;
using com.trollworks.gcs.character.SheetDockable;
using com.trollworks.gcs.common.DataFile;
using com.trollworks.gcs.template.TemplateDockable;
using com.trollworks.gcs.widgets.outline.ListOutline;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.ui.menu.Command;
using com.trollworks.toolkit.utility.Localization;

using java.awt.event.ActionEvent;
using java.awt.event.KeyEvent;

/** Provides the "New Advantage" command. */
public class NewAdvantageCommand extends Command {
	@Localize("New Advantage")
	@Localize(locale = "de", value = "Neuer Vorteil")
	@Localize(locale = "ru", value = "Новое преимущество")
	@Localize(locale = "es", value = "Nueva Ventaja")
	private static String	ADVANTAGE;
	@Localize("New Advantage Container")
	@Localize(locale = "de", value = "Neuer Vorteils-Container")
	@Localize(locale = "ru", value = "Новый контейнер преимущества")
	@Localize(locale = "es", value = "Nuevo Contenedor de Ventajas")
	private static String	ADVANTAGE_CONTAINER;

	static {
		Localization.initialize();
	}

	/** The action command this command will issue. */
	public static const String				CMD_NEW_ADVANTAGE			= "NewAdvantage";																											//$NON-NLS-1$
	/** The action command this command will issue. */
	public static const String				CMD_NEW_ADVANTAGE_CONTAINER	= "NewAdvantageContainer";																									//$NON-NLS-1$
	/** The "New Advantage" command. */
	public static const NewAdvantageCommand	INSTANCE					= new NewAdvantageCommand(false, ADVANTAGE, CMD_NEW_ADVANTAGE, KeyEvent.VK_D, COMMAND_MODIFIER);
	/** The "New Advantage Container" command. */
	public static const NewAdvantageCommand	CONTAINER_INSTANCE			= new NewAdvantageCommand(true, ADVANTAGE_CONTAINER, CMD_NEW_ADVANTAGE_CONTAINER, KeyEvent.VK_D, SHIFTED_COMMAND_MODIFIER);
	private bool							mContainer;

	private NewAdvantageCommand(bool container, String title, String cmd, int keyCode, int modifiers) {
		super(title, cmd, keyCode, modifiers);
		mContainer = container;
	}

	@Override
	public void adjust() {
		AdvantagesDockable adq = getTarget(AdvantagesDockable.class);
		if (adq != null) {
			setEnabled(!adq.getOutline().getModel().isLocked());
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
		AdvantagesDockable adq = getTarget(AdvantagesDockable.class);
		if (adq != null) {
			dataFile = adq.getDataFile();
			outline = adq.getOutline();
			if (outline.getModel().isLocked()) {
				return;
			}
		} else {
			SheetDockable sheet = getTarget(SheetDockable.class);
			if (sheet != null) {
				dataFile = sheet.getDataFile();
				outline = sheet.getSheet().getAdvantageOutline();
			} else {
				TemplateDockable template = getTarget(TemplateDockable.class);
				if (template != null) {
					dataFile = template.getDataFile();
					outline = template.getTemplate().getAdvantageOutline();
				} else {
					return;
				}
			}
		}
		Advantage advantage = new Advantage(dataFile, mContainer);
		outline.addRow(advantage, getTitle(), false);
		outline.getModel().select(advantage, false);
		outline.scrollSelectionIntoView();
		outline.openDetailEditor(true);
	}
}
