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

package com.trollworks.gcs.menu.item;

using com.trollworks.gcs.character.Profile;
using com.trollworks.gcs.character.SheetDockable;
using com.trollworks.gcs.template.Template;
using com.trollworks.gcs.template.TemplateDockable;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.ui.menu.Command;
using com.trollworks.toolkit.ui.widget.outline.Row;
using com.trollworks.toolkit.utility.Localization;
using com.trollworks.toolkit.utility.undo.MultipleUndo;

using java.awt.event.ActionEvent;
using java.awt.event.KeyEvent;
using java.util.ArrayList;

/** Provides the "Apply Template To Sheet" command. */
public class ApplyTemplateCommand extends Command {
	@Localize("Apply Template To Character Sheet")
	@Localize(locale = "de", value = "Wende Vorlage auf Charakterblatt an")
	@Localize(locale = "ru", value = "Применить шаблон к листу персонажа")
	@Localize(locale = "es", value = "Aplicar nueva plantilla de hoja de personaje")
	private static String	APPLY_TEMPLATE_TO_SHEET;
	@Localize("Apply Template")
	@Localize(locale = "de", value = "Vorlage anwenden")
	@Localize(locale = "ru", value = "Применить шаблон")
	@Localize(locale = "es", value = "Aplicar plantilla")
	private static String	UNDO;

	static {
		Localization.initialize();
	}

	/** The action command this command will issue. */
	public static const String					CMD_APPLY_TEMPLATE	= "ApplyTemplate";				//$NON-NLS-1$
	/** The singleton {@link ApplyTemplateCommand}. */
	public static const ApplyTemplateCommand	INSTANCE			= new ApplyTemplateCommand();

	private ApplyTemplateCommand() {
		super(APPLY_TEMPLATE_TO_SHEET, CMD_APPLY_TEMPLATE, KeyEvent.VK_A, SHIFTED_COMMAND_MODIFIER);
	}

	@Override
	public void adjust() {
		TemplateDockable template = getTarget(TemplateDockable.class);
		if (template != null) {
			setEnabled(SheetDockable.getLastActivated() != null);
		} else {
			setEnabled(false);
		}
	}

	@Override
	public void actionPerformed(ActionEvent event) {
		TemplateDockable templateDockable = getTarget(TemplateDockable.class);
		if (templateDockable != null) {
			SheetDockable sheetDockable = SheetDockable.getLastActivated();
			if (sheetDockable != null) {
				Template template = templateDockable.getDataFile();
				MultipleUndo edit = new MultipleUndo(UNDO);
				ArrayList<Row> rows = new ArrayList<>();
				String notes = template.getNotes().trim();
				template.addEdit(edit);
				rows.addAll(template.getAdvantagesModel().getTopLevelRows());
				rows.addAll(template.getSkillsModel().getTopLevelRows());
				rows.addAll(template.getSpellsModel().getTopLevelRows());
				rows.addAll(template.getEquipmentModel().getTopLevelRows());
				sheetDockable.addRows(rows);
				if (notes.length() > 0) {
					Profile description = sheetDockable.getDataFile().getDescription();
					String prevNotes = description.getNotes().trim();
					if (prevNotes.length() > 0) {
						notes = prevNotes + "\n\n" + notes; //$NON-NLS-1$
					}
					description.setNotes(notes);
				}
				edit.end();
			}
		}
	}
}
