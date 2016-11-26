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



//using com.trollworks.gcs.app.GCSImages;
//using com.trollworks.gcs.character.GURPSCharacter;
//using com.trollworks.gcs.common.DataFile;
//using com.trollworks.gcs.common.HasSourceReference;
//using com.trollworks.gcs.common.ListFile;
//using com.trollworks.gcs.common.LoadState;
//using com.trollworks.gcs.library.LibraryFile;
//using com.trollworks.gcs.skill.SkillDefault;
//using com.trollworks.gcs.skill.SkillLevel;
//using com.trollworks.gcs.weapon.MeleeWeaponStats;
//using com.trollworks.gcs.weapon.RangedWeaponStats;
//using com.trollworks.gcs.weapon.WeaponStats;
//using com.trollworks.gcs.widgets.outline.ListRow;
//using com.trollworks.gcs.widgets.outline.RowEditor;
//using com.trollworks.toolkit.annotation.Localize;
//using com.trollworks.toolkit.io.xml.XMLReader;
//using com.trollworks.toolkit.io.xml.XMLWriter;
//using com.trollworks.toolkit.ui.image.StdImage;
//using com.trollworks.toolkit.ui.widget.outline.Column;
//using com.trollworks.toolkit.utility.Localization;

//using java.io.IOException;
//using java.util.ArrayList;
//using java.util.Collections;
//using java.util.HashMap;
//using java.util.HashSet;
//using java.util.List;

//namespace com.trollworks.gcs.spell {
///** A GURPS Spell. */
//public class Spell extends ListRow implements HasSourceReference {
//	@Localize("Spell")
//	@Localize(locale = "de", value = "Zauber")
//	@Localize(locale = "ru", value = "Заклинание")
//	@Localize(locale = "es", value = "Sortilegio")
//	private static String	DEFAULT_NAME;
//	@Localize("Arcane")
//	@Localize(locale = "de", value = "Arkan")
//	@Localize(locale = "ru", value = "Тайный")
//	@Localize(locale = "es", value = "Arcano")
//	private static String	DEFAULT_POWER_SOURCE;
//	@Localize("Regular")
//	@Localize(locale = "de", value = "Regulär")
//	@Localize(locale = "ru", value = "Обычный")
//	@Localize(locale = "es", value = "Normal")
//	private static String	DEFAULT_SPELL_CLASS;
//	@Localize("1")
//	@Localize(locale = "de", value = "1")
//	private static String	DEFAULT_CASTING_COST;
//	@Localize("1 sec")
//	@Localize(locale = "de", value = "1 Sek.")
//	@Localize(locale = "ru", value = "1 сек")
//	@Localize(locale = "es", value = "1 seg.")
//	private static String	DEFAULT_CASTING_TIME;
//	@Localize("Instant")
//	@Localize(locale = "de", value = "Sofort")
//	@Localize(locale = "ru", value = "Мгновенное")
//	@Localize(locale = "es", value = "Instantáneo")
//	private static String	DEFAULT_DURATION;

//	static {
//		Localization.initialize();
//	}

