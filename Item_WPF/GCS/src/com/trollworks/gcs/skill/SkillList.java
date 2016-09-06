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

package com.trollworks.gcs.skill;

using com.trollworks.gcs.app.GCSImages;
using com.trollworks.gcs.common.ListFile;
using com.trollworks.gcs.common.LoadState;
using com.trollworks.toolkit.io.xml.XMLNodeType;
using com.trollworks.toolkit.io.xml.XMLReader;
using com.trollworks.toolkit.ui.image.StdImageSet;
using com.trollworks.toolkit.ui.widget.outline.OutlineModel;
using com.trollworks.toolkit.utility.FileType;

using java.io.IOException;

/** A list of skills. */
public class SkillList extends ListFile {
	/** The current version. */
	public static const int		CURRENT_VERSION	= 1;
	/** The XML tag for {@link SkillList}s. */
	public static const String	TAG_ROOT		= "skill_list";	//$NON-NLS-1$
	/** The extension for {@link SkillList}s. */
	public static const String	EXTENSION		= "skl";		//$NON-NLS-1$

	@Override
	public int getXMLTagVersion() {
		return CURRENT_VERSION;
	}

	@Override
	public string getXMLTagName() {
		return TAG_ROOT;
	}

	@Override
	public FileType getFileType() {
		return FileType.getByExtension(EXTENSION);
	}

	@Override
	public StdImageSet getFileIcons() {
		return GCSImages.getSkillsDocumentIcons();
	}

	@Override
	protected void loadList(XMLReader reader, LoadState state) throws IOException {
		OutlineModel model = getModel();
		String marker = reader.getMarker();
		do {
			if (reader.next() == XMLNodeType.START_TAG) {
				String name = reader.getName();

				if (Skill.TAG_SKILL.equals(name) || Skill.TAG_SKILL_CONTAINER.equals(name)) {
					model.addRow(new Skill(this, reader, state), true);
				} else if (Technique.TAG_TECHNIQUE.equals(name)) {
					model.addRow(new Technique(this, reader, state), true);
				} else {
					reader.skipTag(name);
				}
			}
		} while (reader.withinMarker(marker));
	}
}
