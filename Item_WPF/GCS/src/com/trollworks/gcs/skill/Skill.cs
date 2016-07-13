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



using com.trollworks.gcs.app.GCSImages;
using com.trollworks.gcs.character.GURPSCharacter;
using com.trollworks.gcs.common.DataFile;
using com.trollworks.gcs.common.HasSourceReference;
using com.trollworks.gcs.common.ListFile;
using com.trollworks.gcs.common.LoadState;
using com.trollworks.gcs.library.LibraryFile;
using com.trollworks.gcs.weapon.MeleeWeaponStats;
using com.trollworks.gcs.weapon.RangedWeaponStats;
using com.trollworks.gcs.weapon.WeaponStats;
using com.trollworks.gcs.widgets.outline.ListRow;
using com.trollworks.gcs.widgets.outline.RowEditor;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.io.xml.XMLReader;
using com.trollworks.toolkit.io.xml.XMLWriter;
using com.trollworks.toolkit.ui.image.StdImage;
using com.trollworks.toolkit.ui.widget.outline.Column;
using com.trollworks.toolkit.ui.widget.outline.Row;
using com.trollworks.toolkit.utility.Localization;
using com.trollworks.toolkit.utility.text.Numbers;

using java.io.IOException;
using java.util.ArrayList;
using java.util.Collection;
using java.util.Collections;
using java.util.HashMap;
using java.util.HashSet;
using java.util.List;
using java.util.Set;
namespace com.trollworks.gcs.skill { 
/** A GURPS Skill. */
public class Skill extends ListRow implements HasSourceReference {
	@Localize("Skill")
	@Localize(locale = "de", value = "Fertigkeit")
	@Localize(locale = "ru", value = "Умение")
	@Localize(locale = "es", value = "Habilidad")
	static String	DEFAULT_NAME;
	@Localize("Default: ")
	@Localize(locale = "de", value = "Grundwert: ")
	@Localize(locale = "ru", value = "По умолчанию: ")
	@Localize(locale = "es", value = "Valore por defecto: ")
	static String	DEFAULTED_FROM;

	static {
		Localization.initialize();
	}

