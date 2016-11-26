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
//using com.trollworks.gcs.common.LoadState;
//using com.trollworks.gcs.preferences.SheetPreferences;
//using com.trollworks.gcs.skill.SkillDefault;
//using com.trollworks.gcs.weapon.MeleeWeaponStats;
//using com.trollworks.gcs.weapon.OldWeapon;
//using com.trollworks.gcs.weapon.RangedWeaponStats;
//using com.trollworks.gcs.weapon.WeaponStats;
//using com.trollworks.gcs.widgets.outline.ListRow;
//using com.trollworks.gcs.widgets.outline.RowEditor;
//using com.trollworks.toolkit.annotation.Localize;
//using com.trollworks.toolkit.io.xml.XMLReader;
//using com.trollworks.toolkit.io.xml.XMLWriter;
//using com.trollworks.toolkit.ui.image.StdImage;
//using com.trollworks.toolkit.ui.widget.outline.Column;
//using com.trollworks.toolkit.ui.widget.outline.Row;
//using com.trollworks.toolkit.utility.Localization;
//using com.trollworks.toolkit.utility.text.Enums;
//using com.trollworks.toolkit.utility.units.WeightValue;

//using java.io.IOException;
//using java.util.ArrayList;
//using java.util.Collections;
//using java.util.HashMap;
//using java.util.HashSet;
//using java.util.List;

//namespace  com.trollworks.gcs.equipment{
///** A piece of equipment. */
//public class Equipment extends ListRow implements HasSourceReference {
//	@Localize("Equipment")
//	@Localize(locale = "de", value = "Ausrüstung")
//	@Localize(locale = "ru", value = "Снаряжение")
//	@Localize(locale = "es", value = "Equipo")
//	private static string DEFAULT_NAME;

//	static {
//		Localization.initialize();
//	}

//	private static const int		CURRENT_VERSION				= 3;
//	private static const String		NEWLINE						= "\n";												//$NON-NLS-1$
//	private static const String		SPACE						= " ";												//$NON-NLS-1$
//	private static const String		DEFAULT_LEGALITY_CLASS		= "4";												//$NON-NLS-1$
//	private static const String		EMPTY						= "";												//$NON-NLS-1$
//	/** The extension for Equipment lists. */
//	public static const String		OLD_EQUIPMENT_EXTENSION		= "eqp";											//$NON-NLS-1$
//	/** The XML tag used for items. */
//	public static const String		TAG_EQUIPMENT				= "equipment";										//$NON-NLS-1$
//	/** The XML tag used for containers. */
//	public static const String		TAG_EQUIPMENT_CONTAINER		= "equipment_container";							//$NON-NLS-1$
//	private static const String		ATTRIBUTE_STATE				= "state";											//$NON-NLS-1$
//	private static const String		ATTRIBUTE_EQUIPPED			= "equipped";										//$NON-NLS-1$
//	private static const String		TAG_QUANTITY				= "Quantity";										//$NON-NLS-1$
//	private static const String		TAG_DESCRIPTION				= "description";									//$NON-NLS-1$
//	private static const String		TAG_TECH_LEVEL				= "tech_level";										//$NON-NLS-1$
//	private static const String		TAG_LEGALITY_CLASS			= "legality_class";									//$NON-NLS-1$
//	private static const String		TAG_VALUE					= "value";											//$NON-NLS-1$
//	private static const String		TAG_WEIGHT					= "weight";											//$NON-NLS-1$
//	private static const String		TAG_REFERENCE				= "reference";										//$NON-NLS-1$
//	/** The prefix used in front of all IDs for the equipment. */
//	public static const String		PREFIX						= GURPSCharacter.CHARACTER_PREFIX + "equipment.";	//$NON-NLS-1$
//	/** The field ID for equipped/carried/not carried changes. */
//	public static const String		ID_STATE					= PREFIX + "State";									//$NON-NLS-1$
//	/** The field ID for Quantity changes. */
//	public static const String		ID_QUANTITY					= PREFIX + "Quantity";								//$NON-NLS-1$
//	/** The field ID for description changes. */
//	public static const String		ID_DESCRIPTION				= PREFIX + "Description";							//$NON-NLS-1$
//	/** The field ID for tech Level changes. */
//	public static const String		ID_TECH_LEVEL				= PREFIX + "TechLevel";								//$NON-NLS-1$
//	/** The field ID for legality changes. */
//	public static const String		ID_LEGALITY_CLASS			= PREFIX + "LegalityClass";							//$NON-NLS-1$
//	/** The field ID for value changes. */
//	public static const String		ID_VALUE					= PREFIX + "Value";									//$NON-NLS-1$
//	/** The field ID for weight changes. */
//	public static const String		ID_WEIGHT					= PREFIX + "Weight";								//$NON-NLS-1$
//	/** The field ID for extended value changes */
//	public static const String		ID_EXTENDED_VALUE			= PREFIX + "ExtendedValue";							//$NON-NLS-1$
//	/** The field ID for extended weight changes */
//	public static const String		ID_EXTENDED_WEIGHT			= PREFIX + "ExtendedWeight";						//$NON-NLS-1$
//	/** The field ID for page reference changes. */
//	public static const String		ID_REFERENCE				= PREFIX + "Reference";								//$NON-NLS-1$
//	/** The field ID for when the categories change. */
//	public static const String		ID_CATEGORY					= PREFIX + "Category";								//$NON-NLS-1$
//	/** The field ID for when the row hierarchy changes. */
//	public static const String		ID_LIST_CHANGED				= PREFIX + "ListChanged";							//$NON-NLS-1$
//	/** The field ID for when the equipment becomes or stops being a weapon. */
//	public static const String		ID_WEAPON_STATUS_CHANGED	= PREFIX + "WeaponStatus";							//$NON-NLS-1$
//	private EquipmentState			mState;
//	private int						mQuantity;
//	private String					mDescription;
//	private String					mTechLevel;
//	private String					mLegalityClass;
//	private double					mValue;
//	private WeightValue				mWeight;
//	private double					mExtendedValue;
//	private WeightValue				mExtendedWeight;
//	private String					mReference;
//	private ArrayList<WeaponStats>	mWeapons;

