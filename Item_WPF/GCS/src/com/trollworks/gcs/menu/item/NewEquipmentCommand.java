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
using com.trollworks.gcs.equipment.Equipment;
using com.trollworks.gcs.equipment.EquipmentDockable;
using com.trollworks.gcs.template.TemplateDockable;
using com.trollworks.gcs.widgets.outline.ListOutline;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.ui.menu.Command;
using com.trollworks.toolkit.utility.Localization;

using java.awt.event.ActionEvent;
using java.awt.event.KeyEvent;

/** Provides the "New Equipment" command. */
public class NewEquipmentCommand extends Command {
	@Localize("New Equipment")
	@Localize(locale = "de", value = "Neue Ausrüstung")
	@Localize(locale = "ru", value = "Новое снаряжение")
	@Localize(locale = "es", value = "Nuevo Equipo")
	private static String	EQUIPMENT;
	@Localize("New Equipment Container")
	@Localize(locale = "de", value = "Neuer Ausrüstungs-Container")
	@Localize(locale = "ru", value = "Новый контейнер снаряжения")
	@Localize(locale = "es", value = "Nuevo contenedor de Equipo")
	private static String	EQUIPMENT_CONTAINER;

	static {
		Localization.initialize();
	}

	/** The action command this command will issue. */
	public static const String				CMD_NEW_EQUIPMENT			= "NewEquipment";																											//$NON-NLS-1$
	/** The action command this command will issue. */
	public static const String				CMD_NEW_EQUIPMENT_CONTAINER	= "NewEquipmentContainer";																									//$NON-NLS-1$
	/** The "New Carried Equipment" command. */
	public static const NewEquipmentCommand	CARRIED_INSTANCE			= new NewEquipmentCommand(false, EQUIPMENT, CMD_NEW_EQUIPMENT, KeyEvent.VK_E, COMMAND_MODIFIER);
	/** The "New Carried Equipment Container" command. */
	public static const NewEquipmentCommand	CARRIED_CONTAINER_INSTANCE	= new NewEquipmentCommand(true, EQUIPMENT_CONTAINER, CMD_NEW_EQUIPMENT_CONTAINER, KeyEvent.VK_E, SHIFTED_COMMAND_MODIFIER);
	private bool							mContainer;

	private NewEquipmentCommand(bool container, String title, String cmd, int keyCode, int modifiers) {
		super(title, cmd, keyCode, modifiers);
		mContainer = container;
	}

	@Override
	public void adjust() {
		EquipmentDockable equipment = getTarget(EquipmentDockable.class);
		if (equipment != null) {
			setEnabled(!equipment.getOutline().getModel().isLocked());
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
		EquipmentDockable eqpDockable = getTarget(EquipmentDockable.class);
		if (eqpDockable != null) {
			dataFile = eqpDockable.getDataFile();
			outline = eqpDockable.getOutline();
			if (outline.getModel().isLocked()) {
				return;
			}
		} else {
			SheetDockable sheet = getTarget(SheetDockable.class);
			if (sheet != null) {
				dataFile = sheet.getDataFile();
				outline = sheet.getSheet().getEquipmentOutline();
			} else {
				TemplateDockable template = getTarget(TemplateDockable.class);
				if (template != null) {
					dataFile = template.getDataFile();
					outline = template.getTemplate().getEquipmentOutline();
				} else {
					return;
				}
			}
		}
		Equipment equipment = new Equipment(dataFile, mContainer);
		outline.addRow(equipment, getTitle(), false);
		outline.getModel().select(equipment, false);
		outline.scrollSelectionIntoView();
		outline.openDetailEditor(true);
	}
}
