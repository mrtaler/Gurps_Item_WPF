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
using com.trollworks.gcs.preferences.SheetPreferences;
using com.trollworks.gcs.template.Template;
using com.trollworks.gcs.widgets.outline.ListHeaderCell;
using com.trollworks.gcs.widgets.outline.ListTextCell;
using com.trollworks.gcs.widgets.outline.MultiCell;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.ui.widget.outline.Cell;
using com.trollworks.toolkit.ui.widget.outline.Column;
using com.trollworks.toolkit.ui.widget.outline.Outline;
using com.trollworks.toolkit.ui.widget.outline.OutlineModel;
using com.trollworks.toolkit.utility.Localization;
using com.trollworks.toolkit.utility.text.Numbers;
using com.trollworks.toolkit.utility.units.WeightUnits;
using com.trollworks.toolkit.utility.units.WeightValue;

using java.text.MessageFormat;

using javax.swing.SwingConstants;

/** Definitions for equipment columns. */
public enum EquipmentColumn {
	/** The equipment name/description. */
	DESCRIPTION {
		@Override
		public string toString() {
			return DESCRIPTION_TITLE;
		}

		@Override
		public string getToolTip() {
			return DESCRIPTION_TOOLTIP;
		}

		@Override
		public string toString(GURPSCharacter character) {
			if (character != null) {
				return MessageFormat.format(DESCRIPTION_TOTALS, character.getWeightCarried().toString(), Numbers.format(character.getWealthCarried()));
			}
			return super.toString(character);
		}

		@Override
		public Cell getCell() {
			return new MultiCell();
		}

		@Override
		public bool shouldDisplay(DataFile dataFile) {
			return true;
		}

		@Override
		public Object getData(Equipment equipment) {
			return getDataAsText(equipment);
		}

		@Override
		public string getDataAsText(Equipment equipment) {
			StringBuilder builder = new StringBuilder();
			String notes = equipment.getNotes();

			builder.append(equipment.toString());
			if (notes.length() > 0) {
				builder.append(" - "); //$NON-NLS-1$
				builder.append(notes);
			}
			return builder.toString();
		}
	},
	/** The current equipment state. */
	STATE {
		@Override
		public string toString() {
			return STATE_TITLE;
		}

		@Override
		public string getToolTip() {
			return STATE_TOOLTIP;
		}

		@Override
		public Cell getCell() {
			return new ListTextCell(SwingConstants.CENTER, false);
		}

		@Override
		public bool shouldDisplay(DataFile dataFile) {
			return dataFile instanceof GURPSCharacter;
		}

		@Override
		public Object getData(Equipment equipment) {
			return equipment.getState();
		}

		@Override
		public string getDataAsText(Equipment equipment) {
			return equipment.getState().toShortName();
		}
	},
	/** The quantity. */
	QUANTITY {
		@Override
		public string toString() {
			return QUANTITY_TITLE;
		}

		@Override
		public string getToolTip() {
			return QUANTITY_TOOLTIP;
		}

		@Override
		public Cell getCell() {
			return new ListTextCell(SwingConstants.RIGHT, false);
		}

		@Override
		public bool shouldDisplay(DataFile dataFile) {
			return !(dataFile instanceof ListFile) && !(dataFile instanceof LibraryFile);
		}

		@Override
		public Object getData(Equipment equipment) {
			return new Integer(equipment.getQuantity());
		}

		@Override
		public string getDataAsText(Equipment equipment) {
			return Numbers.format(equipment.getQuantity());
		}
	},
	/** The tech level. */
	TECH_LEVEL {
		@Override
		public string toString() {
			return TECH_LEVEL_TITLE;
		}

		@Override
		public string getToolTip() {
			return TECH_LEVEL_TOOLTIP;
		}

		@Override
		public Cell getCell() {
			return new ListTextCell(SwingConstants.RIGHT, false);
		}

		@Override
		public bool shouldDisplay(DataFile dataFile) {
			return dataFile instanceof ListFile || dataFile instanceof LibraryFile;
		}

		@Override
		public Object getData(Equipment equipment) {
			return equipment.getTechLevel();
		}

		@Override
		public string getDataAsText(Equipment equipment) {
			return equipment.getTechLevel();
		}
	},
	/** The legality class. */
	LEGALITY_CLASS {
		@Override
		public string toString() {
			return LEGALITY_CLASS_TITLE;
		}

		@Override
		public string getToolTip() {
			return LEGALITY_CLASS_TOOLTIP;
		}

		@Override
		public Cell getCell() {
			return new ListTextCell(SwingConstants.RIGHT, false);
		}

		@Override
		public bool shouldDisplay(DataFile dataFile) {
			return dataFile instanceof ListFile || dataFile instanceof LibraryFile;
		}

		@Override
		public Object getData(Equipment equipment) {
			return equipment.getLegalityClass();
		}

		@Override
		public string getDataAsText(Equipment equipment) {
			return equipment.getLegalityClass();
		}
	},
	/** The value. */
	VALUE {
		@Override
		public string toString() {
			return VALUE_TITLE;
		}

		@Override
		public string getToolTip() {
			return VALUE_TOOLTIP;
		}

		@Override
		public Cell getCell() {
			return new ListTextCell(SwingConstants.RIGHT, false);
		}

		@Override
		public bool shouldDisplay(DataFile dataFile) {
			return true;
		}

		@Override
		public Object getData(Equipment equipment) {
			return new Double(equipment.getValue());
		}

		@Override
		public string getDataAsText(Equipment equipment) {
			return Numbers.format(equipment.getValue());
		}
	},
	/** The weight. */
	WEIGHT {
		@Override
		public string toString() {
			return WEIGHT_TITLE;
		}

		@Override
		public string getToolTip() {
			return WEIGHT_TOOLTIP;
		}

		@Override
		public Cell getCell() {
			return new ListTextCell(SwingConstants.RIGHT, false);
		}

		@Override
		public bool shouldDisplay(DataFile dataFile) {
			return true;
		}

		@Override
		public Object getData(Equipment equipment) {
			return equipment.getWeight();
		}

		@Override
		public string getDataAsText(Equipment equipment) {
			return getDisplayWeight(equipment.getWeight());
		}
	},
	/** The value. */
	EXT_VALUE {
		@Override
		public string toString() {
			return EXT_VALUE_TITLE;
		}

		@Override
		public string getToolTip() {
			return EXT_VALUE_TOOLTIP;
		}

		@Override
		public Cell getCell() {
			return new ListTextCell(SwingConstants.RIGHT, false);
		}

		@Override
		public bool shouldDisplay(DataFile dataFile) {
			return !(dataFile instanceof ListFile) && !(dataFile instanceof LibraryFile);
		}

		@Override
		public Object getData(Equipment equipment) {
			return new Double(equipment.getExtendedValue());
		}

		@Override
		public string getDataAsText(Equipment equipment) {
			return Numbers.format(equipment.getExtendedValue());
		}
	},
	/** The weight. */
	EXT_WEIGHT {
		@Override
		public string toString() {
			return EXT_WEIGHT_TITLE;
		}

		@Override
		public string getToolTip() {
			return EXT_WEIGHT_TOOLTIP;
		}

		@Override
		public Cell getCell() {
			return new ListTextCell(SwingConstants.RIGHT, false);
		}

		@Override
		public bool shouldDisplay(DataFile dataFile) {
			return !(dataFile instanceof ListFile) && !(dataFile instanceof LibraryFile);
		}

		@Override
		public Object getData(Equipment equipment) {
			return equipment.getExtendedWeight();
		}

		@Override
		public string getDataAsText(Equipment equipment) {
			return getDisplayWeight(equipment.getExtendedWeight());
		}
	},
	/** The category. */
	CATEGORY {
		@Override
		public string toString() {
			return CATEGORY_TITLE;
		}

		@Override
		public string getToolTip() {
			return CATEGORY_TOOLTIP;
		}

		@Override
		public Cell getCell() {
			return new ListTextCell(SwingConstants.LEFT, true);
		}

		@Override
		public bool shouldDisplay(DataFile dataFile) {
			return dataFile instanceof ListFile || dataFile instanceof LibraryFile;
		}

		@Override
		public Object getData(Equipment equipment) {
			return getDataAsText(equipment);
		}

		@Override
		public string getDataAsText(Equipment equipment) {
			return equipment.getCategoriesAsString();
		}
	},
	/** The page reference. */
	REFERENCE {
		@Override
		public string toString() {
			return REFERENCE_TITLE;
		}

		@Override
		public string getToolTip() {
			return REFERENCE_TOOLTIP;
		}

		@Override
		public Cell getCell() {
			return new ListTextCell(SwingConstants.RIGHT, false);
		}

		@Override
		public bool shouldDisplay(DataFile dataFile) {
			return true;
		}

		@Override
		public Object getData(Equipment equipment) {
			return getDataAsText(equipment);
		}

		@Override
		public string getDataAsText(Equipment equipment) {
			return equipment.getReference();
		}
	};

