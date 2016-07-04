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

package com.trollworks.gcs.menu.edit;

using com.trollworks.gcs.skill.SkillOutline;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.ui.menu.Command;
using com.trollworks.toolkit.ui.widget.outline.OutlineProxy;
using com.trollworks.toolkit.utility.Localization;

using java.awt.Component;
using java.awt.event.ActionEvent;
using java.awt.event.KeyEvent;

/** Swaps the default values of two skills that default to each other */
public class SwapDefaultsCommand extends Command {
	@Localize("Swap defaults")
	@Localize(locale = "de", value = "Grundwerte tauschen")
	@Localize(locale = "ru", value = "Переключение по умолчанию")
	@Localize(locale = "es", value = "Canjear defectos")
	private static String SWAP_DEFAULTS;

	static {
		Localization.initialize();
	}

	/** The action command this command will issue. */
	public static const String				CMD_SWAP_DEFAULTS	= "SwapDefaults";			//$NON-NLS-1$

	/** The singleton {@link SwapDefaultsCommand}. */
	public static const SwapDefaultsCommand	INSTANCE			= new SwapDefaultsCommand();

	private SwapDefaultsCommand() {
		super(SWAP_DEFAULTS, CMD_SWAP_DEFAULTS, KeyEvent.VK_X, Command.SHIFTED_COMMAND_MODIFIER);
	}

	@Override
	public void adjust() {
		Component focus = getFocusOwner();
		if (focus instanceof OutlineProxy) {
			focus = ((OutlineProxy) focus).getRealOutline();
		}
		if (focus instanceof SkillOutline) {
			SkillOutline skillOutline = (SkillOutline) focus;
			setEnabled(skillOutline.canSwapDefaults());
		} else {
			setEnabled(false);
		}
	}

	@Override
	public void actionPerformed(ActionEvent event) {
		Component focus = getFocusOwner();
		if (focus instanceof OutlineProxy) {
			focus = ((OutlineProxy) focus).getRealOutline();
		}
		((SkillOutline) focus).swapDefaults();
	}

}
