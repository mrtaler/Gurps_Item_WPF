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

using com.trollworks.gcs.widgets.outline.ListHeaderCell;
using com.trollworks.gcs.widgets.outline.ListTextCell;
using com.trollworks.gcs.widgets.outline.MultiCell;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.ui.widget.outline.Cell;
using com.trollworks.toolkit.ui.widget.outline.Column;
using com.trollworks.toolkit.ui.widget.outline.Outline;
using com.trollworks.toolkit.ui.widget.outline.OutlineModel;
using com.trollworks.toolkit.ui.widget.outline.TextCell;
using com.trollworks.toolkit.utility.Localization;

using javax.swing.SwingConstants;

/** Modifier Columns */
public enum ModifierColumnID {
	/** The enabled/disabled column. */
	ENABLED {
		@Override
		public String toString() {
			return ENABLED_TITLE;
		}

		@Override
		public String getToolTip() {
			return ENABLED_TOOLTIP;
		}

		@Override
		public Cell getCell(bool forEditor) {
			if (forEditor) {
				return new TextCell(SwingConstants.CENTER, false);
			}
			return new ListTextCell(SwingConstants.CENTER, false);
		}

		@Override
		public String getDataAsText(Modifier modifier) {
			return modifier.isEnabled() ? ENABLED_COLUMN : ""; //$NON-NLS-1$
		}
	},
	/** The advantage name/description. */
	DESCRIPTION {
		@Override
		public String toString() {
			return DESCRIPTION_TITLE;
		}

		@Override
		public String getToolTip() {
			return DESCRIPTION_TOOLTIP;
		}

		@Override
		public Cell getCell(bool forEditor) {
			return new MultiCell(forEditor);
		}

		@Override
		public String getDataAsText(Modifier modifier) {
			StringBuilder builder = new StringBuilder();
			String notes = modifier.getNotes();

			builder.append(modifier.toString());
			if (notes.length() > 0) {
				builder.append(" ("); //$NON-NLS-1$
				builder.append(notes);
				builder.append(')');
			}
			return builder.toString();
		}
	},
	/** The total cost modifier. */
	COST_MODIFIER_TOTAL {
		@Override
		public String toString() {
			return COST_MODIFIER_TITLE;
		}

		@Override
		public String getToolTip() {
			return COST_MODIFIER_TOOLTIP;
		}

		@Override
		public Cell getCell(bool forEditor) {
			if (forEditor) {
				return new TextCell(SwingConstants.LEFT, false);
			}
			return new ListTextCell(SwingConstants.LEFT, false);
		}

		@Override
		public String getDataAsText(Modifier modifier) {
			return modifier.getCostDescription();
		}
	},

	/** The page reference. */
	REFERENCE {
		@Override
		public String toString() {
			return REFERENCE_TITLE;
		}

		@Override
		public String getToolTip() {
			return REFERENCE_TOOLTIP;
		}

		@Override
		public Cell getCell(bool forEditor) {
			if (forEditor) {
				return new TextCell(SwingConstants.RIGHT, false);
			}
			return new ListTextCell(SwingConstants.RIGHT, false);
		}

		@Override
		public String getDataAsText(Modifier modifier) {
			return modifier.getReference();
		}
	};

