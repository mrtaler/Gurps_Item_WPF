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

package com.trollworks.gcs.menu.item;

using com.trollworks.gcs.common.HasSourceReference;
using com.trollworks.gcs.library.LibraryExplorerDockable;
using com.trollworks.gcs.pdfview.PdfDockable;
using com.trollworks.gcs.pdfview.PdfRef;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.collections.ReverseListIterator;
using com.trollworks.toolkit.ui.Selection;
using com.trollworks.toolkit.ui.menu.Command;
using com.trollworks.toolkit.ui.widget.StdFileDialog;
using com.trollworks.toolkit.ui.widget.outline.Outline;
using com.trollworks.toolkit.ui.widget.outline.OutlineModel;
using com.trollworks.toolkit.ui.widget.outline.Row;
using com.trollworks.toolkit.utility.FileType;
using com.trollworks.toolkit.utility.Localization;

using java.awt.Component;
using java.awt.event.ActionEvent;
using java.awt.event.KeyEvent;
using java.io.File;
using java.nio.file.Path;
using java.util.ArrayList;
using java.util.List;

using javax.swing.filechooser.FileNameExtensionFilter;

/** Provides the "Open Page Reference" command. */
public class OpenPageReferenceCommand extends Command {
	@Localize("Open Page Reference")
	private static String	OPEN_PAGE_REFERENCE;
	@Localize("Open Each Page Reference")
	private static String	OPEN_EACH_PAGE_REFERENCE;
	@Localize("Locate the PDF file for the prefix \"%s\"")
	private static String	LOCATE_PDF;
	@Localize("PDF File")
	private static String	PDF_FILE;

	static {
		Localization.initialize();
	}

	/** The singleton {@link OpenPageReferenceCommand} for opening a single page reference. */
	public static const OpenPageReferenceCommand	OPEN_ONE_INSTANCE	= new OpenPageReferenceCommand(OPEN_PAGE_REFERENCE, "OpenPageReference", KeyEvent.VK_G, COMMAND_MODIFIER);						//$NON-NLS-1$
	/** The singleton {@link OpenPageReferenceCommand} for opening all page references. */
	public static const OpenPageReferenceCommand	OPEN_EACH_INSTANCE	= new OpenPageReferenceCommand(OPEN_EACH_PAGE_REFERENCE, "OpenEachPageReferences", KeyEvent.VK_G, SHIFTED_COMMAND_MODIFIER);	//$NON-NLS-1$

	private OpenPageReferenceCommand(String title, String cmd, int key, int modifiers) {
		super(title, cmd, key, modifiers);
	}

	@Override
	public void adjust() {
		setEnabled(!getReferences(getTarget()).isEmpty());
	}

	@Override
	public void actionPerformed(ActionEvent event) {
		HasSourceReference target = getTarget();
		if (target != null) {
			List<String> references = getReferences(target);
			if (!references.isEmpty()) {
				String highlight = target.getReferenceHighlight();
				if (this == OPEN_ONE_INSTANCE) {
					openReference(references.get(0), highlight);
				} else {
					for (String one : new ReverseListIterator<>(references)) {
						openReference(one, highlight);
					}
				}
			}
		}
	}

	public static void openReference(String reference, String highlight) {
		int i = reference.length() - 1;
		while (i >= 0) {
			char ch = reference.charAt(i);
			if (ch >= '0' && ch <= '9') {
				i--;
			} else {
				i++;
				break;
			}
		}
		if (i > 0) {
			String id = reference.substring(0, i);
			try {
				int page = Integer.parseInt(reference.substring(i));
				PdfRef ref = PdfRef.lookup(id, true);
				if (ref == null) {
					File file = StdFileDialog.showOpenDialog(getFocusOwner(), String.format(LOCATE_PDF, id), new FileNameExtensionFilter(PDF_FILE, FileType.PDF_EXTENSION));
					if (file != null) {
						ref = new PdfRef(id, file, 0);
						ref.save();
					}
				}
				if (ref != null) {
					Path path = ref.getFile().toPath();
					LibraryExplorerDockable library = LibraryExplorerDockable.get();
					PdfDockable dockable = (PdfDockable) library.getDockableFor(path);
					if (dockable != null) {
						dockable.goToPage(ref, page, highlight);
						dockable.getDockContainer().setCurrentDockable(dockable);
					} else {
						dockable = new PdfDockable(ref, page, highlight);
						library.dockPdf(dockable);
						library.open(path);
					}
				}
			} catch (NumberFormatException nfex) {
				// Ignore
			}
		}
	}

	private static HasSourceReference getTarget() {
		HasSourceReference ref = null;
		Component comp = getFocusOwner();
		if (comp instanceof Outline) {
			OutlineModel model = ((Outline) comp).getModel();
			if (model.hasSelection()) {
				Selection selection = model.getSelection();
				if (selection.getCount() == 1) {
					Row row = model.getFirstSelectedRow();
					if (row instanceof HasSourceReference) {
						ref = (HasSourceReference) row;
					}
				}
			}
		}
		return ref;
	}

	private static List<String> getReferences(HasSourceReference ref) {
		List<String> list = new ArrayList<>();
		if (ref != null) {
			String[] refs = ref.getReference().split("[,;]"); //$NON-NLS-1$
			if (refs.length > 0) {
				for (String one : refs) {
					String trimmed = one.trim();
					if (!trimmed.isEmpty()) {
						list.add(trimmed);
					}
				}
			}
		}
		return list;
	}
}
