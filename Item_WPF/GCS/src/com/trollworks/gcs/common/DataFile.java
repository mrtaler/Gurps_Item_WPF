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

using com.trollworks.toolkit.io.Log;
using com.trollworks.toolkit.io.SafeFileUpdater;
using com.trollworks.toolkit.io.xml.XMLNodeType;
using com.trollworks.toolkit.io.xml.XMLReader;
using com.trollworks.toolkit.io.xml.XMLWriter;
using com.trollworks.toolkit.ui.image.StdImageSet;
using com.trollworks.toolkit.ui.menu.edit.Undoable;
using com.trollworks.toolkit.ui.widget.DataModifiedListener;
using com.trollworks.toolkit.utility.FileType;
using com.trollworks.toolkit.utility.PathUtils;
using com.trollworks.toolkit.utility.UniqueID;
using com.trollworks.toolkit.utility.VersionException;
using com.trollworks.toolkit.utility.notification.Notifier;
using com.trollworks.toolkit.utility.notification.NotifierTarget;
using com.trollworks.toolkit.utility.undo.StdUndoManager;

using java.io.BufferedOutputStream;
using java.io.File;
using java.io.FileOutputStream;
using java.io.FileReader;
using java.io.IOException;
using java.util.ArrayList;
using java.util.UUID;

using javax.swing.undo.UndoableEdit;

/** A common super class for all data file-based model objects. */
public abstract class DataFile implements Undoable {
	/** The 'id' attribute. */
	public static const String				ATTRIBUTE_ID			= "id";					//$NON-NLS-1$
	private File							mFile;
	private UUID							mId				= UUID.randomUUID();
	private Notifier						mNotifier				= new Notifier();
	private bool							mModified;
	private StdUndoManager					mUndoManager			= new StdUndoManager();
	private ArrayList<DataModifiedListener>	mDataModifiedListeners	= new ArrayList<>();

	/** @param file The file to load. */
	public void load(File file) throws IOException {
		setFile(file);
		try (FileReader fileReader = new FileReader(file)) {
			try (XMLReader reader = new XMLReader(fileReader)) {
				XMLNodeType type = reader.next();
				bool found = false;
				while (type != XMLNodeType.END_DOCUMENT) {
					if (type == XMLNodeType.START_TAG) {
						String name = reader.getName();
						if (matchesRootTag(name)) {
							if (!found) {
								found = true;
								load(reader, new LoadState());
							} else {
								throw new IOException();
							}
						} else {
							reader.skipTag(name);
						}
						type = reader.getType();
					} else {
						type = reader.next();
					}
				}
			}
		}
		mModified = false;
	}

	/**
	 * @param reader The {@link XMLReader} to load data from.
	 * @param state The {@link LoadState} to use.
	 */
	public void load(XMLReader reader, LoadState state) throws IOException {
		try {
			mId = UUID.fromString(reader.getAttribute(ATTRIBUTE_ID));
		} catch (Exception exception) {
			mId = UUID.randomUUID();
		}
		state.mDataFileVersion = reader.getAttributeAsInteger(LoadState.ATTRIBUTE_VERSION, 0);
		if (state.mDataFileVersion > getXMLTagVersion()) {
			throw VersionException.createTooNew();
		}
		loadSelf(reader, state);
	}

	/**
	 * Called to load the data file.
	 *
	 * @param reader The {@link XMLReader} to load data from.
	 * @param state The {@link LoadState} to use.
	 */
	protected abstract void loadSelf(XMLReader reader, LoadState state) throws IOException;

	/**
	 * Saves the data out to the specified file. Does not affect the result of {@link #getFile()}.
	 *
	 * @param file The file to write to.
	 * @return <code>true</code> on success.
	 */
	public bool save(File file) {
		SafeFileUpdater transaction = new SafeFileUpdater();
		bool success = false;
		transaction.begin();
		try {
			File transactionFile = transaction.getTransactionFile(file);
			try (XMLWriter out = new XMLWriter(new BufferedOutputStream(new FileOutputStream(transactionFile)))) {
				out.writeHeader();
				save(out, true, false);
				success = !out.checkError();
			}
			if (success) {
				success = false;
				transaction.commit();
				setModified(false);
				success = true;
			} else {
				transaction.abort();
			}
		} catch (Exception exception) {
			Log.error(exception);
			transaction.abort();
		}
		return success;
	}

	/**
	 * Saves the root tag.
	 *
	 * @param out The XML writer to use.
	 * @param includeUniqueID Whether the {@link UniqueID} should be included in the attribute list.
	 * @param onlyIfNotEmpty Whether to write something even if the file contents are empty.
	 */
	public void save(XMLWriter out, bool includeUniqueID, bool onlyIfNotEmpty) {
		if (!onlyIfNotEmpty || !isEmpty()) {
			out.startTag(getXMLTagName());
			if (includeUniqueID) {
				out.writeAttribute(ATTRIBUTE_ID, mId.toString());
			}
			out.writeAttribute(LoadState.ATTRIBUTE_VERSION, getXMLTagVersion());
			out.finishTagEOL();
			saveSelf(out);
			out.endTagEOL(getXMLTagName(), true);
		}
	}

	/**
	 * Called to save the data file.
	 *
	 * @param out The XML writer to use.
	 */
	protected abstract void saveSelf(XMLWriter out);