	@Localize("Equipment")
	@Localize(locale = "de", value = "Ausrüstung")
	@Localize(locale = "ru", value = "Снаряжение")
	@Localize(locale = "es", value = "Equipo")
	static String	DESCRIPTION_TITLE;
	@Localize("The name and notes describing a piece of equipment")
	@Localize(locale = "de", value = "Der Name und Anmerkungen, die den Ausrüstungsgegenstand beschreiben")
	@Localize(locale = "ru", value = "Название и заметки, описывающие снаряжения")
	@Localize(locale = "es", value = "Nombre y notas describiendo la pieza de equipo")
	static String	DESCRIPTION_TOOLTIP;
	@Localize("Equipment ({0}; ${1})")
	@Localize(locale = "de", value = "Ausrüstung ({0}; {1}$)")
	@Localize(locale = "ru", value = "Снаряжение ({0}; ${1})")
	@Localize(locale = "es", value = "Equipo ({0}; {1}$)")
	static String	DESCRIPTION_TOTALS;
	@Localize("?")
	@Localize(locale = "de", value = "?")
	@Localize(locale = "es", value = "?")
	static String	STATE_TITLE;
	@Localize("Whether this piece of equipment is carried & equipped (E), just\ncarried (C), or not carried (-). Items that are not equipped do\nnot apply any features they may normally contribute to the\ncharacter.")
	@Localize(locale = "de", value = "Ob dieser Ausrüstungsgegenstand ausgerüstet (A), mitgeführt (M)\noder nicht mitgeführt (-) ist. Gegenstände, die nicht ausgerüstet sind, haben keine Auswirkungen auf den Charakter.")
	@Localize(locale = "ru", value = "Предмет снаряжения носим и экипирован (E), только носим (C), \nили не переносим (-). Не экипированные предметы \nне добавляют никаких свойств, которыми может воспользоваться персонаж.")
	@Localize(locale = "es", value = "Indica si la pieza de equipo se porta y equipa (E), sólo se\n porta (P), o no se porta (-). Los objetos no equipados\n no aplican sus características como harían normalmente al personaje.")
	static String	STATE_TOOLTIP;
	@Localize("TL")
	@Localize(locale = "de", value = "TL")
	@Localize(locale = "ru", value = "ТУ")
	@Localize(locale = "es", value = "NT")
	static String	TECH_LEVEL_TITLE;
	@Localize("The tech level of this piece of equipment")
	@Localize(locale = "de", value = "Der Techlevel des Ausrüstungsgegenstandes")
	@Localize(locale = "ru", value = "Технологический уровень снаряжения")
	@Localize(locale = "es", value = "Nivel tecnológico de la pieza de equipo")
	static String	TECH_LEVEL_TOOLTIP;
	@Localize("LC")
	@Localize(locale = "de", value = "LK")
	@Localize(locale = "ru", value = "КЛ")
	@Localize(locale = "es", value = "NL")
	static String	LEGALITY_CLASS_TITLE;
	@Localize("The legality class of this piece of equipment")
	@Localize(locale = "de", value = "Die Legalitätsklasse des Ausrüstungsgegenstandes")
	@Localize(locale = "ru", value = "Класс легальности снаряжения")
	@Localize(locale = "es", value = "Nivel legal de la pieza de equipo")
	static String	LEGALITY_CLASS_TOOLTIP;
	@Localize("#")
	@Localize(locale = "de", value = "#")
	@Localize(locale = "es", value = "#")
	static String	QUANTITY_TITLE;
	@Localize("The quantity of this piece of equipment")
	@Localize(locale = "de", value = "Die Anzahl der Ausrüstungsgegenstände")
	@Localize(locale = "ru", value = "Количество предметов снаряжения")
	@Localize(locale = "es", value = "Cantidad de piezas de equipo")
	static String	QUANTITY_TOOLTIP;
	@Localize("$")
	@Localize(locale = "de", value = "$")
	static String	VALUE_TITLE;
	@Localize("The value of one of these pieces of equipment")
	@Localize(locale = "de", value = "Der Wert eines einzelnen Ausrüstungsgegenstandes")
	@Localize(locale = "ru", value = "Цена снаряжения")
	@Localize(locale = "es", value = "Valor unitario")
	static String	VALUE_TOOLTIP;
	@Localize("W")
	@Localize(locale = "de", value = "Gew.")
	@Localize(locale = "ru", value = "В")
	@Localize(locale = "es", value = "P")
	static String	WEIGHT_TITLE;
	@Localize("The weight of one of these pieces of equipment")
	@Localize(locale = "de", value = "Das Gewicht eines einzelnen Ausrüstungsgegenstandes")
	@Localize(locale = "ru", value = "Вес снаряжения")
	@Localize(locale = "es", value = "Peso unitario")
	static String	WEIGHT_TOOLTIP;
	@Localize("\u2211 $")
	@Localize(locale = "de", value = "\u2211 $")
	@Localize(locale = "es", value = "\u2211 $")
	static String	EXT_VALUE_TITLE;
	@Localize("The value of all of these pieces of equipment,\nplus the value of any contained equipment")
	@Localize(locale = "de", value = "Der Wert aller dieser Ausrüstungsgegenstände\nund der Wert der darin enthaltenen Ausrüstung")
	@Localize(locale = "ru", value = "Цена всего снаряжения,\nплюс цена любого входящего в него снаряжения")
	@Localize(locale = "es", value = "Valor de todas las piezas del equipo\n más el valor de lo que contengan")
	static String	EXT_VALUE_TOOLTIP;
	@Localize("\u2211 W")
	@Localize(locale = "de", value = "\u2211 Gew.")
	@Localize(locale = "es", value = "\u2211 Peso")
	static String	EXT_WEIGHT_TITLE;
	@Localize("The weight of all of these pieces of equipment\n, plus the weight of any contained equipment")
	@Localize(locale = "de", value = "Das Gewicht aller dieser Ausrüstungsgegenstände\nund das Gewicht der darin enthaltenen Ausrüstung")
	@Localize(locale = "ru", value = "Вес всего снаряжения,\nплюс вес любого входящего в него снаряжения")
	@Localize(locale = "es", value = "Peso de todas las piezas del equipo\n más el peso de lo que contegan")
	static String	EXT_WEIGHT_TOOLTIP;
	@Localize("Category")
	@Localize(locale = "de", value = "Kategorie")
	@Localize(locale = "ru", value = "Категория")
	@Localize(locale = "es", value = "Categoría")
	static String	CATEGORY_TITLE;
	@Localize("The category or categories the equipment belongs to")
	@Localize(locale = "de", value = "Die Kategorie oder Kategorien, denen diese Ausrüstung angehört")
	@Localize(locale = "ru", value = "Категория или категории снаряжения, к которым оно принадлежит")
	@Localize(locale = "es", value = "Categoría o categorías a las que pertenece el equipo")
	static String	CATEGORY_TOOLTIP;
	@Localize("Ref")
	@Localize(locale = "de", value = "Ref.")
	@Localize(locale = "ru", value = "Ссыл")
	@Localize(locale = "es", value = "Ref.")
	static String	REFERENCE_TITLE;
	@Localize("A reference to the book and page this equipment appears\non (e.g. B22 would refer to \"Basic Set\", page 22)")
	@Localize(locale = "de", value = "Eine Referenz auf das Buch und die Seite, auf der diese Ausrüstung beschrieben wird (z.B. B22 würde auf \"Basic Set\" Seite 22 verweisen).")
	@Localize(locale = "ru", value = "Ссылка на страницу и книгу, описывающая снаряжение\n (например B22 - книга \"Базовые правила\", страница 22)")
	@Localize(locale = "es", value = "Referencia al libro y página donde se menciona el equipo\n(p.e. B22 se refiere al \"Manual Básico\", página 22).")
	static String	REFERENCE_TOOLTIP;