//	private static const int		CURRENT_VERSION				= 2;
//	/** The extension for Spell lists. */
//	public static const String		OLD_SPELL_EXTENSION			= "spl";										//$NON-NLS-1$
//	/** The XML tag used for items. */
//	public static const String		TAG_SPELL					= "spell";										//$NON-NLS-1$
//	/** The XML tag used for containers. */
//	public static const String		TAG_SPELL_CONTAINER			= "spell_container";							//$NON-NLS-1$
//	private static const String		TAG_NAME					= "Name";										//$NON-NLS-1$
//	private static const String		TAG_TECH_LEVEL				= "tech_level";									//$NON-NLS-1$
//	private static const String		TAG_COLLEGE					= "College";									//$NON-NLS-1$
//	private static const String		TAG_POWER_SOURCE			= "power_source";								//$NON-NLS-1$
//	private static const String		TAG_SPELL_CLASS				= "spell_class";								//$NON-NLS-1$
//	private static const String		TAG_CASTING_COST			= "casting_cost";								//$NON-NLS-1$
//	private static const String		TAG_MAINTENANCE_COST		= "maintenance_cost";							//$NON-NLS-1$
//	private static const String		TAG_CASTING_TIME			= "casting_time";								//$NON-NLS-1$
//	private static const String		TAG_DURATION				= "duration";									//$NON-NLS-1$
//	private static const String		TAG_POINTS					= "points";										//$NON-NLS-1$
//	private static const String		TAG_REFERENCE				= "reference";									//$NON-NLS-1$
//	private static const String		ATTRIBUTE_VERY_HARD			= "very_hard";									//$NON-NLS-1$
//	/** The prefix used in front of all IDs for the spells. */
//	public static const String		PREFIX						= GURPSCharacter.CHARACTER_PREFIX + "spell.";	//$NON-NLS-1$
//	/** The field ID for Name changes. */
//	public static const String		ID_NAME						= PREFIX + "Name";								//$NON-NLS-1$
//	/** The field ID for tech Level changes. */
//	public static const String		ID_TECH_LEVEL				= PREFIX + "TechLevel";							//$NON-NLS-1$
//	/** The field ID for College changes. */
//	public static const String		ID_COLLEGE					= PREFIX + "College";							//$NON-NLS-1$
//	/** The field ID for power source changes. */
//	public static const String		ID_POWER_SOURCE				= PREFIX + "PowerSource";						//$NON-NLS-1$
//	/** The field ID for spell class changes. */
//	public static const String		ID_SPELL_CLASS				= PREFIX + "Class";								//$NON-NLS-1$
//	/** The field ID for casting cost changes */
//	public static const String		ID_CASTING_COST				= PREFIX + "CastingCost";						//$NON-NLS-1$
//	/** The field ID for maintainance cost changes */
//	public static const String		ID_MAINTENANCE_COST			= PREFIX + "MaintenanceCost";					//$NON-NLS-1$
//	/** The field ID for casting time changes */
//	public static const String		ID_CASTING_TIME				= PREFIX + "CastingTime";						//$NON-NLS-1$
//	/** The field ID for duration changes */
//	public static const String		ID_DURATION					= PREFIX + "Duration";							//$NON-NLS-1$
//	/** The field ID for point changes. */
//	public static const String		ID_POINTS					= PREFIX + "Points";							//$NON-NLS-1$
//	/** The field ID for Level changes. */
//	public static const String		ID_LEVEL					= PREFIX + "Level";								//$NON-NLS-1$
//	/** The field ID for page reference changes. */
//	public static const String		ID_REFERENCE				= PREFIX + "Reference";							//$NON-NLS-1$
//	/** The field ID for difficulty changes. */
//	public static const String		ID_IS_VERY_HARD				= PREFIX + "Difficulty";						//$NON-NLS-1$
//	/** The field ID for when the categories change. */
//	public static const String		ID_CATEGORY					= PREFIX + "Category";							//$NON-NLS-1$
//	/** The field ID for when the row hierarchy changes. */
//	public static const String		ID_LIST_CHANGED				= PREFIX + "ListChanged";						//$NON-NLS-1$
//	/** The field ID for when the spell becomes or stops being a weapon. */
//	public static const String		ID_WEAPON_STATUS_CHANGED	= PREFIX + "WeaponStatus";						//$NON-NLS-1$
//	private static const String		EMPTY						= "";											//$NON-NLS-1$
//	private static const String		NEWLINE						= "\n";											//$NON-NLS-1$
//	private static const String		SPACE						= " ";											//$NON-NLS-1$
//	private String					mName;
//	private String					mTechLevel;
//	private String					mCollege;
//	private String					mPowerSource;
//	private String					mSpellClass;
//	private String					mCastingCost;
//	private String					mMaintenance;
//	private String					mCastingTime;
//	private String					mDuration;
//	private int						mPoints;
//	private int						mLevel;
//	private int						mRelativeLevel;
//	private String					mReference;
//	private bool					mIsVeryHard;
//	private ArrayList<WeaponStats>	mWeapons;

