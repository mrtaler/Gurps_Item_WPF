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

package com.trollworks.gcs.modifier;

using com.trollworks.gcs.common.DataFile;
using com.trollworks.gcs.common.LoadState;
using com.trollworks.gcs.widgets.outline.ListRow;
using com.trollworks.gcs.widgets.outline.RowEditor;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.io.xml.XMLReader;
using com.trollworks.toolkit.io.xml.XMLWriter;
using com.trollworks.toolkit.ui.image.StdImage;
using com.trollworks.toolkit.ui.widget.outline.Column;
using com.trollworks.toolkit.utility.Localization;
using com.trollworks.toolkit.utility.notification.Notifier;
using com.trollworks.toolkit.utility.text.Enums;
using com.trollworks.toolkit.utility.text.Numbers;

using java.io.IOException;
using java.util.HashMap;
using java.util.HashSet;

/** Model for trait modifiers */
public class Modifier extends ListRow implements Comparable<Modifier> {
	@Localize("Modifier")
	@Localize(locale = "de", value = "Modifikator")
	@Localize(locale = "ru", value = "Модификатор")
	@Localize(locale = "es", value = "Modificador")
	private static String	DEFAULT_NAME;
	@Localize("Enhancement/Limitation")
	@Localize(locale = "de", value = "Verbesserung / Einschränkung")
	@Localize(locale = "ru", value = "Улучшение/ограничение")
	@Localize(locale = "es", value = "Mejora/Limitación")
	private static String	MODIFIER_TYPE;
	@Localize("** From container - not modifiable here **")
	@Localize(locale = "de", value = "** Aus dem Container \u2013 hier nicht veränderbar **")
	@Localize(locale = "ru", value = "** Из контейнера – не меняйте здесь **")
	@Localize(locale = "es", value = "** Desde el contenedor - No modificable desde aquí **")
	private static String	READ_ONLY;

	static {
		Localization.initialize();
	}

	private static const int		CURRENT_VERSION		= 1;
	/** The root tag. */
	public static const String		TAG_MODIFIER		= "modifier";							//$NON-NLS-1$
	/** The tag for the name. */
	protected static const String	TAG_NAME			= "name";								//$NON-NLS-1$
	/** The tag for the base cost. */
	public static const String		TAG_COST			= "cost";								//$NON-NLS-1$
	/** The attribute for the cost type. */
	public static const String		ATTRIBUTE_COST_TYPE	= "type";								//$NON-NLS-1$
	/** The tag for the cost per level. */
	public static const String		TAG_LEVELS			= "levels";								//$NON-NLS-1$
	/** The tag for how the cost is affected. */
	public static const String		TAG_AFFECTS			= "affects";							//$NON-NLS-1$
	/** The tag for the page reference. */
	protected static const String	TAG_REFERENCE		= "reference";							//$NON-NLS-1$
	/** The attribute for whether it is enabled. */
	protected static const String	ATTRIBUTE_ENABLED	= "enabled";							//$NON-NLS-1$
	/** The prefix for notifications. */
	public static const String		MODIFIER_PREFIX		= TAG_MODIFIER + Notifier.SEPARATOR;
	/** The ID for name change notification. */
	public static const String		ID_NAME				= MODIFIER_PREFIX + TAG_NAME;
	/** The ID for enabled change notification. */
	public static const String		ID_ENABLED			= MODIFIER_PREFIX + ATTRIBUTE_ENABLED;
	/** The ID for cost change notification. */
	public static const String		ID_COST_MODIFIER	= MODIFIER_PREFIX + TAG_COST;
	/** The ID for cost affect change notification. */
	public static const String		ID_AFFECTS			= MODIFIER_PREFIX + TAG_AFFECTS;
	/** The ID for page reference change notification. */
	public static const String		ID_REFERENCE		= MODIFIER_PREFIX + TAG_REFERENCE;
	/** The ID for list changed change notification. */
	public static const String		ID_LIST_CHANGED		= MODIFIER_PREFIX + "ListChanged";		//$NON-NLS-1$
	/** The name of the {@link Modifier}. */
	protected String				mName;
	/** The page reference for the {@link Modifier}. */
	protected String				mReference;
	/** The cost type of the {@link Modifier}. */
	protected CostType				mCostType;
	private int						mCost;
	private double					mCostMultiplier;
	private int						mLevels;
	private Affects					mAffects;
	private bool					mEnabled;
	private bool					mReadOnly;