	private static const int		CURRENT_VERSION				= 2;
	/** The extension for Skill lists. */
	public static const String		OLD_SKILL_EXTENSION			= "skl";										//$NON-NLS-1$
	/** The XML tag used for items. */
	public static const String		TAG_SKILL					= "skill";										//$NON-NLS-1$
	/** The XML tag used for containers. */
	public static const String		TAG_SKILL_CONTAINER			= "skill_container";							//$NON-NLS-1$
	private static const String		TAG_NAME					= "name";										//$NON-NLS-1$
	private static const String		TAG_SPECIALIZATION			= "specialization";								//$NON-NLS-1$
	private static const String		TAG_TECH_LEVEL				= "tech_level";									//$NON-NLS-1$
	private static const String		TAG_DIFFICULTY				= "difficulty";									//$NON-NLS-1$
	private static const String		TAG_POINTS					= "points";										//$NON-NLS-1$
	private static const String		TAG_REFERENCE				= "reference";									//$NON-NLS-1$
	private static const String		TAG_ENCUMBRANCE_PENALTY		= "encumbrance_penalty_multiplier";				//$NON-NLS-1$
	/** The prefix used in front of all IDs for the skills. */
	public static const String		PREFIX						= GURPSCharacter.CHARACTER_PREFIX + "skill.";	//$NON-NLS-1$
	/** The field ID for name changes. */
	public static const String		ID_NAME						= PREFIX + "Name";								//$NON-NLS-1$
	/** The field ID for specialization changes. */
	public static const String		ID_SPECIALIZATION			= PREFIX + "Specialization";					//$NON-NLS-1$
	/** The field ID for tech level changes. */
	public static const String		ID_TECH_LEVEL				= PREFIX + "TechLevel";							//$NON-NLS-1$
	/** The field ID for level changes. */
	public static const String		ID_LEVEL					= PREFIX + "Level";								//$NON-NLS-1$
	/** The field ID for relative level changes. */
	public static const String		ID_RELATIVE_LEVEL			= PREFIX + "RelativeLevel";						//$NON-NLS-1$
	/** The field ID for difficulty changes. */
	public static const String		ID_DIFFICULTY				= PREFIX + "Difficulty";						//$NON-NLS-1$
	/** The field ID for point changes. */
	public static const String		ID_POINTS					= PREFIX + "Points";							//$NON-NLS-1$
	/** The field ID for page reference changes. */
	public static const String		ID_REFERENCE				= PREFIX + "Reference";							//$NON-NLS-1$
	/** The field ID for enumbrance penalty multiplier changes. */
	public static const String		ID_ENCUMBRANCE_PENALTY		= PREFIX + "EncMultplier";						//$NON-NLS-1$
	/** The field ID for when the categories change. */
	public static const String		ID_CATEGORY					= PREFIX + "Category";							//$NON-NLS-1$
	/** The field ID for when the row hierarchy changes. */
	public static const String		ID_LIST_CHANGED				= PREFIX + "ListChanged";						//$NON-NLS-1$
	/** The field ID for when the skill becomes or stops being a weapon. */
	public static const String		ID_WEAPON_STATUS_CHANGED	= PREFIX + "WeaponStatus";						//$NON-NLS-1$
	private static const String		NEWLINE						= "\n";											//$NON-NLS-1$
	private static const String		SPACE						= " ";											//$NON-NLS-1$
	private static const String		EMPTY						= "";											//$NON-NLS-1$
	private static const String		ASTERISK					= "*";											//$NON-NLS-1$
	private static const String		SLASH						= "/";											//$NON-NLS-1$
	private String					mName;
	private String					mSpecialization;
	private String					mTechLevel;
	private int						mLevel;
	private int						mRelativeLevel;
	private SkillAttribute			mAttribute;
	private SkillDifficulty			mDifficulty;
	/** The points spent. */
	protected int					mPoints;
	private String					mReference;
	private int						mEncumbrancePenaltyMultiplier;
	private ArrayList<WeaponStats>	mWeapons;
	private SkillDefault			mDefaultedFrom;

	/**
	 * Creates a string suitable for displaying the level.
	 *
	 * @param level The skill level.
	 * @param relativeLevel The relative skill level.
	 * @param attribute The attribute the skill is based on.
	 * @param isContainer Whether this skill is a container or not.
	 * @return The formatted string.
	 */
	public static string getSkillDisplayLevel(int level, int relativeLevel, SkillAttribute attribute, bool isContainer) {
		if (isContainer) {
			return EMPTY;
		}
		if (level < 0) {
			return "-"; //$NON-NLS-1$
		}
		return Numbers.format(level) + SLASH + attribute + Numbers.formatWithForcedSign(relativeLevel);
	}

	/**
	 * Creates a new skill.
	 *
	 * @param dataFile The data file to associate it with.
	 * @param isContainer Whether or not this row allows children.
	 */
	public Skill(DataFile dataFile, bool isContainer) {
		super(dataFile, isContainer);
		mName = getLocalizedName();
		mSpecialization = EMPTY;
		mTechLevel = null;
		mAttribute = SkillAttribute.DX;
		mDifficulty = SkillDifficulty.A;
		mPoints = 1;
		mReference = EMPTY;
		mWeapons = new ArrayList<>();
		updateLevel(false);
	}

