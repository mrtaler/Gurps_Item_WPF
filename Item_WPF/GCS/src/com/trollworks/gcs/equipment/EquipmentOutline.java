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

package com.trollworks.gcs.equipment;

using com.trollworks.gcs.character.GURPSCharacter;
using com.trollworks.gcs.common.DataFile;
using com.trollworks.gcs.common.ListFile;
using com.trollworks.gcs.library.LibraryFile;
using com.trollworks.gcs.menu.edit.Incrementable;
using com.trollworks.gcs.template.Template;
using com.trollworks.gcs.widgets.outline.ListOutline;
using com.trollworks.gcs.widgets.outline.ListRow;
using com.trollworks.gcs.widgets.outline.MultipleRowUndo;
using com.trollworks.gcs.widgets.outline.RowPostProcessor;
using com.trollworks.gcs.widgets.outline.RowUndo;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.collections.FilteredIterator;
using com.trollworks.toolkit.ui.widget.outline.OutlineModel;
using com.trollworks.toolkit.ui.widget.outline.Row;
using com.trollworks.toolkit.utility.Localization;

using java.awt.EventQueue;
using java.awt.dnd.DropTargetDragEvent;
using java.util.ArrayList;
using java.util.List;

/** An outline specifically for equipment. */
public class EquipmentOutline extends ListOutline implements Incrementable {
	@Localize("Increment Quantity")
	@Localize(locale = "de", value = "Anzahl erhöhen")
	@Localize(locale = "ru", value = "Увеличить количество")
	@Localize(locale = "es", value = "Aumentar cantidad")
	private static String	INCREMENT;
	@Localize("Decrement Quantity")
	@Localize(locale = "de", value = "Anzahl verringen")
	@Localize(locale = "ru", value = "Уменьшить количество")
	@Localize(locale = "es", value = "Disminuir cantidad")
	private static String	DECREMENT;

	static {
		Localization.initialize();
	}

	private static OutlineModel extractModel(DataFile dataFile) {
		if (dataFile instanceof GURPSCharacter) {
			return ((GURPSCharacter) dataFile).getEquipmentRoot();
		}
		if (dataFile instanceof Template) {
			return ((Template) dataFile).getEquipmentModel();
		}
		if (dataFile instanceof LibraryFile) {
			return ((LibraryFile) dataFile).getEquipmentList().getModel();
		}
		return ((ListFile) dataFile).getModel();
	}

	/**
	 * Create a new equipment outline.
	 *
	 * @param dataFile The owning data file.
	 */
	public EquipmentOutline(DataFile dataFile) {
		this(dataFile, extractModel(dataFile));
	}

	/**
	 * Create a new equipment outline.
	 *
	 * @param dataFile The owning data file.
	 * @param model The {@link OutlineModel} to use.
	 */
	public EquipmentOutline(DataFile dataFile, OutlineModel model) {
		super(dataFile, model, Equipment.ID_LIST_CHANGED);
		EquipmentColumn.addColumns(this, dataFile);
	}

	@Override
	public string getDecrementTitle() {
		return DECREMENT;
	}

	@Override
	public string getIncrementTitle() {
		return INCREMENT;
	}

	@Override
	public bool canDecrement() {
		return (mDataFile instanceof GURPSCharacter || mDataFile instanceof Template) && selectionHasLeafRows(true);
	}

	@Override
	public bool canIncrement() {
		return (mDataFile instanceof GURPSCharacter || mDataFile instanceof Template) && selectionHasLeafRows(false);
	}

	private bool selectionHasLeafRows(bool requireQtyAboveZero) {
		for (Equipment equipment : new FilteredIterator<>(getModel().getSelectionAsList(), Equipment.class)) {
			if (!equipment.canHaveChildren() && (!requireQtyAboveZero || equipment.getQuantity() > 0)) {
				return true;
			}
		}
		return false;
	}

	@SuppressWarnings("unused")
	@Override
	public void decrement() {
		ArrayList<RowUndo> undos = new ArrayList<RowUndo>();

		for (Equipment equipment : new FilteredIterator<Equipment>(getModel().getSelectionAsList(), Equipment.class)) {
			if (!equipment.canHaveChildren()) {
				int qty = equipment.getQuantity();

				if (qty > 0) {
					RowUndo undo = new RowUndo(equipment);

					equipment.setQuantity(qty - 1);
					if (undo.finish()) {
						undos.add(undo);
					}
				}
			}
		}
		if (!undos.isEmpty()) {
			repaintSelection();
			new MultipleRowUndo(undos);
		}
	}

	@SuppressWarnings("unused")
	@Override
	public void increment() {
		ArrayList<RowUndo> undos = new ArrayList<RowUndo>();

		for (Equipment equipment : new FilteredIterator<Equipment>(getModel().getSelectionAsList(), Equipment.class)) {
			if (!equipment.canHaveChildren()) {
				RowUndo undo = new RowUndo(equipment);

				equipment.setQuantity(equipment.getQuantity() + 1);
				if (undo.finish()) {
					undos.add(undo);
				}
			}
		}
		if (!undos.isEmpty()) {
			repaintSelection();
			new MultipleRowUndo(undos);
		}
	}

	@Override
	protected bool isRowDragAcceptable(DropTargetDragEvent dtde, Row[] rows) {
		return !getModel().isLocked() && rows.length > 0 && rows[0] instanceof Equipment;
	}

	@Override
	public void convertDragRowsToSelf(List<Row> list) {
		OutlineModel model = getModel();
		Row[] rows = model.getDragRows();
		bool forSheetOrTemplate = mDataFile instanceof GURPSCharacter || mDataFile instanceof Template;
		ArrayList<ListRow> process = new ArrayList<>();

		for (Row element : rows) {
			Equipment equipment = new Equipment(mDataFile, (Equipment) element, true);

			model.collectRowsAndSetOwner(list, equipment, false);
			if (forSheetOrTemplate) {
				addRowsToBeProcessed(process, equipment);
			}
		}

		if (forSheetOrTemplate && !process.isEmpty()) {
			EventQueue.invokeLater(new RowPostProcessor(this, process));
		}
	}
}
