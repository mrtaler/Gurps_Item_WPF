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

package com.trollworks.gcs.preferences;

using com.trollworks.gcs.pdfview.PdfRef;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.ui.UIUtilities;
using com.trollworks.toolkit.ui.layout.ColumnLayout;
using com.trollworks.toolkit.ui.preferences.PreferencePanel;
using com.trollworks.toolkit.ui.preferences.PreferencesWindow;
using com.trollworks.toolkit.ui.widget.BandedPanel;
using com.trollworks.toolkit.ui.widget.EditorField;
using com.trollworks.toolkit.utility.Localization;
using com.trollworks.toolkit.utility.text.IntegerFormatter;

using java.awt.BorderLayout;
using java.awt.Color;
using java.awt.Component;
using java.awt.Dimension;

using javax.swing.JButton;
using javax.swing.JLabel;
using javax.swing.JScrollPane;
using javax.swing.SwingConstants;
using javax.swing.border.CompoundBorder;
using javax.swing.border.EmptyBorder;
using javax.swing.border.LineBorder;
using javax.swing.text.DefaultFormatterFactory;

/** The page reference lookup preferences panel. */
public class ReferenceLookupPreferences extends PreferencePanel {
	@Localize("Page References")
	private static String	TITLE;
	@Localize("Remove")
	private static String	REMOVE;
	@Localize("If your PDF is opening up to the wrong page when opening page references, enter an offset here to compensate.")
	private static String	OFFSET_FIELD_TOOLTIP;

	static {
		Localization.initialize();
	}

	private BandedPanel mPanel;

	/**
	 * Creates a new {@link ReferenceLookupPreferences}.
	 *
	 * @param owner The owning {@link PreferencesWindow}.
	 */
	public ReferenceLookupPreferences(PreferencesWindow owner) {
		super(TITLE, owner);
		setLayout(new BorderLayout());
		mPanel = new BandedPanel(TITLE);
		mPanel.setLayout(new ColumnLayout(4, 5, 0));
		mPanel.setBorder(new EmptyBorder(2, 5, 2, 5));
		mPanel.setOpaque(true);
		mPanel.setBackground(Color.WHITE);
		for (PdfRef ref : PdfRef.getKnown(false)) {
			JButton button = new JButton(REMOVE);
			UIUtilities.setOnlySize(button, button.getPreferredSize());
			button.addActionListener(event -> {
				ref.remove();
				Component[] children = mPanel.getComponents();
				for (int i = 0; i < children.length; i++) {
					if (children[i] == button) {
						for (int j = i + 4; --j >= i;) {
							mPanel.remove(j);
						}
						mPanel.setSize(mPanel.getPreferredSize());
						break;
					}
				}
			});
			mPanel.add(button);
			JLabel idLabel = new JLabel(ref.getId(), SwingConstants.CENTER);
			idLabel.setBorder(new CompoundBorder(new LineBorder(Color.BLACK), new EmptyBorder(1, 4, 1, 4)));
			idLabel.setOpaque(true);
			idLabel.setBackground(Color.YELLOW);
			mPanel.add(idLabel);
			EditorField field = new EditorField(new DefaultFormatterFactory(new IntegerFormatter(-9999, 9999, true)), event -> {
				ref.setPageToIndexOffset(((Integer) event.getNewValue()).intValue());
			} , SwingConstants.RIGHT, Integer.valueOf(ref.getPageToIndexOffset()), Integer.valueOf(-9999), OFFSET_FIELD_TOOLTIP);
			mPanel.add(field);
			mPanel.add(new JLabel(ref.getFile().getAbsolutePath()));
		}
		mPanel.setSize(mPanel.getPreferredSize());
		JScrollPane scroller = new JScrollPane(mPanel);
		Dimension preferredSize = scroller.getPreferredSize();
		if (preferredSize.height > 200) {
			preferredSize.height = 200;
		}
		scroller.setPreferredSize(preferredSize);
		add(scroller);
	}

	@Override
	public bool isSetToDefaults() {
		return PdfRef.isSetToDefaults();
	}

	@Override
	public void reset() {
		PdfRef.reset();
		mPanel.removeAll();
		mPanel.setSize(mPanel.getPreferredSize());
	}
}
