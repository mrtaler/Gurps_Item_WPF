///*
// * Copyright (c) 1998-2016 by Richard A. Wilkes. All rights reserved.
// *
// * This Source Code Form is subject to the terms of the Mozilla Public License,
// * version 2.0. If a copy of the MPL was not distributed with this file, You
// * can obtain one at http://mozilla.org/MPL/2.0/.
// *
// * This Source Code Form is "Incompatible With Secondary Licenses", as defined
// * by the Mozilla Public License, version 2.0.
// */

//package com.trollworks.gcs.advantage;

//using com.trollworks.gcs.character.GURPSCharacter;
//using com.trollworks.gcs.common.DataFile;
//using com.trollworks.gcs.common.ListFile;
//using com.trollworks.gcs.menu.edit.Incrementable;
//using com.trollworks.gcs.template.Template;
//using com.trollworks.gcs.widgets.outline.ListOutline;
//using com.trollworks.gcs.widgets.outline.ListRow;
//using com.trollworks.gcs.widgets.outline.MultipleRowUndo;
//using com.trollworks.gcs.widgets.outline.RowPostProcessor;
//using com.trollworks.gcs.widgets.outline.RowUndo;
//using com.trollworks.toolkit.annotation.Localize;
//using com.trollworks.toolkit.collections.FilteredIterator;
//using com.trollworks.toolkit.ui.widget.outline.OutlineModel;
//using com.trollworks.toolkit.ui.widget.outline.Row;
//using com.trollworks.toolkit.utility.Localization;

//using java.awt.EventQueue;
//using java.awt.dnd.DropTargetDragEvent;
//using java.util.ArrayList;
//using java.util.List;
//namespace com.trollworks.gcs.advantage
//{
//    /** An outline specifically for Advantages. */
//    public class AdvantageOutline extends ListOutline implements Incrementable {
//	@Localize("Increment Level")
//	@Localize(locale = "de", value = "Stufe erhöhen")
//	@Localize(locale = "ru", value = "Повысить уровень")
//	@Localize(locale = "es", value = "Subir Nivel")
//	private static String	INCREMENT;
//	@Localize("Decrement Level")
//	@Localize(locale = "de", value = "Stufe verringen")
//	@Localize(locale = "ru", value = "Понизить уровень")
//	@Localize(locale = "es", value = "Bajar Nivel")
//	private static String	DECREMENT;

//	static {
//		Localization.initialize();
//	}

//	private static OutlineModel extractModel(DataFile dataFile) {
//		if (dataFile instanceof GURPSCharacter) {
//			return ((GURPSCharacter) dataFile).getAdvantagesModel();
//		}
//		if (dataFile instanceof Template) {
//			return ((Template) dataFile).getAdvantagesModel();
//		}
//		return ((ListFile) dataFile).getModel();
//	}

//	/**
//	 * Create a new Advantages, Disadvantages & Quirks outline.
//	 *
//	 * @param dataFile The owning data file.
//	 */
//	public AdvantageOutline(DataFile dataFile) {
//		this(dataFile, extractModel(dataFile));
//	}

//	/**
//	 * Create a new Advantages, Disadvantages & Quirks outline.
//	 *
//	 * @param dataFile The owning data file.
//	 * @param model The {@link OutlineModel} to use.
//	 */
//	public AdvantageOutline(DataFile dataFile, OutlineModel model) {
//		super(dataFile, model, Advantage.ID_LIST_CHANGED);
//		AdvantageColumn.addColumns(this, dataFile);
//	}

//	@Override
//	protected bool isRowDragAcceptable(DropTargetDragEvent dtde, Row[] rows) {
//		return !getModel().isLocked() && rows.length > 0 && rows[0] instanceof Advantage;
//	}

//	@Override
//	public void convertDragRowsToSelf(List<Row> list) {
//		OutlineModel model = getModel();
//		Row[] rows = model.getDragRows();
//		bool forSheetOrTemplate = mDataFile instanceof GURPSCharacter || mDataFile instanceof Template;
//		ArrayList<ListRow> process = new ArrayList<>();

//		for (Row element : rows) {
//			Advantage advantage = new Advantage(mDataFile, (Advantage) element, true);

//			model.collectRowsAndSetOwner(list, advantage, false);
//			if (forSheetOrTemplate) {
//				addRowsToBeProcessed(process, advantage);
//			}
//		}

//		if (forSheetOrTemplate && !process.isEmpty()) {
//			EventQueue.invokeLater(new RowPostProcessor(this, process));
//		}
//	}

//	@Override
//	public string getIncrementTitle() {
//		return INCREMENT;
//	}

//	@Override
//	public string getDecrementTitle() {
//		return DECREMENT;
//	}

//	@Override
//	public bool canIncrement() {
//		return (mDataFile instanceof GURPSCharacter || mDataFile instanceof Template) && selectionHasLeveledRows(false);
//	}

//	@Override
//	public bool canDecrement() {
//		return (mDataFile instanceof GURPSCharacter || mDataFile instanceof Template) && selectionHasLeveledRows(true);
//	}

//	private bool selectionHasLeveledRows(bool requireLevelAboveZero) {
//		for (Advantage advantage : new FilteredIterator<>(getModel().getSelectionAsList(), Advantage.class)) {
//			if (!advantage.canHaveChildren() && advantage.isLeveled() && (!requireLevelAboveZero || advantage.hasLevel())) {
//				return true;
//			}
//		}
//		return false;
//	}

//	@SuppressWarnings("unused")
//	@Override
//	public void increment() {
//		ArrayList<RowUndo> undos = new ArrayList<RowUndo>();
//		for (Advantage advantage : new FilteredIterator<Advantage>(getModel().getSelectionAsList(), Advantage.class)) {
//			if (!advantage.canHaveChildren() && advantage.isLeveled()) {
//				RowUndo undo = new RowUndo(advantage);

//				advantage.adjustLevel(1);
//				if (undo.finish()) {
//					undos.add(undo);
//				}
//			}
//		}
//		if (!undos.isEmpty()) {
//			repaintSelection();
//			new MultipleRowUndo(undos);
//		}
//	}

//	@SuppressWarnings("unused")
//	@Override
//	public void decrement() {
//		ArrayList<RowUndo> undos = new ArrayList<RowUndo>();
//		for (Advantage advantage : new FilteredIterator<Advantage>(getModel().getSelectionAsList(), Advantage.class)) {
//			if (!advantage.canHaveChildren() && advantage.isLeveled()) {
//				if (advantage.isLeveled()) {
//					RowUndo undo = new RowUndo(advantage);

//					advantage.adjustLevel(-1);
//					if (undo.finish()) {
//						undos.add(undo);
//					}
//				}
//			}
//		}
//		if (!undos.isEmpty()) {
//			repaintSelection();
//			new MultipleRowUndo(undos);
//		}
//	}
//}
