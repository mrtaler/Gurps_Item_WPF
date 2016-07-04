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



//using com.trollworks.gcs.widgets.outline.ListRow;
//using com.trollworks.toolkit.annotation.Localize;
//using com.trollworks.toolkit.ui.UIUtilities;
//using com.trollworks.toolkit.ui.layout.Alignment;
//using com.trollworks.toolkit.ui.layout.FlexColumn;
//using com.trollworks.toolkit.ui.layout.FlexComponent;
//using com.trollworks.toolkit.ui.layout.FlexGrid;
//using com.trollworks.toolkit.ui.layout.FlexSpacer;
//using com.trollworks.toolkit.ui.layout.LayoutSize;
//using com.trollworks.toolkit.ui.widget.Commitable;
//using com.trollworks.toolkit.ui.widget.WindowUtils;
//using com.trollworks.toolkit.utility.Localization;
//using com.trollworks.toolkit.utility.text.Text;

//using java.awt.Color;
//using java.awt.Component;
//using java.awt.Dimension;
//using java.text.MessageFormat;
//using java.util.ArrayList;
//using java.util.Collections;
//using java.util.HashMap;
//using java.util.HashSet;

//using javax.swing.JLabel;
//using javax.swing.JOptionPane;
//using javax.swing.JPanel;
//using javax.swing.JTextField;
//using javax.swing.SwingConstants;
//namespace com.trollworks.gcs.character.names
//{
    
///** Asks the user to name items that have been marked to be customized. */
//public class Namer extends JPanel {
//	@Localize("Name {0}")
//	@Localize(locale = "de", value = "Benenne {0}")
//	@Localize(locale = "ru", value = "Имя {0}")
//	@Localize(locale = "es", value = "Nombre {0}")
//	private static String	NAME_TITLE;
//	@Localize("1 item remaining to be named.")
//	@Localize(locale = "de", value = "1 weiteres Element zu benennen.")
//	@Localize(locale = "ru", value = "осталось назвать 1 элемент.")
//	@Localize(locale = "es", value = "Queda un elemento pendiente de nombrar")
//	private static String	ONE_REMAINING;
//	@Localize("{0} items remaining to be named.")
//	@Localize(locale = "de", value = "{0} weitere Elemente zu benennen.")
//	@Localize(locale = "ru", value = "{0} элементов осталось назвать.")
//	@Localize(locale = "es", value = "Quedan {0} elementos pendientes de nombrar")
//	private static String	REMAINING;
//	@Localize("Apply")
//	@Localize(locale = "de", value = "Anwenden")
//	@Localize(locale = "ru", value = "Применить")
//	@Localize(locale = "es", value = "Aplicar")
//	private static String	APPLY;
//	@Localize("Cancel")
//	@Localize(locale = "de", value = "Abbrechen")
//	@Localize(locale = "ru", value = "Отмена")
//	@Localize(locale = "es", value = "Cancelar")
//	private static String	CANCEL;
//	@Localize("Cancel Remaining")
//	@Localize(locale = "de", value = "Alles Abbrechen")
//	@Localize(locale = "ru", value = "Пропустить остальные")
//	@Localize(locale = "es", value = "Cancelar lo restante")
//	private static String	CANCEL_REST;

//	static {
//		Localization.initialize();
//	}

//	private ListRow					mRow;
//	private ArrayList<JTextField>	mFields;

//	/**
//	 * Brings up a modal naming dialog for each row in the list.
//	 *
//	 * @param owner The owning component.
//	 * @param list The rows to name.
//	 * @return Whether anything was modified.
//	 */
//	static public bool name(Component owner, ArrayList<ListRow> list) {
//		ArrayList<ListRow> rowList = new ArrayList<>();
//		ArrayList<HashSet<String>> setList = new ArrayList<>();
//		bool modified = false;
//		int count;

//		for (ListRow row : list) {
//			HashSet<String> set = new HashSet<>();

