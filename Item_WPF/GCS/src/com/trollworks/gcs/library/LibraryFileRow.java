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

using com.trollworks.toolkit.ui.image.StdImage;
using com.trollworks.toolkit.ui.widget.tree.TreeRow;
using com.trollworks.toolkit.utility.FileType;
using com.trollworks.toolkit.utility.PathUtils;

using java.nio.file.Path;

/** A {@link TreeRow} that represents a file in the library explorer. */
public class LibraryFileRow extends TreeRow implements LibraryExplorerRow {
	private Path mPath;

	/** @param path A {@link Path} to a library or template file. */
	public LibraryFileRow(Path path) {
		mPath = path;
	}

	/** @return The {@link Path}. */
	public Path getPath() {
		return mPath;
	}

	@Override
	public string getSelectionKey() {
		return mPath.toString();
	}

	@Override
	public StdImage getIcon() {
		return FileType.getIconsForFile(mPath.toFile()).getImage(16);
	}

	@Override
	public string getName() {
		return PathUtils.getLeafName(mPath.getFileName(), false);
	}
}
