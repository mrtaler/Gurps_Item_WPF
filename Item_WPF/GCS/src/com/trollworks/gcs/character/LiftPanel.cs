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

//using com.trollworks.toolkit.annotation.Localize;
//using com.trollworks.toolkit.ui.layout.ColumnLayout;
//using com.trollworks.toolkit.utility.Localization;

//using javax.swing.SwingConstants;

///** The character damage panel. */
//public class LiftPanel extends DropPanel {
//	@Localize("Lifting & Moving Things")
//	@Localize(locale = "de", value = "Gegenstände heben und bewegen")
//	@Localize(locale = "ru", value = "Поднятие и перемещение предметов")
//	@Localize(locale = "es", value = "Levantando y Moviendo objetos")
//	private static String	LIFT_MOVE;
//	@Localize("Basic Lift:")
//	@Localize(locale = "de", value = "Grundtragkraft")
//	@Localize(locale = "ru", value = "Базовый Груз:")
//	@Localize(locale = "es", value = "Levantar:")
//	private static String	BASIC_LIFT;
//	@Localize("<html><body>The weight the character can lift overhead<br>with one hand in one second</body></html>")
//	@Localize(locale = "de", value = "<html><body>Das Gewicht, das der Charakter mit einer Hand<br>in einer Sekunde überkopf heben kann</body></html>")
//	@Localize(locale = "ru", value = "<html><body>Вес, который может поднять персонаж<br>одной рукой на 1 сек</body></html>")
//	@Localize(locale = "es", value = "<html><body>Peso que el personaje puede levantar por<br>encima de su cabeza con una mano en un segundo</body></html>")
//	private static String	BASIC_LIFT_TOOLTIP;
//	@Localize("One-Handed Lift:")
//	@Localize(locale = "de", value = "Einhändig heben")
//	@Localize(locale = "ru", value = "Подъём одной руки:")
//	@Localize(locale = "es", value = "Levantar con una mano:")
//	private static String	ONE_HANDED_LIFT;
//	@Localize("<html><body>The weight the character can lift overhead<br>with one hand in two seconds</body></html>")
//	@Localize(locale = "de", value = "<html><body>Das Gewicht, das der Charakter mit einer Hand<br>in zwei Sekunden überkopf heben kann</body></html>")
//	@Localize(locale = "ru", value = "<html><body>Вес, который может поднять персонаж<br>одной рукой на 2 сек</body></html>")
//	@Localize(locale = "es", value = "<html><body>Peso que el personaje puede levantar por<br>encima de su cabeza con una mano en dos segundos</body></html>")
//	private static String	ONE_HANDED_LIFT_TOOLTIP;
//	@Localize("Two-Handed Lift:")
//	@Localize(locale = "de", value = "Zweihändig heben")
//	@Localize(locale = "ru", value = "Подъём двумя руками:")
//	@Localize(locale = "es", value = "Levantar con las dos manos:")
//	private static String	TWO_HANDED_LIFT;
//	@Localize("<html><body>The weight the character can lift overhead<br>with both hands in four seconds</body></html>")
//	@Localize(locale = "de", value = "<html><body>Das Gewicht, das der Charakter mit beiden Händen<br>in vier Sekunden überkopf heben kann</body></html>")
//	@Localize(locale = "ru", value = "<html><body>Вес, который может поднять персонаж<br>двумя руками на 4 сек</body></html>")
//	@Localize(locale = "es", value = "<html><body>Peso que el personaje puede levantar por<br>encima de su cabeza con dos manos en cuatro segundos</body></html>")
//	private static String	TWO_HANDED_LIFT_TOOLTIP;
//	@Localize("Shove & Knock Over:")
//	@Localize(locale = "de", value = "Schieben & Umstoßen")
//	@Localize(locale = "ru", value = "Толчок и опрокид-ние:")
//	@Localize(locale = "es", value = "Empujar y Derribar")
//	private static String	SHOVE_KNOCK_OVER;
//	@Localize("<html><body>The weight of an object the character<br>can shove and knock over</body></html>")
//	@Localize(locale = "de", value = "<html><body>Das Gewicht eines Objektes, das der Charakter<br>schieben und umstoßen kann</body></html>")
//	@Localize(locale = "ru", value = "<html><body>Вес обьектов, который персонаж<br>может столкнуть и опрокинуть</body></html>")
//	@Localize(locale = "es", value = "<html><body>Peso de un objeto que el personaje puede<br>empujar y derribar</body></html>")
//	private static String	SHOVE_KNOCK_OVER_TOOLTIP;
//	@Localize("Running Shove & Knock Over:")
//	@Localize(locale = "de", value = "Sch. & Umst. mit Anlauf")
//	@Localize(locale = "ru", value = "Толчок в движ. и опр.:")
//	@Localize(locale = "es", value = "Emp. y Der. con carrerilla:")
//	private static String	RUNNING_SHOVE;
//	@Localize("<html><body>The weight of an object the character can shove<br> and knock over with a running start</body></html>")
//	@Localize(locale = "de", value = "<html><body>Das Gewicht eines Objektes, das der Charakter<br>mit Anlauf schieben und umstoßen kann</body></html>")
//	@Localize(locale = "ru", value = "<html><body>Вес обьектов, который персонаж может<br>столкнуть и опрокинуть с разбегу</body></html>")
//	@Localize(locale = "es", value = "<html><body>Peso de un objeto que el personaje puede<br>empujar y derribar con carrerilla</body></html>")
//	private static String	RUNNING_SHOVE_TOOLTIP;
//	@Localize("Carry On Back:")
//	@Localize(locale = "de", value = "Auf dem Rücken tragen")
//	@Localize(locale = "ru", value = "Нести на спине:")
//	@Localize(locale = "es", value = "Cargar a la espalda:")
//	private static String	CARRY_ON_BACK;
//	@Localize("The weight the character can carry slung across the back")
//	@Localize(locale = "de", value = "Das Gewicht, das der Charakter auf den Rücken gebunden tragen kann")
//	@Localize(locale = "ru", value = "Вес, который может персонаж нести, перекинув через спину")
//	@Localize(locale = "es", value = "Peso que el personaje puede cargar a la espalda")
//	private static String	CARRY_ON_BACK_TOOLTIP;
//	@Localize("Shift Slightly:")
//	@Localize(locale = "de", value = "Geringfügig verschieben")
//	@Localize(locale = "ru", value = "Тащить:")
//	@Localize(locale = "es", value = "Desplazar Ligeramente")
//	private static String	SHIFT_SLIGHTLY;
//	@Localize("<html><body>The weight of an object the character<br>can shift slightly on a floor</body></html>")
//	@Localize(locale = "de", value = "<html><body>Das Gewicht eines Objektes, das der Charakter<br>auf einem Boden geringfügig verschieben kann</body></html>")
//	@Localize(locale = "ru", value = "<html><body>Вес обьектов, который персонаж<br>может немного сдвинуть по полу</body></html>")
//	@Localize(locale = "es", value = "<html><body>Peso de un objeto que el personaje<br>puede desplazar ligeramente por el suelo</body></html>")
//	private static String	SHIFT_SLIGHTLY_TOOLTIP;