//	/**
//	 * Creates a new equipment.
//	 *
//	 * @param dataFile The data file to associate it with.
//	 * @param isContainer Whether or not this row allows children.
//	 */
//	public Equipment(DataFile dataFile, bool isContainer) {
//		super(dataFile, isContainer);
//		mState = EquipmentState.EQUIPPED;
//		mQuantity = 1;
//		mDescription = DEFAULT_NAME;
//		mTechLevel = EMPTY;
//		mLegalityClass = DEFAULT_LEGALITY_CLASS;
//		mReference = EMPTY;
//		mWeight = new WeightValue(0, SheetPreferences.getWeightUnits());
//		mExtendedWeight = new WeightValue(mWeight);
//		mWeapons = new ArrayList<>();
//	}

//	/**
//	 * Creates a clone of an existing equipment and associates it with the specified data file.
//	 *
//	 * @param dataFile The data file to associate it with.
//	 * @param equipment The equipment to clone.
//	 * @param deep Whether or not to clone the children, grandchildren, etc.
//	 */
//	public Equipment(DataFile dataFile, Equipment equipment, bool deep) {
//		super(dataFile, equipment);
//		bool forSheet = dataFile instanceof GURPSCharacter;
//		mState = forSheet ? equipment.mState : EquipmentState.EQUIPPED;
//		mQuantity = forSheet ? equipment.mQuantity : 1;
//		mDescription = equipment.mDescription;
//		mTechLevel = equipment.mTechLevel;
//		mLegalityClass = equipment.mLegalityClass;
//		mValue = equipment.mValue;
//		mWeight = new WeightValue(equipment.mWeight);
//		mExtendedValue = mQuantity * mValue;
//		mExtendedWeight = new WeightValue(mWeight);
//		mExtendedWeight.setValue(mExtendedWeight.getValue() * mQuantity);
//		mReference = equipment.mReference;
//		mWeapons = new ArrayList<>(equipment.mWeapons.size());
//		for (WeaponStats weapon : equipment.mWeapons) {
//			if (weapon instanceof MeleeWeaponStats) {
//				mWeapons.add(new MeleeWeaponStats(this, (MeleeWeaponStats) weapon));
//			} else if (weapon instanceof RangedWeaponStats) {
//				mWeapons.add(new RangedWeaponStats(this, (RangedWeaponStats) weapon));
//			}
//		}
//		if (deep) {
//			int count = equipment.getChildCount();

//			for (int i = 0; i < count; i++) {
//				addChild(new Equipment(dataFile, (Equipment) equipment.getChild(i), true));
//			}
//		}
//	}

