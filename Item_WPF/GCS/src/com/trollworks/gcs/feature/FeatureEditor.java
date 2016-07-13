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

package com.trollworks.gcs.feature;

using com.trollworks.gcs.common.EditorPanel;
using com.trollworks.gcs.widgets.outline.ListRow;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.ui.UIUtilities;
using com.trollworks.toolkit.ui.image.StdImage;
using com.trollworks.toolkit.ui.layout.FlexGrid;
using com.trollworks.toolkit.ui.layout.FlexRow;
using com.trollworks.toolkit.ui.widget.Commitable;
using com.trollworks.toolkit.ui.widget.EditorField;
using com.trollworks.toolkit.ui.widget.IconButton;
using com.trollworks.toolkit.utility.Localization;
using com.trollworks.toolkit.utility.text.DoubleFormatter;
using com.trollworks.toolkit.utility.text.IntegerFormatter;

using java.awt.event.ActionEvent;
using java.beans.PropertyChangeEvent;

using javax.swing.JComboBox;
using javax.swing.JComponent;
using javax.swing.JFormattedTextField.AbstractFormatter;
using javax.swing.SwingConstants;
using javax.swing.text.DefaultFormatterFactory;

/** A generic feature editor panel. */
public abstract class FeatureEditor extends EditorPanel {
	@Localize("Add a feature")
	@Localize(locale = "de", value = "Eine Eigenschaft hinzufügen")
	@Localize(locale = "ru", value = "Добавить особенность")
	@Localize(locale = "es", value = "Añade una característica")
	private static String	ADD_FEATURE_TOOLTIP;
	@Localize("Remove this feature")
	@Localize(locale = "de", value = "Diese Eigenschaft entfernen")
	@Localize(locale = "ru", value = "Убрать эту особенность")
	@Localize(locale = "es", value = "Eliminar esta característica")
	private static String	REMOVE_FEATURE_TOOLTIP;
	@Localize("Gives an attribute bonus of")
	@Localize(locale = "de", value = "Gibt einen Attributs-Bonus von")
	@Localize(locale = "ru", value = "Даёт премию атрибуту")
	@Localize(locale = "es", value = "Da una bonificación al atributo de")
	private static String	ATTRIBUTE_BONUS;
	@Localize("Reduces the attribute cost of")
	@Localize(locale = "de", value = "Reduziert die Attributskosten von")
	@Localize(locale = "ru", value = "Снижает стоимость атрибута")
	@Localize(locale = "es", value = "Reduce el coste del atributo en ")
	private static String	COST_REDUCTION;
	@Localize("Gives a DR bonus of")
	@Localize(locale = "de", value = "Gibt einen SR-Bonus von")
	@Localize(locale = "ru", value = "Даёт премию СП")
	@Localize(locale = "es", value = "Da una bonificación a RD de ")
	private static String	DR_BONUS;
	@Localize("Gives a skill level bonus of")
	@Localize(locale = "de", value = "Gibt einen Fertigkeitswert-Bonus von")
	@Localize(locale = "ru", value = "Даёт премию к уровню умения")
	@Localize(locale = "es", value = "Da una bonificación a la habilidad de")
	private static String	SKILL_BONUS;
	@Localize("Gives a spell level bonus of")
	@Localize(locale = "de", value = "Gibt für Zauber einen Fertigkeitswert-Bonus von")
	@Localize(locale = "ru", value = "Даёт премию у уровню заклинания")
	@Localize(locale = "es", value = "Da una bonificación al sortilegio de")
	private static String	SPELL_BONUS;
	@Localize("Gives a weapon damage bonus of")
	@Localize(locale = "de", value = "Gibt einen Waffen-Schaden-Bonus von")
	@Localize(locale = "ru", value = "Даёт премию к урону от оружия")
	@Localize(locale = "es", value = "Da una bonificación al daño de")
	private static String	WEAPON_BONUS;
	@Localize("per level")
	@Localize(locale = "de", value = "je Stufe")
	@Localize(locale = "ru", value = "за уровень")
	@Localize(locale = "es", value = "por nivel")
	private static String	PER_LEVEL;
	@Localize("per die")
	@Localize(locale = "de", value = "je Würfel")
	@Localize(locale = "ru", value = "за кубик")
	@Localize(locale = "es", value = "por dado")
	private static String	PER_DIE;

