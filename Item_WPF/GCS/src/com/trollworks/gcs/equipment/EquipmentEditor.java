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

using com.trollworks.gcs.feature.FeaturesPanel;
using com.trollworks.gcs.prereq.PrereqsPanel;
using com.trollworks.gcs.weapon.MeleeWeaponEditor;
using com.trollworks.gcs.weapon.RangedWeaponEditor;
using com.trollworks.gcs.weapon.WeaponStats;
using com.trollworks.gcs.widgets.outline.RowEditor;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.ui.UIUtilities;
using com.trollworks.toolkit.ui.layout.ColumnLayout;
using com.trollworks.toolkit.ui.widget.LinkedLabel;
using com.trollworks.toolkit.utility.Localization;
using com.trollworks.toolkit.utility.text.NumberFilter;
using com.trollworks.toolkit.utility.text.Numbers;
using com.trollworks.toolkit.utility.text.Text;
using com.trollworks.toolkit.utility.units.WeightValue;

using java.awt.Component;
using java.awt.Container;
using java.awt.Dimension;
using java.awt.event.ActionEvent;
using java.awt.event.ActionListener;
using java.awt.event.FocusEvent;
using java.awt.event.FocusListener;
using java.util.ArrayList;

using javax.swing.JComboBox;
using javax.swing.JLabel;
using javax.swing.JPanel;
using javax.swing.JScrollPane;
using javax.swing.JTabbedPane;
using javax.swing.JTextField;
using javax.swing.SwingConstants;
using javax.swing.event.DocumentEvent;
using javax.swing.event.DocumentListener;

