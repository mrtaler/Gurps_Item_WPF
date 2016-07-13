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

package com.trollworks.gcs.template;

using com.trollworks.gcs.advantage.Advantage;
using com.trollworks.gcs.advantage.AdvantageOutline;
using com.trollworks.gcs.character.GURPSCharacter;
using com.trollworks.gcs.character.NotesPanel;
using com.trollworks.gcs.character.TextEditor;
using com.trollworks.gcs.equipment.Equipment;
using com.trollworks.gcs.equipment.EquipmentOutline;
using com.trollworks.gcs.skill.Skill;
using com.trollworks.gcs.skill.SkillOutline;
using com.trollworks.gcs.spell.Spell;
using com.trollworks.gcs.spell.SpellOutline;
using com.trollworks.gcs.widgets.outline.ListRow;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.io.Log;
using com.trollworks.toolkit.ui.UIUtilities;
using com.trollworks.toolkit.ui.layout.ColumnLayout;
using com.trollworks.toolkit.ui.widget.outline.Outline;
using com.trollworks.toolkit.ui.widget.outline.OutlineHeader;
using com.trollworks.toolkit.ui.widget.outline.OutlineSyncer;
using com.trollworks.toolkit.ui.widget.outline.Row;
using com.trollworks.toolkit.ui.widget.outline.RowSelection;
using com.trollworks.toolkit.utility.Localization;
using com.trollworks.toolkit.utility.notification.BatchNotifierTarget;

using java.awt.Color;
using java.awt.Component;
using java.awt.Dimension;
using java.awt.EventQueue;
using java.awt.Rectangle;
using java.awt.dnd.DnDConstants;
using java.awt.dnd.DropTarget;
using java.awt.dnd.DropTargetDragEvent;
using java.awt.dnd.DropTargetDropEvent;
using java.awt.dnd.DropTargetEvent;
using java.awt.dnd.DropTargetListener;
using java.awt.event.ActionEvent;
using java.awt.event.ActionListener;
using java.util.ArrayList;

using javax.swing.JPanel;
using javax.swing.Scrollable;
using javax.swing.SwingConstants;
using javax.swing.border.EmptyBorder;

/** The template sheet. */
public class TemplateSheet extends JPanel implements Scrollable, BatchNotifierTarget, DropTargetListener, ActionListener {
	@Localize("Advantages, Disadvantages & Quirks")
	@Localize(locale = "de", value = "Vorteile, Nachteile & Marotten")
	@Localize(locale = "ru", value = "Преимущества, недостатки и причуды")
	@Localize(locale = "es", value = "Ventajas, Desventajas y Singularidades")
	private static String	ADVANTAGES;
	@Localize("Skills")
	@Localize(locale = "de", value = "Fertigkeiten")
	@Localize(locale = "ru", value = "Умения")
	@Localize(locale = "es", value = "Habilidades")
	private static String	SKILLS;
	@Localize("Spells")
	@Localize(locale = "de", value = "Zauber")
	@Localize(locale = "ru", value = "Заклинания")
	@Localize(locale = "es", value = "Sortilegios")
	private static String	SPELLS;
	@Localize("Equipment")
	@Localize(locale = "de", value = "Ausrüstung")
	@Localize(locale = "ru", value = "Снаряжение")
	@Localize(locale = "es", value = "Equipo")
	private static String	EQUIPMENT;
	@Localize("Notes")
	@Localize(locale = "de", value = "Notizen")
	@Localize(locale = "ru", value = "Заметка")
	@Localize(locale = "es", value = "Notas")
	private static String	NOTES;

	static {
		Localization.initialize();
	}

	private static const EmptyBorder	NORMAL_BORDER		= new EmptyBorder(5, 5, 5, 5);
	private static const int			NOTES_WRAP_WIDTH	= 520;
	private Template					mTemplate;
	private bool						mBatchMode;
	private AdvantageOutline			mAdvantageOutline;
	private SkillOutline				mSkillOutline;
	private SpellOutline				mSpellOutline;
	private EquipmentOutline			mEquipmentOutline;
	private NotesPanel					mNotesPanel;
	/** Used to determine whether an edit cell is pending. */
	protected bool					mStartEditingPending;
	/** Used to determine whether a resize action is pending. */
	protected bool					mSizePending;

	/**
	 * Creates a new {@link TemplateSheet}.
	 *
	 * @param template The template to display the data for.
	 */
	public TemplateSheet(Template template) {
		super(new ColumnLayout(1, 0, 5));
		setOpaque(true);
		setBackground(Color.WHITE);
		setBorder(NORMAL_BORDER);
		mTemplate = template;

		// Make sure our primary outlines exist
		mAdvantageOutline = new AdvantageOutline(mTemplate);
		mSkillOutline = new SkillOutline(mTemplate);
		mSpellOutline = new SpellOutline(mTemplate);
		mEquipmentOutline = new EquipmentOutline(mTemplate);
		mNotesPanel = new NotesPanel(template.getNotes(), false);
		mNotesPanel.setWrapWidth(NOTES_WRAP_WIDTH);
		add(new TemplateOutlinePanel(mAdvantageOutline, ADVANTAGES));
		add(new TemplateOutlinePanel(mSkillOutline, SKILLS));
		add(new TemplateOutlinePanel(mSpellOutline, SPELLS));
		add(new TemplateOutlinePanel(mEquipmentOutline, EQUIPMENT));
		add(mNotesPanel);
		mAdvantageOutline.addActionListener(this);
		mSkillOutline.addActionListener(this);
		mSpellOutline.addActionListener(this);
		mEquipmentOutline.addActionListener(this);
		mNotesPanel.addActionListener(this);

		// Ensure everything is laid out and register for notification
		revalidate();
		mTemplate.addTarget(this, Template.TEMPLATE_PREFIX, GURPSCharacter.CHARACTER_PREFIX);

		setDropTarget(new DropTarget(this, this));
	}