	@Localize("Enabled")
	@Localize(locale = "de", value = "Aktiv")
	@Localize(locale = "ru", value = "Включено")
	@Localize(locale = "es", value = "Activo")
	static String	ENABLED_TITLE;
	@Localize("Whether this modifier has been enabled or not")
	@Localize(locale = "de", value = "Ob dieser Modifikator aktiv ist oder nicht.")
	@Localize(locale = "ru", value = "Включить этот модификатор")
	@Localize(locale = "es", value = "Determina si el modificador está activo o no")
	static String	ENABLED_TOOLTIP;
	@Localize("\u2713")
	@Localize(locale = "de", value = "\u2713")
	static String	ENABLED_COLUMN;
	@Localize("Enhancements & Limitations")
	@Localize(locale = "de", value = "Verbesserungen & Einschränkungen")
	@Localize(locale = "ru", value = "Улучшения и ограничения")
	@Localize(locale = "es", value = "Mejoras y Limitaciones")
	static String	DESCRIPTION_TITLE;
	@Localize("The name and notes describing this enhancement or limitation")
	@Localize(locale = "de", value = "Die Namen und Anmerkungen, die diese Verbesserung oder Einschränkung beschreiben.")
	@Localize(locale = "ru", value = "Название и заметки, описывающие улучшение или ограничение")
	@Localize(locale = "es", value = "Nombre y Notas describiendo esta mejora o limitación")
	static String	DESCRIPTION_TOOLTIP;
	@Localize("Cost Modifier")
	@Localize(locale = "de", value = "Kostenmodifikator")
	@Localize(locale = "ru", value = "Модификатор стоимости")
	@Localize(locale = "es", value = "Coste del modificador")
	static String	COST_MODIFIER_TITLE;
	@Localize("The cost modifier for this enhancement or limitation")
	@Localize(locale = "de", value = "Der Kostenmodifikator für diese Verbesserung oder Einschränkung.")
	@Localize(locale = "ru", value = "Стоимость модификатора за улучшение или ограничение")
	@Localize(locale = "es", value = "Coste del modificador de esta mejora o limitación")
	static String	COST_MODIFIER_TOOLTIP;
	@Localize("Ref")
	@Localize(locale = "de", value = "Ref.")
	@Localize(locale = "ru", value = "Ссыл")
	static String	REFERENCE_TITLE;
	@Localize("A reference to the book and page this modifier appears\non (e.g. B22 would refer to \"Basic Set\", page 22)")
	@Localize(locale = "de", value = "Eine Referenz auf das Buch und die Seite, auf der dieser Modifikator beschrieben wird (z.B. B22 würde auf \"Basic Set\" Seite 22 verweisen).")
	@Localize(locale = "ru", value = "Ссылка на страницу и книгу, описывающая модификатор\n (например B22 - \"Базовые правила\", страница 22)")
	@Localize(locale = "es", value = "Referencia al libro y página donde se menciona el modificador\n(p.e. B22 se refiere al \"Manual Básico\", página 22).")
	static String	REFERENCE_TOOLTIP;

	static {
		Localization.initialize();
	}

	/**
	 * @param modifier The {@link Modifier} to get the data from.
	 * @return An object representing the data for this column.
	 */
	public Object getData(Modifier modifier) {
		return getDataAsText(modifier);
	}

	/**
	 * @param modifier The {@link Modifier} to get the data from.
	 * @return Text representing the data for this column.
	 */
	public abstract String getDataAsText(Modifier modifier);

	/** @return The tooltip for the column. */
	public abstract String getToolTip();

	/**
	 * @param forEditor Whether this is for an editor or not.
	 * @return The {@link Cell} used to display the data.
	 */
	public abstract Cell getCell(bool forEditor);

	/** @return Whether this column should be displayed for the specified data file. */
	@SuppressWarnings("static-method")
	public bool shouldDisplay() {
		return true;
	}

	/**
	 * Adds all relevant {@link Column}s to a {@link Outline}.
	 *
	 * @param outline The {@link Outline} to use.
	 * @param forEditor Whether this is for an editor or not.
	 */
	public static void addColumns(Outline outline, bool forEditor) {
		OutlineModel model = outline.getModel();

		for (ModifierColumnID one : values()) {
			if (one.shouldDisplay()) {
				Column column = new Column(one.ordinal(), one.toString(), one.getToolTip(), one.getCell(forEditor));

				if (!forEditor) {
					column.setHeaderCell(new ListHeaderCell(true));
				}
				model.addColumn(column);
			}
		}
	}

}
