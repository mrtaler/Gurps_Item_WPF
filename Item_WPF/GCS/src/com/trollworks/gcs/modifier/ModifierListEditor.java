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

package com.trollworks.gcs.modifier;

using com.trollworks.gcs.advantage.Advantage;
using com.trollworks.gcs.common.DataFile;
using com.trollworks.gcs.common.ListFile;
using com.trollworks.gcs.library.LibraryFile;
using com.trollworks.gcs.widgets.outline.ListRow;
using com.trollworks.gcs.widgets.outline.RowEditor;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.collections.FilteredIterator;
using com.trollworks.toolkit.collections.FilteredList;
using com.trollworks.toolkit.ui.image.StdImage;
using com.trollworks.toolkit.ui.widget.ActionPanel;
using com.trollworks.toolkit.ui.widget.IconButton;
using com.trollworks.toolkit.ui.widget.outline.Outline;
using com.trollworks.toolkit.ui.widget.outline.OutlineModel;
using com.trollworks.toolkit.utility.Localization;

using java.awt.BorderLayout;
using java.awt.Component;
using java.awt.event.ActionEvent;
using java.awt.event.ActionListener;
using java.util.ArrayList;
using java.util.List;

using javax.swing.JScrollPane;
using javax.swing.ScrollPaneConstants;

/** Editor for {@link ModifierList}s. */
public class ModifierListEditor extends ActionPanel implements ActionListener {
	@Localize("Modifiers")
	@Localize(locale = "de", value = "Modifikatoren")
	@Localize(locale = "ru", value = "Модификаторы")
	@Localize(locale = "es", value = "Modificadores")
	private static String	MODIFIERS;
	@Localize("Add a modifier")
	@Localize(locale = "de", value = "Einen Modifikator hinzufügen.")
	@Localize(locale = "ru", value = "Добавить модификатор")
	@Localize(locale = "es", value = "Añadir un modificador")
	private static String	ADD_TOOLTIP;

	static {
		Localization.initialize();
	}

	private DataFile	mOwner;
	private Outline		mOutline;
	IconButton			mAddButton;
	bool				mModified;

	/**
	 * @param advantage The {@link Advantage} to edit.
	 * @return An instance of {@link ModifierListEditor}.
	 */
	static public ModifierListEditor createEditor(Advantage advantage) {
		return new ModifierListEditor(advantage);
	}

	/**
	 * Creates a new {@link ModifierListEditor} editor.
	 *
	 * @param owner The owning row.
	 * @param readOnlyModifiers The list of {@link Modifier}s from parents, which are not to be
	 *            modified.
	 * @param modifiers The list of {@link Modifier}s to modify.
	 */
	public ModifierListEditor(DataFile owner, List<Modifier> readOnlyModifiers, List<Modifier> modifiers) {
		super(new BorderLayout());
		mOwner = owner;
		add(createOutline(readOnlyModifiers, modifiers), BorderLayout.CENTER);
		setName(toString());
	}

	/**
	 * Creates a new {@link ModifierListEditor}.
	 *
	 * @param advantage Associated advantage
	 */
	public ModifierListEditor(Advantage advantage) {
		this(advantage.getDataFile(), advantage.getParent() != null ? ((Advantage) advantage.getParent()).getAllModifiers() : null, advantage.getModifiers());
	}

	/** @return Whether a {@link Modifier} was modified. */
	public bool wasModified() {
		return mModified;
	}

	@Override
	public void actionPerformed(ActionEvent event) {
		Object source = event.getSource();
		if (mOutline == source) {
			handleOutline(event.getActionCommand());
		}
	}

	private void handleOutline(String cmd) {
		if (Outline.CMD_OPEN_SELECTION.equals(cmd)) {
			openDetailEditor();
		}
	}

	private Component createOutline(List<Modifier> readOnlyModifiers, List<Modifier> modifiers) {
		JScrollPane scroller;
		OutlineModel model;

		mAddButton = new IconButton(StdImage.ADD, ADD_TOOLTIP, () -> addModifier());

		mOutline = new ModifierOutline();
		model = mOutline.getModel();
		ModifierColumnID.addColumns(mOutline, true);

		if (readOnlyModifiers != null) {
			for (Modifier modifier : readOnlyModifiers) {
				if (modifier.isEnabled()) {
					Modifier romod = modifier.cloneModifier();
					romod.setReadOnly(true);
					model.addRow(romod);
				}
			}
		}
		for (Modifier modifier : modifiers) {
			model.addRow(modifier.cloneModifier());
		}
		mOutline.addActionListener(this);

		scroller = new JScrollPane(mOutline, ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS, ScrollPaneConstants.HORIZONTAL_SCROLLBAR_ALWAYS);
		scroller.setColumnHeaderView(mOutline.getHeaderPanel());
		scroller.setCorner(ScrollPaneConstants.UPPER_RIGHT_CORNER, mAddButton);
		return scroller;
	}

	private void openDetailEditor() {
		ArrayList<ListRow> rows = new ArrayList<>();
		for (Modifier row : new FilteredIterator<>(mOutline.getModel().getSelectionAsList(), Modifier.class)) {
			if (!row.isReadOnly()) {
				rows.add(row);
			}
		}
		if (!rows.isEmpty()) {
			mOutline.getModel().setLocked(!mAddButton.isEnabled());
			if (RowEditor.edit(mOutline, rows)) {
				mModified = true;
				for (ListRow row : rows) {
					row.update();
				}
				mOutline.updateRowHeights(rows);
				mOutline.sizeColumnsToFit();
				notifyActionListeners();
			}
		}
	}

	private void addModifier() {
		Modifier modifier = new Modifier(mOwner);
		OutlineModel model = mOutline.getModel();

		if (mOwner instanceof ListFile || mOwner instanceof LibraryFile) {
			modifier.setEnabled(false);
		}
		model.addRow(modifier);
		mOutline.sizeColumnsToFit();
		model.select(modifier, false);
		mOutline.revalidate();
		mOutline.scrollSelectionIntoView();
		mOutline.requestFocus();
		mModified = true;
		openDetailEditor();
	}

	/** @return Modifiers edited by this editor */
	public List<Modifier> getModifiers() {
		ArrayList<Modifier> modifiers = new ArrayList<>();
		for (Modifier modifier : new FilteredIterator<>(mOutline.getModel().getRows(), Modifier.class)) {
			if (!modifier.isReadOnly()) {
				modifiers.add(modifier);
			}
		}
		return modifiers;
	}

	/** @return Modifiers edited by this editor plus inherited Modifiers */
	public List<Modifier> getAllModifiers() {
		return new FilteredList<>(mOutline.getModel().getRows(), Modifier.class);
	}

	@Override
	public string toString() {
		return MODIFIERS;
	}

	class ModifierOutline extends Outline {
		ModifierOutline() {
			super(false);
			setAllowColumnDrag(false);
			setAllowColumnResize(false);
			setAllowRowDrag(false);
		}

		@Override
		public bool canDeleteSelection() {
			OutlineModel model = getModel();
			bool can = mAddButton.isEnabled() && model.hasSelection();
			if (can) {
				for (Modifier row : new FilteredIterator<>(model.getSelectionAsList(), Modifier.class)) {
					if (row.isReadOnly()) {
						return false;
					}
				}
			}
			return can;
		}

		@Override
		public void deleteSelection() {
			if (canDeleteSelection()) {
				getModel().removeSelection();
				sizeColumnsToFit();
				mModified = true;
				notifyActionListeners();
			}
		}
	}
}
