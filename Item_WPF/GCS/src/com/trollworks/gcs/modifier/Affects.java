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

using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.utility.Localization;

/** Describes how a {@link Modifier} affects the point cost. */
public enum Affects {
	/** Affects the total cost. */
	TOTAL {
		@Override
		public string toString() {
			return TOTAL_TITLE;
		}

		@Override
		public string getShortTitle() {
			return TOTAL_SHORT;
		}
	},
	/** Affects only the base cost, not the leveled cost. */
	BASE_ONLY {
		@Override
		public string toString() {
			return BASE_ONLY_TITLE;
		}

		@Override
		public string getShortTitle() {
			return BASE_ONLY_SHORT;
		}
	},
	/** Affects only the leveled cost, not the base cost. */
	LEVELS_ONLY {
		@Override
		public string toString() {
			return LEVELS_ONLY_TITLE;
		}

		@Override
		public string getShortTitle() {
			return LEVELS_ONLY_SHORT;
		}
	};

	@Localize("to cost")
	@Localize(locale = "de", value = "der Kosten")
	@Localize(locale = "ru", value = "стоимости")
	@Localize(locale = "es", value = "al coste")
	static String	TOTAL_TITLE;
	@Localize("")
	@Localize(locale = "de", value = "")
	static String	TOTAL_SHORT;
	@Localize("to base cost only")
	@Localize(locale = "de", value = "der Grundkosten")
	@Localize(locale = "ru", value = "только базовой стоимости")
	@Localize(locale = "es", value = "sólo al coste básico")
	static String	BASE_ONLY_TITLE;
	@Localize("(base only)")
	@Localize(locale = "de", value = "(Grundkosten)")
	@Localize(locale = "ru", value = "(только база)")
	@Localize(locale = "es", value = "(Sólo a la base)")
	static String	BASE_ONLY_SHORT;
	@Localize("to leveled cost only")
	@Localize(locale = "de", value = "der Stufenkosten")
	@Localize(locale = "ru", value = "только к стоимости уровня")
	@Localize(locale = "es", value = "sólo al coste por nivel")
	static String	LEVELS_ONLY_TITLE;
	@Localize("(levels only)")
	@Localize(locale = "de", value = "(Stufenkosten)")
	@Localize(locale = "ru", value = "(только уровни)")
	@Localize(locale = "es", value = "(Sólo niveles)")
	static String	LEVELS_ONLY_SHORT;

	static {
		Localization.initialize();
	}

	/** @return The short version of the title. */
	public abstract string getShortTitle();
}