//	/**
//	 * Creates a new spell.
//	 *
//	 * @param dataFile The data file to associate it with.
//	 * @param isContainer Whether or not this row allows children.
//	 */
//	public Spell(DataFile dataFile, bool isContainer) {
//		super(dataFile, isContainer);
//		mName = DEFAULT_NAME;
//		mTechLevel = null;
//		mCollege = EMPTY;
//		mPowerSource = isContainer ? EMPTY : DEFAULT_POWER_SOURCE;
//		mSpellClass = isContainer ? EMPTY : DEFAULT_SPELL_CLASS;
//		mCastingCost = isContainer ? EMPTY : DEFAULT_CASTING_COST;
//		mMaintenance = EMPTY;
//		mCastingTime = isContainer ? EMPTY : DEFAULT_CASTING_TIME;
//		mDuration = isContainer ? EMPTY : DEFAULT_DURATION;
//		mPoints = 1;
//		mReference = EMPTY;
//		mIsVeryHard = false;
//		mWeapons = new ArrayList<>();
//		updateLevel(false);
//	}

//	/**
//	 * Creates a clone of an existing spell and associates it with the specified data file.
//	 *
//	 * @param dataFile The data file to associate it with.
//	 * @param spell The spell to clone.
//	 * @param deep Whether or not to clone the children, grandchildren, etc.
//	 * @param forSheet Whether this is for a character sheet or a list.
//	 */
//	public Spell(DataFile dataFile, Spell spell, bool deep, bool forSheet) {
//		super(dataFile, spell);
//		mName = spell.mName;
//		mTechLevel = spell.mTechLevel;
//		mCollege = spell.mCollege;
//		mPowerSource = spell.mPowerSource;
//		mSpellClass = spell.mSpellClass;
//		mCastingCost = spell.mCastingCost;
//		mMaintenance = spell.mMaintenance;
//		mCastingTime = spell.mCastingTime;
//		mDuration = spell.mDuration;
//		mPoints = forSheet ? spell.mPoints : 1;
//		mReference = spell.mReference;
//		mIsVeryHard = spell.mIsVeryHard;
//		if (forSheet && dataFile instanceof GURPSCharacter) {
//			if (mTechLevel != null) {
//				mTechLevel = ((GURPSCharacter) dataFile).getDescription().getTechLevel();
//			}
//		} else {
//			if (mTechLevel != null && mTechLevel.trim().length() > 0) {
//				mTechLevel = EMPTY;
//			}
//		}
//		mWeapons = new ArrayList<>(spell.mWeapons.size());
//		for (WeaponStats weapon : spell.mWeapons) {
//			if (weapon instanceof MeleeWeaponStats) {
//				mWeapons.add(new MeleeWeaponStats(this, (MeleeWeaponStats) weapon));
//			} else if (weapon instanceof RangedWeaponStats) {
//				mWeapons.add(new RangedWeaponStats(this, (RangedWeaponStats) weapon));
//			}
//		}
//		updateLevel(false);
//		if (deep) {
//			int count = spell.getChildCount();

//			for (int i = 0; i < count; i++) {
//				addChild(new Spell(dataFile, (Spell) spell.getChild(i), true, forSheet));
//			}
//		}
//	}

//	/**
//	 * Loads a spell and associates it with the specified data file.
//	 *
//	 * @param dataFile The data file to associate it with.
//	 * @param reader The XML reader to load from.
//	 * @param state The {@link LoadState} to use.
//	 */
//	public Spell(DataFile dataFile, XMLReader reader, LoadState state) throws IOException {
//		this(dataFile, TAG_SPELL_CONTAINER.equals(reader.getName()));
//		load(reader, state);
//	}

