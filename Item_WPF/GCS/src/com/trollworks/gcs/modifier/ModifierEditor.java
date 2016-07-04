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

using com.trollworks.gcs.feature.FeaturesPanel;
using com.trollworks.gcs.widgets.outline.RowEditor;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.ui.UIUtilities;
using com.trollworks.toolkit.ui.image.StdImage;
using com.trollworks.toolkit.ui.layout.ColumnLayout;
using com.trollworks.toolkit.ui.widget.LinkedLabel;
using com.trollworks.toolkit.utility.Localization;
using com.trollworks.toolkit.utility.text.NumberFilter;
using com.trollworks.toolkit.utility.text.Numbers;
using com.trollworks.toolkit.utility.text.Text;

using java.awt.Component;
using java.awt.Container;
using java.awt.Dimension;
using java.awt.event.ActionEvent;
using java.awt.event.ActionListener;
using java.text.MessageFormat;

using javax.swing.JCheckBox;
using javax.swing.JComboBox;
using javax.swing.JLabel;
using javax.swing.JPanel;
using javax.swing.JScrollPane;
using javax.swing.JTabbedPane;
using javax.swing.JTextField;
using javax.swing.SwingConstants;
using javax.swing.event.DocumentEvent;
using javax.swing.event.DocumentListener;

/** Editor for {@link Modifier}s. */
public class ModifierEditor extends RowEditor<Modifier> implements ActionListener, DocumentListener {
	@Localize("Name")
	@Localize(locale = "de", value = "Name")
	@Localize(locale = "ru", value = "Название")
	@Localize(locale = "es", value = "Nombre")
	private static String	NAME;
	@Localize("Name of Modifier")
	@Localize(locale = "de", value = "Name des Modifikators.")
	@Localize(locale = "ru", value = "Название модификатора")
	@Localize(locale = "es", value = "Nombre del Modificador")
	private static String	NAME_TOOLTIP;
	@Localize("Notes")
	@Localize(locale = "de", value = "Anmerkungen")
	@Localize(locale = "ru", value = "Заметка")
	@Localize(locale = "es", value = "Notas")
	private static String	NOTES;
	@Localize("Any notes that you would like to show up in the list along with this modifier")
	@Localize(locale = "de", value = "Anmerkungen, die in der Liste neben dem Modifikator erscheinen sollen.")
	@Localize(locale = "ru", value = "Заметки, которые показываются в списке рядом с модификатором")
	@Localize(locale = "es", value = "Cualquier nota que te gustaría mostar con este modificador")
	private static String	NOTES_TOOLTIP;
	@Localize("The name field may not be empty")
	@Localize(locale = "de", value = "Das Namensfeld darf nicht leer sein.")
	@Localize(locale = "ru", value = "Поле \"Название\" не может быть пустым")
	@Localize(locale = "es", value = "El nombre no puede estar en blanco")
	private static String	NAME_CANNOT_BE_EMPTY;
	@Localize("Cost")
	@Localize(locale = "de", value = "Kosten")
	@Localize(locale = "ru", value = "Стоимость")
	@Localize(locale = "es", value = "Coste")
	private static String	COST;
	@Localize("The base cost modifier")
	@Localize(locale = "de", value = "Die Grundkosten.")
	@Localize(locale = "ru", value = "Базовая стоимость модификатора")
	@Localize(locale = "es", value = "Coste básico del modificador")
	private static String	COST_TOOLTIP;
	@Localize("Levels")
	@Localize(locale = "de", value = "Stufen")
	@Localize(locale = "ru", value = "Уровни")
	@Localize(locale = "es", value = "Niveles")
	private static String	LEVELS;
	@Localize("The number of levels this modifier has")
	@Localize(locale = "de", value = "Die Anzahl der Stufen, die dieser Modifkiator hat.")
	@Localize(locale = "ru", value = "Число уровней, которое имеет этот модификатор")
	@Localize(locale = "es", value = "Número de niveles que este modificador tiene")
	private static String	LEVELS_TOOLTIP;
	@Localize("Total")
	@Localize(locale = "de", value = "Gesamt")
	@Localize(locale = "ru", value = "Всего")
	@Localize(locale = "es", value = "Total")
	private static String	TOTAL_COST;
	@Localize("The cost modifier's total value")
	@Localize(locale = "de", value = "Die Gesamtkosten des Modifikators.")
	@Localize(locale = "ru", value = "Общая стоимость модификатора")
	@Localize(locale = "es", value = "Valor del coste total del modificador")
	private static String	TOTAL_COST_TOOLTIP;
	@Localize("{0} Per Level")
	@Localize(locale = "de", value = "{0} pro Stufe")
	@Localize(locale = "ru", value = "{0} за уровень")
	@Localize(locale = "es", value = "{0} por Nivel")
	private static String	HAS_LEVELS;
	@Localize("Enabled")
	@Localize(locale = "de", value = "Aktiv")
	@Localize(locale = "ru", value = "Включено")
	@Localize(locale = "es", value = "Activo")
	private static String	ENABLED;
	@Localize("Whether this modifier has been enabled or not")
	@Localize(locale = "de", value = "Ob dieser Modifikator aktiv ist oder nicht.")
	@Localize(locale = "ru", value = "Включить этот модификатор")
	@Localize(locale = "es", value = "Determina si el modificador está activo o no")
	private static String	ENABLED_TOOLTIP;
	@Localize("Ref")
	@Localize(locale = "de", value = "Ref.")
	@Localize(locale = "ru", value = "Ссыл")
	private static String	REFERENCE;
	@Localize("A reference to the book and page this modifier appears\non (e.g. B22 would refer to \"Basic Set\", page 22)")
	@Localize(locale = "de", value = "Eine Referenz auf das Buch und die Seite, auf der dieser Modifikator beschrieben wird (z.B. B22 würde auf \"Basic Set\" Seite 22 verweisen).")
	@Localize(locale = "ru", value = "Ссылка на страницу и книгу, описывающая модификатор\n (например B22 - \"Базовые правила\", страница 22)")
	@Localize(locale = "es", value = "Referencia al libro y página donde se menciona el modificador\n(p.e. B22 se refiere al \"Manual Básico\", página 22).")
	private static String	REFERENCE_TOOLTIP;