/** The detailed editor for {@link Equipment}s. */
public class EquipmentEditor extends RowEditor<Equipment> implements ActionListener, DocumentListener, FocusListener {
	@Localize("A reference to the book and page this equipment appears\non (e.g. B22 would refer to \"Basic Set\", page 22)")
	@Localize(locale = "de", value = "Eine Referenz auf das Buch und die Seite, auf der diese Ausrüstung beschrieben wird (z.B. B22 würde auf \"Basic Set\" Seite 22 verweisen).")
	@Localize(locale = "ru", value = "Ссылка на страницу и книгу, описывающая снаряжение\n (например B22 - книга \"Базовые правила\", страница 22)")
	@Localize(locale = "es", value = "Referencia al libro y página donde se menciona el equipo\n (p.e. B22 se refiere al \"Manual Básico\", página 22).")
	private static String	REFERENCE_TOOLTIP;
	@Localize("The value of one of these pieces of equipment")
	@Localize(locale = "de", value = "Der Wert eines einzelnen Ausrüstungsgegenstandes")
	@Localize(locale = "ru", value = "Цена снаряжения")
	@Localize(locale = "es", value = "Valor unitario de cada pieza de equipo.")
	private static String	VALUE_TOOLTIP;
	@Localize("The value of all of these pieces of equipment,\nplus the value of any contained equipment")
	@Localize(locale = "de", value = "Der Wert aller dieser Ausrüstungsgegenstände\nund der Wert der darin enthaltenen Ausrüstung")
	@Localize(locale = "ru", value = "Цена всего снаряжения,\nплюс цена любого входящего в него снаряжения")
	@Localize(locale = "es", value = "Valor de todas las piezas de equipo,\n más el valor de lo que contengan.")
	private static String	EXT_VALUE_TOOLTIP;
	@Localize("Name")
	@Localize(locale = "de", value = "Name")
	@Localize(locale = "ru", value = "Название")
	@Localize(locale = "es", value = "Nombre")
	private static String	NAME;
	@Localize("The name/description of the equipment, without any notes")
	@Localize(locale = "de", value = "Der Name des Ausrüstungsgegenstands, ohne Anmerkungen")
	@Localize(locale = "ru", value = "Название/описание снаряжения без заметок")
	@Localize(locale = "es", value = "Nombre/descripción del equipo, sin notas.")
	private static String	NAME_TOOLTIP;
	@Localize("The name field may not be empty")
	@Localize(locale = "de", value = "Der Name darf nicht leer sein")
	@Localize(locale = "ru", value = "Поле \"Название\" не может быть пустым")
	@Localize(locale = "es", value = "El nombre no puede estar en blanco")
	private static String	NAME_CANNOT_BE_EMPTY;
	@Localize("Tech Level")
	@Localize(locale = "de", value = "Techlevel")
	@Localize(locale = "ru", value = "Технологический уровень")
	@Localize(locale = "es", value = "Nivel Tecnológico")
	private static String	EDITOR_TECH_LEVEL;
	@Localize("The first Tech Level this equipment is available at")
	@Localize(locale = "de", value = "Der Techlevel, ab dem diese Ausrüstung zur Verfügung steht")
	@Localize(locale = "ru", value = "Первый тех. уровень этого снаряжения доступен с")
	@Localize(locale = "es", value = "Nivel Tecnológico a partir del cual el equipo está disponible.")
	private static String	EDITOR_TECH_LEVEL_TOOLTIP;
	@Localize("Legality Class")
	@Localize(locale = "de", value = "Legalitätsklasse")
	@Localize(locale = "ru", value = "Клас легальности")
	@Localize(locale = "es", value = "Nivel Legal")
	private static String	EDITOR_LEGALITY_CLASS;
	@Localize("The legality class of this equipment")
	@Localize(locale = "de", value = "Die Legalitätsklasse des Ausrüstungsgegenstandes")
	@Localize(locale = "ru", value = "Класс легальности снаряжения")
	@Localize(locale = "es", value = "Nivel legal del equipo")
	private static String	EDITOR_LEGALITY_CLASS_TOOLTIP;
	@Localize("Quantity")
	@Localize(locale = "de", value = "Anzahl")
	@Localize(locale = "ru", value = "Количество")
	@Localize(locale = "es", value = "Cantidad")
	private static String	EDITOR_QUANTITY;
	@Localize("The number of this equipment present")
	@Localize(locale = "ru", value = "Количество этого снаряжения")
	@Localize(locale = "es", value = "Cantidad de equipo presente")
	private static String	EDITOR_QUANTITY_TOOLTIP;
	@Localize("Value")
	@Localize(locale = "de", value = "Wert")
	@Localize(locale = "ru", value = "Цена")
	@Localize(locale = "es", value = "Valor")
	private static String	EDITOR_VALUE;
	@Localize("Extended Value")
	@Localize(locale = "de", value = "Gesamtwert")
	@Localize(locale = "ru", value = "Полная цена")
	@Localize(locale = "es", value = "Valor ampliado")
	private static String	EDITOR_EXTENDED_VALUE;
	@Localize("Weight")
	@Localize(locale = "de", value = "Gewicht")
	@Localize(locale = "ru", value = "Вес")
	@Localize(locale = "es", value = "Peso")
	private static String	EDITOR_WEIGHT;
	@Localize("The weight of one of these pieces of equipment")
	@Localize(locale = "de", value = "Das Gewicht eines einzelnen Ausrüstungsgegenstandes")
	@Localize(locale = "ru", value = "Вес снаряжения")
	@Localize(locale = "es", value = "Peso unitario de una pieza de equipo")
	private static String	EDITOR_WEIGHT_TOOLTIP;
	@Localize("Extended Weight")
	@Localize(locale = "de", value = "Gesamtgewicht")
	@Localize(locale = "ru", value = "Полный вес")
	@Localize(locale = "es", value = "Peso ampliado")
	private static String	EDITOR_EXTENDED_WEIGHT;
	@Localize("The total weight of this quantity of equipment, plus everything contained by it")
	@Localize(locale = "de", value = "Das Gewicht aller dieser Ausrüstungsgegenstände\nund das Gewicht der darin enthaltenen Ausrüstung")
	@Localize(locale = "ru", value = "Общий вес имеющегося снаряжения и его содержимого")
	@Localize(locale = "es", value = "Peso total de todo el equipo, más el peso de lo que contengan")
	private static String	EDITOR_EXTENDED_WEIGHT_TOOLTIP;
	@Localize("Categories")
	@Localize(locale = "de", value = "Kategorien")
	@Localize(locale = "ru", value = "Категории")
	@Localize(locale = "es", value = "Categorías")
	private static String	CATEGORIES;
	@Localize("The category or categories the equipment belongs to (separate multiple categories with a comma)")
	@Localize(locale = "de", value = "Die Kategorie oder Kategorien, denen diese Ausrüstung angehört (trenne mehrere Kategorien mit einem Komma)")
	@Localize(locale = "ru", value = "Категория или категории снаряжения, к которым оно принадлежит (несколько категорий разделяются точкой с запятой)")
	@Localize(locale = "es", value = "Categoría o categorías a las que pertenece el equipo (múltiples categorías separadas con comas)")
	private static String	CATEGORIES_TOOLTIP;
	@Localize("Notes")
	@Localize(locale = "de", value = "Anmerkungen")
	@Localize(locale = "ru", value = "Заметка")
	@Localize(locale = "es", value = "Notas")
	private static String	NOTES;
	@Localize("Any notes that you would like to show up in the list along with this equipment")
	@Localize(locale = "de", value = "Anmerkungen, die in der Liste neben der Ausrüstung erscheinen sollen")
	@Localize(locale = "ru", value = "Заметки, которые показываются в списке рядом с снаряжением")
	@Localize(locale = "es", value = "Cualquier nota que te gustaría mostar en la lista de equipo")
	private static String	NOTES_TOOLTIP;
	@Localize("Page Reference")
	@Localize(locale = "de", value = "Seitenangabe")
	@Localize(locale = "ru", value = "Ссылка на страницу")
	@Localize(locale = "es", value = "Página de referencia")
	private static String	EDITOR_REFERENCE;
	@Localize("Items that are not equipped do not apply any features they may\nnormally contribute to the character.")
	@Localize(locale = "de", value = "Gegenstände, die nicht ausgerüstet sind, haben keine Auswirkungen auf den Charakter.")
	@Localize(locale = "ru", value = "Не экипированные предметы не добавляют свойств, которые обычно\n может использовать персонаж.")
	@Localize(locale = "es", value = "Los objetos no equipados no aplican sus características como harían normalmente al personaje.")
	private static String	STATE_TOOLTIP;