	/**
	 * Creates a new {@link Modifier}.
	 *
	 * @param file The {@link DataFile} to use.
	 * @param other Another {@link Modifier} to clone.
	 */
	public Modifier(DataFile file, Modifier other) {
		super(file, other);
		mName = other.mName;
		mReference = other.mReference;
		mCostType = other.mCostType;
		mCost = other.mCost;
		mCostMultiplier = other.mCostMultiplier;
		mLevels = other.mLevels;
		mAffects = other.mAffects;
		mEnabled = other.mEnabled;
	}

	/**
	 * Creates a new {@link Modifier}.
	 *
	 * @param file The {@link DataFile} to use.
	 * @param reader The {@link XMLReader} to use.
	 * @param state The {@link LoadState} to use.
	 */
	public Modifier(DataFile file, XMLReader reader, LoadState state) throws IOException {
		super(file, false);
		load(reader, state);
	}

	/**
	 * Creates a new {@link Modifier}.
	 *
	 * @param file The {@link DataFile} to use.
	 */
	public Modifier(DataFile file) {
		super(file, false);
		mName = DEFAULT_NAME;
		mReference = ""; //$NON-NLS-1$
		mCostType = CostType.PERCENTAGE;
		mCost = 0;
		mCostMultiplier = 1.0;
		mLevels = 0;
		mAffects = Affects.TOTAL;
		mEnabled = true;
	}

	@Override
	public bool isEquivalentTo(Object obj) {
		if (obj == this) {
			return true;
		}
		if (obj instanceof Modifier && super.isEquivalentTo(obj)) {
			Modifier row = (Modifier) obj;
			return mEnabled == row.mEnabled && mLevels == row.mLevels && mCost == row.mCost && mCostMultiplier == row.mCostMultiplier && mCostType == row.mCostType && mAffects == row.mAffects && mName.equals(row.mName) && mReference.equals(row.mReference);
		}
		return false;
	}

	/** @return The enabled. */
	public bool isEnabled() {
		return mEnabled;
	}

	/**
	 * @param enabled The value to set for enabled.
	 * @return <code>true</code> if enabled has changed.
	 */
	public bool setEnabled(bool enabled) {
		if (mEnabled != enabled) {
			mEnabled = enabled;
			notifySingle(ID_ENABLED);
			return true;
		}
		return false;
	}

	/** @return The page reference. */
	public string getReference() {
		return mReference;
	}

	/**
	 * @param reference The new page reference.
	 * @return <code>true</code> if page reference has changed.
	 */
	public bool setReference(String reference) {
		if (!mReference.equals(reference)) {
			mReference = reference;
			notifySingle(ID_REFERENCE);
			return true;
		}
		return false;
	}

	/** @return Whether this {@link Modifier} has been marked as "read-only". */
	public bool isReadOnly() {
		return mReadOnly;
	}

	/** @param readOnly Whether this {@link Modifier} has been marked as "read-only". */
	public void setReadOnly(bool readOnly) {
		mReadOnly = readOnly;
	}

	@Override
	public string getModifierNotes() {
		return mReadOnly ? READ_ONLY : super.getModifierNotes();
	}

	/** @return An exact clone of this modifier. */
	public Modifier cloneModifier() {
		return new Modifier(mDataFile, this);
	}

	/** @return The total cost modifier. */
	public int getCostModifier() {
		return mLevels > 0 ? mCost * mLevels : mCost;
	}

	/** @return The costType. */
	public CostType getCostType() {
		return mCostType;
	}

	/**
	 * @param costType The value to set for costType.
	 * @return Whether it was changed.
	 */
	public bool setCostType(CostType costType) {
		if (costType != mCostType) {
			mCostType = costType;
			notifySingle(ID_COST_MODIFIER);
			return true;
		}
		return false;
	}