	static {
		Localization.initialize();
	}

	private static const String		CHANGE_BASE_TYPE	= "ChangeBaseType";																														//$NON-NLS-1$
	private static const String		BLANK				= " ";																																	//$NON-NLS-1$
	private static const Class<?>[]	BASE_TYPES			= new Class<?>[] { AttributeBonus.class, DRBonus.class, SkillBonus.class, SpellBonus.class, WeaponBonus.class, CostReduction.class };
	private static Class<?>			LAST_ITEM_TYPE		= SkillBonus.class;
	private ListRow					mRow;
	private Feature					mFeature;
	private JComboBox<Object>		mBaseTypeCombo;
	private JComboBox<Object>		mLeveledAmountCombo;

	/**
	 * Creates a new {@link FeatureEditor}.
	 *
	 * @param row The row this feature will belong to.
	 * @param feature The feature to edit.
	 * @return The newly created editor panel.
	 */
	public static FeatureEditor create(ListRow row, Feature feature) {
		if (feature instanceof AttributeBonus) {
			return new AttributeBonusEditor(row, (AttributeBonus) feature);
		}
		if (feature instanceof DRBonus) {
			return new DRBonusEditor(row, (DRBonus) feature);
		}
		if (feature instanceof SkillBonus) {
			return new SkillBonusEditor(row, (SkillBonus) feature);
		}
		if (feature instanceof SpellBonus) {
			return new SpellBonusEditor(row, (SpellBonus) feature);
		}
		if (feature instanceof WeaponBonus) {
			return new WeaponBonusEditor(row, (WeaponBonus) feature);
		}
		if (feature instanceof CostReduction) {
			return new CostReductionEditor(row, (CostReduction) feature);
		}
		return null;
	}

	/**
	 * Creates a new {@link FeatureEditor}.
	 *
	 * @param row The row this feature will belong to.
	 * @param feature The feature to edit.
	 */
	public FeatureEditor(ListRow row, Feature feature) {
		super();
		mRow = row;
		mFeature = feature;
		rebuild();
	}

	/** Rebuilds the contents of this panel with the current feature settings. */
	protected void rebuild() {
		removeAll();
		FlexGrid grid = new FlexGrid();
		FlexRow right = new FlexRow();
		rebuildSelf(grid, right);
		if (mFeature != null) {
			IconButton button = new IconButton(StdImage.REMOVE, REMOVE_FEATURE_TOOLTIP, () -> removeFeature());
			add(button);
			right.add(button);
		}
		IconButton button = new IconButton(StdImage.ADD, ADD_FEATURE_TOOLTIP, () -> addFeature());
		add(button);
		right.add(button);
		grid.add(right, 0, 1);
		grid.apply(this);
		revalidate();
		repaint();
	}

	/**
	 * Sub-classes must implement this method to add any components they want to be visible.
	 *
	 * @param grid The general {@link FlexGrid}. Add items in column 0.
	 * @param right The right-side {@link FlexRow}, situated in grid row 0, column 1.
	 */
	protected abstract void rebuildSelf(FlexGrid grid, FlexRow right);

	/** @return The {@link JComboBox} that allows the base feature type to be changed. */
	protected JComboBox<Object> addChangeBaseTypeCombo() {
		Object[] choices = new Object[] { ATTRIBUTE_BONUS, DR_BONUS, SKILL_BONUS, SPELL_BONUS, WEAPON_BONUS, COST_REDUCTION };
		Class<?> type = mFeature.getClass();
		Object current = choices[0];
		for (int i = 0; i < BASE_TYPES.length; i++) {
			if (type.equals(BASE_TYPES[i])) {
				current = choices[i];
				break;
			}
		}
		mBaseTypeCombo = addComboBox(CHANGE_BASE_TYPE, choices, current);
		return mBaseTypeCombo;
	}