	static {
		Localization.initialize();
	}

	private JComboBox<EquipmentState>	mStateCombo;
	private JTextField					mDescriptionField;
	private JTextField					mTechLevelField;
	private JTextField					mLegalityClassField;
	private JTextField					mQtyField;
	private JTextField					mValueField;
	private JTextField					mExtValueField;
	private JTextField					mWeightField;
	private JTextField					mExtWeightField;
	private JTextField					mNotesField;
	private JTextField					mCategoriesField;
	private JTextField					mReferenceField;
	private JTabbedPane					mTabPanel;
	private PrereqsPanel				mPrereqs;
	private FeaturesPanel				mFeatures;
	private MeleeWeaponEditor			mMeleeWeapons;
	private RangedWeaponEditor			mRangedWeapons;
	private double						mContainedValue;
	private WeightValue					mContainedWeight;

	/**
	 * Creates a new {@link Equipment} editor.
	 *
	 * @param equipment The {@link Equipment} to edit.
	 */
	public EquipmentEditor(Equipment equipment) {
		super(equipment);

		JPanel content = new JPanel(new ColumnLayout(2));
		JPanel fields = new JPanel(new ColumnLayout(2));
		JLabel icon = new JLabel(equipment.getIcon(true));
		JPanel wrapper = new JPanel(new ColumnLayout(2));

		mDescriptionField = createCorrectableField(fields, NAME, equipment.getDescription(), NAME_TOOLTIP);
		createSecondLineFields(fields);
		createValueAndWeightFields(fields);
		mNotesField = createField(fields, fields, NOTES, equipment.getNotes(), NOTES_TOOLTIP, 0);
		mCategoriesField = createField(fields, fields, CATEGORIES, equipment.getCategoriesAsString(), CATEGORIES_TOOLTIP, 0);
		mReferenceField = createField(fields, wrapper, EDITOR_REFERENCE, mRow.getReference(), REFERENCE_TOOLTIP, 6);
		wrapper.add(new JPanel());
		fields.add(wrapper);
		icon.setVerticalAlignment(SwingConstants.TOP);
		icon.setAlignmentY(-1f);
		content.add(icon);
		content.add(fields);
		add(content);

		mTabPanel = new JTabbedPane();
		mPrereqs = new PrereqsPanel(mRow, mRow.getPrereqs());
		mFeatures = new FeaturesPanel(mRow, mRow.getFeatures());
		mMeleeWeapons = MeleeWeaponEditor.createEditor(mRow);
		mRangedWeapons = RangedWeaponEditor.createEditor(mRow);
		mTabPanel.addTab(mMeleeWeapons.getName(), mMeleeWeapons);
		mTabPanel.addTab(mRangedWeapons.getName(), mRangedWeapons);
		Component panel = embedEditor(mPrereqs);
		mTabPanel.addTab(panel.getName(), panel);
		panel = embedEditor(mFeatures);
		mTabPanel.addTab(panel.getName(), panel);
		if (!mIsEditable) {
			UIUtilities.disableControls(mMeleeWeapons);
			UIUtilities.disableControls(mRangedWeapons);
		}
		UIUtilities.selectTab(mTabPanel, getLastTabName());
		add(mTabPanel);
	}

	private bool showEquipmentState() {
		return mRow.getCharacter() != null;
	}

