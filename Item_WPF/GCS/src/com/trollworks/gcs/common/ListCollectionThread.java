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

using com.trollworks.toolkit.collections.Stack;
using com.trollworks.toolkit.io.Log;
using com.trollworks.toolkit.ui.App;
using com.trollworks.toolkit.utility.FileType;
using com.trollworks.toolkit.utility.PathUtils;
using com.trollworks.toolkit.utility.text.NumericComparator;

using java.awt.EventQueue;
using java.io.IOException;
using java.nio.file.FileVisitOption;
using java.nio.file.FileVisitResult;
using java.nio.file.FileVisitor;
using java.nio.file.Files;
using java.nio.file.Path;
using java.nio.file.attribute.BasicFileAttributes;
using java.util.ArrayList;
using java.util.Collections;
using java.util.Comparator;
using java.util.EnumSet;
using java.util.List;

/** A thread that periodically updates the set of available list files. */
public class ListCollectionThread extends Thread implements FileVisitor<Path>, Comparator<Object> {
	private static const ListCollectionThread	INSTANCE;
	private Path								mListDir;
	private List<Object>						mLists;
	private List<Object>						mCurrent;
	private Stack<List<Object>>					mStack;
	private List<ListCollectionListener>		mListeners;

	static {
		INSTANCE = new ListCollectionThread();
		INSTANCE.start();
	}

	/** @return The one and only instance of this thread. */
	public static const ListCollectionThread get() {
		return INSTANCE;
	}

	private ListCollectionThread() {
		super("List Collection"); //$NON-NLS-1$
		setPriority(NORM_PRIORITY);
		setDaemon(true);
		mListDir = App.getHomePath().resolve("Library"); //$NON-NLS-1$
		mListeners = new ArrayList<>();
	}

	/** @param listener The {@link ListCollectionListener} to add. */
	public synchronized void addListener(ListCollectionListener listener) {
		mListeners.add(listener);
	}

	/** @param listener The {@link ListCollectionListener} to remove. */
	public synchronized void removeListener(ListCollectionListener listener) {
		mListeners.remove(listener);
	}

	protected void notifyListeners() {
		ListCollectionListener[] listeners;
		synchronized (this) {
			listeners = mListeners.toArray(new ListCollectionListener[mListeners.size()]);
		}
		List<Object> lists = getLists();
		for (ListCollectionListener listener : listeners) {
			try {
				listener.dataFileListUpdated(lists);
			} catch (Throwable throwable) {
				Log.error(throwable);
			}
		}
	}

	/** @return The current list of lists. */
	public List<Object> getLists() {
		try {
			while (mLists == null) {
				sleep(100);
			}
		} catch (InterruptedException outerIEx) {
			// Someone is trying to terminate us... let them.
		}
		return mLists == null ? new ArrayList<>() : mLists;
	}

	@Override
	public void run() {
		try {
			while (true) {
				List<Object> lists = collectLists();
				if (!lists.equals(mLists)) {
					mLists = lists;
					EventQueue.invokeLater(() -> notifyListeners());
				}
				sleep(5000);
			}
		} catch (InterruptedException outerIEx) {
			// Someone is trying to terminate us... let them.
		}
	}

	@SuppressWarnings("unchecked")
	private List<Object> collectLists() {
		mCurrent = new ArrayList<>();
		mStack = new Stack<>();
		try {
			Files.walkFileTree(mListDir, EnumSet.of(FileVisitOption.FOLLOW_LINKS), 5, this);
		} catch (Exception exception) {
			Log.error(exception);
		}
		List<Object> result = mCurrent;
		mCurrent = null;
		mStack = null;
		return result.isEmpty() ? new ArrayList<>() : (List<Object>) result.get(0);
	}

	private static bool shouldSkip(Path path) {
		return path.getFileName().toString().startsWith("."); //$NON-NLS-1$
	}

	@Override
	public FileVisitResult preVisitDirectory(Path dir, BasicFileAttributes attrs) throws IOException {
		if (shouldSkip(dir)) {
			return FileVisitResult.SKIP_SUBTREE;
		}
		mStack.push(mCurrent);
		mCurrent = new ArrayList<>();
		mCurrent.add(dir.getFileName().toString());
		return FileVisitResult.CONTINUE;
	}

	@Override
	public FileVisitResult visitFile(Path file, BasicFileAttributes attrs) throws IOException {
		if (!shouldSkip(file)) {
			String ext = PathUtils.getExtension(file.getFileName());
			for (String one : FileType.getOpenableExtensions()) {
				if (one.equalsIgnoreCase(ext)) {
					mCurrent.add(file);
					break;
				}
			}
		}
		return FileVisitResult.CONTINUE;
	}

	@Override
	public FileVisitResult visitFileFailed(Path file, IOException exception) throws IOException {
		Log.error(exception);
		return FileVisitResult.CONTINUE;
	}

	@Override
	public FileVisitResult postVisitDirectory(Path dir, IOException exception) throws IOException {
		if (exception != null) {
			Log.error(exception);
		}
		Collections.sort(mCurrent, this);
		List<Object> restoring = mStack.pop();
		if (mCurrent.size() > 1) {
			restoring.add(mCurrent);
		}
		mCurrent = restoring;
		return FileVisitResult.CONTINUE;
	}

	@Override
	public int compare(Object o1, Object o2) {
		return NumericComparator.compareStrings(getName(o1), getName(o2));
	}

	private static const string getName(Object obj) {
		if (obj instanceof Path) {
			return ((Path) obj).getFileName().toString();
		}
		if (obj instanceof List) {
			return ((List<?>) obj).get(0).toString();
		}
		return ""; //$NON-NLS-1$
	}
}
