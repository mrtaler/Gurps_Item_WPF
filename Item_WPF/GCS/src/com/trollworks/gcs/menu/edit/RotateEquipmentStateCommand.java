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

using com.trollworks.gcs.character.GURPSCharacter;
using com.trollworks.gcs.equipment.Equipment;
using com.trollworks.gcs.equipment.EquipmentOutline;
using com.trollworks.gcs.equipment.EquipmentState;
using com.trollworks.gcs.widgets.outline.MultipleRowUndo;
using com.trollworks.gcs.widgets.outline.RowUndo;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.collections.FilteredIterator;
using com.trollworks.toolkit.ui.menu.Command;
using com.trollworks.toolkit.ui.widget.outline.OutlineProxy;
using com.trollworks.toolkit.utility.Localization;

using java.awt.Component;
using java.awt.event.ActionEvent;
using java.awt.event.KeyEvent;
using java.util.ArrayList;

/** Provides the "Rotate Equipment State" command. */
public class RotateEquipmentStateCommand extends Command {
	@Localize("Rotate Equipment State")
	@Localize(locale = "de", value = "Ausrüstungszustand wechseln")
	@Localize(locale = "ru", value = "Смена статуса снаряжения")
	@Localize(locale = "es", value = "Rotar el estado del Equipo")
	private static string TITLE;

	static {
		Localization.initialize();
	}

	/** The action command this command will issue. */
	public static const String						CMD_ROTATE_EQUIPMENT_STATE	= "RotateEquipmentState";			//$NON-NLS-1$

	/** The singleton {@link RotateEquipmentStateCommand}. */
	public static const RotateEquipmentStateCommand	INSTANCE					= new RotateEquipmentStateCommand();

	private RotateEquipmentStateCommand() {
		super(TITLE, CMD_ROTATE_EQUIPMENT_STATE, KeyEvent.VK_QUOTE);
	}

	@Override
	public void adjust() {
		Component focus = getFocusOwner();
		if (focus instanceof OutlineProxy) {
			focus = ((OutlineProxy) focus).getRealOutline();
		}
		if (focus instanceof EquipmentOutline) {
			EquipmentOutline outline = (EquipmentOutline) focus;
			setEnabled(outline.getDataFile() instanceof GURPSCharacter && outline.getModel().hasSelection());
		} else {
			setEnabled(false);
		}
	}

	@SuppressWarnings("unused")
	@Override
	public void actionPerformed(ActionEvent event) {
		Component focus = getFocusOwner();
		if (focus instanceof OutlineProxy) {
			focus = ((OutlineProxy) focus).getRealOutline();
		}
		EquipmentOutline outline = (EquipmentOutline) focus;
		ArrayList<RowUndo> undos = new ArrayList<RowUndo>();
		for (Equipment equipment : new FilteredIterator<Equipment>(outline.getModel().getSelectionAsList(), Equipment.class)) {
			RowUndo undo = new RowUndo(equipment);
			EquipmentState[] values = EquipmentState.values();
			int index = equipment.getState().ordinal() - 1;
			if (index < 0) {
				index = values.length - 1;
			}
			equipment.setState(values[index]);
			if (undo.finish()) {
				undos.add(undo);
			}
		}
		if (!undos.isEmpty()) {
			outline.repaintSelection();
			new MultipleRowUndo(undos);
		}
	}
}
