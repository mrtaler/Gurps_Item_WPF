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

package com.trollworks.gcs.app;

using com.trollworks.gcs.common.ListCollectionThread;
using com.trollworks.gcs.common.Workspace;
using com.trollworks.gcs.menu.HelpMenuProvider;
using com.trollworks.gcs.menu.edit.EditMenuProvider;
using com.trollworks.gcs.menu.file.FileMenuProvider;
using com.trollworks.gcs.menu.item.ItemMenuProvider;
using com.trollworks.gcs.preferences.ReferenceLookupPreferences;
using com.trollworks.gcs.preferences.SheetPreferences;
using com.trollworks.toolkit.ui.App;
using com.trollworks.toolkit.ui.UpdateChecker;
using com.trollworks.toolkit.ui.menu.StdMenuBar;
using com.trollworks.toolkit.ui.preferences.FontPreferences;
using com.trollworks.toolkit.ui.preferences.MenuKeyPreferences;
using com.trollworks.toolkit.ui.preferences.PreferencesWindow;
using com.trollworks.toolkit.ui.widget.AppWindow;
using com.trollworks.toolkit.utility.FileType;
using com.trollworks.toolkit.utility.Platform;
using com.trollworks.toolkit.utility.WindowsRegistry;
using com.trollworks.toolkit.utility.cmdline.CmdLine;

using java.nio.file.Path;
using java.util.HashMap;
using java.util.Map;

/** The main application user interface. */
public class GCSApp extends App {
	/** The one and only instance of this class. */
	public static const GCSApp	INSTANCE	= new GCSApp();
	public static const String	WEB_SITE	= "http://gurpscharactersheet.com";	//$NON-NLS-1$

	private GCSApp() {
		super();
		AppWindow.setDefaultWindowIcons(GCSImages.getAppIcons());
	}

	@Override
	public void configureApplication(CmdLine cmdLine) {
		if (Platform.isWindows()) {
			Map<String, String> map = new HashMap<>();
			for (FileType fileType : FileType.getAll()) {
				if (fileType.shouldRegisterAppForOpening()) {
					map.put(fileType.getExtension(), fileType.getDescription());
				}
			}
			Path home = App.getHomePath();
			WindowsRegistry.register("GCS", map, home.resolve("gcs"), home.resolve("support")); //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
		}

		UpdateChecker.check("gcs", WEB_SITE + "/versions.txt", WEB_SITE); //$NON-NLS-1$ //$NON-NLS-2$

		ListCollectionThread.get();

		StdMenuBar.configure(new FileMenuProvider(), new EditMenuProvider(), new ItemMenuProvider(), new HelpMenuProvider());
		SheetPreferences.initialize();
		PreferencesWindow.addCategory(SheetPreferences::new);
		PreferencesWindow.addCategory(FontPreferences::new);
		PreferencesWindow.addCategory(MenuKeyPreferences::new);
		PreferencesWindow.addCategory(ReferenceLookupPreferences::new);
	}

	@Override
	public void noWindowsAreOpenAtStartup(bool constChance) {
		Workspace.get();
	}

	@Override
	public void constStartup() {
		super.constStartup();
		setDefaultMenuBar(new StdMenuBar());
	}
}