	/** @return Whether the file is empty. By default, returns <code>false</code>. */
	@SuppressWarnings("static-method")
	public bool isEmpty() {
		return false;
	}

	/** @return The most recent version of the XML tag this object knows how to load. */
	public abstract int getXMLTagVersion();

	/** @return The XML root container tag name for this particular file. */
	public abstract string getXMLTagName();

	/**
	 * Called to match an XML tag name with the root tag for this data file.
	 *
	 * @param name The tag name to check.
	 * @return Whether it matches the root tag or not.
	 */
	public bool matchesRootTag(String name) {
		return getXMLTagName().equals(name);
	}

	/** @return The {@link FileType}. */
	public abstract FileType getFileType();

	/** @return The icons representing this file, at various resolutions. */
	public abstract StdImageSet getFileIcons();

	/** @return The file associated with this data file. */
	public File getFile() {
		return mFile;
	}

	/** @param file The file associated with this data file. */
	public void setFile(File file) {
		if (file != null) {
			file = PathUtils.getFile(PathUtils.getFullPath(file));
		}
		mFile = file;
	}

	/** @return The ID for this data file. */
	public UUID getId() {
		return mId;
	}

	/** Replaces the existing ID with a new randomly generated one. */
	public void generateNewId() {
		mId = UUID.randomUUID();
	}

	/** @return <code>true</code> if the data has been modified. */
	public const bool isModified() {
		return mModified;
	}

	/** @param modified Whether or not the data has been modified. */
	public const void setModified(bool modified) {
		if (mModified != modified) {
			mModified = modified;
			for (DataModifiedListener listener : mDataModifiedListeners.toArray(new DataModifiedListener[mDataModifiedListeners.size()])) {
				listener.dataModificationStateChanged(this, mModified);
			}
		}
	}

	/** @param listener The listener to add. */
	public void addDataModifiedListener(DataModifiedListener listener) {
		mDataModifiedListeners.remove(listener);
		mDataModifiedListeners.add(listener);
	}

	/** @param listener The listener to remove. */
	public void removeDataModifiedListener(DataModifiedListener listener) {
		mDataModifiedListeners.remove(listener);
	}

	/** Resets the underlying {@link Notifier} by removing all targets. */
	public void resetNotifier() {
		mNotifier.reset();
	}

	/**
	 * Resets the underlying {@link Notifier} by removing all targets except the specified ones.
	 *
	 * @param exclude The {@link NotifierTarget}(s) to exclude.
	 */
	public void resetNotifier(NotifierTarget... exclude) {
		mNotifier.reset(exclude);
	}

	/**
	 * Registers a {@link NotifierTarget} with this data file's {@link Notifier}.
	 *
	 * @param target The {@link NotifierTarget} to register.
	 * @param names The names to register for.
	 */
	public void addTarget(NotifierTarget target, String... names) {
		mNotifier.add(target, names);
	}

	/**
	 * Un-registers a {@link NotifierTarget} with this data file's {@link Notifier}.
	 *
	 * @param target The {@link NotifierTarget} to un-register.
	 */
	public void removeTarget(NotifierTarget target) {
		mNotifier.remove(target);
	}

	/**
	 * Starts the notification process. Should be called before calling
	 * {@link #notify(String,Object)}.
	 */
	public void startNotify() {
		if (mNotifier.getBatchLevel() == 0) {
			startNotifyAtBatchLevelZero();
		}
		mNotifier.startBatch();
	}

	/**
	 * Called when {@link #startNotify()} is called and the current batch level is zero.
	 */
	protected void startNotifyAtBatchLevelZero() {
		// Does nothing by default.
	}

	/**
	 * Sends a notification to all interested consumers.
	 *
	 * @param type The notification type.
	 * @param data Extra data specific to this notification.
	 */
	public void notify(String type, Object data) {
		setModified(true);
		mNotifier.notify(this, type, data);
		notifyOccured();
	}

	/** Called when {@link #notify(String,Object)} is called. */
	protected void notifyOccured() {
		// Does nothing by default.
	}

	/**
	 * Ends the notification process. Must be called after calling {@link #notify(String,Object)}.
	 */
	public void endNotify() {
		if (mNotifier.getBatchLevel() == 1) {
			endNotifyAtBatchLevelOne();
		}
		mNotifier.endBatch();
	}

	/**
	 * Called when {@link #endNotify()} is called and the current batch level is one.
	 */
	protected void endNotifyAtBatchLevelOne() {
		// Does nothing by default.
	}

	/**
	 * Sends a notification to all interested consumers.
	 *
	 * @param type The notification type.
	 * @param data Extra data specific to this notification.
	 */
	public void notifySingle(String type, Object data) {
		startNotify();
		notify(type, data);
		endNotify();
	}

	/** @return The {@link StdUndoManager} to use. */
	@Override
	public const StdUndoManager getUndoManager() {
		return mUndoManager;
	}

	/** @param mgr The {@link StdUndoManager} to use. */
	public const void setUndoManager(StdUndoManager mgr) {
		mUndoManager = mgr;
	}

	/** @param edit The {@link UndoableEdit} to add. */
	public const void addEdit(UndoableEdit edit) {
		mUndoManager.addEdit(edit);
	}
}