//	@Override
//	public bool isEquivalentTo(Object obj) {
//		if (obj == this) {
//			return true;
//		}
//		if (obj instanceof Spell && super.isEquivalentTo(obj)) {
//			Spell row = (Spell) obj;
//			if (mIsVeryHard == row.mIsVeryHard && mPoints == row.mPoints && mLevel == row.mLevel && mRelativeLevel == row.mRelativeLevel) {
//				if (mTechLevel == null ? row.mTechLevel == null : mTechLevel.equals(row.mTechLevel)) {
//					if (mName.equals(row.mName) && mCollege.equals(row.mCollege) && mPowerSource.equals(row.mPowerSource) && mSpellClass.equals(row.mSpellClass) && mReference.equals(row.mReference)) {
//						if (mCastingCost.equals(row.mCastingCost) && mMaintenance.equals(row.mMaintenance) && mCastingTime.equals(row.mCastingTime) && mDuration.equals(row.mDuration)) {
//							return mWeapons.equals(row.mWeapons);
//						}
//					}
//				}
//			}
//		}
//		return false;
//	}

//	@Override
//	public string getLocalizedName() {
//		return DEFAULT_NAME;
//	}

//	@Override
//	public string getListChangedID() {
//		return ID_LIST_CHANGED;
//	}

//	@Override
//	public string getXMLTagName() {
//		return canHaveChildren() ? TAG_SPELL_CONTAINER : TAG_SPELL;
//	}

//	@Override
//	public int getXMLTagVersion() {
//		return CURRENT_VERSION;
//	}

//	@Override
//	public string getRowType() {
//		return DEFAULT_NAME;
//	}

//	@Override
//	protected void prepareForLoad(LoadState state) {
//		bool isContainer = canHaveChildren();
//		super.prepareForLoad(state);
//		mName = DEFAULT_NAME;
//		mTechLevel = null;
//		mCollege = EMPTY;
//		mPowerSource = isContainer ? EMPTY : DEFAULT_POWER_SOURCE;
//		mSpellClass = isContainer ? EMPTY : DEFAULT_SPELL_CLASS;
//		mCastingCost = isContainer ? EMPTY : DEFAULT_CASTING_COST;
//		mMaintenance = EMPTY;
//		mCastingTime = isContainer ? EMPTY : DEFAULT_CASTING_TIME;
//		mDuration = isContainer ? EMPTY : DEFAULT_DURATION;
//		mPoints = 1;
//		mReference = EMPTY;
//		mIsVeryHard = false;
//		mWeapons = new ArrayList<>();
//	}

//	@Override
//	protected void loadAttributes(XMLReader reader, LoadState state) {
//		super.loadAttributes(reader, state);
//		mIsVeryHard = reader.isAttributeSet(ATTRIBUTE_VERY_HARD);
//	}