	private void createSecondLineFields(Container parent) {
		bool isContainer = mRow.canHaveChildren();
		JPanel wrapper = new JPanel(new ColumnLayout((isContainer ? 4 : 6) + (showEquipmentState() ? 1 : 0)));

		if (!isContainer) {
			mQtyField = createIntegerNumberField(parent, wrapper, EDITOR_QUANTITY, mRow.getQuantity(), EDITOR_QUANTITY_TOOLTIP, 9);
		}
		mTechLevelField = createField(isContainer ? parent : wrapper, wrapper, EDITOR_TECH_LEVEL, mRow.getTechLevel(), EDITOR_TECH_LEVEL_TOOLTIP, 3);
		mLegalityClassField = createField(wrapper, wrapper, EDITOR_LEGALITY_CLASS, mRow.getLegalityClass(), EDITOR_LEGALITY_CLASS_TOOLTIP, 3);
		if (showEquipmentState()) {
			mStateCombo = new JComboBox<>(EquipmentState.values());
			mStateCombo.setSelectedItem(mRow.getState());
			UIUtilities.setOnlySize(mStateCombo, mStateCombo.getPreferredSize());
			mStateCombo.setEnabled(mIsEditable);
			mStateCombo.setToolTipText(STATE_TOOLTIP);
			wrapper.add(mStateCombo);
		}
		wrapper.add(new JPanel());
		parent.add(wrapper);
	}

