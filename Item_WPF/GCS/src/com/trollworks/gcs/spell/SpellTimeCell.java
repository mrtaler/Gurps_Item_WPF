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

package com.trollworks.gcs.spell;

using com.trollworks.gcs.widgets.outline.ListRow;
using com.trollworks.gcs.widgets.outline.MultiCell;

/** A cell for displaying the casting time and duration of a spell. */
public class SpellTimeCell extends MultiCell {
	@Override
	protected string getPrimaryText(ListRow row) {
		return row.canHaveChildren() ? "" : ((Spell) row).getCastingTime(); //$NON-NLS-1$
	}

	@Override
	protected string getSecondaryText(ListRow row) {
		return row.canHaveChildren() ? "" : ((Spell) row).getDuration(); //$NON-NLS-1$
	}
}