//			row.fillWithNameableKeys(set);
//			if (!set.isEmpty()) {
//				rowList.add(row);
//				setList.add(set);
//			}
//		}

//		count = rowList.size();
//		for (int i = 0; i < count; i++) {
//			ListRow row = rowList.get(i);
//			bool hasMore = i != count - 1;
//			int type = hasMore ? JOptionPane.YES_NO_CANCEL_OPTION : JOptionPane.YES_NO_OPTION;
//			String[] options = hasMore ? new String[] { APPLY, CANCEL, CANCEL_REST } : new String[] { APPLY, CANCEL };
//			Namer panel = new Namer(row, setList.get(i), count - i - 1);
//			switch (WindowUtils.showOptionDialog(owner, panel, MessageFormat.format(NAME_TITLE, row.getLocalizedName()), true, type, JOptionPane.PLAIN_MESSAGE, row.getIcon(true), options, APPLY)) {
//				case JOptionPane.YES_OPTION:
//					panel.applyChanges();
//					modified = true;
//					break;
//				case JOptionPane.NO_OPTION:
//					break;
//				case JOptionPane.CANCEL_OPTION:
//				case JOptionPane.CLOSED_OPTION:
//				default:
//					return modified;
//			}
//		}
//		return modified;
//	}

//	private Namer(ListRow row, HashSet<String> set, int remaining) {
//		JLabel label;
//		mRow = row;
//		mFields = new ArrayList<>();

//		FlexColumn column = new FlexColumn();
//		if (remaining > 0) {
//			label = new JLabel(remaining == 1 ? ONE_REMAINING : MessageFormat.format(REMAINING, new Integer(remaining)), SwingConstants.CENTER);
//			Dimension size = label.getMaximumSize();
//			size.width = LayoutSize.MAXIMUM_SIZE;
//			label.setMaximumSize(size);
//			add(label);
//			column.add(label);
//		}
//		label = new JLabel(Text.truncateIfNecessary(row.toString(), 80, SwingConstants.RIGHT), SwingConstants.CENTER);
//		Dimension size = label.getMaximumSize();
//		size.width = LayoutSize.MAXIMUM_SIZE;
//		size.height += 4;
//		label.setMaximumSize(size);
//		size = label.getPreferredSize();
//		size.height += 4;
//		label.setPreferredSize(size);
//		label.setMinimumSize(size);
//		label.setBackground(Color.BLACK);
//		label.setForeground(Color.WHITE);
//		label.setOpaque(true);
//		add(label);
//		column.add(label);
//		column.add(new FlexSpacer(0, 10, false, false));

//		int rowIndex = 0;
//		FlexGrid grid = new FlexGrid();
//		grid.setFillHorizontal(true);
//		ArrayList<String> list = new ArrayList<>(set);
//		Collections.sort(list);
//		for (String name : list) {
//			JTextField field = new JTextField(25);
//			field.setName(name);
//			size = field.getPreferredSize();
//			size.width = LayoutSize.MAXIMUM_SIZE;
//			field.setMaximumSize(size);
//			mFields.add(field);
//			label = new JLabel(name, SwingConstants.RIGHT);
//			UIUtilities.setOnlySize(label, label.getPreferredSize());
//			add(label);
//			add(field);
//			grid.add(new FlexComponent(label, Alignment.RIGHT_BOTTOM, Alignment.CENTER), rowIndex, 0);
//			grid.add(field, rowIndex++, 1);
//		}

//		column.add(grid);
//		column.add(new FlexSpacer(0, 0, false, true));
//		column.apply(this);
//	}

//	private void applyChanges() {
//		Commitable.sendCommitToFocusOwner();
//		HashMap<String, String> map = new HashMap<>();
//		for (JTextField field : mFields) {
//			map.put(field.getName(), field.getText());
//		}
//		mRow.applyNameableKeys(map);
//	}
//}
//}