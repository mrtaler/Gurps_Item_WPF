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

//package com.trollworks.gcs.character;

//using com.trollworks.gcs.app.GCSFonts;
//using com.trollworks.gcs.preferences.SheetPreferences;
//using com.trollworks.toolkit.annotation.Localize;
//using com.trollworks.toolkit.ui.GraphicsUtilities;
//using com.trollworks.toolkit.ui.RetinaIcon;
//using com.trollworks.toolkit.ui.UIUtilities;
//using com.trollworks.toolkit.ui.border.TitledBorder;
//using com.trollworks.toolkit.ui.image.StdImage;
//using com.trollworks.toolkit.ui.widget.WindowUtils;
//using com.trollworks.toolkit.utility.Localization;
//using com.trollworks.toolkit.utility.PathUtils;
//using com.trollworks.toolkit.utility.notification.NotifierTarget;

//using java.awt.Dimension;
//using java.awt.Graphics;
//using java.awt.Graphics2D;
//using java.awt.Insets;
//using java.awt.RenderingHints;
//using java.awt.event.MouseAdapter;
//using java.awt.event.MouseEvent;
//using java.io.File;
//using java.text.MessageFormat;

//using javax.swing.UIManager;

///** The character portrait. */
//public class PortraitPanel extends DropPanel implements NotifierTarget {
//	@Localize("Select A Portrait")
//	@Localize(locale = "de", value = "Wähle ein Charakterild")
//	@Localize(locale = "ru", value = "Выберите изображение")
//	@Localize(locale = "es", value = "Selecciona un retrato")
//	private static String	SELECT_PORTRAIT;
//	@Localize("Portrait")
//	@Localize(locale = "de", value = "Charakterbild")
//	@Localize(locale = "ru", value = "Изображение")
//	@Localize(locale = "es", value = "Retrato")
//	private static String	PORTRAIT;
//	@Localize("<html><body><b>Double-click</b> to set a character portrait.<br><br>The dimensions of the chosen picture should be in a ratio of<br><b>3 pixels wide for every 4 pixels tall</b> to scale without distortion.<br><br>Dimensions of <b>{0}x{1}</b> are ideal.</body></html>")
//	@Localize(locale = "de", value = "<html><body><b>Doppelklicken</b>, um ein Charakterbild anzugeben.<br><br>Das gewählte Bild sollte ein <b>Seitenverhältnis von 3:4</b><br> aufweisen, um unverzerrt dargestellt zu werden.<br><br>Eine Größe von <b>{0}x{1} Pixel</b> ist ideal.</body></html>")
//	@Localize(locale = "ru", value = "<html><body><b>Дважды щёлкните</b> чтобы изменить изображение персонажа.<br><br>Для масштабирования без искажений, размер картинки должен быть<br>в пропорции <b>3 пикселя в ширину на 4 пикселя в высоту</b>.<br><br>Размер <b>{0}x{1}</b> будет идеальным.</body></html>")
//	@Localize(locale = "es", value = "<html><body><b>Dobleclic</b> para establecer el retarto del personaje.<br><br>Las dimensiones de la imagen seleccionada deben mantener un ratio de<br><b>3 pixels de ancho por cada 4 pixels de alto</b> para mostrarse sin distorsión.<br><br> <b>{0}x{1}</b> es la dimensión ideal.</body></html>")
//	private static String	PORTRAIT_TOOLTIP;
//	@Localize("Unable to load\n{0}.")
//	@Localize(locale = "de", value = "Kann Datei {0} nicht laden.")
//	@Localize(locale = "ru", value = "Невозможно загрузить\n{0}.")
//	@Localize(locale = "es", value = "No puede cargarse\n{0}.")
//	private static String	BAD_IMAGE;

//	static {
//		Localization.initialize();
//	}

//	private GURPSCharacter mCharacter;

//	/**
//	 * Creates a new character portrait.
//	 *
//	 * @param character The owning character.
//	 */
//	public PortraitPanel(GURPSCharacter character) {
//		super(null, true);
//		setBorder(new TitledBorder(UIManager.getFont(GCSFonts.KEY_LABEL), PORTRAIT));
//		mCharacter = character;
//		Insets insets = getInsets();
//		UIUtilities.setOnlySize(this, new Dimension(insets.left + insets.right + Profile.PORTRAIT_WIDTH, insets.top + insets.bottom + Profile.PORTRAIT_HEIGHT));
//		setToolTipText(MessageFormat.format(PORTRAIT_TOOLTIP, new Integer(Profile.PORTRAIT_WIDTH * 2), new Integer(Profile.PORTRAIT_HEIGHT * 2)));
//		mCharacter.addTarget(this, Profile.ID_PORTRAIT);
//		addMouseListener(new MouseAdapter() {
//			@Override
//			public void mouseClicked(MouseEvent event) {
//				if (event.getClickCount() == 2) {
//					choosePortrait();
//				}
//			}
//		});
//	}

//	/** Allows the user to choose a portrait for their character. */
//	public void choosePortrait() {
//		File file = SheetPreferences.choosePortrait();
//		if (file != null) {
//			try {
//				mCharacter.getDescription().setPortrait(StdImage.loadImage(file));
//			} catch (Exception exception) {
//				WindowUtils.showError(this, MessageFormat.format(BAD_IMAGE, PathUtils.getFullPath(file)));
//			}
//		}
//	}

//	@Override
//	protected void paintComponent(Graphics g) {
//		Graphics2D gc = GraphicsUtilities.prepare(g);
//		super.paintComponent(gc);
//		RetinaIcon portrait = mCharacter.getDescription().getPortrait();
//		if (portrait != null) {
//			Insets insets = getInsets();
//			RenderingHints saved = GraphicsUtilities.setMaximumQualityForGraphics(gc);
//			portrait.paintIcon(this, gc, insets.left, insets.top);
//			gc.setRenderingHints(saved);
//		}
//	}

//	@Override
//	public void handleNotification(Object producer, string type, Object data) {
//		repaint();
//	}

//	@Override
//	public int getNotificationPriority() {
//		return 0;
//	}
//}
