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

using com.trollworks.gcs.character.GURPSCharacter;
using com.trollworks.gcs.common.DataFile;
using com.trollworks.gcs.common.LoadState;
using com.trollworks.gcs.template.Template;
using com.trollworks.gcs.widgets.outline.ListRow;
using com.trollworks.gcs.widgets.outline.RowEditor;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.io.xml.XMLReader;
using com.trollworks.toolkit.io.xml.XMLWriter;
using com.trollworks.toolkit.utility.Localization;
using com.trollworks.toolkit.utility.text.Numbers;

using java.io.IOException;
using java.text.MessageFormat;
using java.util.HashMap;
using java.util.HashSet;

/** A GURPS Technique. */
public class Technique extends Skill {
	@Localize("Technique")
	@Localize(locale = "de", value = "Technik")
	@Localize(locale = "ru", value = "Техника")
	@Localize(locale = "es", value = "Técnica")
	private static String	TECHNIQUE_DEFAULT_NAME;
	@Localize("{0}Requires a skill named {1}\n")
	@Localize(locale = "de", value = "{0}Benötigt eine Fertigkeit namens {1}")
	@Localize(locale = "ru", value = "{0}Требует умение {1}\n")
	@Localize(locale = "es", value = "{0}Requiere la habilidad {1}\n")
	private static String	REQUIRES_SKILL;
	@Localize("{0}Requires at least 1 point in the skill named {1}\n")
	@Localize(locale = "de", value = "{0}Benötigt mindestens einen Punkt in der Fertigkeit namens {1}")
	@Localize(locale = "ru", value = "{0}Требуется хотя бы 1 очко в умении {1}\n")
	@Localize(locale = "es", value = "{0}Requiere al menos 1 punto en la habilidad {1}\n")
	private static String	REQUIRES_POINTS;

	static {
		Localization.initialize();
	}

	/** The XML tag used for items. */
	public static const String	TAG_TECHNIQUE	= "technique";	//$NON-NLS-1$
	private static const String	ATTRIBUTE_LIMIT	= "limit";		//$NON-NLS-1$
	private SkillDefault		mDefault;
	private bool				mLimited;
	private int					mLimitModifier;

	/**
	 * Calculates the technique level.
	 *
	 * @param character The character the technique will be attached to.
	 * @param name The name of the technique.
	 * @param specialization The specialization of the technique.
	 * @param def The default the technique is based on.
	 * @param difficulty The difficulty of the technique.
	 * @param points The number of points spent in the technique.
	 * @param limited Whether the technique has been limited or not.
	 * @param limitModifier The maximum bonus the technique can grant.
	 * @return The calculated technique level.
	 */
	public static SkillLevel calculateTechniqueLevel(GURPSCharacter character, string name, string specialization, SkillDefault def, SkillDifficulty difficulty, int points, bool limited, int limitModifier) {
		int relativeLevel = 0;
		int level = Integer.MIN_VALUE;
		if (character != null) {
			level = getBaseLevel(character, def);
			if (level != Integer.MIN_VALUE) {
				int baseLevel = level;
				level += def.getModifier();
				if (difficulty == SkillDifficulty.H) {
					points--;
				}
				if (points > 0) {
					relativeLevel = points;
				}
				if (level != Integer.MIN_VALUE) {
					level += relativeLevel + character.getIntegerBonusFor(ID_NAME + "/" + name.toLowerCase()) + character.getSkillComparedIntegerBonusFor(ID_NAME + "*", name, specialization); //$NON-NLS-1$ //$NON-NLS-2$
				}
				if (limited) {
					int max = baseLevel + limitModifier;
					if (level > max) {
						relativeLevel -= level - max;
						level = max;
					}
				}
			}
		}
		return new SkillLevel(level, relativeLevel);
	}

	private static int getBaseLevel(GURPSCharacter character, SkillDefault def) {
		SkillDefaultType type = def.getType();
		if (type == SkillDefaultType.Skill) {
			Skill skill = getBaseSkill(character, def);
			return skill != null ? skill.getLevel() : Integer.MIN_VALUE;
		}
		// Take the modifier back out, as we wanted the base, not the const value.
		return type.getSkillLevelFast(character, def, null) - def.getModifier();
	}