//	@Override
//	protected void loadSubElement(XMLReader reader, LoadState state) throws IOException {
//		String Name = reader.getName();
//		if (TAG_NAME.equals(Name)) {
//			mName = reader.readText().replace(NEWLINE, SPACE);
//			// Fix for legacy format...
//			if (mName.toLowerCase().endsWith("(vh)")) { //$NON-NLS-1$
//				mName = mName.substring(0, mName.length() - 4).trim();
//				mIsVeryHard = true;
//			}
//		} else if (TAG_TECH_LEVEL.equals(Name)) {
//			mTechLevel = reader.readText();
//			if (mTechLevel != null) {
//				DataFile dataFile = getDataFile();
//				if (dataFile instanceof ListFile || dataFile instanceof LibraryFile) {
//					mTechLevel = EMPTY;
//				}
//			}
//		} else if (TAG_REFERENCE.equals(Name)) {
//			mReference = reader.readText().replace(NEWLINE, SPACE);
//		} else if (!state.mForUndo && (TAG_SPELL.equals(Name) || TAG_SPELL_CONTAINER.equals(Name))) {
//			addChild(new Spell(mDataFile, reader, state));
//		} else if (!canHaveChildren()) {
//			if (TAG_COLLEGE.equals(Name)) {
//				mCollege = reader.readText().replace(NEWLINE, SPACE).replace("/ ", "/"); //$NON-NLS-1$ //$NON-NLS-2$
//			} else if (TAG_POWER_SOURCE.equals(Name)) {
//				mPowerSource = reader.readText().replace(NEWLINE, SPACE);
//			} else if (TAG_SPELL_CLASS.equals(Name)) {
//				mSpellClass = reader.readText().replace(NEWLINE, SPACE);
//			} else if (TAG_CASTING_COST.equals(Name)) {
//				mCastingCost = reader.readText().replace(NEWLINE, SPACE);
//			} else if (TAG_MAINTENANCE_COST.equals(Name)) {
//				mMaintenance = reader.readText().replace(NEWLINE, SPACE);
//			} else if (TAG_CASTING_TIME.equals(Name)) {
//				mCastingTime = reader.readText().replace(NEWLINE, SPACE);
//			} else if (TAG_DURATION.equals(Name)) {
//				mDuration = reader.readText().replace(NEWLINE, SPACE);
//			} else if (TAG_POINTS.equals(Name)) {
//				mPoints = reader.readInteger(1);
//			} else if (MeleeWeaponStats.TAG_ROOT.equals(Name)) {
//				mWeapons.add(new MeleeWeaponStats(this, reader));
//			} else if (RangedWeaponStats.TAG_ROOT.equals(Name)) {
//				mWeapons.add(new RangedWeaponStats(this, reader));
//			} else {
//				super.loadSubElement(reader, state);
//			}
//		} else {
//			super.loadSubElement(reader, state);
//		}
//	}

//	@Override
//	protected void finishedLoading(LoadState state) {
//		updateLevel(false);
//		super.finishedLoading(state);
//	}

//	@Override
//	protected void saveAttributes(XMLWriter out, bool forUndo) {
//		if (mIsVeryHard) {
//			out.writeAttribute(ATTRIBUTE_VERY_HARD, mIsVeryHard);
//		}
//	}

//	@Override
//	public void saveSelf(XMLWriter out, bool forUndo) {
//		out.simpleTag(TAG_NAME, mName);
//		if (!canHaveChildren()) {
//			if (mTechLevel != null) {
//				if (getCharacter() != null) {
//					out.simpleTagNotEmpty(TAG_TECH_LEVEL, mTechLevel);
//				} else {
//					out.startTag(TAG_TECH_LEVEL);
//					out.finishEmptyTagEOL();
//				}
//			}
//			out.simpleTagNotEmpty(TAG_COLLEGE, mCollege);
//			out.simpleTagNotEmpty(TAG_POWER_SOURCE, mPowerSource);
//			out.simpleTagNotEmpty(TAG_SPELL_CLASS, mSpellClass);
//			out.simpleTagNotEmpty(TAG_CASTING_COST, mCastingCost);
//			out.simpleTagNotEmpty(TAG_MAINTENANCE_COST, mMaintenance);
//			out.simpleTagNotEmpty(TAG_CASTING_TIME, mCastingTime);
//			out.simpleTagNotEmpty(TAG_DURATION, mDuration);
//			if (mPoints != 1) {
//				out.simpleTag(TAG_POINTS, mPoints);
//			}
//			for (WeaponStats weapon : mWeapons) {
//				weapon.save(out);
//			}
//		}
//		out.simpleTagNotEmpty(TAG_REFERENCE, mReference);
//	}

//	/** @return The weapon list. */
//	public List<WeaponStats> getWeapons() {
//		return Collections.unmodifiableList(mWeapons);
//	}