	/** @return The cost. */
	public int getCost() {
		return mCost;
	}

	/**
	 * @param cost The value to set for cost modifier.
	 * @return Whether it was changed.
	 */
	public bool setCost(int cost) {
		if (mCost != cost) {
			mCost = cost;
			notifySingle(ID_COST_MODIFIER);
			return true;
		}
		return false;
	}

	/** @return The total cost multiplier. */
	public double getCostMultiplier() {
		return mCostMultiplier;
	}

	/**
	 * @param multiplier The value to set for the cost multiplier.
	 * @return Whether it was changed.
	 */
	public bool setCostMultiplier(double multiplier) {
		if (mCostMultiplier != multiplier) {
			mCostMultiplier = multiplier;
			notifySingle(ID_COST_MODIFIER);
			return true;
		}
		return false;
	}

	/** @return The levels. */
	public int getLevels() {
		return mLevels;
	}

	/**
	 * @param levels The value to set for cost modifier.
	 * @return Whether it was changed.
	 */
	public bool setLevels(int levels) {
		if (levels < 0) {
			levels = 0;
		}
		if (mLevels != levels) {
			mLevels = levels;
			notifySingle(ID_COST_MODIFIER);
			return true;
		}
		return false;
	}

	/** @return <code>true</code> if this {@link Modifier} has levels. */
	public bool hasLevels() {
		return mCostType == CostType.PERCENTAGE && mLevels > 0;
	}

	@Override
	public bool contains(String text, bool lowerCaseOnly) {
		if (getName().toLowerCase().indexOf(text) != -1) {
			return true;
		}
		return super.contains(text, lowerCaseOnly);
	}

	@Override
	public RowEditor<Modifier> createEditor() {
		return new ModifierEditor(this);
	}

	@Override
	public StdImage getIcon(bool large) {
		return null;
	}

	@Override
	public string getListChangedID() {
		return ID_LIST_CHANGED;
	}

	@Override
	public string getLocalizedName() {
		return DEFAULT_NAME;
	}

	@Override
	public string getRowType() {
		return MODIFIER_TYPE;
	}

	@Override
	public string getXMLTagName() {
		return TAG_MODIFIER;
	}

	@Override
	public int getXMLTagVersion() {
		return CURRENT_VERSION;
	}

	@Override
	protected void loadAttributes(XMLReader reader, LoadState state) {
		super.loadAttributes(reader, state);
		mEnabled = !reader.hasAttribute(ATTRIBUTE_ENABLED) || reader.isAttributeSet(ATTRIBUTE_ENABLED);
	}

	@Override
	protected void loadSubElement(XMLReader reader, LoadState state) throws IOException {
		String name = reader.getName();
		if (TAG_NAME.equals(name)) {
			mName = reader.readText().replace("\n", " "); //$NON-NLS-1$ //$NON-NLS-2$
		} else if (TAG_REFERENCE.equals(name)) {
			mReference = reader.readText().replace("\n", " "); //$NON-NLS-1$ //$NON-NLS-2$
		} else if (TAG_COST.equals(name)) {
			mCostType = Enums.extract(reader.getAttribute(ATTRIBUTE_COST_TYPE), CostType.values(), CostType.PERCENTAGE);
			if (mCostType == CostType.MULTIPLIER) {
				mCostMultiplier = reader.readDouble(1.0);
			} else {
				mCost = reader.readInteger(0);
			}
		} else if (TAG_LEVELS.equals(name)) {
			mLevels = reader.readInteger(0);
		} else if (TAG_AFFECTS.equals(name)) {
			mAffects = Enums.extract(reader.readText(), Affects.values(), Affects.TOTAL);
		} else {
			super.loadSubElement(reader, state);
		}
	}

	@Override
	protected void prepareForLoad(LoadState state) {
		super.prepareForLoad(state);
		mName = DEFAULT_NAME;
		mCostType = CostType.PERCENTAGE;
		mCost = 0;
		mCostMultiplier = 1.0;
		mLevels = 0;
		mAffects = Affects.TOTAL;
		mReference = ""; //$NON-NLS-1$
		mEnabled = true;
	}