//	static {
//		Localization.initialize();
//	}

//	/**
//	 * Creates a new damage panel.
//	 *
//	 * @param character The character to display the data for.
//	 */
//	public LiftPanel(GURPSCharacter character) {
//		super(new ColumnLayout(2, 2, 0), LIFT_MOVE);
//		createLabelAndDisabledField(this, character, GURPSCharacter.ID_BASIC_LIFT, BASIC_LIFT, BASIC_LIFT_TOOLTIP, SwingConstants.RIGHT);
//		createLabelAndDisabledField(this, character, GURPSCharacter.ID_ONE_HANDED_LIFT, ONE_HANDED_LIFT, ONE_HANDED_LIFT_TOOLTIP, SwingConstants.RIGHT);
//		createLabelAndDisabledField(this, character, GURPSCharacter.ID_TWO_HANDED_LIFT, TWO_HANDED_LIFT, TWO_HANDED_LIFT_TOOLTIP, SwingConstants.RIGHT);
//		createLabelAndDisabledField(this, character, GURPSCharacter.ID_SHOVE_AND_KNOCK_OVER, SHOVE_KNOCK_OVER, SHOVE_KNOCK_OVER_TOOLTIP, SwingConstants.RIGHT);
//		createLabelAndDisabledField(this, character, GURPSCharacter.ID_RUNNING_SHOVE_AND_KNOCK_OVER, RUNNING_SHOVE, RUNNING_SHOVE_TOOLTIP, SwingConstants.RIGHT);
//		createLabelAndDisabledField(this, character, GURPSCharacter.ID_CARRY_ON_BACK, CARRY_ON_BACK, CARRY_ON_BACK_TOOLTIP, SwingConstants.RIGHT);
//		createLabelAndDisabledField(this, character, GURPSCharacter.ID_SHIFT_SLIGHTLY, SHIFT_SLIGHTLY, SHIFT_SLIGHTLY_TOOLTIP, SwingConstants.RIGHT);
//	}
//}