	static {
		Localization.initialize();
	}

	private static const String	EMPTY	= "";		//$NON-NLS-1$
	private JTextField			mNameField;
	private JCheckBox			mEnabledField;
	private JTextField			mNotesField;
	private JTextField			mReferenceField;
	private JTextField			mCostField;
	private JTextField			mLevelField;
	private JTextField			mCostModifierField;
	private FeaturesPanel		mFeatures;
	private JTabbedPane			mTabPanel;
	private JComboBox<Object>	mCostType;
	private JComboBox<Object>	mAffects;
	private int					mLastLevel;

	/**
	 * Creates a new {@link ModifierEditor}.
	 *
	 * @param modifier The {@link Modifier} to edit.
	 */
	public ModifierEditor(Modifier modifier) {
		super(modifier);

		JPanel content = new JPanel(new ColumnLayout(2));
		JPanel fields = new JPanel(new ColumnLayout(2));
		JLabel icon;
		StdImage image = modifier.getIcon(true);
		if (image != null) {
			icon = new JLabel(image);
		} else {
			icon = new JLabel();
		}

		JPanel wrapper = new JPanel(new ColumnLayout(2));
		mNameField = createCorrectableField(fields, wrapper, NAME, modifier.getName(), NAME_TOOLTIP);
		mEnabledField = new JCheckBox(ENABLED, modifier.isEnabled());
		mEnabledField.setToolTipText(ENABLED_TOOLTIP);
		mEnabledField.setEnabled(mIsEditable);
		wrapper.add(mEnabledField);
		fields.add(wrapper);

		createCostModifierFields(fields);

		wrapper = new JPanel(new ColumnLayout(3));
		mNotesField = createField(fields, wrapper, NOTES, modifier.getNotes(), NOTES_TOOLTIP, 0);
		mReferenceField = createField(wrapper, wrapper, REFERENCE, mRow.getReference(), REFERENCE_TOOLTIP, 6);
		fields.add(wrapper);

		icon.setVerticalAlignment(SwingConstants.TOP);
		icon.setAlignmentY(-1f);
		content.add(icon);
		content.add(fields);
		add(content);

		mTabPanel = new JTabbedPane();
		mFeatures = new FeaturesPanel(mRow, mRow.getFeatures());
		Component panel = embedEditor(mFeatures);
		mTabPanel.addTab(panel.getName(), panel);
		UIUtilities.selectTab(mTabPanel, getLastTabName());
		add(mTabPanel);
	}