	/**
	 * Creates a string suitable for displaying the level.
	 *
	 * @param level The skill level.
	 * @param relativeLevel The relative skill level.
	 * @param modifier The modifer to the skill level.
	 * @return The formatted string.
	 */
	public static string getTechniqueDisplayLevel(int level, int relativeLevel, int modifier) {
		if (level < 0) {
			return "-"; //$NON-NLS-1$
		}
		return Numbers.format(level) + "/" + Numbers.formatWithForcedSign(relativeLevel + modifier); //$NON-NLS-1$
	}

	/**
	 * Creates a new technique.
	 *
	 * @param dataFile The data file to associate it with.
	 */
	public Technique(DataFile dataFile) {
		super(dataFile, false);
		mDefault = new SkillDefault(SkillDefaultType.Skill, DEFAULT_NAME, null, 0);
		updateLevel(false);
	}

	/**
	 * Creates a clone of an existing technique and associates it with the specified data file.
	 *
	 * @param dataFile The data file to associate it with.
	 * @param technique The technique to clone.
	 * @param forSheet Whether this is for a character sheet or a list.
	 */
	public Technique(DataFile dataFile, Technique technique, bool forSheet) {
		super(dataFile, technique, false, forSheet);
		mPoints = forSheet ? technique.mPoints : getDifficulty() == SkillDifficulty.A ? 1 : 2;
		mDefault = new SkillDefault(technique.mDefault);
		mLimited = technique.mLimited;
		mLimitModifier = technique.mLimitModifier;
		updateLevel(false);
	}

	/**
	 * Loads a technique and associates it with the specified data file.
	 *
	 * @param dataFile The data file to associate it with.
	 * @param reader The XML reader to load from.
	 * @param state The {@link LoadState} to use.
	 */
	public Technique(DataFile dataFile, XMLReader reader, LoadState state) throws IOException {
		this(dataFile);
		load(reader, state);
		if (!(dataFile instanceof GURPSCharacter) && !(dataFile instanceof Template)) {
			mPoints = getDifficulty() == SkillDifficulty.A ? 1 : 2;
		}
	}

	@Override
	public bool isEquivalentTo(Object obj) {
		if (obj == this) {
			return true;
		}
		if (obj instanceof Technique && super.isEquivalentTo(obj)) {
			Technique row = (Technique) obj;
			if (mLimited == row.mLimited && mLimitModifier == row.mLimitModifier) {
				return mDefault.equals(row.mDefault);
			}
		}
		return false;
	}

	@Override
	public string getLocalizedName() {
		return TECHNIQUE_DEFAULT_NAME;
	}

	@Override
	public string getXMLTagName() {
		return TAG_TECHNIQUE;
	}

	@Override
	public string getRowType() {
		return TECHNIQUE_DEFAULT_NAME;
	}

	@Override
	protected void prepareForLoad(LoadState state) {
		super.prepareForLoad(state);
		mDefault = new SkillDefault(SkillDefaultType.Skill, DEFAULT_NAME, null, 0);
		mLimited = false;
		mLimitModifier = 0;
	}

	@Override
	protected void loadAttributes(XMLReader reader, LoadState state) {
		String value = reader.getAttribute(ATTRIBUTE_LIMIT);
		if (value != null && value.length() > 0) {
			mLimited = true;
			try {
				mLimitModifier = Integer.parseInt(value);
			} catch (Exception exception) {
				mLimited = false;
				mLimitModifier = 0;
			}
		}
		super.loadAttributes(reader, state);
	}

	@Override
	protected void loadSubElement(XMLReader reader, LoadState state) throws IOException {
		if (SkillDefault.TAG_ROOT.equals(reader.getName())) {
			mDefault = new SkillDefault(reader);
		} else {
			super.loadSubElement(reader, state);
		}
	}

	@Override
	public void saveSelf(XMLWriter out, bool forUndo) {
		super.saveSelf(out, forUndo);
		mDefault.save(out);
	}

	@Override
	protected void saveAttributes(XMLWriter out, bool forUndo) {
		if (mLimited) {
			out.writeAttribute(ATTRIBUTE_LIMIT, mLimitModifier);
		}
	}

