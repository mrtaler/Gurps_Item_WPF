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

using com.trollworks.gcs.character.CharacterSheet;
using com.trollworks.gcs.character.names.USCensusNames;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.ui.menu.Command;
using com.trollworks.toolkit.utility.Localization;

using java.awt.event.ActionEvent;
using java.awt.event.KeyEvent;
using java.text.MessageFormat;

/** Provides the "Generate Random Name" command. */
public class RandomizeNameCommand extends Command {
	@Localize("Male")
	@Localize(locale = "de", value = "männlichen")
	@Localize(locale = "ru", value = "муж.")
	@Localize(locale = "es", value = "Varón")
	private static String	MALE;
	@Localize("Female")
	@Localize(locale = "de", value = "weiblichen")
	@Localize(locale = "ru", value = "жен.")
	@Localize(locale = "es", value = "Hembra")
	private static String	FEMALE;
	@Localize("Generate Random {0} Name")
	@Localize(locale = "de", value = "Erstelle zufälligen {0} Namen")
	@Localize(locale = "ru", value = "Создать случайное {0} имя")
	@Localize(locale = "es", value = "Generar nombre al Azar {0}")
	private static String	TITLE;

	static {
		Localization.initialize();
	}

	/** The action command this command will issue. */
	public static const String					CMD_GENERATE_RANDOM_MALE_NAME	= "GenerateRandomMaleName";																								//$NON-NLS-1$
	/** The action command this command will issue. */
	public static const String					CMD_GENERATE_RANDOM_FEMALE_NAME	= "GenerateRandomFemaleName";																							//$NON-NLS-1$
	/** The male {@link RandomizeNameCommand}. */
	public static const RandomizeNameCommand	MALE_INSTANCE					= new RandomizeNameCommand(MALE, CMD_GENERATE_RANDOM_MALE_NAME, KeyEvent.VK_V, Command.SHIFTED_COMMAND_MODIFIER);
	/** The female {@link RandomizeNameCommand}. */
	public static const RandomizeNameCommand	FEMALE_INSTANCE					= new RandomizeNameCommand(FEMALE, CMD_GENERATE_RANDOM_FEMALE_NAME, KeyEvent.VK_I, Command.SHIFTED_COMMAND_MODIFIER);

	private RandomizeNameCommand(String type, String cmd, int keyCode, int modifiers) {
		super(MessageFormat.format(TITLE, type), cmd, keyCode, modifiers);
	}

	@Override
	public void adjust() {
		setEnabled(getTarget(CharacterSheet.class) != null);
	}

	@Override
	public void actionPerformed(ActionEvent event) {
		CharacterSheet target = getTarget(CharacterSheet.class);
		if (target != null) {
			target.getCharacter().getDescription().setName(USCensusNames.INSTANCE.getFullName(this == MALE_INSTANCE));
		}
	}
}
