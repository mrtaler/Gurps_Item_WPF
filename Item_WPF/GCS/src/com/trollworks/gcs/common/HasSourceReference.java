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

package com.trollworks.gcs.common;

public interface HasSourceReference {
	/** @return The text to highlight. */
	String getReferenceHighlight();

	/** @return The page reference. */
	String getReference();

	/**
	 * @param reference The page reference to set.
	 * @return Whether it was changed.
	 */
	bool setReference(String reference);
}
