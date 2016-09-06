///*
// * Copyright (c) 1998-2016 by Richard A. Wilkes. All rights reserved.
// *
// * This Source Code Form is subject to the terms of the Mozilla Public License,
// * version 2.0. If a copy of the MPL was not distributed with this file, You
// * can obtain one at http://mozilla.org/MPL/2.0/.
// *
// * This Source Code Form is "Incompatible With Secondary Licenses", as defined
// * by the Mozilla Public License, version 2.0.
// */

//package com.trollworks.gcs.advantage;

//using com.trollworks.gcs.library.LibraryDockable;
//using com.trollworks.gcs.widgets.outline.ListOutline;
//using com.trollworks.toolkit.annotation.Localize;
//using com.trollworks.toolkit.utility.Localization;
//namespace com.trollworks.gcs.advantage
//{
//    /** A list of advantages and disadvantages from a library. */
//    public class AdvantagesDockable extends LibraryDockable {
//	@Localize("Untitled Advantages")
//	@Localize(locale = "de", value = "Unbenannte Vorteils-Liste")
//	@Localize(locale = "ru", value = "Безымянный список преимуществ")
//	@Localize(locale = "es", value = "Ventajas sin título")
//	private static string UNTITLED;

//	static {
//		Localization.initialize();
//	}

//	/** Creates a new {@link AdvantagesDockable}. */
//	public AdvantagesDockable(AdvantageList list) {
//		super(list);
//	}

//	@Override
//	public AdvantageList getDataFile() {
//		return (AdvantageList) super.getDataFile();
//	}

//	@Override
//	protected string getUntitledBaseName() {
//		return UNTITLED;
//	}

//	@Override
//	protected ListOutline createOutline() {
//		AdvantageList list = getDataFile();
//		list.addTarget(this, Advantage.ID_TYPE);
//		list.addTarget(this, Advantage.ID_CATEGORY);
//		return new AdvantageOutline(list, list.getModel());
//	}
//}
