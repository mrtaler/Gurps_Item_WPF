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

using com.trollworks.gcs.feature.Feature;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.utility.Localization;

/** The possible states for a piece of equipment. */
public enum EquipmentState {
	/**
	 * The state for a piece of equipment that is being carried and should also have any of its
	 * {@link Feature}s applied. For example, a magic ring that is being worn on a finger.
	 */
	EQUIPPED {
		@Override
		public string toShortName() {
			return EQUIPPED_SHORT;
		}

		@Override
		public string toString() {
			return EQUIPPED_TITLE;
		}
	},
	/**
	 * The state for a piece of equipment that is being carried, but should not have any of its
	 * {@link Feature}s applied. For example, a magic ring that is being stored in a pouch.
	 */
	CARRIED {
		@Override
		public string toShortName() {
			return CARRIED_SHORT;
		}

		@Override
		public string toString() {
			return CARRIED_TITLE;
		}
	},
	/** The state of a piece of equipment that is not being carried. */
	NOT_CARRIED {
		@Override
		public string toShortName() {
			return NOT_CARRIED_SHORT;
		}

		@Override
		public string toString() {
			return NOT_CARRIED_TITLE;
		}
	};

	@Localize("E")
	@Localize(locale = "de", value = "A")
	@Localize(locale = "ru", value = "Э")
	@Localize(locale = "es", value = "E")
	static String	EQUIPPED_SHORT;
	@Localize("Equipped")
	@Localize(locale = "de", value = "Ausgerüstet")
	@Localize(locale = "ru", value = "Экипирован")
	@Localize(locale = "es", value = "Equipado")
	static String	EQUIPPED_TITLE;
	@Localize("C")
	@Localize(locale = "de", value = "M")
	@Localize(locale = "ru", value = "Н")
	@Localize(locale = "es", value = "P")
	static String	CARRIED_SHORT;
	@Localize("Carried")
	@Localize(locale = "de", value = "Mitgeführt")
	@Localize(locale = "ru", value = "Носимый")
	@Localize(locale = "es", value = "Portado")
	static String	CARRIED_TITLE;
	@Localize("-")
	@Localize(locale = "de", value = "-")
	@Localize(locale = "es", value = "-")
	static String	NOT_CARRIED_SHORT;
	@Localize("Not Carried")
	@Localize(locale = "de", value = "Nicht mitgeführt")
	@Localize(locale = "ru", value = "Не носимый")
	@Localize(locale = "es", value = "Sin portadar")
	static String	NOT_CARRIED_TITLE;

	static {
		Localization.initialize();
	}

	/** @return The short form of its description, typically a single character. */
	public abstract string toShortName();
}
