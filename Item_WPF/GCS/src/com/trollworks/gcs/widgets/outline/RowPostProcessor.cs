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

//package com.trollworks.gcs.widgets.outline;

//using com.trollworks.gcs.advantage.Advantage;
//using com.trollworks.gcs.character.SheetDockable;
//using com.trollworks.gcs.character.names.Namer;
//using com.trollworks.gcs.modifier.ModifierEnabler;
//using com.trollworks.toolkit.collections.FilteredList;
//using com.trollworks.toolkit.ui.UIUtilities;
//using com.trollworks.toolkit.ui.widget.outline.Outline;

//using java.util.ArrayList;
//using java.util.HashMap;
//namespace com.trollworks.gcs.widgets.outline
//{
//    /** Helper for causing the row post-processing to occur. */
//    public class RowPostProcessor implements Runnable
//    {

//    private HashMap<Outline, ArrayList<ListRow>> mMap;

//    /**
//	 * Creates a new post processor for Name substitution.
//	 *
//	 * @param map The map to process.
//	 */
//    public RowPostProcessor(HashMap<Outline, ArrayList<ListRow>> map)
//    {
//        mMap = map;
//    }

//    /**
//	 * Creates a new post processor for Name substitution.
//	 *
//	 * @param outline The outline containing the rows.
//	 * @param list The list to process.
//	 */
//    public RowPostProcessor(Outline outline, ArrayList<ListRow> list)
//    {
//        mMap = new HashMap<>();
//        mMap.put(outline, list);
//    }

//    @Override
//    public void run()
//    {
//        for (Outline outline : mMap.keySet())
//        {
//            ArrayList<ListRow> rows = mMap.get(outline);
//            bool modified = ModifierEnabler.process(outline, new FilteredList<>(rows, Advantage.class));
//			modified |= Namer.Name(outline, rows);
//			if (modified) {
//				outline.updateRowHeights(rows);
//				outline.repaint();
//				SheetDockable dockable = UIUtilities.getAncestorOfType(outline, SheetDockable.class);
//				if (dockable != null) {
//					dockable.notifyOfPrereqOrFeatureModification();
//				}
//			}
//		}
//	}
//}
//}