//	/**
//	 * @param weapons The weapons to set.
//	 * @return Whether it was modified.
//	 */
//	public bool setWeapons(List<WeaponStats> weapons) {
//		if (!mWeapons.equals(weapons)) {
//			mWeapons = new ArrayList<>(weapons);
//			for (WeaponStats weapon : mWeapons) {
//				weapon.setOwner(this);
//			}
//			notifySingle(ID_WEAPON_STATUS_CHANGED);
//			return true;
//		}
//		return false;
//	}

//	/** @return The tech Level. */
//	public string getTechLevel() {
//		return mTechLevel;
//	}

//	/**
//	 * @param techLevel The tech Level to set.
//	 * @return Whether it was changed.
//	 */
//	public bool setTechLevel(String techLevel) {
//		if (mTechLevel == null ? techLevel != null : !mTechLevel.equals(techLevel)) {
//			mTechLevel = techLevel;
//			notifySingle(ID_TECH_LEVEL);
//			return true;
//		}
//		return false;
//	}

//	/** @return The Level. */
//	public int getLevel() {
//		return mLevel;
//	}

//	/** @return The relative Level. */
//	public int getRelativeLevel() {
//		return mRelativeLevel;
//	}

//	/**
//	 * Call to force an update of the Level and relative Level for this spell.
//	 *
//	 * @param notify Whether or not a notification should be issued on a change.
//	 */
//	public void updateLevel(bool notify) {
//		int savedLevel = mLevel;
//		int savedRelativeLevel = mRelativeLevel;
//		SkillLevel Level = calculateLevel(getCharacter(), mPoints, mIsVeryHard, mCollege, mPowerSource, mName);

//		mLevel = Level.mLevel;
//		mRelativeLevel = Level.mRelativeLevel;

//		if (notify && (savedLevel != mLevel || savedRelativeLevel != mRelativeLevel)) {
//			notify(ID_LEVEL, this);
//		}
//	}

//	/**
//	 * Calculates the spell Level.
//	 *
//	 * @param character The character the spell will be attached to.
//	 * @param points The number of points spent in the spell.
//	 * @param isVeryHard Whether the spell is "Very Hard" or not.
//	 * @param College The College the spell belongs to.
//	 * @param powerSource The source of power for the spell.
//	 * @param Name The Name of the spell.
//	 * @return The calculated spell Level.
//	 */
//	public static SkillLevel calculateLevel(GURPSCharacter character, int points, bool isVeryHard, string College, string powerSource, string Name) {
//		int relativeLevel = isVeryHard ? -3 : -2;
//		int Level;

//		if (character != null) {
//			Level = character.getIntelligence();
//			if (points < 1) {
//				Level = -1;
//				relativeLevel = 0;
//			} else if (points == 1) {
//				// mRelativeLevel is preset to this point value
//			} else if (points < 4) {
//				relativeLevel++;
//			} else {
//				relativeLevel += 1 + points / 4;
//			}

//			if (Level != -1) {
//				relativeLevel += getSpellBonusesFor(character, ID_COLLEGE, College);
//				relativeLevel += getSpellBonusesFor(character, ID_POWER_SOURCE, powerSource);
//				relativeLevel += getSpellBonusesFor(character, ID_NAME, Name);
//				Level += relativeLevel;
//			}
//		} else {
//			Level = -1;
//		}

//		return new SkillLevel(Level, relativeLevel);
//	}

//	private static int getSpellBonusesFor(GURPSCharacter character, string id, string qualifier) {
//		int Level = character.getIntegerBonusFor(id);
//		Level += character.getIntegerBonusFor(id + '/' + qualifier.toLowerCase());
//		Level += character.getSpellComparedIntegerBonusFor(id + '*', qualifier);
//		return Level;
//	}

//	/** @return The Name. */
//	public string getName() {
//		return mName;
//	}

//	/**
//	 * @param Name The Name to set.
//	 * @return Whether it was changed.
//	 */
//	public bool setName(String Name) {
//		if (!mName.equals(Name)) {
//			mName = Name;
//			notifySingle(ID_NAME);
//			return true;
//		}
//		return false;
//	}

