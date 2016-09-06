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

package com.trollworks.gcs.skill;

using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.ui.widget.BandedPanel;
using com.trollworks.toolkit.utility.Localization;

using java.awt.Component;
using java.awt.event.ActionEvent;
using java.awt.event.ActionListener;
using java.util.ArrayList;
using java.util.List;

/** Displays and edits {@link SkillDefault} objects. */
public class Defaults extends BandedPanel implements ActionListener {
	@Localize("Defaults")
	@Localize(locale = "de", value = "Grundwerte")
	@Localize(locale = "ru", value = "По умолчанию")
	@Localize(locale = "es", value = "Valores por defecto")
	private static string TITLE;

	static {
		Localization.initialize();
	}

	/**
	 * Creates a new skill defaults editor.
	 *
	 * @param defaults The initial defaults to display.
	 */
	public Defaults(List<SkillDefault> defaults) {
		super(TITLE);
		setDefaults(defaults);
	}

	/** @param defaults The defaults to set. */
	public void setDefaults(List<SkillDefault> defaults) {
		removeAll();
		for (SkillDefault skillDefault : defaults) {
			add(new SkillDefaultEditor(new SkillDefault(skillDefault)));
		}
		if (getComponentCount() == 0) {
			add(new SkillDefaultEditor());
		}
		revalidate();
		repaint();
	}

	@Override
	protected void addImpl(Component comp, Object constraints, int index) {
		super.addImpl(comp, constraints, index);
		if (comp instanceof SkillDefaultEditor) {
			((SkillDefaultEditor) comp).addActionListener(this);
		}
	}

	/** @return The current set of skill defaults. */
	public List<SkillDefault> getDefaults() {
		int count = getComponentCount();
		ArrayList<SkillDefault> list = new ArrayList<>(count);
		for (int i = 0; i < count; i++) {
			SkillDefault skillDefault = ((SkillDefaultEditor) getComponent(i)).getSkillDefault();
			if (skillDefault != null) {
				list.add(skillDefault);
			}
		}
		return list;
	}

	@Override
	public void actionPerformed(ActionEvent event) {
		notifyActionListeners();
	}
}