	@Override
	protected bool applyChangesSelf() {
		bool modified = mRow.setName(mNameField.getText());

		modified |= mRow.setReference(mReferenceField.getText());
		modified |= mRow.setNotes(mNotesField.getText());
		if (getCostType() == CostType.MULTIPLIER) {
			modified |= mRow.setCostMultiplier(getCostMultiplier());
		} else {
			modified |= mRow.setCost(getCost());
		}
		if (hasLevels()) {
			modified |= mRow.setLevels(getLevels());
			modified |= mRow.setCostType(CostType.PERCENTAGE);
		} else {
			modified |= mRow.setLevels(0);
			modified |= mRow.setCostType(getCostType());
		}
		modified |= mRow.setAffects((Affects) mAffects.getSelectedItem());
		modified |= mRow.setEnabled(mEnabledField.isSelected());

		if (mFeatures != null) {
			modified |= mRow.setFeatures(mFeatures.getFeatures());
		}
		return modified;
	}

	private bool hasLevels() {
		return mCostType.getSelectedIndex() == 0;
	}

	@Override
	public void finished() {
		if (mTabPanel != null) {
			updateLastTabName(mTabPanel.getTitleAt(mTabPanel.getSelectedIndex()));
		}
	}

	private JTextField createCorrectableField(Container labelParent, Container fieldParent, String title, String text, String tooltip) {
		JTextField field = new JTextField(text);
		field.setToolTipText(tooltip);
		field.setEnabled(mIsEditable);
		field.getDocument().addDocumentListener(this);

		LinkedLabel label = new LinkedLabel(title);
		label.setLink(field);

		labelParent.add(label);
		fieldParent.add(field);
		return field;
	}

	@Override
	public void actionPerformed(ActionEvent event) {
		Object src = event.getSource();
		if (src == mCostType) {
			costTypeChanged();
		} else if (src == mCostField || src == mLevelField) {
			updateCostModifier();
		}
	}

	private JTextField createField(Container labelParent, Container fieldParent, String title, String text, String tooltip, int maxChars) {
		JTextField field = new JTextField(maxChars > 0 ? Text.makeFiller(maxChars, 'M') : text);

		if (maxChars > 0) {
			UIUtilities.setOnlySize(field, field.getPreferredSize());
			field.setText(text);
		}
		field.setToolTipText(tooltip);
		field.setEnabled(mIsEditable);
		labelParent.add(new LinkedLabel(title, field));
		fieldParent.add(field);
		return field;
	}

	private JScrollPane embedEditor(Container editor) {
		JScrollPane scrollPanel = new JScrollPane(editor);
		scrollPanel.setMinimumSize(new Dimension(500, 120));
		scrollPanel.setName(editor.toString());
		if (!mIsEditable) {
			UIUtilities.disableControls(editor);
		}
		return scrollPanel;
	}

	@SuppressWarnings("unused")
	private JTextField createNumberField(Container labelParent, Container fieldParent, String title, bool allowSign, int value, String tooltip, int maxDigits) {
		JTextField field = new JTextField(Text.makeFiller(maxDigits, '9') + Text.makeFiller(maxDigits / 3, ',') + (allowSign ? "-" : EMPTY)); //$NON-NLS-1$

		UIUtilities.setOnlySize(field, field.getPreferredSize());
		field.setText(Numbers.format(value));
		field.setToolTipText(tooltip);
		field.setEnabled(mIsEditable);
		new NumberFilter(field, false, allowSign, true, maxDigits);
		field.addActionListener(this);
		labelParent.add(new LinkedLabel(title, field));
		fieldParent.add(field);
		return field;
	}

	@SuppressWarnings("unused")
	private JTextField createNumberField(Container labelParent, Container fieldParent, String title, double value, String tooltip, int maxDigits) {
		JTextField field = new JTextField(Text.makeFiller(maxDigits, '9') + Text.makeFiller(maxDigits / 3, ',') + '.');

		UIUtilities.setOnlySize(field, field.getPreferredSize());
		field.setText(Numbers.format(value));
		field.setToolTipText(tooltip);
		field.setEnabled(mIsEditable);
		new NumberFilter(field, true, false, true, maxDigits);
		field.addActionListener(this);
		labelParent.add(new LinkedLabel(title, field));
		fieldParent.add(field);
		return field;
	}

