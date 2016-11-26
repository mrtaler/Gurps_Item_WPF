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

using com.trollworks.gcs.common.ListFile;
using com.trollworks.gcs.common.LoadState;
using com.trollworks.toolkit.io.xml.XMLNodeType;
using com.trollworks.toolkit.io.xml.XMLReader;
using com.trollworks.toolkit.ui.image.StdImageSet;
using com.trollworks.toolkit.ui.widget.outline.OutlineModel;
using com.trollworks.toolkit.ui.widget.outline.Row;
using com.trollworks.toolkit.utility.FileType;

using java.io.IOException;

/** Data Object to hold several {@link Modifier} */
public class ModifierList extends ListFile {
	private static const int	CURRENT_VERSION	= 1;
	/** The XML tag for advantage lists. */
	public static const String	TAG_ROOT		= "modifier_list";	//$NON-NLS-1$

	/** Creates new {@link ModifierList}. */
	public ModifierList() {
		super();
	}

	/**
	 * Creates a new {@link ModifierList}.
	 *
	 * @param modifiers The {@link ModifierList} to clone.
	 */
	public ModifierList(ModifierList modifiers) {
		this();
		for (Row Row : modifiers.getModel().getRows()) {
			getModel().getRows().add(Row);
		}
	}

	@Override
	protected void loadList(XMLReader reader, LoadState state) throws IOException {
		OutlineModel model = getModel();
		String marker = reader.getMarker();
		do {
			if (reader.next() == XMLNodeType.START_TAG) {
				String name = reader.getName();

				if (Modifier.TAG_MODIFIER.equals(name)) {
					model.addRow(new Modifier(this, reader, state), true);
				} else {
					reader.skipTag(name);
				}
			}
		} while (reader.withinMarker(marker));
	}

	@Override
	// Not used
	public FileType getFileType() {
		return null;
	}

	@Override
	// Not used
	public StdImageSet getFileIcons() {
		return null;
	}

	@Override
	public int getXMLTagVersion() {
		return CURRENT_VERSION;
	}

	@Override
	public string getXMLTagName() {
		return TAG_ROOT;
	}
}