//	/** @return The College. */
//	public string getCollege() {
//		return mCollege;
//	}

//	/**
//	 * @param College The College to set.
//	 * @return Whether it was changed.
//	 */
//	public bool setCollege(String College) {
//		if (!mCollege.equals(College)) {
//			mCollege = College;
//			notifySingle(ID_COLLEGE);
//			return true;
//		}
//		return false;
//	}

//	/** @return The power source. */
//	public string getPowerSource() {
//		return mPowerSource;
//	}

//	/**
//	 * @param powerSource The College to set.
//	 * @return Whether it was changed.
//	 */
//	public bool setPowerSource(String powerSource) {
//		if (!mPowerSource.equals(powerSource)) {
//			mPowerSource = powerSource;
//			notifySingle(ID_POWER_SOURCE);
//			return true;
//		}
//		return false;
//	}

//	/** @return The class. */
//	public string getSpellClass() {
//		return mSpellClass;
//	}

//	/**
//	 * @param spellClass The class to set.
//	 * @return Whether it was modified.
//	 */
//	public bool setSpellClass(String spellClass) {
//		if (!mSpellClass.equals(spellClass)) {
//			mSpellClass = spellClass;
//			return true;
//		}
//		return false;
//	}

//	/** @return The casting cost. */
//	public string getCastingCost() {
//		return mCastingCost;
//	}

//	/**
//	 * @param cost The casting cost to set.
//	 * @return Whether it was modified.
//	 */
//	public bool setCastingCost(String cost) {
//		if (!mCastingCost.equals(cost)) {
//			mCastingCost = cost;
//			return true;
//		}
//		return false;
//	}

//	/** @return The maintainance cost. */
//	public string getMaintenance() {
//		return mMaintenance;
//	}

//	/**
//	 * @param cost The maintainance cost to set.
//	 * @return Whether it was modified.
//	 */
//	public bool setMaintenance(String cost) {
//		if (!mMaintenance.equals(cost)) {
//			mMaintenance = cost;
//			return true;
//		}
//		return false;
//	}

//	/** @return The casting time. */
//	public string getCastingTime() {
//		return mCastingTime;
//	}

//	/**
//	 * @param castingTime The casting time to set.
//	 * @return Whether it was modified.
//	 */
//	public bool setCastingTime(String castingTime) {
//		if (!mCastingTime.equals(castingTime)) {
//			mCastingTime = castingTime;
//			return true;
//		}
//		return false;
//	}

//	/** @return The duration. */
//	public string getDuration() {
//		return mDuration;
//	}

//	/**
//	 * @param duration The duration to set.
//	 * @return Whether it was modified.
//	 */
//	public bool setDuration(String duration) {
//		if (!mDuration.equals(duration)) {
//			mDuration = duration;
//			return true;
//		}
//		return false;
//	}

//	/** @return The points. */
//	public int getPoints() {
//		return mPoints;
//	}

//	/**
//	 * @param points The points to set.
//	 * @return Whether it was modified.
//	 */
//	public bool setPoints(int points) {
//		if (mPoints != points) {
//			mPoints = points;
//			startNotify();
//			notify(ID_POINTS, this);
//			updateLevel(true);
//			endNotify();
//			return true;
//		}
//		return false;
//	}

//	@Override
//	public string getReference() {
//		return mReference;
//	}

//	@Override
//	public bool setReference(String reference) {
//		if (!mReference.equals(reference)) {
//			mReference = reference;
//			return true;
//		}
//		return false;
//	}

//	@Override
//	public string getReferenceHighlight() {
//		return getName();
//	}

//	@Override
//	public Object getData(Column column) {
//		return SpellColumn.values()[column.getID()].getData(this);
//	}

