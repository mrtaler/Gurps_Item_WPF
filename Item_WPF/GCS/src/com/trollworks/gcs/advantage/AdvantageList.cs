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

//using com.trollworks.gcs.app.GCSImages;
//using com.trollworks.gcs.common.ListFile;
//using com.trollworks.gcs.common.LoadState;
//using com.trollworks.toolkit.io.xml.XMLNodeType;
//using com.trollworks.toolkit.io.xml.XMLReader;
//using com.trollworks.toolkit.ui.image.StdImageSet;
//using com.trollworks.toolkit.ui.widget.outline.OutlineModel;
//using com.trollworks.toolkit.utility.FileType;

//using java.io.IOException;
//namespace com.trollworks.gcs.advantage
//{
//    /** A list of Advantages. */
//    public class AdvantageList extends ListFile {
//	/** The current version. */
//	public static const int		CURRENT_VERSION	= 1;
//	/** The XML tag for {@link AdvantageList}s. */
//	public static const String	TAG_ROOT		= "advantage_list";	//$NON-NLS-1$
//	/** The extension for {@link AdvantageList}s. */
//	public static const String	EXTENSION		= "adq";			//$NON-NLS-1$

//	@Override
//	public int getXMLTagVersion() {
//		return CURRENT_VERSION;
//	}

//	@Override
//	public string getXMLTagName() {
//		return TAG_ROOT;
//	}

//	@Override
//	public FileType getFileType() {
//		return FileType.getByExtension(EXTENSION);
//	}

//	@Override
//	public StdImageSet getFileIcons() {
//		return GCSImages.getAdvantagesDocumentIcons();
//	}

//	@Override
//	protected void loadList(XMLReader reader, LoadState state) throws IOException {
//		OutlineModel model = getModel();
//		String marker = reader.getMarker();
//		do {
//			if (reader.next() == XMLNodeType.START_TAG) {
//				String Name = reader.getName();

//				if (Advantage.TAG_ADVANTAGE.equals(Name) || Advantage.TAG_ADVANTAGE_CONTAINER.equals(Name)) {
//					model.addRow(new Advantage(this, reader, state), true);
//				} else {
//					reader.skipTag(Name);
//				}
//			}
//		} while (reader.withinMarker(marker));
//	}
//}