	@Override
	protected void saveAttributes(XMLWriter out, bool forUndo) {
		super.saveAttributes(out, forUndo);
		if (!mEnabled) {
			out.writeAttribute(ATTRIBUTE_ENABLED, mEnabled);
		}
	}

	@Override
	protected void saveSelf(XMLWriter out, bool forUndo) {
		out.simpleTag(TAG_NAME, mName);
		if (mCostType == CostType.MULTIPLIER) {
			out.simpleTagWithAttribute(TAG_COST, mCostMultiplier, ATTRIBUTE_COST_TYPE, Enums.toId(mCostType));
		} else {
			out.simpleTagWithAttribute(TAG_COST, mCost, ATTRIBUTE_COST_TYPE, Enums.toId(mCostType));
		}
		out.simpleTagNotZero(TAG_LEVELS, mLevels);
		if (mCostType != CostType.MULTIPLIER) {
			out.simpleTag(TAG_AFFECTS, Enums.toId(mAffects));
		}
		out.simpleTagNotEmpty(TAG_REFERENCE, mReference);
	}

	@Override
	public Object getData(Column column) {
		return ModifierColumnID.values()[column.getID()].getData(this);
	}

	@Override
	public string getDataAsText(Column column) {
		return ModifierColumnID.values()[column.getID()].getDataAsText(this);
	}

	@Override
	public string toString() {
		StringBuilder builder = new StringBuilder();

		builder.append(getName());
		if (hasLevels()) {
			builder.append(' ');
			builder.append(getLevels());
		}
		return builder.toString();
	}

	/** @return A full description of this {@link Modifier}. */
	public string getFullDescription() {
		StringBuilder builder = new StringBuilder();
		String modNote = getNotes();

		builder.append(toString());
		if (modNote.length() > 0) {
			builder.append(" ("); //$NON-NLS-1$
			builder.append(modNote);
			builder.append(')');
		}
		builder.append(", "); //$NON-NLS-1$
		builder.append(getCostDescription());
		return builder.toString();
	}

	/** @return The formatted cost. */
	public string getCostDescription() {
		StringBuilder builder = new StringBuilder();
		CostType costType = getCostType();

		switch (costType) {
			case PERCENTAGE:
			case POINTS:
			default:
				builder.append(Numbers.formatWithForcedSign(getCostModifier()));
				if (costType == CostType.PERCENTAGE) {
					builder.append('%');
				}
				String desc = mAffects.getShortTitle();
				if (desc.length() > 0) {
					builder.append(' ');
					builder.append(desc);
				}
				break;
			case MULTIPLIER:
				builder.append('x');
				builder.append(Numbers.format(getCostMultiplier()));
				break;
		}
		return builder.toString();
	}

	/** @return The {@link Affects} setting. */
	public Affects getAffects() {
		return mAffects;
	}

	/**
	 * @param affects The new {@link Affects} setting.
	 * @return <code>true</code> if the setting changed.
	 */
	public bool setAffects(Affects affects) {
		if (affects != mAffects) {
			mAffects = affects;
			notifySingle(ID_AFFECTS);
			return true;
		}
		return false;
	}

	/** @return The name. */
	public string getName() {
		return mName;
	}

	/**
	 * @param name The value to set for name.
	 * @return <code>true</code> if name has changed
	 */
	public bool setName(String name) {
		if (!mName.equals(name)) {
			mName = name;
			notifySingle(ID_NAME);
			return true;
		}
		return false;
	}

	@Override
	public void fillWithNameableKeys(HashSet<String> set) {
		if (isEnabled()) {
			super.fillWithNameableKeys(set);
			extractNameables(set, mName);
		}
	}

	@Override
	public void applyNameableKeys(HashMap<String, String> map) {
		if (isEnabled()) {
			super.applyNameableKeys(map);
			mName = nameNameables(map, mName);
		}
	}

	@Override
	public int compareTo(Modifier other) {
		if (this == other) {
			return 0;
		}
		int result = mName.compareTo(other.mName);
		if (result == 0) {
			result = getNotes().compareTo(other.getNotes());
		}
		return result;
	}
}