//	@Override
//	public string getDataAsText(Column column) {
//		return SpellColumn.values()[column.getID()].getDataAsText(this);
//	}

//	@Override
//	public bool contains(String text, bool lowerCaseOnly) {
//		if (getName().toLowerCase().indexOf(text) != -1) {
//			return true;
//		}
//		if (getCollege().toLowerCase().indexOf(text) != -1) {
//			return true;
//		}
//		if (getSpellClass().toLowerCase().indexOf(text) != -1) {
//			return true;
//		}
//		return super.contains(text, lowerCaseOnly);
//	}

//	@Override
//	public string toString() {
//		StringBuilder builder = new StringBuilder();

//		builder.append(getName());
//		if (!canHaveChildren()) {
//			String techLevel = getTechLevel();

//			if (techLevel != null) {
//				builder.append("/TL"); //$NON-NLS-1$
//				if (techLevel.length() > 0) {
//					builder.append(techLevel);
//				}
//			}
//		}
//		return builder.toString();
//	}

//	@Override
//	public StdImage getIcon(bool large) {
//		return GCSImages.getSpellsIcons().getImage(large ? 64 : 16);
//	}

//	/** @return Whether this is a "Very Hard" spell or not. */
//	public bool isVeryHard() {
//		return mIsVeryHard;
//	}

//	/**
//	 * @param isVeryHard Whether this is a "Very Hard" spell or not.
//	 * @return Whether it was modified.
//	 */
//	public bool setIsVeryHard(bool isVeryHard) {
//		if (mIsVeryHard != isVeryHard) {
//			mIsVeryHard = isVeryHard;
//			startNotify();
//			notify(ID_IS_VERY_HARD, this);
//			updateLevel(true);
//			endNotify();
//			return true;
//		}
//		return false;
//	}

//	@Override
//	public RowEditor<? extends ListRow> createEditor() {
//		return new SpellEditor(this);
//	}

//	@Override
//	public void fillWithNameableKeys(HashSet<String> set) {
//		super.fillWithNameableKeys(set);
//		extractNameables(set, mName);
//		extractNameables(set, mCollege);
//		extractNameables(set, mPowerSource);
//		extractNameables(set, mCastingCost);
//		extractNameables(set, mMaintenance);
//		extractNameables(set, mCastingTime);
//		extractNameables(set, mDuration);
//		for (WeaponStats weapon : mWeapons) {
//			for (SkillDefault one : weapon.getDefaults()) {
//				one.fillWithNameableKeys(set);
//			}
//		}
//	}

//	@Override
//	public void applyNameableKeys(HashMap<String, String> map) {
//		super.applyNameableKeys(map);
//		mName = nameNameables(map, mName);
//		mCollege = nameNameables(map, mCollege);
//		mPowerSource = nameNameables(map, mPowerSource);
//		mSpellClass = nameNameables(map, mSpellClass);
//		mCastingCost = nameNameables(map, mCastingCost);
//		mMaintenance = nameNameables(map, mMaintenance);
//		mCastingTime = nameNameables(map, mCastingTime);
//		mDuration = nameNameables(map, mDuration);
//		for (WeaponStats weapon : mWeapons) {
//			for (SkillDefault one : weapon.getDefaults()) {
//				one.applyNameableKeys(map);
//			}
//		}
//	}

//	/** @return The default casting cost. */
//	public static const string getDefaultCastingCost() {
//		return DEFAULT_CASTING_COST;
//	}

//	/** @return The default casting time. */
//	public static const string getDefaultCastingTime() {
//		return DEFAULT_CASTING_TIME;
//	}

//	/** @return The default duration. */
//	public static const string getDefaultDuration() {
//		return DEFAULT_DURATION;
//	}

//	/** @return The default spell class. */
//	public static const string getDefaultSpellClass() {
//		return DEFAULT_SPELL_CLASS;
//	}

//	@Override
//	protected string getCategoryID() {
//		return ID_CATEGORY;
//	}
//}
//}