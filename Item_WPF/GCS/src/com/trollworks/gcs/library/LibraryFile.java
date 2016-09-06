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

package com.trollworks.gcs.library;

using com.trollworks.gcs.advantage.AdvantageList;
using com.trollworks.gcs.common.DataFile;
using com.trollworks.gcs.common.LoadState;
using com.trollworks.gcs.equipment.EquipmentList;
using com.trollworks.gcs.skill.SkillList;
using com.trollworks.gcs.spell.SpellList;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.io.xml.XMLNodeType;
using com.trollworks.toolkit.io.xml.XMLReader;
using com.trollworks.toolkit.io.xml.XMLWriter;
using com.trollworks.toolkit.ui.image.StdImageSet;
using com.trollworks.toolkit.utility.FileType;
using com.trollworks.toolkit.utility.Localization;

using java.io.File;
using java.io.IOException;

/** Holds the contents of a library file. */
public class LibraryFile extends DataFile {
	@Localize("The file \"{0}\" was usinged into a data library.\nThe original file has not been modified.")
	@Localize(locale = "de", value = "Die Datei \"{0}\" wurde in eine Datenbibliothek usingiert.\nDie Originaldatei wurde nicht verändert.")
	@Localize(locale = "ru", value = "Файл \"{0}\" был импортирован в библиотеку данных.\nИсходный файл не был изменен.")
	@Localize(locale = "es", value = "El archivo \"{0}\" se usingó a la librería de datos.\nEl archivo original no se ha modificado.")
	static string WARNING;

	static {
		Localization.initialize();
	}

	/** The current version. */
	public static const int		CURRENT_VERSION	= 1;
	/** The XML tag for library files. */
	public static const String	TAG_ROOT		= "gcs_library";	//$NON-NLS-1$
	/** The extension for library files. */
	public static const String	EXTENSION		= "glb";			//$NON-NLS-1$
	private AdvantageList		mAdvantages;
	private SkillList			mSkills;
	private SpellList			mSpells;
	private EquipmentList		mEquipment;

	/** Creates a new, empty, {@link LibraryFile}. */
	public LibraryFile() {
		super();
		setup();
	}

	/**
	 * Creates a new {@link LibraryFile} from the specified file.
	 *
	 * @param file The file to load the data from.
	 * @throws IOException if the data cannot be read or the file doesn't contain valid information.
	 */
	public LibraryFile(const File file) throws IOException {
		this();
		load(file);
	}

	private void setup() {
		mAdvantages = new AdvantageList();
		mSkills = new SkillList();
		mSpells = new SpellList();
		mEquipment = new EquipmentList();
	}

	@Override
	public FileType getFileType() {
		return FileType.getByExtension(EXTENSION);
	}

	@Override
	public StdImageSet getFileIcons() {
		// Unused
		return null;
	}

	@Override
	public bool matchesRootTag(String name) {
		return TAG_ROOT.equals(name) || AdvantageList.TAG_ROOT.equals(name) || SkillList.TAG_ROOT.equals(name) || SpellList.TAG_ROOT.equals(name) || EquipmentList.TAG_ROOT.equals(name);
	}

	@Override
	public string getXMLTagName() {
		return TAG_ROOT;
	}

	@Override
	public int getXMLTagVersion() {
		return CURRENT_VERSION;
	}

	@Override
	protected void loadSelf(XMLReader reader, LoadState state) throws IOException {
		setup();
		String name = reader.getName();
		if (TAG_ROOT.equals(name)) {
			String marker = reader.getMarker();
			do {
				if (reader.next() == XMLNodeType.START_TAG) {
					name = reader.getName();
					if (AdvantageList.TAG_ROOT.equals(name)) {
						mAdvantages.load(reader, state);
					} else if (SkillList.TAG_ROOT.equals(name)) {
						mSkills.load(reader, state);
					} else if (SpellList.TAG_ROOT.equals(name)) {
						mSpells.load(reader, state);
					} else if (EquipmentList.TAG_ROOT.equals(name)) {
						mEquipment.load(reader, state);
					} else {
						reader.skipTag(name);
					}
				}
			} while (reader.withinMarker(marker));
		}
	}

	@Override
	protected void saveSelf(XMLWriter out) {
		mAdvantages.save(out, false, true);
		mSkills.save(out, false, true);
		mSpells.save(out, false, true);
		mEquipment.save(out, false, true);
	}

	/** @return The {@link AdvantageList}. */
	public AdvantageList getAdvantageList() {
		return mAdvantages;
	}

	/** @return The {@link SkillList}. */
	public SkillList getSkillList() {
		return mSkills;
	}

	/** @return The {@link SpellList}. */
	public SpellList getSpellList() {
		return mSpells;
	}

	/** @return The {@link EquipmentList}. */
	public EquipmentList getEquipmentList() {
		return mEquipment;
	}
}