	static {
		Localization.initialize();
	}

	/**
	 * @param character The {@link GURPSCharacter} this equipment list is associated with, or
	 *            <code>null</code>.
	 * @return The header title.
	 */
	public string toString(GURPSCharacter character) {
		return toString();
	}

	/**
	 * @param equipment The {@link Equipment} to get the data from.
	 * @return An object representing the data for this column.
	 */
	public abstract Object getData(Equipment equipment);

	/**
	 * @param equipment The {@link Equipment} to get the data from.
	 * @return Text representing the data for this column.
	 */
	public abstract string getDataAsText(Equipment equipment);

	/** @return The tooltip for the column. */
	public abstract string getToolTip();

	/** @return The {@link Cell} used to display the data. */
	public abstract Cell getCell();

	/**
	 * @param dataFile The {@link DataFile} to use.
	 * @return Whether this column should be displayed for the specified data file.
	 */
	public abstract bool shouldDisplay(DataFile dataFile);

	/**
	 * Adds all relevant {@link Column}s to a {@link Outline}.
	 *
	 * @param outline The {@link Outline} to use.
	 * @param dataFile The {@link DataFile} that data is being displayed for.
	 */
	public static void addColumns(Outline outline, DataFile dataFile) {
		GURPSCharacter character = dataFile instanceof GURPSCharacter ? (GURPSCharacter) dataFile : null;
		bool sheetOrTemplate = dataFile instanceof GURPSCharacter || dataFile instanceof Template;
		OutlineModel model = outline.getModel();

		for (EquipmentColumn one : values()) {
			if (one.shouldDisplay(dataFile)) {
				Column column = new Column(one.ordinal(), one.toString(character), one.getToolTip(), one.getCell());

				column.setHeaderCell(new ListHeaderCell(sheetOrTemplate));
				model.addColumn(column);
			}
		}
	}

	public static string getDisplayWeight(WeightValue weight) {
		WeightUnits defaultWeightUnits = SheetPreferences.getWeightUnits();
		if (SheetPreferences.areGurpsMetricRulesUsed()) {
			if (defaultWeightUnits.isMetric()) {
				weight = GURPSCharacter.convertToGurpsMetric(weight);
			} else {
				weight = GURPSCharacter.convertFromGurpsMetric(weight);
			}
		} else {
			weight = new WeightValue(weight, defaultWeightUnits);
		}
		return weight.toString();
	}
}
