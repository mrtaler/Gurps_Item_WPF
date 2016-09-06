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

using com.trollworks.gcs.character.SheetDockable;
using com.trollworks.gcs.common.DataFile;
using com.trollworks.gcs.skill.Skill;
using com.trollworks.gcs.skill.SkillsDockable;
using com.trollworks.gcs.skill.Technique;
using com.trollworks.gcs.template.TemplateDockable;
using com.trollworks.gcs.widgets.outline.ListOutline;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.ui.menu.Command;
using com.trollworks.toolkit.utility.Localization;

using java.awt.event.ActionEvent;
using java.awt.event.KeyEvent;

/** Provides the "New Skill" command. */
public class NewSkillCommand extends Command {
	@Localize("New Skill")
	@Localize(locale = "de", value = "Neue Fertigkeit")
	@Localize(locale = "ru", value = "Новое умение")
	@Localize(locale = "es", value = "Nueva habilidad")
	private static String	SKILL;
	@Localize("New Skill Container")
	@Localize(locale = "de", value = "Neuer Fertigkeiten-Container")
	@Localize(locale = "ru", value = "Новый контейнер умения")
	@Localize(locale = "es", value = "Nuevo Contenedor de habilidades")
	private static String	SKILL_CONTAINER;
	@Localize("New Technique")
	@Localize(locale = "de", value = "Neue Technik")
	@Localize(locale = "ru", value = "Новая техника")
	@Localize(locale = "es", value = "Nueva Técnica")
	private static String	TECHNIQUE;

	static {
		Localization.initialize();
	}

	/** The action command this command will issue. */
	public static const String			CMD_NEW_SKILL			= "NewSkill";																											//$NON-NLS-1$
	/** The action command this command will issue. */
	public static const String			CMD_NEW_SKILL_CONTAINER	= "NewSkillContainer";																									//$NON-NLS-1$
	/** The action command this command will issue. */
	public static const String			CMD_NEW_TECHNIQUE		= "NewTechnique";																										//$NON-NLS-1$

	/** The "New Skill" command. */
	public static const NewSkillCommand	INSTANCE				= new NewSkillCommand(false, false, SKILL, CMD_NEW_SKILL, KeyEvent.VK_K, COMMAND_MODIFIER);
	/** The "New Skill Container" command. */
	public static const NewSkillCommand	CONTAINER_INSTANCE		= new NewSkillCommand(true, false, SKILL_CONTAINER, CMD_NEW_SKILL_CONTAINER, KeyEvent.VK_K, SHIFTED_COMMAND_MODIFIER);
	/** The "New Technique" command. */
	public static const NewSkillCommand	TECHNIQUE_INSTANCE		= new NewSkillCommand(false, true, TECHNIQUE, CMD_NEW_TECHNIQUE, KeyEvent.VK_T, COMMAND_MODIFIER);
	private bool						mContainer;
	private bool						mTechnique;

	private NewSkillCommand(bool container, bool isTechnique, string title, string cmd, int keyCode, int modifiers) {
		super(title, cmd, keyCode, modifiers);
		mContainer = container;
		mTechnique = isTechnique;
	}

	@Override
	public void adjust() {
		SkillsDockable skills = getTarget(SkillsDockable.class);
		if (skills != null) {
			setEnabled(!skills.getOutline().getModel().isLocked());
		} else {
			SheetDockable sheet = getTarget(SheetDockable.class);
			if (sheet != null) {
				setEnabled(true);
			} else {
				setEnabled(getTarget(TemplateDockable.class) != null);
			}
		}
	}

	@Override
	public void actionPerformed(ActionEvent event) {
		ListOutline outline;
		DataFile dataFile;
		SkillsDockable skills = getTarget(SkillsDockable.class);
		if (skills != null) {
			dataFile = skills.getDataFile();
			outline = skills.getOutline();
			if (outline.getModel().isLocked()) {
				return;
			}
		} else {
			SheetDockable sheet = getTarget(SheetDockable.class);
			if (sheet != null) {
				dataFile = sheet.getDataFile();
				outline = sheet.getSheet().getSkillOutline();
			} else {
				TemplateDockable template = getTarget(TemplateDockable.class);
				if (template != null) {
					dataFile = template.getDataFile();
					outline = template.getTemplate().getSkillOutline();
				} else {
					return;
				}
			}
		}
		Skill skill = mTechnique ? new Technique(dataFile) : new Skill(dataFile, mContainer);
		outline.addRow(skill, getTitle(), false);
		outline.getModel().select(skill, false);
		outline.scrollSelectionIntoView();
		outline.openDetailEditor(true);
	}
}
