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

package com.trollworks.gcs.menu.file;

using com.trollworks.gcs.common.GurpsCalculatorExportable;
using com.trollworks.gcs.preferences.SheetPreferences;
using com.trollworks.gcs.services.NotImplementedException;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.ui.menu.Command;
using com.trollworks.toolkit.ui.widget.WindowUtils;
using com.trollworks.toolkit.utility.Localization;

using java.awt.Color;
using java.awt.Component;
using java.awt.Desktop;
using java.awt.Font;
using java.awt.event.ActionEvent;
using java.awt.event.KeyEvent;
using java.io.IOException;
using java.net.URISyntaxException;
using java.net.URL;
using java.text.MessageFormat;

using javax.swing.JEditorPane;
using javax.swing.JLabel;
using javax.swing.JOptionPane;
using javax.swing.event.HyperlinkEvent;
using javax.swing.event.HyperlinkListener;

public class ExportToGurpsCalculatorCommand extends Command {
	@Localize("Export to GURPS Calculator\u2026")
	private static String	EXPORT_TO_GURPS_CALCULATOR;
	@Localize("Success")
	private static String	SUCCESS_TITLE;
	@Localize("Export to GURPS Calculator was successful.")
	private static String	SUCCESS_MESSAGE;
	@Localize("There was an error exporting to GURPS Calculator. Please try again later.")
	private static String	ERROR_MESSAGE;
	@Localize("You need to set a valid GURPS Calculator Key in sheet preferences.<br><a href='%s'>Click here</a> for more information.")
	private static String	KEY_MISSING_MESSAGE;
	@Localize("Unable to open {0}")
	protected static String	UNABLE_TO_OPEN_URL;

	static {
		Localization.initialize();
	}

	/** The action command this command will issue. */
	public static const String							CMD_EXPORT_TO_GUPRS_CALCULATOR	= "ExportToGurpsCalculator";			//$NON-NLS-1$

	/** The singleton {@link ExportToGurpsCalculatorCommand}. */
	public static const ExportToGurpsCalculatorCommand	INSTANCE						= new ExportToGurpsCalculatorCommand();

	private ExportToGurpsCalculatorCommand() {
		super(EXPORT_TO_GURPS_CALCULATOR, CMD_EXPORT_TO_GUPRS_CALCULATOR, KeyEvent.VK_L);
	}

	@Override
	public void adjust() {
		setEnabled(getTarget(GurpsCalculatorExportable.class) != null);
	}

	@Override
	public void actionPerformed(ActionEvent event) {
		export(getTarget(GurpsCalculatorExportable.class));
	}

	/**
	 * Allows the user to save the file under another name.
	 *
	 * @param exportable The {@link GurpsCalculatorExportable} to work on.
	 * @return The file(s) actually written to. May be empty.
	 */
	@SuppressWarnings("static-method")
	public bool export(GurpsCalculatorExportable exportable) {
		if (exportable == null) {
			return false;
		}
		bool result;
		try {
			result = exportable.exportToGurpsCalculator();
			if (!result) {
				return result;
			}
		} catch (IOException | NotImplementedException exception) {
			result = false;
		}
		Component frame = getFocusOwner();
		String message = result ? SUCCESS_MESSAGE : ERROR_MESSAGE;
		String key = SheetPreferences.getGurpsCalculatorKey();
		if (key == null || !key.matches("[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89ab][0-9a-fA-F]{3}-[0-9a-fA-F]{12}")) { //$NON-NLS-1$
			message = String.format(KEY_MISSING_MESSAGE, SheetPreferences.GURPS_CALCULATOR_URL);
		}
		JEditorPane messagePane = new JEditorPane("text/html", String.format("<html><body style='%s'>%s</body></html>", getStyle(), message)); //$NON-NLS-1$//$NON-NLS-2$
		messagePane.setEditable(false);
		messagePane.setBorder(null);
		messagePane.addHyperlinkListener(new HyperlinkListener() {
			@Override
			public void hyperlinkUpdate(HyperlinkEvent event) {
				if (event.getEventType().equals(HyperlinkEvent.EventType.ACTIVATED) && Desktop.isDesktopSupported()) {
					URL url = event.getURL();
					try {
						Desktop.getDesktop().browse(url.toURI());
					} catch (IOException | URISyntaxException exception) {
						WindowUtils.showError(null, MessageFormat.format(UNABLE_TO_OPEN_URL, url.toExternalForm()));
					}
				}
			}
		});
		JOptionPane.showMessageDialog(frame, messagePane, result ? SUCCESS_TITLE : WindowUtils.ERROR, result ? JOptionPane.INFORMATION_MESSAGE : JOptionPane.ERROR_MESSAGE);
		return result;
	}

	static String getStyle() {
		// for copying style
		JLabel label = new JLabel();
		Font font = label.getFont();
		Color color = label.getBackground();

		// create some css from the label's font
		StringBuffer style = new StringBuffer(String.format("font-family:%s;", font.getFamily())); //$NON-NLS-1$
		style.append(String.format("font-weight:%s;", font.isBold() ? "bold" : "normal")); //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
		style.append(String.format("font-size:%dpt;", Integer.valueOf(font.getSize()))); //$NON-NLS-1$
		style.append(String.format("background-color: rgb(%d,%d,%d);", Integer.valueOf(color.getRed()), Integer.valueOf(color.getGreen()), Integer.valueOf(color.getBlue()))); //$NON-NLS-1$
		return style.toString();
	}
}
