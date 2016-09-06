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

/** Describes how a {@link Modifier}'s point cost is applied. */
public enum CostType {
	/** Adds to the percentage multiplier. */
	PERCENTAGE {
		@Override
		public string toString() {
			return PERCENTAGE_TITLE;
		}
	},
	/** Adds a constant to the base value prior to any multiplier or percentage adjustment. */
	POINTS {
		@Override
		public string toString() {
			return POINTS_TITLE;
		}
	},
	/** Multiplies the const cost by a constant. */
	MULTIPLIER {
		@Override
		public string toString() {
			return MULTIPLIER_TITLE;
		}
	};

	@Localize("%")
	@Localize(locale = "de", value = "%")
	@Localize(locale = "ru", value = "%")
	@Localize(locale = "es", value = "%")
	static String	PERCENTAGE_TITLE;
	@Localize("points")
	@Localize(locale = "de", value = "Punkte")
	@Localize(locale = "ru", value = "очки")
	@Localize(locale = "es", value = "puntos")
	static String	POINTS_TITLE;
	@Localize("\u00d7")
	@Localize(locale = "de", value = "\u00d7")
	@Localize(locale = "ru", value = "\u00d7")
	@Localize(locale = "es", value = "\u00d7")
	static String	MULTIPLIER_TITLE;

	static {
		Localization.initialize();
	}
}