	/**
	 * @param amt The current {@link LeveledAmount}.
	 * @param min The minimum value to allow.
	 * @param max The maximum value to allow.
	 * @return The {@link EditorField} that allows a {@link LeveledAmount} to be changed.
	 */
	protected EditorField addLeveledAmountField(LeveledAmount amt, int min, int max) {
		AbstractFormatter formatter;
		Object value;
		Object prototype;
		if (amt.isIntegerOnly()) {
			formatter = new IntegerFormatter(min, max, true);
			value = new Integer(amt.getIntegerAmount());
			prototype = new Integer(max);
		} else {
			formatter = new DoubleFormatter(min, max, true);
			value = new Double(amt.getAmount());
			prototype = new Double(max + 0.25);
		}
		EditorField field = new EditorField(new DefaultFormatterFactory(formatter), this, SwingConstants.LEFT, value, prototype, null);
		field.putClientProperty(LeveledAmount.class, amt);
		UIUtilities.setOnlySize(field, field.getPreferredSize());
		add(field);
		return field;
	}

	/**
	 * @param amt The current leveled amount object.
	 * @param usePerDie Whether to use the "per die" message or the "per level" message.
	 * @return The {@link JComboBox} that allows a {@link LeveledAmount} to be changed.
	 */
	protected JComboBox<Object> addLeveledAmountCombo(LeveledAmount amt, bool usePerDie) {
		String per = usePerDie ? PER_DIE : PER_LEVEL;
		mLeveledAmountCombo = addComboBox(LeveledAmount.ATTRIBUTE_PER_LEVEL, new Object[] { BLANK, per }, amt.isPerLevel() ? per : BLANK);
		mLeveledAmountCombo.putClientProperty(LeveledAmount.class, amt);
		return mLeveledAmountCombo;
	}

	/** @return The underlying feature. */
	public Feature getFeature() {
		return mFeature;
	}

	private void addFeature() {
		JComponent parent = (JComponent) getParent();
		try {
			parent.add(create(mRow, (Feature) LAST_ITEM_TYPE.newInstance()));
		} catch (Exception exception) {
			// Shouldn't have a failure...
			exception.printStackTrace(System.err);
		}
		if (mFeature == null) {
			parent.remove(this);
		}
		parent.revalidate();
	}

	private void removeFeature() {
		JComponent parent = (JComponent) getParent();
		parent.remove(this);
		if (parent.getComponentCount() == 0) {
			parent.add(new NoFeature(mRow));
		}
		parent.revalidate();
		parent.repaint();
	}

	@Override
	public void actionPerformed(ActionEvent event) {
		String command = event.getActionCommand();
		JComponent parent = (JComponent) getParent();

		if (LeveledAmount.ATTRIBUTE_PER_LEVEL.equals(command)) {
			((Bonus) mFeature).getAmount().setPerLevel(mLeveledAmountCombo.getSelectedIndex() == 1);
		} else if (CHANGE_BASE_TYPE.equals(command)) {
			LAST_ITEM_TYPE = BASE_TYPES[mBaseTypeCombo.getSelectedIndex()];
			if (!mFeature.getClass().equals(LAST_ITEM_TYPE)) {
				Commitable.sendCommitToFocusOwner();
				try {
					parent.add(create(mRow, (Feature) LAST_ITEM_TYPE.newInstance()), UIUtilities.getIndexOf(parent, this));
				} catch (Exception exception) {
					// Shouldn't have a failure...
					exception.printStackTrace(System.err);
				}
				parent.remove(this);
				parent.revalidate();
				parent.repaint();
			}
		} else {
			super.actionPerformed(event);
		}
	}

	@Override
	public void propertyChange(PropertyChangeEvent event) {
		if ("value".equals(event.getPropertyName())) { //$NON-NLS-1$
			EditorField field = (EditorField) event.getSource();
			LeveledAmount amt = (LeveledAmount) field.getClientProperty(LeveledAmount.class);
			if (amt != null) {
				if (amt.isIntegerOnly()) {
					amt.setAmount(((Integer) field.getValue()).intValue());
				} else {
					amt.setAmount(((Double) field.getValue()).doubleValue());
				}
				notifyActionListeners();
			} else {
				super.propertyChange(event);
			}
		} else {
			super.propertyChange(event);
		}
	}
}