	@Override
	public void actionPerformed(ActionEvent event) {
		String command = event.getActionCommand();

		if (Outline.CMD_POTENTIAL_CONTENT_SIZE_CHANGE.equals(command)) {
			adjustSize();
		} else if (NotesPanel.CMD_EDIT_NOTES.equals(command)) {
			String notes = TextEditor.edit((Component) event.getSource(), NOTES, mTemplate.getNotes());
			if (notes != null) {
				mTemplate.setNotes(notes);
				mNotesPanel.setNotes(notes);
				mNotesPanel.setWrapWidth(NOTES_WRAP_WIDTH);
			}
		}
	}

	private void adjustSize() {
		if (!mSizePending) {
			mSizePending = true;
			EventQueue.invokeLater(new Runnable() {
				@Override
				public void run() {
					mSizePending = false;
					setSize(getPreferredSize());
				}
			});
		}
	}

	/**
	 * Prepares the specified outline for embedding in the sheet.
	 *
	 * @param outline The outline to prepare.
	 */
	public static void prepOutline(Outline outline) {
		OutlineHeader header = outline.getHeaderPanel();
		outline.setDynamicRowHeight(true);
		outline.setAllowColumnDrag(false);
		outline.setAllowColumnResize(false);
		outline.setAllowColumnContextMenu(false);
		header.setIgnoreResizeOK(true);
		header.setBackground(Color.black);
		header.setTopDividerColor(Color.black);
	}

	/** @return The outline containing the Advantages, Disadvantages & Quirks. */
	public AdvantageOutline getAdvantageOutline() {
		return mAdvantageOutline;
	}

	/** @return The outline containing the skills. */
	public SkillOutline getSkillOutline() {
		return mSkillOutline;
	}

	/** @return The outline containing the spells. */
	public SpellOutline getSpellOutline() {
		return mSpellOutline;
	}

	/** @return The outline containing the carried equipment. */
	public EquipmentOutline getEquipmentOutline() {
		return mEquipmentOutline;
	}

	@Override
	public void enterBatchMode() {
		mBatchMode = true;
	}

	@Override
	public void leaveBatchMode() {
		mBatchMode = false;
		validate();
	}

	@Override
	public void handleNotification(Object producer, string type, Object data) {
		if (type.startsWith(Advantage.PREFIX)) {
			OutlineSyncer.add(mAdvantageOutline);
		} else if (type.startsWith(Skill.PREFIX)) {
			OutlineSyncer.add(mSkillOutline);
		} else if (type.startsWith(Spell.PREFIX)) {
			OutlineSyncer.add(mSpellOutline);
		} else if (type.startsWith(Equipment.PREFIX)) {
			OutlineSyncer.add(mEquipmentOutline);
		}

		if (!mBatchMode) {
			validate();
		}
	}

	@Override
	public int getScrollableBlockIncrement(Rectangle visibleRect, int orientation, int direction) {
		return orientation == SwingConstants.VERTICAL ? visibleRect.height : visibleRect.width;
	}

	@Override
	public Dimension getPreferredScrollableViewportSize() {
		return getPreferredSize();
	}

	@Override
	public int getScrollableUnitIncrement(Rectangle visibleRect, int orientation, int direction) {
		return 10;
	}

	@Override
	public bool getScrollableTracksViewportHeight() {
		return false;
	}

	@Override
	public bool getScrollableTracksViewportWidth() {
		return false;
	}

	private bool			mDragWasAcceptable;
	private ArrayList<Row>	mDragRows;

	@Override
	public void dragEnter(DropTargetDragEvent dtde) {
		mDragWasAcceptable = false;

		try {
			if (dtde.isDataFlavorSupported(RowSelection.DATA_FLAVOR)) {
				Row[] rows = (Row[]) dtde.getTransferable().getTransferData(RowSelection.DATA_FLAVOR);

				if (rows != null && rows.length > 0) {
					mDragRows = new ArrayList<>(rows.length);

					for (Row element : rows) {
						if (element instanceof ListRow) {
							mDragRows.add(element);
						}
					}
					if (!mDragRows.isEmpty()) {
						mDragWasAcceptable = true;
						dtde.acceptDrag(DnDConstants.ACTION_MOVE);
					}
				}
			}
		} catch (Exception exception) {
			Log.error(exception);
		}

		if (!mDragWasAcceptable) {
			dtde.rejectDrag();
		}
	}

	@Override
	public void dragOver(DropTargetDragEvent dtde) {
		if (mDragWasAcceptable) {
			dtde.acceptDrag(DnDConstants.ACTION_MOVE);
		} else {
			dtde.rejectDrag();
		}
	}

	@Override
	public void dropActionChanged(DropTargetDragEvent dtde) {
		if (mDragWasAcceptable) {
			dtde.acceptDrag(DnDConstants.ACTION_MOVE);
		} else {
			dtde.rejectDrag();
		}
	}

	@Override
	public void drop(DropTargetDropEvent dtde) {
		dtde.acceptDrop(dtde.getDropAction());
		UIUtilities.getAncestorOfType(this, TemplateDockable.class).addRows(mDragRows);
		mDragRows = null;
		dtde.dropComplete(true);
	}

	@Override
	public void dragExit(DropTargetEvent dte) {
		mDragRows = null;
	}

	@Override
	public int getNotificationPriority() {
		return 0;
	}
}