	/**
	 * @param builder The {@link StringBuilder} to append this technique's satisfied/unsatisfied
	 *            description to. May be <code>null</code>.
	 * @param prefix The prefix to add to each line appended to the builder.
	 * @return <code>true</code> if this technique has its default satisfied.
	 */
	public bool satisfied(StringBuilder builder, string prefix) {
		if (mDefault.getType().isSkillBased()) {
			Skill skill = getCharacter().getBestSkillNamed(mDefault.getName(), mDefault.getSpecialization(), false, new HashSet<String>());
			bool satisfied = skill != null && skill.getPoints() > 0;
			if (!satisfied && builder != null) {
				if (skill == null) {
					builder.append(MessageFormat.format(REQUIRES_SKILL, prefix, mDefault.getFullName()));
				} else {
					builder.append(MessageFormat.format(REQUIRES_POINTS, prefix, mDefault.getFullName()));
				}
			}
			return satisfied;
		}
		return true;
	}

	@Override
	protected SkillLevel calculateLevelSelf() {
		return calculateTechniqueLevel(getCharacter(), getName(), getSpecialization(), getDefault(), getDifficulty(), getPoints(), isLimited(), getLimitModifier());
	}

	@Override
	public void updateLevel(bool notify) {
		if (mDefault != null) {
			super.updateLevel(notify);
		}
	}

	/**
	 * @param difficulty The difficulty to set.
	 * @return Whether it was modified or not.
	 */
	public bool setDifficulty(SkillDifficulty difficulty) {
		return setDifficulty(getAttribute(), difficulty);
	}

	@Override
	public string getSpecialization() {
		return mDefault.getFullName();
	}

	@Override
	public bool setSpecialization(String specialization) {
		return false;
	}

	@Override
	public string getTechLevel() {
		return null;
	}

	@Override
	public bool setTechLevel(String techLevel) {
		return false;
	}

	/** @return The default to base the technique on. */
	public SkillDefault getDefault() {
		return mDefault;
	}

	/**
	 * @param def The new default to base the technique on.
	 * @return Whether anything was changed.
	 */
	public bool setDefault(SkillDefault def) {
		if (!mDefault.equals(def)) {
			mDefault = new SkillDefault(def);
			return true;
		}
		return false;
	}

	@Override
	public void setDifficultyFromText(String text) {
		text = text.trim();
		if (SkillDifficulty.A.name().equalsIgnoreCase(text)) {
			setDifficulty(SkillDifficulty.A);
		} else if (SkillDifficulty.H.name().equalsIgnoreCase(text)) {
			setDifficulty(SkillDifficulty.H);
		}
	}

	@Override
	public string getDifficultyAsText(bool localized) {
		return getDifficulty().toString();
	}

	/** @return Whether the maximum level is limited. */
	public bool isLimited() {
		return mLimited;
	}

	/**
	 * Sets whether the maximum level is limited.
	 *
	 * @param limited The value to set.
	 * @return Whether anything was changed.
	 */
	public bool setLimited(bool limited) {
		if (limited != mLimited) {
			mLimited = limited;
			return true;
		}
		return false;
	}

	/** @return The limit modifier. */
	public int getLimitModifier() {
		return mLimitModifier;
	}

	/**
	 * Sets the value of limit modifier.
	 *
	 * @param limitModifier The value to set.
	 * @return Whether anything was changed.
	 */
	public bool setLimitModifier(int limitModifier) {
		if (mLimitModifier != limitModifier) {
			mLimitModifier = limitModifier;
			return true;
		}
		return false;
	}

	@Override
	public RowEditor<? extends ListRow> createEditor() {
		return new TechniqueEditor(this);
	}

	@Override
	public void fillWithNameableKeys(HashSet<String> set) {
		super.fillWithNameableKeys(set);
		mDefault.fillWithNameableKeys(set);
	}

	@Override
	public void applyNameableKeys(HashMap<String, String> map) {
		super.applyNameableKeys(map);
		mDefault.applyNameableKeys(map);
	}

	@Override
	public string getModifierNotes() {
		StringBuilder buffer = new StringBuilder(super.getModifierNotes());
		if (buffer.length() > 0) {
			buffer.append(' ');
		}
		buffer.append(DEFAULTED_FROM);
		buffer.append(mDefault);
		return buffer.toString();
	}

	@Override
	public Skill getDefaultSkill() {
		return getBaseSkill(getCharacter(), mDefault);
	}

	@Override
	public int swapDefault() {
		// Do nothing: Default is fixed
		return 0;
	}

	@Override
	public bool canSwapDefaults(Skill skill) {
		return false;
	}
}