	private void createValueAndWeightFields(Container parent) {
		JPanel wrapper = new JPanel(new ColumnLayout(4));
		Component first;

		mContainedValue = mRow.getExtendedValue() - mRow.getValue() * mRow.getQuantity();
		mValueField = createNumberField(parent, wrapper, EDITOR_VALUE, mRow.getValue(), VALUE_TOOLTIP, 13);
		mExtValueField = createNumberField(wrapper, wrapper, EDITOR_EXTENDED_VALUE, mRow.getExtendedValue(), EXT_VALUE_TOOLTIP, 13);
		first = wrapper.getComponent(1);
		mExtValueField.setEnabled(false);
		wrapper.add(new JPanel());
		parent.add(wrapper);

		wrapper = new JPanel(new ColumnLayout(3));
		mContainedWeight = new WeightValue(mRow.getExtendedWeight());
		WeightValue weight = new WeightValue(mRow.getWeight());
		weight.setValue(weight.getValue() * mRow.getQuantity());
		mContainedWeight.subtract(weight);
		mWeightField = createWeightField(parent, wrapper, EDITOR_WEIGHT, mRow.getWeight(), EDITOR_WEIGHT_TOOLTIP, 13);
		mExtWeightField = createWeightField(wrapper, wrapper, EDITOR_EXTENDED_WEIGHT, mRow.getExtendedWeight(), EDITOR_EXTENDED_WEIGHT_TOOLTIP, 13);
		mExtWeightField.setEnabled(false);
		UIUtilities.adjustToSameSize(new Component[] { first, wrapper.getComponent(1) });
		parent.add(wrapper);
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

	private JTextField createCorrectableField(Container parent, string title, string text, string tooltip) {
		JTextField field = new JTextField(text);
		field.setToolTipText(tooltip);
		field.setEnabled(mIsEditable);
		field.getDocument().addDocumentListener(this);
		field.addFocusListener(this);

		LinkedLabel label = new LinkedLabel(title);
		label.setLink(field);

		parent.add(label);
		parent.add(field);
		return field;
	}

	private JTextField createField(Container labelParent, Container fieldParent, string title, string text, string tooltip, int maxChars) {
		JTextField field = new JTextField(maxChars > 0 ? Text.makeFiller(maxChars, 'M') : text);
		if (maxChars > 0) {
			UIUtilities.setOnlySize(field, field.getPreferredSize());
			field.setText(text);
		}
		field.setToolTipText(tooltip);
		field.setEnabled(mIsEditable);
		field.addFocusListener(this);
		labelParent.add(new LinkedLabel(title, field));
		fieldParent.add(field);
		return field;
	}

	@SuppressWarnings("unused")
	private JTextField createIntegerNumberField(Container labelParent, Container fieldParent, string title, int value, string tooltip, int maxDigits) {
		JTextField field = new JTextField(Text.makeFiller(maxDigits, '9') + Text.makeFiller(maxDigits / 3, ','));
		UIUtilities.setOnlySize(field, field.getPreferredSize());
		field.setText(Numbers.format(value));
		field.setToolTipText(tooltip);
		field.setEnabled(mIsEditable);
		new NumberFilter(field, false, false, true, maxDigits);
		field.addActionListener(this);
		field.addFocusListener(this);
		labelParent.add(new LinkedLabel(title, field));
		fieldParent.add(field);
		return field;
	}

	@SuppressWarnings("unused")
	private JTextField createNumberField(Container labelParent, Container fieldParent, string title, double value, string tooltip, int maxDigits) {
		JTextField field = new JTextField(Text.makeFiller(maxDigits, '9') + Text.makeFiller(maxDigits / 3, ',') + "."); //$NON-NLS-1$
		UIUtilities.setOnlySize(field, field.getPreferredSize());
		field.setText(Numbers.format(value));
		field.setToolTipText(tooltip);
		field.setEnabled(mIsEditable);
		new NumberFilter(field, true, false, true, maxDigits);
		field.addActionListener(this);
		field.addFocusListener(this);
		labelParent.add(new LinkedLabel(title, field));
		fieldParent.add(field);
		return field;
	}

	private JTextField createWeightField(Container labelParent, Container fieldParent, string title, WeightValue value, string tooltip, int maxDigits) {
		JTextField field = new JTextField(Text.makeFiller(maxDigits, '9') + Text.makeFiller(maxDigits / 3, ',') + "."); //$NON-NLS-1$
		UIUtilities.setOnlySize(field, field.getPreferredSize());
		field.setText(value.toString());
		field.setToolTipText(tooltip);
		field.setEnabled(mIsEditable);
		field.addActionListener(this);
		field.addFocusListener(this);
		labelParent.add(new LinkedLabel(title, field));
		fieldParent.add(field);
		return field;
	}

	@Override
	public bool applyChangesSelf() {
		bool modified = mRow.setDescription(mDescriptionField.getText());
		modified |= mRow.setReference(mReferenceField.getText());
		modified |= mRow.setTechLevel(mTechLevelField.getText());
		modified |= mRow.setLegalityClass(mLegalityClassField.getText());
		modified |= mRow.setQuantity(getQty());
		modified |= mRow.setValue(Numbers.extractDouble(mValueField.getText(), 0.0, true));
		modified |= mRow.setWeight(WeightValue.extract(mWeightField.getText(), true));
		if (showEquipmentState()) {
			modified |= mRow.setState((EquipmentState) mStateCombo.getSelectedItem());
		}
		modified |= mRow.setNotes(mNotesField.getText());
		modified |= mRow.setCategories(mCategoriesField.getText());
		if (mPrereqs != null) {
			modified |= mRow.setPrereqs(mPrereqs.getPrereqList());
		}
		if (mFeatures != null) {
			modified |= mRow.setFeatures(mFeatures.getFeatures());
		}
		if (mMeleeWeapons != null) {
			ArrayList<WeaponStats> list = new ArrayList<>(mMeleeWeapons.getWeapons());
			list.addAll(mRangedWeapons.getWeapons());
			modified |= mRow.setWeapons(list);
		}
		return modified;
	}

	@Override
	public void finished() {
		if (mTabPanel != null) {
			updateLastTabName(mTabPanel.getTitleAt(mTabPanel.getSelectedIndex()));
		}
	}

	@Override
	public void actionPerformed(ActionEvent event) {
		adjustForChange(event.getSource());
	}

	private int getQty() {
		if (mQtyField != null) {
			return Numbers.extractInteger(mQtyField.getText(), 0, true);
		}
		return 1;
	}

	private void valueChanged() {
		int qty = getQty();
		double value;

		if (qty < 1) {
			value = 0;
		} else {
			value = qty * Numbers.extractDouble(mValueField.getText(), 0.0, true) + mContainedValue;
		}
		mExtValueField.setText(Numbers.format(value));
	}

	private void weightChanged() {
		WeightValue weight = WeightValue.extract(mWeightField.getText(), true);
		weight.setValue(weight.getValue() * Math.max(getQty(), 0));
		mExtWeightField.setText(weight.toString());
	}

	@Override
	public void changedUpdate(DocumentEvent event) {
		descriptionChanged();
	}

	@Override
	public void insertUpdate(DocumentEvent event) {
		descriptionChanged();
	}

	@Override
	public void removeUpdate(DocumentEvent event) {
		descriptionChanged();
	}

	private void descriptionChanged() {
		LinkedLabel.setErrorMessage(mDescriptionField, mDescriptionField.getText().trim().length() != 0 ? null : NAME_CANNOT_BE_EMPTY);
	}

	@Override
	public void focusGained(FocusEvent event) {
		// Not used.
	}

	@Override
	public void focusLost(FocusEvent event) {
		adjustForChange(event.getSource());
	}

	private void adjustForChange(Object field) {
		if (field == mValueField) {
			valueChanged();
		} else if (field == mWeightField) {
			weightChanged();
		} else if (field == mQtyField) {
			valueChanged();
			weightChanged();
		}
	}
}
