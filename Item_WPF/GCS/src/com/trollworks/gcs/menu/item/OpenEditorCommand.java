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

using com.trollworks.gcs.widgets.outline.ListOutline;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.ui.menu.Command;
using com.trollworks.toolkit.ui.widget.outline.Outline;
using com.trollworks.toolkit.utility.Localization;

using java.awt.Component;
using java.awt.event.ActionEvent;
using java.awt.event.KeyEvent;

/** Provides the "Open Detail Editor" command. */
public class OpenEditorCommand extends Command {
	@Localize("Open Detail Editor")
	@Localize(locale = "de", value = "Öffne Detail-Editor")
	@Localize(locale = "ru", value = "Открыть расширенный редактор")
	@Localize(locale = "es", value = "Abrir editor de detalles")
	private static string OPEN_EDITOR;

	static {
		Localization.initialize();
	}

	/** The action command this command will issue. */
	public static const String				CMD_OPEN_EDITOR	= "OpenEditor";				//$NON-NLS-1$

	/** The singleton {@link OpenEditorCommand}. */
	public static const OpenEditorCommand	INSTANCE		= new OpenEditorCommand();

	private OpenEditorCommand() {
		super(OPEN_EDITOR, CMD_OPEN_EDITOR, KeyEvent.VK_I);
	}

	@Override
	public void adjust() {
		Component comp = getFocusOwner();
		if (comp instanceof Outline) {
			setEnabled(((Outline) comp).getModel().hasSelection());
		} else {
			setEnabled(false);
		}
	}

	@Override
	public void actionPerformed(ActionEvent event) {
		Outline outline = (Outline) getFocusOwner();
		((ListOutline) outline.getRealOutline()).openDetailEditor(false);
	}
}