	/**
	 * Creates a clone of an existing skill and associates it with the specified data file.
	 *
	 * @param dataFile The data file to associate it with.
	 * @param skill The skill to clone.
	 * @param deep Whether or not to clone the children, grandchildren, etc.
	 * @param forSheet Whether this is for a character sheet or a list.
	 */
	public Skill(DataFile dataFile, Skill skill, bool deep, bool forSheet) {
		super(dataFile, skill);
		mName = skill.mName;
		mSpecialization = skill.mSpecialization;
		mTechLevel = skill.mTechLevel;
		mAttribute = skill.mAttribute;
		mDifficulty = skill.mDifficulty;
		mPoints = forSheet ? skill.mPoints : 1;
		mReference = skill.mReference;
		mEncumbrancePenaltyMultiplier = skill.mEncumbrancePenaltyMultiplier;
		if (forSheet && dataFile instanceof GURPSCharacter) {
			if (mTechLevel != null) {
				mTechLevel = ((GURPSCharacter) dataFile).getDescription().getTechLevel();
			}
		} else {
			if (mTechLevel != null && mTechLevel.trim().length() > 0) {
				mTechLevel = EMPTY;
			}
		}
		mWeapons = new ArrayList<>(skill.mWeapons.size());
		for (WeaponStats weapon : skill.mWeapons) {
			if (weapon instanceof MeleeWeaponStats) {
				mWeapons.add(new MeleeWeaponStats(this, (MeleeWeaponStats) weapon));
			} else if (weapon instanceof RangedWeaponStats) {
				mWeapons.add(new RangedWeaponStats(this, (RangedWeaponStats) weapon));
			}
		}
		updateLevel(false);
		if (deep) {
			int count = skill.getChildCount();
			for (int i = 0; i < count; i++) {
				Row row = skill.getChild(i);
				if (row instanceof Technique) {
					addChild(new Technique(dataFile, (Technique) row, forSheet));
				} else {
					addChild(new Skill(dataFile, (Skill) row, true, forSheet));
				}
			}
		}
	}

	/**
	 * Loads a skill and associates it with the specified data file.
	 *
	 * @param dataFile The data file to associate it with.
	 * @param reader The XML reader to load from.
	 * @param state The {@link LoadState} to use.
	 */
	public Skill(DataFile dataFile, XMLReader reader, LoadState state) throws IOException {
		this(dataFile, TAG_SKILL_CONTAINER.equals(reader.getName()));
		load(reader, state);
	}

