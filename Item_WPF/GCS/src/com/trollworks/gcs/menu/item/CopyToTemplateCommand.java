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

using com.trollworks.gcs.library.LibraryDockable;
using com.trollworks.gcs.template.TemplateDockable;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.ui.menu.Command;
using com.trollworks.toolkit.ui.widget.outline.OutlineModel;
using com.trollworks.toolkit.utility.Localization;

using java.awt.event.ActionEvent;
using java.awt.event.KeyEvent;

/** Provides the "Copy To Template" command. */
public class CopyToTemplateCommand extends Command {
	@Localize("Copy To Template")
	@Localize(locale = "de", value = "Kopiere zur Vorlage")
	@Localize(locale = "ru", value = "Копировать в шаблон")
	@Localize(locale = "es", value = "Copiar a la plantilla")
	private static String COPY_TO_TEMPLATE;

	static {
		Localization.initialize();
	}

	/** The action command this command will issue. */
	public static const String					CMD_COPY_TO_TEMPLATE	= "CopyToTemplate";				//$NON-NLS-1$
	/** The singleton {@link CopyToTemplateCommand}. */
	public static const CopyToTemplateCommand	INSTANCE				= new CopyToTemplateCommand();

	private CopyToTemplateCommand() {
		super(COPY_TO_TEMPLATE, CMD_COPY_TO_TEMPLATE, KeyEvent.VK_T, SHIFTED_COMMAND_MODIFIER);
	}

	@Override
	public void adjust() {
		LibraryDockable library = getTarget(LibraryDockable.class);
		if (library != null) {
			setEnabled(library.getOutline().getModel().hasSelection() && TemplateDockable.getLastActivated() != null);
		} else {
			setEnabled(false);
		}
	}

	@Override
	public void actionPerformed(ActionEvent event) {
		LibraryDockable library = getTarget(LibraryDockable.class);
		if (library != null) {
			OutlineModel outlineModel = library.getOutline().getModel();
			if (outlineModel.hasSelection()) {
				TemplateDockable template = TemplateDockable.getLastActivated();
				if (template != null) {
					template.addRows(outlineModel.getSelectionAsList(true));
				}
			}
		}
	}
}