//	/**
//	 * Loads an equipment and associates it with the specified data file.
//	 *
//	 * @param dataFile The data file to associate it with.
//	 * @param reader The XML reader to load from.
//	 * @param state The {@link LoadState} to use.
//	 */
//	public Equipment(DataFile dataFile, XMLReader reader, LoadState state) throws IOException {
//		this(dataFile, TAG_EQUIPMENT_CONTAINER.equals(reader.getName()));
//		load(reader, state);
//	}

//	@Override
//	public bool isEquivalentTo(Object obj) {
//		if (obj == this) {
//			return true;
//		}
//		if (obj instanceof Equipment && super.isEquivalentTo(obj)) {
//			Equipment row = (Equipment) obj;
//			if (mQuantity == row.mQuantity && mValue == row.mValue && mWeight.equals(row.mWeight) && mState == row.mState && mDescription.equals(row.mDescription) && mTechLevel.equals(row.mTechLevel) && mLegalityClass.equals(row.mLegalityClass) && mReference.equals(row.mReference)) {
//				return mWeapons.equals(row.mWeapons);
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
//		return canHaveChildren() ? TAG_EQUIPMENT_CONTAINER : TAG_EQUIPMENT;
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
//		super.prepareForLoad(state);
//		mState = EquipmentState.EQUIPPED;
//		mQuantity = 1;
//		mDescription = DEFAULT_NAME;
//		mTechLevel = EMPTY;
//		mLegalityClass = DEFAULT_LEGALITY_CLASS;
//		mReference = EMPTY;
//		mValue = 0.0;
//		mWeight.setValue(0.0);
//		mWeapons = new ArrayList<>();
//	}

//	@Override
//	protected void loadAttributes(XMLReader reader, LoadState state) {
//		super.loadAttributes(reader, state);
//		if (mDataFile instanceof GURPSCharacter) {
//			if (state.mDataItemVersion == 0) {
//				if (state.mDefaultCarried) {
//					setState(reader.isAttributeSet(ATTRIBUTE_EQUIPPED) ? EquipmentState.EQUIPPED : EquipmentState.NOT_CARRIED);
//				} else {
//					setState(EquipmentState.NOT_CARRIED);
//				}
//			} else {
//				setState(Enums.extract(reader.getAttribute(ATTRIBUTE_STATE), EquipmentState.values(), EquipmentState.NOT_CARRIED));
//			}
//		}
//	}

//	@Override
//	protected void loadSubElement(XMLReader reader, LoadState state) throws IOException {
//		String Name = reader.getName();
//		if (TAG_DESCRIPTION.equals(Name)) {
//			mDescription = reader.readText().replace(NEWLINE, SPACE);
//		} else if (TAG_TECH_LEVEL.equals(Name)) {
//			mTechLevel = reader.readText().replace(NEWLINE, SPACE);
//		} else if (TAG_LEGALITY_CLASS.equals(Name)) {
//			mLegalityClass = reader.readText().replace(NEWLINE, SPACE);
//		} else if (TAG_VALUE.equals(Name)) {
//			mValue = reader.readDouble(0.0);
//		} else if (TAG_WEIGHT.equals(Name)) {
//			mWeight = WeightValue.extract(reader.readText(), false);
//		} else if (TAG_REFERENCE.equals(Name)) {
//			mReference = reader.readText().replace(NEWLINE, SPACE);
//		} else if (!state.mForUndo && (TAG_EQUIPMENT.equals(Name) || TAG_EQUIPMENT_CONTAINER.equals(Name))) {
//			addChild(new Equipment(mDataFile, reader, state));
//		} else if (MeleeWeaponStats.TAG_ROOT.equals(Name)) {
//			mWeapons.add(new MeleeWeaponStats(this, reader));
//		} else if (RangedWeaponStats.TAG_ROOT.equals(Name)) {
//			mWeapons.add(new RangedWeaponStats(this, reader));
//		} else if (OldWeapon.TAG_ROOT.equals(Name)) {
//			state.mOldWeapons.put(this, new OldWeapon(reader));
//		} else if (!canHaveChildren()) {
//			if (TAG_QUANTITY.equals(Name)) {
//				mQuantity = reader.readInteger(1);
//			} else {
//				super.loadSubElement(reader, state);
//			}
//		} else {
//			super.loadSubElement(reader, state);
//		}
//	}

//	@Override
//	protected void finishedLoading(LoadState state) {
//		OldWeapon oldWeapon = state.mOldWeapons.remove(this);
//		if (oldWeapon != null) {
//			mWeapons.addAll(oldWeapon.getWeapons(this));
//		}
//		// We no longer have defaults... that was solely for the weapons
//		setDefaults(new ArrayList<SkillDefault>());
//		updateExtendedValue(false);
//		updateExtendedWeight(false);
//		super.finishedLoading(state);
//	}