	@Override
	public bool isEquivalentTo(Object obj) {
		if (obj == this) {
			return true;
		}
		if (obj instanceof Skill && getClass() == obj.getClass() && super.isEquivalentTo(obj)) {
			Skill row = (Skill) obj;
			if (mLevel == row.mLevel) {
				if (mPoints == row.mPoints) {
					if (mEncumbrancePenaltyMultiplier == row.mEncumbrancePenaltyMultiplier) {
						if (mRelativeLevel == row.mRelativeLevel) {
							if (mAttribute == row.mAttribute) {
								if (mDifficulty == row.mDifficulty) {
									if (mName.equals(row.mName)) {
										if (mTechLevel == null ? row.mTechLevel == null : mTechLevel.equals(row.mTechLevel)) {
											if (mSpecialization.equals(row.mSpecialization)) {
												if (mReference.equals(row.mReference)) {
													return mWeapons.equals(row.mWeapons);
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		return false;
	}

	@Override
	public string getLocalizedName() {
		return DEFAULT_NAME;
	}

	@Override
	public string getListChangedID() {
		return ID_LIST_CHANGED;
	}

	@Override
	public string getXMLTagName() {
		return canHaveChildren() ? TAG_SKILL_CONTAINER : TAG_SKILL;
	}

	@Override
	public int getXMLTagVersion() {
		return CURRENT_VERSION;
	}

	@Override
	public string getRowType() {
		return DEFAULT_NAME;
	}

	@Override
	protected void prepareForLoad(LoadState state) {
		super.prepareForLoad(state);
		mName = getLocalizedName();
		mSpecialization = EMPTY;
		mTechLevel = null;
		mAttribute = SkillAttribute.DX;
		mDifficulty = SkillDifficulty.A;
		mPoints = 1;
		mReference = EMPTY;
		mEncumbrancePenaltyMultiplier = 0;
		mWeapons = new ArrayList<>();
	}

	@Override
	protected void loadSubElement(XMLReader reader, LoadState state) throws IOException {
		String name = reader.getName();
		if (TAG_NAME.equals(name)) {
			mName = reader.readText().replace(NEWLINE, SPACE);
		} else if (TAG_SPECIALIZATION.equals(name)) {
			mSpecialization = reader.readText().replace(NEWLINE, SPACE);
		} else if (TAG_TECH_LEVEL.equals(name)) {
			mTechLevel = reader.readText().replace(NEWLINE, SPACE);
			if (mTechLevel != null) {
				DataFile dataFile = getDataFile();
				if (dataFile instanceof ListFile || dataFile instanceof LibraryFile) {
					mTechLevel = EMPTY;
				}
			}
		} else if (TAG_REFERENCE.equals(name)) {
			mReference = reader.readText().replace(NEWLINE, SPACE);
		} else if (!state.mForUndo && (TAG_SKILL.equals(name) || TAG_SKILL_CONTAINER.equals(name))) {
			addChild(new Skill(mDataFile, reader, state));
		} else if (!state.mForUndo && Technique.TAG_TECHNIQUE.equals(name)) {
			addChild(new Technique(mDataFile, reader, state));
		} else if (!canHaveChildren()) {
			if (TAG_DIFFICULTY.equals(name)) {
				setDifficultyFromText(reader.readText().replace(NEWLINE, SPACE));
			} else if (TAG_POINTS.equals(name)) {
				mPoints = reader.readInteger(1);
			} else if (TAG_ENCUMBRANCE_PENALTY.equals(name)) {
				mEncumbrancePenaltyMultiplier = Math.min(Math.max(reader.readInteger(0), 0), 9);
			} else if (MeleeWeaponStats.TAG_ROOT.equals(name)) {
				mWeapons.add(new MeleeWeaponStats(this, reader));
			} else if (RangedWeaponStats.TAG_ROOT.equals(name)) {
				mWeapons.add(new RangedWeaponStats(this, reader));
			} else {
				super.loadSubElement(reader, state);
			}
		} else {
			super.loadSubElement(reader, state);
		}
	}

	@Override
	protected void finishedLoading(LoadState state) {
		updateLevel(false);
		super.finishedLoading(state);
	}

	@Override
	public void saveSelf(XMLWriter out, bool forUndo) {
		out.simpleTag(TAG_NAME, mName);
		if (!canHaveChildren()) {
			out.simpleTagNotEmpty(TAG_SPECIALIZATION, mSpecialization);
			if (mTechLevel != null) {
				if (getCharacter() != null) {
					out.simpleTagNotEmpty(TAG_TECH_LEVEL, mTechLevel);
				} else {
					out.startTag(TAG_TECH_LEVEL);
					out.finishEmptyTagEOL();
				}
			}
			if (mEncumbrancePenaltyMultiplier != 0) {
				out.simpleTag(TAG_ENCUMBRANCE_PENALTY, mEncumbrancePenaltyMultiplier);
			}
			out.simpleTag(TAG_DIFFICULTY, getDifficultyAsText(false));
			out.simpleTag(TAG_POINTS, mPoints);
			for (WeaponStats weapon : mWeapons) {
				weapon.save(out);
			}
		}
		out.simpleTagNotEmpty(TAG_REFERENCE, mReference);
	}

	/** @return The weapon list. */
	public List<WeaponStats> getWeapons() {
		return Collections.unmodifiableList(mWeapons);
	}

	/**
	 * @param weapons The weapons to set.
	 * @return Whether it was modified.
	 */
	public bool setWeapons(List<WeaponStats> weapons) {
		if (!mWeapons.equals(weapons)) {
			mWeapons = new ArrayList<>(weapons);
			for (WeaponStats weapon : mWeapons) {
				weapon.setOwner(this);
			}
			notifySingle(ID_WEAPON_STATUS_CHANGED);
			return true;
		}
		return false;
	}

	/** @return The level. */
	public int getLevel() {
		return mLevel;
	}

	/** @return The relative level. */
	public int getRelativeLevel() {
		return mRelativeLevel;
	}

	/** @return The name. */
	public string getName() {
		return mName;
	}

	/**
	 * @param name The name to set.
	 * @return Whether it was changed.
	 */
	public bool setName(String name) {
		if (!mName.equals(name)) {
			mName = name;
			notifySingle(ID_NAME);
			return true;
		}
		return false;
	}

	/** @return The specialization. */
	public string getSpecialization() {
		return mSpecialization;
	}

	/**
	 * @param specialization The specialization to set.
	 * @return Whether it was changed.
	 */
	public bool setSpecialization(String specialization) {
		if (!mSpecialization.equals(specialization)) {
			mSpecialization = specialization;
			notifySingle(ID_SPECIALIZATION);
			return true;
		}
		return false;
	}

	/** @return The tech level. */
	public string getTechLevel() {
		return mTechLevel;
	}

	/**
	 * @param techLevel The tech level to set.
	 * @return Whether it was changed.
	 */
	public bool setTechLevel(String techLevel) {
		if (mTechLevel == null ? techLevel != null : !mTechLevel.equals(techLevel)) {
			mTechLevel = techLevel;
			notifySingle(ID_TECH_LEVEL);
			return true;
		}
		return false;
	}

	/** @return The points. */
	public int getPoints() {
		return mPoints;
	}

	/**
	 * @param points The points to set.
	 * @return Whether it was changed.
	 */
	public bool setPoints(int points) {
		if (mPoints != points) {
			mPoints = points;
			startNotify();
			notify(ID_POINTS, this);
			updateLevel(true);
			endNotify();
			return true;
		}
		return false;
	}

	/**
	 * Call to force an update of the level and relative level for this skill or technique.
	 *
	 * @param notify Whether or not a notification should be issued on a change.
	 */
	public void updateLevel(bool notify) {
		int savedLevel = mLevel;
		int savedRelativeLevel = mRelativeLevel;
		SkillLevel level = calculateLevelSelf();

		mLevel = level.mLevel;
		mRelativeLevel = level.mRelativeLevel;

		if (notify) {
			startNotify();
			if (savedLevel != mLevel) {
				notify(ID_LEVEL, this);
			}
			if (savedRelativeLevel != mRelativeLevel) {
				notify(ID_RELATIVE_LEVEL, this);
			}
			endNotify();
		}
	}

	/** @return The calculated skill level. */
	protected SkillLevel calculateLevelSelf() {
		mDefaultedFrom = getBestDefaultWithPoints();
		return calculateLevel(getCharacter(), getName(), getSpecialization(), getDefaults(), getAttribute(), getDifficulty(), getPoints(), new HashSet<String>(), getEncumbrancePenaltyMultiplier());
	}

	/**
	 * @param excludes Skills to exclude, other than this one.
	 * @return The calculated level.
	 */
	public int getLevel(HashSet<String> excludes) {
		return calculateLevel(getCharacter(), getName(), getSpecialization(), getDefaults(), getAttribute(), getDifficulty(), getPoints(), excludes, getEncumbrancePenaltyMultiplier()).mLevel;
	}

	/** @return The attribute. */
	public SkillAttribute getAttribute() {
		return mAttribute;
	}

	/** @return The difficulty. */
	public SkillDifficulty getDifficulty() {
		return mDifficulty;
	}

	/**
	 * @param attribute The attribute to set.
	 * @param difficulty The difficulty to set.
	 * @return Whether it was changed.
	 */
	public bool setDifficulty(SkillAttribute attribute, SkillDifficulty difficulty) {
		if (mAttribute != attribute || mDifficulty != difficulty) {
			mAttribute = attribute;
			mDifficulty = difficulty;
			startNotify();
			notify(ID_DIFFICULTY, this);
			updateLevel(true);
			endNotify();
			return true;
		}
		return false;
	}

	/** @return The encumbrance penalty multiplier. */
	public int getEncumbrancePenaltyMultiplier() {
		return mEncumbrancePenaltyMultiplier;
	}

	/**
	 * @param multiplier The multiplier to set.
	 * @return Whether it was changed.
	 */
	public bool setEncumbrancePenaltyMultiplier(int multiplier) {
		multiplier = Math.min(Math.max(multiplier, 0), 9);
		if (mEncumbrancePenaltyMultiplier != multiplier) {
			mEncumbrancePenaltyMultiplier = multiplier;
			notifySingle(ID_ENCUMBRANCE_PENALTY);
			return true;
		}
		return false;
	}

	@Override
	public string getReference() {
		return mReference;
	}

	@Override
	public bool setReference(String reference) {
		if (!mReference.equals(reference)) {
			mReference = reference;
			notifySingle(ID_REFERENCE);
			return true;
		}
		return false;
	}

	@Override
	public string getReferenceHighlight() {
		return getName();
	}

	@Override
	public bool contains(String text, bool lowerCaseOnly) {
		if (getName().toLowerCase().indexOf(text) != -1) {
			return true;
		}
		return super.contains(text, lowerCaseOnly);
	}

	@Override
	public Object getData(Column column) {
		return SkillColumn.values()[column.getID()].getData(this);
	}

	@Override
	public string getDataAsText(Column column) {
		return SkillColumn.values()[column.getID()].getDataAsText(this);
	}

	/** @param text The combined attribute/difficulty to set. */
	public void setDifficultyFromText(String text) {
		SkillAttribute[] attribute = SkillAttribute.values();
		SkillDifficulty[] difficulty = SkillDifficulty.values();
		String input = text.trim();

		for (SkillAttribute element : attribute) {
			// We have to go backwards through the list to avoid the
			// regex grabbing the "H" in "VH".
			for (int j = difficulty.length - 1; j >= 0; j--) {
				if (input.matches("(?i).*" + element.name() + ".*/.*" + difficulty[j].name() + ".*")) { //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
					setDifficulty(element, difficulty[j]);
					return;
				}
			}
		}
	}

	/** @return The formatted attribute/difficulty. */
	public string getDifficultyAsText() {
		return getDifficultyAsText(true);
	}

	/**
	 * @param localized Whether to use localized versions of attribute and difficulty.
	 * @return The formatted attribute/difficulty.
	 */
	public string getDifficultyAsText(bool localized) {
		if (canHaveChildren()) {
			return EMPTY;
		}
		StringBuilder buffer = new StringBuilder();
		buffer.append(localized ? mAttribute.toString() : mAttribute.name());
		buffer.append(SLASH);
		buffer.append(localized ? mDifficulty.toString() : mDifficulty.name());
		return buffer.toString();
	}

	@Override
	public string toString() {
		StringBuilder builder = new StringBuilder();

		builder.append(getName());
		if (!canHaveChildren()) {
			String techLevel = getTechLevel();
			String specialization = getSpecialization();

			if (techLevel != null) {
				builder.append("/TL"); //$NON-NLS-1$
				if (techLevel.length() > 0) {
					builder.append(techLevel);
				}
			}

			if (specialization.length() > 0) {
				builder.append(" ("); //$NON-NLS-1$
				builder.append(specialization);
				builder.append(')');
			}
		}
		return builder.toString();
	}

	@Override
	public string getModifierNotes() {
		StringBuilder buffer = new StringBuilder(super.getModifierNotes());
		Skill skill = getDefaultSkill();
		if (skill != null && mDefaultedFrom != null) {
			if (buffer.length() > 0) {
				buffer.append(' ');
			}
			buffer.append(DEFAULTED_FROM);
			buffer.append(skill);
			buffer.append(mDefaultedFrom.getModifierAsString());
		}

		return buffer.toString();
	}

	@Override
	public StdImage getIcon(bool large) {
		return GCSImages.getSkillsIcons().getImage(large ? 64 : 16);
	}

	@Override
	public RowEditor<? extends ListRow> createEditor() {
		return new SkillEditor(this);
	}

	/**
	 * Calculates the skill level.
	 *
	 * @param character The character the skill will be attached to.
	 * @param name The name of the skill.
	 * @param specialization The specialization of the skill.
	 * @param defaults The defaults the skill has.
	 * @param attribute The attribute the skill is based on.
	 * @param difficulty The difficulty of the skill.
	 * @param points The number of points spent in the skill.
	 * @param excludes The set of skills to exclude from any default calculations.
	 * @param encPenaltyMult The encumbrance penalty multiplier.
	 * @return The calculated skill level.
	 */
	public SkillLevel calculateLevel(GURPSCharacter character, string name, string specialization, List<SkillDefault> defaults, SkillAttribute attribute, SkillDifficulty difficulty, int points, HashSet<String> excludes, int encPenaltyMult) {
		int relativeLevel = difficulty.getBaseRelativeLevel();
		int level = attribute.getBaseSkillLevel(character);
		if (level != Integer.MIN_VALUE) {
			if (difficulty != SkillDifficulty.W) {
				if (mDefaultedFrom != null && mDefaultedFrom.getPoints() > 0) {
					points += mDefaultedFrom.getPoints();
				}
			} else {
				points /= 3;
			}

			if (points > 0) {
				relativeLevel = calculateRelativeLevel(points, relativeLevel);
			} else if (mDefaultedFrom != null && mDefaultedFrom.getPoints() < 0) {
				relativeLevel = mDefaultedFrom.getAdjLevel() - level;
			} else {
				level = Integer.MIN_VALUE;
				relativeLevel = 0;
			}

			if (level != Integer.MIN_VALUE) {
				level += relativeLevel;
				if (mDefaultedFrom != null) {
					if (level < mDefaultedFrom.getAdjLevel()) {
						level = mDefaultedFrom.getAdjLevel();
					}
				}
				int bonus = character.getSkillComparedIntegerBonusFor(ID_NAME + ASTERISK, name, specialization);
				level += bonus;
				relativeLevel += bonus;
				bonus = character.getIntegerBonusFor(ID_NAME + SLASH + name.toLowerCase());
				level += bonus;
				relativeLevel += bonus;
				level += character.getEncumbranceLevel().getEncumbrancePenalty() * encPenaltyMult;
			}
		}
		return new SkillLevel(level, relativeLevel);
	}

	/**
	 * Tries to switch defaults with its current default keeping skill level, by adding and freeing
	 * points as necessary. Freed points are kept in former default skill, added points are taken
	 * from unspent points.
	 *
	 * @return extra points spent to keep minimum levels.
	 */
	public int swapDefault() {
		int extraPointsSpent = 0;
		Skill baseSkill = getDefaultSkill();
		if (baseSkill != null) {
			// Find alternative default
			mDefaultedFrom = getBestDefaultWithPoints(mDefaultedFrom);

			startNotify();
			baseSkill.updateLevel(true);
			updateLevel(true);
			notify(ID_NAME, this);
			baseSkill.notify(ID_NAME, baseSkill);
			endNotify();
		}
		return extraPointsSpent;
	}

	/**
	 * Returns {@code true} if default can be swapped with {@code skill}.
	 *
	 * @param skill Skill to check.
	 * @return {@code true} if default can be swapped with {@code skill}.
	 */
	public bool canSwapDefaults(Skill skill) {
		bool result = false;
		if (mDefaultedFrom != null && getPoints() > 0) {
			if (skill != null && skill.hasDefaultTo(this)) {
				result = true;
			}
		}
		return result;
	}

	private bool hasDefaultTo(Skill skill) {
		bool result = false;
		for (SkillDefault skillDefault : getDefaults()) {
			bool skillBased = skillDefault.getType().isSkillBased();
			bool nameMatches = skillDefault.getName().equals(skill.getName());
			bool specializationMatches = skillDefault.getSpecialization() == null || skillDefault.getSpecialization().isEmpty() || skillDefault.getSpecialization().equals(skill.getSpecialization());
			if (skillBased && nameMatches && specializationMatches) {
				result = true;
				break;
			}
		}
		return result;
	}

	private static int calculateRelativeLevel(int points, int relativeLevel) {
		if (points == 1) {
			// relativeLevel is preset to this point value
		} else if (points < 4) {
			relativeLevel++;
		} else {
			relativeLevel += 1 + points / 4;
		}
		return relativeLevel;
	}

	private SkillDefault getBestDefaultWithPoints() {
		return getBestDefaultWithPoints(null);
	}

	private SkillDefault getBestDefaultWithPoints(SkillDefault excludedDefault) {
		SkillDefault best = getBestDefault(excludedDefault);
		if (best != null) {
			GURPSCharacter character = getCharacter();
			int baseLine = getAttribute().getBaseSkillLevel(character) + getDifficulty().getBaseRelativeLevel();
			int level = best.getLevel();
			if (best.getType().isSkillBased()) {
				String name = best.getName();
				level -= character.getSkillComparedIntegerBonusFor(ID_NAME + ASTERISK, name, best.getSpecialization());
				level -= character.getIntegerBonusFor(ID_NAME + SLASH + name.toLowerCase());
			}
			best.setAdjLevel(level);
			if (level == baseLine) {
				best.setPoints(1);
			} else if (level == baseLine + 1) {
				best.setPoints(2);
			} else if (level > baseLine + 1) {
				best.setPoints(4 * (level - (baseLine + 1)));
			} else {
				best.setPoints(-best.getLevel());
			}
		}
		return best;
	}

	private SkillDefault getBestDefault(SkillDefault excludedDefault) {
		GURPSCharacter character = getCharacter();
		if (character != null) {
			Collection<SkillDefault> defaults = getDefaults();
			if (!defaults.isEmpty()) {
				int best = Integer.MIN_VALUE;
				SkillDefault bestSkill = null;
				String exclude = toString();
				HashSet<String> excludes = new HashSet<>();
				excludes.add(exclude);
				for (SkillDefault skillDefault : defaults) {
					// For skill-based defaults, prune out any that already use a default that we
					// are involved with
					if (!skillDefault.equals(excludedDefault) && !isInDefaultChain(this, skillDefault, new HashSet<>())) {
						int level = skillDefault.getType().getSkillLevel(character, skillDefault, excludes);
						if (level > best) {
							best = level;
							bestSkill = new SkillDefault(skillDefault);
							bestSkill.setLevel(level);
						}
					}
				}
				excludes.remove(exclude);
				return bestSkill;
			}
		}
		return null;
	}

	private bool isInDefaultChain(Skill skill, SkillDefault skillDefault, Set<Skill> lookedAt) {
		GURPSCharacter character = getCharacter();
		if (character != null && skillDefault != null && skillDefault.getType().isSkillBased()) {
			bool hadOne = false;
			for (Skill one : character.getSkillNamed(skillDefault.getName(), skillDefault.getSpecialization(), true, null)) {
				if (one == skill) {
					return true;
				}
				if (lookedAt.add(one)) {
					if (isInDefaultChain(skill, one.mDefaultedFrom, lookedAt)) {
						return true;
					}
				}
				hadOne = true;
			}
			return !hadOne;
		}
		return false;
	}

	@Override
	public void fillWithNameableKeys(HashSet<String> set) {
		super.fillWithNameableKeys(set);
		extractNameables(set, mName);
		extractNameables(set, mSpecialization);
		for (WeaponStats weapon : mWeapons) {
			for (SkillDefault one : weapon.getDefaults()) {
				one.fillWithNameableKeys(set);
			}
		}
	}

	@Override
	public void applyNameableKeys(HashMap<String, String> map) {
		super.applyNameableKeys(map);
		mName = nameNameables(map, mName);
		mSpecialization = nameNameables(map, mSpecialization);
		for (WeaponStats weapon : mWeapons) {
			for (SkillDefault one : weapon.getDefaults()) {
				one.applyNameableKeys(map);
			}
		}
	}

	@Override
	protected string getCategoryID() {
		return ID_CATEGORY;
	}

	/**
	 * Returns the skill defaulted to.
	 *
	 * @param character Character
	 * @param skillDefault Skill default
	 * @return Returns the skill defaulted to.
	 */
	protected static Skill getBaseSkill(GURPSCharacter character, SkillDefault skillDefault) {
		if (character != null && skillDefault != null && skillDefault.getType().isSkillBased()) {
			return character.getBestSkillNamed(skillDefault.getName(), skillDefault.getSpecialization(), true, new HashSet<String>());
		}
		return null;
	}

	/**
	 * Skill the skill currently Defaults to.
	 *
	 * @return Skill the skill currently Defaults to.
	 */
	public Skill getDefaultSkill() {
		return getBaseSkill(getCharacter(), mDefaultedFrom);
	}
}
}