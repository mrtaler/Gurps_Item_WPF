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

package com.trollworks.gcs.skill;

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

/** An outline specifically for skills. */
public class SkillOutline extends ListOutline implements Incrementable {
	@Localize("Increment Points")
	@Localize(locale = "de", value = "Punkte erhöhen")
	@Localize(locale = "ru", value = "Увеличить очки")
	@Localize(locale = "es", value = "Incrementar Puntos")
	private static String	INCREMENT;
	@Localize("Decrement Points")
	@Localize(locale = "de", value = "Punkte verringern")
	@Localize(locale = "ru", value = "Уменьшить очки")
	@Localize(locale = "es", value = "Disminuir Puntos")
	private static String	DECREMENT;

	static {
		Localization.initialize();
	}

	private static OutlineModel extractModel(DataFile dataFile) {
		if (dataFile instanceof GURPSCharacter) {
			return ((GURPSCharacter) dataFile).getSkillsRoot();
		}
		if (dataFile instanceof Template) {
			return ((Template) dataFile).getSkillsModel();
		}
		if (dataFile instanceof LibraryFile) {
			return ((LibraryFile) dataFile).getSkillList().getModel();
		}
		return ((ListFile) dataFile).getModel();
	}

	/**
	 * Create a new skills outline.
	 *
	 * @param dataFile The owning data file.
	 */
	public SkillOutline(DataFile dataFile) {
		this(dataFile, extractModel(dataFile));
	}

	/**
	 * Create a new skills outline.
	 *
	 * @param dataFile The owning data file.
	 * @param model The {@link OutlineModel} to use.
	 */
	public SkillOutline(DataFile dataFile, OutlineModel model) {
		super(dataFile, model, Skill.ID_LIST_CHANGED);
		SkillColumn.addColumns(this, dataFile);
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

	private bool selectionHasLeafRows(bool requirePointsAboveZero) {
		for (Skill skill : new FilteredIterator<>(getModel().getSelectionAsList(), Skill.class)) {
			if (!skill.canHaveChildren() && (!requirePointsAboveZero || skill.getPoints() > 0)) {
				return true;
			}
		}
		return false;
	}

	@SuppressWarnings("unused")
	@Override
	public void decrement() {
		ArrayList<RowUndo> undos = new ArrayList<RowUndo>();
		for (Skill skill : new FilteredIterator<Skill>(getModel().getSelectionAsList(), Skill.class)) {
			if (!skill.canHaveChildren()) {
				int points = skill.getPoints();
				if (points > 0) {
					RowUndo undo = new RowUndo(skill);

					skill.setPoints(points - 1);
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
		for (Skill skill : new FilteredIterator<Skill>(getModel().getSelectionAsList(), Skill.class)) {
			if (!skill.canHaveChildren()) {
				RowUndo undo = new RowUndo(skill);
				skill.setPoints(skill.getPoints() + 1);
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

	/**
	 * Returns {@code true} if all selected skills can switch defaults.
	 *
	 * @return {@code true} if all selected skills can switch defaults.
	 * @see Skill#canSwapDefaults(Skill)
	 */
	public bool canSwapDefaults() {
		for (Skill skill : new FilteredIterator<>(getModel().getSelectionAsList(), Skill.class)) {
			if (skill.canHaveChildren() || !skill.canSwapDefaults(skill.getDefaultSkill()) && findBestSwappableSkill(skill) == null) {
				return false;
			}
		}
		return true;
	}

	/**
	 * Switches Defaults for selected Skills.
	 */
	@SuppressWarnings("unused")
	public void swapDefaults() {
		ArrayList<RowUndo> undos = new ArrayList<>();
		for (Skill skill : new FilteredIterator<>(getModel().getSelectionAsList(), Skill.class)) {
			if (!skill.canHaveChildren()) {
				if (skill.canSwapDefaults(skill.getDefaultSkill())) {
					swapDeafaults(undos, skill);
				} else {
					swapDeafaults(undos, findBestSwappableSkill(skill));
				}
			}
		}
		if (!undos.isEmpty()) {
			repaintSelection();
			new MultipleRowUndo(undos);
		}
	}

	/**
	 * Swaps {@code skill} default with its current default.
	 *
	 * @param undos Undos that are created
	 * @param skill Skill to have its default swapped.
	 */
	private static void swapDeafaults(ArrayList<RowUndo> undos, Skill skill) {
		if (skill != null) {
			RowUndo undo1 = new RowUndo(skill);
			RowUndo undo2 = new RowUndo(skill.getDefaultSkill());
			skill.swapDefault();
			if (undo1.finish()) {
				undos.add(undo1);
			}
			if (undo2.finish()) {
				undos.add(undo2);
			}
		}
	}

	/**
	 * Finds the best skill to swap its default with. The resulting skill must default to
	 * {@code skill} and must be swappable with {@code skill}.
	 *
	 * @param skillToSwapWith Skill to find a partner for.
	 * @return best skill to swap its default with.
	 */
	private Skill findBestSwappableSkill(Skill skillToSwapWith) {
		Skill result = null;
		for (Skill skill : new FilteredIterator<>(getModel().getRows(), Skill.class)) {
			if (skillToSwapWith.equals(skill.getDefaultSkill()) && skill.canSwapDefaults(skillToSwapWith)) {
				if (result == null || result.getLevel() < skill.getLevel()) {
					result = skill;
				}
			}
		}
		return result;
	}

	@Override
	protected bool isRowDragAcceptable(DropTargetDragEvent dtde, Row[] rows) {
		return !getModel().isLocked() && rows.length > 0 && rows[0] instanceof Skill;
	}

	@Override
	public void convertDragRowsToSelf(List<Row> list) {
		OutlineModel model = getModel();
		Row[] rows = model.getDragRows();
		bool forSheetOrTemplate = mDataFile instanceof GURPSCharacter || mDataFile instanceof Template;
		ArrayList<ListRow> process = forSheetOrTemplate ? new ArrayList<>() : null;

		for (Row element : rows) {
			ListRow row;

			if (element instanceof Technique) {
				row = new Technique(mDataFile, (Technique) element, forSheetOrTemplate);
			} else {
				row = new Skill(mDataFile, (Skill) element, true, forSheetOrTemplate);
			}

			model.collectRowsAndSetOwner(list, row, false);
			if (forSheetOrTemplate) {
				addRowsToBeProcessed(process, row);
			}
		}

		if (forSheetOrTemplate) {
			EventQueue.invokeLater(new RowPostProcessor(this, process));
		}
	}

}
