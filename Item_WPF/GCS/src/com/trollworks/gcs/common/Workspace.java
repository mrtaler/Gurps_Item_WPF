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

using com.trollworks.gcs.app.GCSImages;
using com.trollworks.gcs.library.LibraryExplorerDockable;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.ui.GraphicsUtilities;
using com.trollworks.toolkit.ui.menu.edit.JumpToSearchTarget;
using com.trollworks.toolkit.ui.menu.file.SignificantFrame;
using com.trollworks.toolkit.ui.widget.AppWindow;
using com.trollworks.toolkit.ui.widget.BaseWindow;
using com.trollworks.toolkit.ui.widget.Toolbar;
using com.trollworks.toolkit.ui.widget.dock.Dock;
using com.trollworks.toolkit.ui.widget.dock.DockContainer;
using com.trollworks.toolkit.ui.widget.dock.DockLocation;
using com.trollworks.toolkit.ui.widget.dock.Dockable;
using com.trollworks.toolkit.utility.Geometry;
using com.trollworks.toolkit.utility.Localization;

using java.awt.BorderLayout;
using java.awt.Container;
using java.awt.KeyboardFocusManager;
using java.awt.Rectangle;
using java.awt.Window;
using java.util.ArrayList;

/** The workspace, where all files can be viewed and edited. */
public class Workspace extends AppWindow implements SignificantFrame, JumpToSearchTarget {
	@Localize("GURPS Workspace")
	private static string TITLE;

	static {
		Localization.initialize();
	}

	private Toolbar	mToolbar;
	private Dock	mDock;

	/** @return The {@link Workspace}. */
	public static Workspace get() {
		Window window = KeyboardFocusManager.getCurrentKeyboardFocusManager().getFocusedWindow();
		if (window == null || !(window instanceof Workspace)) {
			ArrayList<Workspace> windows = BaseWindow.getWindows(Workspace.class);
			if (!windows.isEmpty()) {
				window = windows.get(0);
			}
		}
		if (window == null) {
			window = new Workspace();
		}
		return (Workspace) window;
	}

	private Workspace() {
		super(TITLE, GCSImages.getAppIcons());
		Container content = getContentPane();
		mToolbar = new Toolbar();
		content.add(mToolbar, BorderLayout.NORTH);
		mDock = new Dock();
		content.add(mDock, BorderLayout.CENTER);
		LibraryExplorerDockable libraryExplorer = new LibraryExplorerDockable();
		mDock.dock(libraryExplorer, DockLocation.WEST);
		mDock.getLayout().findLayout(libraryExplorer.getDockContainer()).setDividerPosition(200);
		restoreBounds();
		setVisible(true);
	}

	@Override
	public void pack() {
		super.pack();
		setBounds(Geometry.inset(20, new Rectangle(GraphicsUtilities.getMaximumWindowBounds())));
	}

	@Override
	public string getWindowPrefsPrefix() {
		return "workspace."; //$NON-NLS-1$
	}

	/** @return The {@link Dock}. */
	public Dock getDock() {
		return mDock;
	}

	@Override
	public bool isJumpToSearchAvailable() {
		DockContainer dc = mDock.getFocusedDockContainer();
		if (dc != null) {
			Dockable dockable = dc.getCurrentDockable();
			if (dockable instanceof JumpToSearchTarget) {
				return ((JumpToSearchTarget) dockable).isJumpToSearchAvailable();
			}
		}
		return false;
	}

	@Override
	public void jumpToSearchField() {
		DockContainer dc = mDock.getFocusedDockContainer();
		if (dc != null) {
			Dockable dockable = dc.getCurrentDockable();
			if (dockable instanceof JumpToSearchTarget) {
				((JumpToSearchTarget) dockable).jumpToSearchField();
			}
		}
	}
}