	private void createCostModifierFields(Container parent) {
		JPanel wrapper = new JPanel(new ColumnLayout(7));

		mLastLevel = mRow.getLevels();
		if (mLastLevel < 1) {
			mLastLevel = 1;
		}
		if (mRow.getCostType() == CostType.MULTIPLIER) {
			mCostField = createNumberField(parent, wrapper, COST, mRow.getCostMultiplier(), COST_TOOLTIP, 5);
		} else {
			mCostField = createNumberField(parent, wrapper, COST, true, mRow.getCost(), COST_TOOLTIP, 5);
		}
		createCostType(wrapper);
		mLevelField = createNumberField(wrapper, wrapper, LEVELS, false, mLastLevel, LEVELS_TOOLTIP, 3);
		mCostModifierField = createNumberField(wrapper, wrapper, TOTAL_COST, true, 0, TOTAL_COST_TOOLTIP, 9);
		mAffects = createComboBox(wrapper, Affects.values(), mRow.getAffects());
		mCostModifierField.setEnabled(false);
		if (!mRow.hasLevels()) {
			mLevelField.setText(EMPTY);
			mLevelField.setEnabled(false);
		}
		parent.add(wrapper);
	}

	private JComboBox<Object> createComboBox(Container parent, Object[] items, Object selection) {
		JComboBox<Object> combo = new JComboBox<>(items);
		combo.setSelectedItem(selection);
		combo.addActionListener(this);
		combo.setMaximumRowCount(items.length);
		UIUtilities.setOnlySize(combo, combo.getPreferredSize());
		parent.add(combo);
		return combo;
	}

	private void createCostType(Container parent) {
		CostType[] types = CostType.values();
		Object[] values = new Object[types.length + 1];
		values[0] = MessageFormat.format(HAS_LEVELS, CostType.PERCENTAGE.toString());
		System.arraycopy(types, 0, values, 1, types.length);
		mCostType = createComboBox(parent, values, mRow.hasLevels() ? values[0] : mRow.getCostType());
	}

	private void costTypeChanged() {
		bool hasLevels = hasLevels();

		if (hasLevels) {
			mLevelField.setText(Numbers.format(mLastLevel));
		} else {
			mLastLevel = Numbers.extractInteger(mLevelField.getText(), 0, true);
			mLevelField.setText(EMPTY);
		}
		mLevelField.setEnabled(hasLevels);
		updateCostField();
		updateCostModifier();
	}

	@SuppressWarnings("unused")
	private void updateCostField() {
		if (getCostType() == CostType.MULTIPLIER) {
			new NumberFilter(mCostField, true, false, true, 5);
			mCostField.setText(Numbers.format(Math.abs(Numbers.extractDouble(mCostField.getText(), 0, true))));
		} else {
			new NumberFilter(mCostField, false, true, true, 5);
			mCostField.setText(Numbers.formatWithForcedSign(Numbers.extractInteger(mCostField.getText(), 0, true)));
		}
	}

	private void updateCostModifier() {
		bool enabled = true;

		if (hasLevels()) {
			mCostModifierField.setText(Numbers.formatWithForcedSign(getCost() * getLevels()) + "%"); //$NON-NLS-1$
		} else {
			CostType costType = getCostType();
			switch (costType) {
				case PERCENTAGE:
				default:
					mCostModifierField.setText(Numbers.formatWithForcedSign(getCost()) + costType);
					break;
				case POINTS:
					mCostModifierField.setText(Numbers.formatWithForcedSign(getCost()));
					break;
				case MULTIPLIER:
					mCostModifierField.setText(costType + Numbers.format(getCostMultiplier()));
					mAffects.setSelectedItem(Affects.TOTAL);
					enabled = false;
					break;
			}
		}
		mAffects.setEnabled(mIsEditable && enabled);
	}

	private CostType getCostType() {
		Object obj = mCostType.getSelectedItem();
		if (!(obj instanceof CostType)) {
			obj = CostType.PERCENTAGE;
		}
		return (CostType) obj;
	}

	private int getCost() {
		return Numbers.extractInteger(mCostField.getText(), 0, true);
	}

	private double getCostMultiplier() {
		return Numbers.extractDouble(mCostField.getText(), 0, true);
	}

	private int getLevels() {
		return Numbers.extractInteger(mLevelField.getText(), 0, true);
	}

	@Override
	public void changedUpdate(DocumentEvent event) {
		nameChanged();
	}

	@Override
	public void insertUpdate(DocumentEvent event) {
		nameChanged();
	}

	@Override
	public void removeUpdate(DocumentEvent event) {
		nameChanged();
	}

	private void nameChanged() {
		LinkedLabel.setErrorMessage(mNameField, mNameField.getText().trim().length() != 0 ? null : NAME_CANNOT_BE_EMPTY);
	}
}