//	@Override
//	protected void saveAttributes(XMLWriter out, bool forUndo) {
//		if (mDataFile instanceof GURPSCharacter) {
//			out.writeAttribute(ATTRIBUTE_STATE, Enums.toId(mState));
//		}
//	}

//	@Override
//	protected void saveSelf(XMLWriter out, bool forUndo) {
//		if (!canHaveChildren()) {
//			out.simpleTag(TAG_QUANTITY, mQuantity);
//		}
//		out.simpleTagNotEmpty(TAG_DESCRIPTION, mDescription);
//		out.simpleTagNotEmpty(TAG_TECH_LEVEL, mTechLevel);
//		out.simpleTagNotEmpty(TAG_LEGALITY_CLASS, mLegalityClass);
//		out.simpleTag(TAG_VALUE, mValue);
//		if (mWeight.getNormalizedValue() != 0) {
//			out.simpleTag(TAG_WEIGHT, mWeight.toString(false));
//		}
//		out.simpleTagNotEmpty(TAG_REFERENCE, mReference);
//		for (WeaponStats weapon : mWeapons) {
//			weapon.save(out);
//		}
//	}

//	@Override
//	public void update() {
//		updateExtendedValue(true);
//		updateExtendedWeight(true);
//	}

//	/** @return The Quantity. */
//	public int getQuantity() {
//		return mQuantity;
//	}

//	/**
//	 * @param Quantity The Quantity to set.
//	 * @return Whether it was modified.
//	 */
//	public bool setQuantity(int Quantity) {
//		if (Quantity != mQuantity) {
//			mQuantity = Quantity;
//			startNotify();
//			notify(ID_QUANTITY, this);
//			updateContainingWeights(true);
//			updateContainingValues(true);
//			endNotify();
//			return true;
//		}
//		return false;
//	}

//	/** @return The description. */
//	public string getDescription() {
//		return mDescription;
//	}

//	/**
//	 * @param description The description to set.
//	 * @return Whether it was modified.
//	 */
//	public bool setDescription(String description) {
//		if (!mDescription.equals(description)) {
//			mDescription = description;
//			notifySingle(ID_DESCRIPTION);
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
//	 * @return Whether it was modified.
//	 */
//	public bool setTechLevel(String techLevel) {
//		if (!mTechLevel.equals(techLevel)) {
//			mTechLevel = techLevel;
//			notifySingle(ID_TECH_LEVEL);
//			return true;
//		}
//		return false;
//	}

//	/** @return The legality class. */
//	public string getLegalityClass() {
//		return mLegalityClass;
//	}

//	/**
//	 * @param legalityClass The legality class to set.
//	 * @return Whether it was modified.
//	 */
//	public bool setLegalityClass(String legalityClass) {
//		if (!mLegalityClass.equals(legalityClass)) {
//			mLegalityClass = legalityClass;
//			notifySingle(ID_LEGALITY_CLASS);
//			return true;
//		}
//		return false;
//	}

//	/** @return The value. */
//	public double getValue() {
//		return mValue;
//	}

//	/**
//	 * @param value The value to set.
//	 * @return Whether it was modified.
//	 */
//	public bool setValue(double value) {
//		if (value != mValue) {
//			mValue = value;
//			startNotify();
//			notify(ID_VALUE, this);
//			updateContainingValues(true);
//			endNotify();
//			return true;
//		}
//		return false;
//	}

//	/** @return The extended value. */
//	public double getExtendedValue() {
//		return mExtendedValue;
//	}

//	/** @return The weight. */
//	public WeightValue getWeight() {
//		return mWeight;
//	}

//	/**
//	 * @param weight The weight to set.
//	 * @return Whether it was modified.
//	 */
//	public bool setWeight(WeightValue weight) {
//		if (!mWeight.equals(weight)) {
//			mWeight = new WeightValue(weight);
//			startNotify();
//			notify(ID_WEIGHT, this);
//			updateContainingWeights(true);
//			endNotify();
//			return true;
//		}
//		return false;
//	}

//	private bool updateExtendedWeight(bool okToNotify) {
//		WeightValue saved = mExtendedWeight;
//		int count = getChildCount();
//		mExtendedWeight = new WeightValue(mWeight.getValue() * mQuantity, mWeight.getUnits());
//		for (int i = 0; i < count; i++) {
//			mExtendedWeight.add(((Equipment) getChild(i)).mExtendedWeight);
//		}
//		if (!saved.equals(mExtendedWeight)) {
//			if (okToNotify) {
//				notify(ID_EXTENDED_WEIGHT, this);
//			}
//			return true;
//		}
//		return false;
//	}

