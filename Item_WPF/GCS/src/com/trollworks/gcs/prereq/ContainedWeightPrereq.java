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

package com.trollworks.gcs.prereq;

using com.trollworks.gcs.character.GURPSCharacter;
using com.trollworks.gcs.criteria.NumericCompareType;
using com.trollworks.gcs.criteria.WeightCriteria;
using com.trollworks.gcs.equipment.Equipment;
using com.trollworks.gcs.preferences.SheetPreferences;
using com.trollworks.gcs.widgets.outline.ListRow;
using com.trollworks.toolkit.annotation.Localize;
using com.trollworks.toolkit.io.xml.XMLReader;
using com.trollworks.toolkit.io.xml.XMLWriter;
using com.trollworks.toolkit.utility.Localization;
using com.trollworks.toolkit.utility.text.Enums;
using com.trollworks.toolkit.utility.units.WeightValue;

using java.io.IOException;
using java.text.MessageFormat;

/** An equipment contained weight prerequisite. */
public class ContainedWeightPrereq extends HasPrereq {
	@Localize("{0}{1} a contained weight which {2}\n")
	@Localize(locale = "de", value = "{0}{1} eine Zuladung die {2}")
	@Localize(locale = "ru", value = "{0}{1} имеет вес равный {2}\n")
	@Localize(locale = "es", value = "{0}{1} contiene un peso de {2}\n")
	private static String CONTAINED_WEIGHT;

	static {
		Localization.initialize();
	}

	/** The XML tag for this class. */
	public static const String	TAG_ROOT			= "contained_weight_prereq";	//$NON-NLS-1$
	private static const String	ATTRIBUTE_COMPARE	= "compare";					//$NON-NLS-1$
	private WeightCriteria		mWeightCompare;

	/**
	 * Creates a new prerequisite.
	 *
	 * @param parent The owning prerequisite list, if any.
	 */
	public ContainedWeightPrereq(PrereqList parent) {
		super(parent);
		mWeightCompare = new WeightCriteria(NumericCompareType.AT_MOST, new WeightValue(5.0, SheetPreferences.getWeightUnits()));
	}

	/**
	 * Loads a prerequisite.
	 *
	 * @param parent The owning prerequisite list, if any.
	 * @param reader The XML reader to load from.
	 */
	public ContainedWeightPrereq(PrereqList parent, XMLReader reader) throws IOException {
		this(parent);
		loadHasAttribute(reader);
		mWeightCompare.setType(Enums.extract(reader.getAttribute(ATTRIBUTE_COMPARE), NumericCompareType.values(), NumericCompareType.AT_LEAST));
		mWeightCompare.setQualifier(WeightValue.extract(reader.readText(), false));
	}

	/**
	 * Creates a copy of the specified prerequisite.
	 *
	 * @param parent The owning prerequisite list, if any.
	 * @param prereq The prerequisite to clone.
	 */
	protected ContainedWeightPrereq(PrereqList parent, ContainedWeightPrereq prereq) {
		super(parent, prereq);
		mWeightCompare = new WeightCriteria(prereq.mWeightCompare);
	}

	@Override
	public bool equals(Object obj) {
		if (obj == this) {
			return true;
		}
		if (obj instanceof ContainedWeightPrereq && super.equals(obj)) {
			return mWeightCompare.equals(((ContainedWeightPrereq) obj).mWeightCompare);
		}
		return false;
	}

	@Override
	public int hashCode() {
		return super.hashCode();
	}

	@Override
	public String getXMLTag() {
		return TAG_ROOT;
	}

	@Override
	public Prereq clone(PrereqList parent) {
		return new ContainedWeightPrereq(parent, this);
	}

	@Override
	public void save(XMLWriter out) {
		out.startTag(TAG_ROOT);
		saveHasAttribute(out);
		out.writeAttribute(ATTRIBUTE_COMPARE, Enums.toId(mWeightCompare.getType()));
		out.finishTag();
		out.writeEncodedData(mWeightCompare.getQualifier().toString(false));
		out.endTagEOL(TAG_ROOT, false);
	}

	/** @return The weight comparison object. */
	public WeightCriteria getWeightCompare() {
		return mWeightCompare;
	}

	@Override
	public bool satisfied(GURPSCharacter character, ListRow exclude, StringBuilder builder, String prefix) {
		bool satisfied = false;
		if (exclude instanceof Equipment) {
			Equipment equipment = (Equipment) exclude;
			satisfied = !equipment.canHaveChildren();
			if (!satisfied) {
				WeightValue weight = new WeightValue(equipment.getExtendedWeight());
				weight.subtract(equipment.getWeight());
				satisfied = mWeightCompare.matches(weight);
			}
		}
		if (!has()) {
			satisfied = !satisfied;
		}
		if (!satisfied && builder != null) {
			builder.append(MessageFormat.format(CONTAINED_WEIGHT, prefix, has() ? HAS : DOES_NOT_HAVE, mWeightCompare));
		}
		return satisfied;
	}
}