//	private void updateContainingWeights(bool okToNotify) {
//		Row parent = this;
//		while (parent != null && parent instanceof Equipment) {
//			Equipment parentRow = (Equipment) parent;
//			if (parentRow.updateExtendedWeight(okToNotify)) {
//				parent = parentRow.getParent();
//			} else {
//				break;
//			}
//		}
//	}

//	private bool updateExtendedValue(bool okToNotify) {
//		double savedValue = mExtendedValue;
//		int count = getChildCount();
//		mExtendedValue = mQuantity * mValue;
//		for (int i = 0; i < count; i++) {
//			Equipment child = (Equipment) getChild(i);
//			mExtendedValue += child.mExtendedValue;
//		}
//		if (savedValue != mExtendedValue) {
//			if (okToNotify) {
//				notify(ID_EXTENDED_VALUE, this);
//			}
//			return true;
//		}
//		return false;
//	}

//	private void updateContainingValues(bool okToNotify) {
//		Row parent = this;
//		while (parent != null && parent instanceof Equipment) {
//			Equipment parentRow = (Equipment) parent;
//			if (parentRow.updateExtendedValue(okToNotify)) {
//				parent = parentRow.getParent();
//			} else {
//				break;
//			}
//		}
//	}

//	/** @return The extended weight. */
//	public WeightValue getExtendedWeight() {
//		return mExtendedWeight;
//	}

//	/** @return Whether this item is carried. */
//	public bool isCarried() {
//		return mState == EquipmentState.CARRIED || mState == EquipmentState.EQUIPPED;
//	}

//	/** @return Whether this item is equipped. */
//	public bool isEquipped() {
//		return mState == EquipmentState.EQUIPPED;
//	}

//	/** @return The current {@link EquipmentState}. */
//	public EquipmentState getState() {
//		return mState;
//	}

//	/**
//	 * @param state The new {@link EquipmentState}.
//	 * @return Whether it was changed.
//	 */
//	public bool setState(EquipmentState state) {
//		if (mState != state) {
//			mState = state;
//			startNotify();
//			notify(ID_STATE, this);
//			if (canHaveChildren()) {
//				for (Row child : getChildren()) {
//					((Equipment) child).setState(state);
//				}
//			}
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
//	public string getReferenceHighlight() {
//		return getDescription();
//	}

//	@Override
//	public bool setReference(String reference) {
//		if (!mReference.equals(reference)) {
//			mReference = reference;
//			notifySingle(ID_REFERENCE);
//			return true;
//		}
//		return false;
//	}

//	@Override
//	public bool contains(String text, bool lowerCaseOnly) {
//		if (getDescription().toLowerCase().indexOf(text) != -1) {
//			return true;
//		}
//		return super.contains(text, lowerCaseOnly);
//	}

//	@Override
//	public Object getData(Column column) {
//		return EquipmentColumn.values()[column.getID()].getData(this);
//	}

//	@Override
//	public string getDataAsText(Column column) {
//		return EquipmentColumn.values()[column.getID()].getDataAsText(this);
//	}

//	@Override
//	public string toString() {
//		return getDescription();
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

//	@Override
//	public StdImage getIcon(bool large) {
//		return GCSImages.getEquipmentIcons().getImage(large ? 64 : 16);
//	}

//	@Override
//	public RowEditor<? extends ListRow> createEditor() {
//		return new EquipmentEditor(this);
//	}

//	@Override
//	public void fillWithNameableKeys(HashSet<String> set) {
//		super.fillWithNameableKeys(set);
//		extractNameables(set, mDescription);
//		for (WeaponStats weapon : mWeapons) {
//			for (SkillDefault one : weapon.getDefaults()) {
//				one.fillWithNameableKeys(set);
//			}
//		}
//	}

//	@Override
//	public void applyNameableKeys(HashMap<String, String> map) {
//		super.applyNameableKeys(map);
//		mDescription = nameNameables(map, mDescription);
//		for (WeaponStats weapon : mWeapons) {
//			for (SkillDefault one : weapon.getDefaults()) {
//				one.applyNameableKeys(map);
//			}
//		}
//	}

//	@Override
//	protected string getCategoryID() {
//		return ID_CATEGORY;
//	}
//}
//}