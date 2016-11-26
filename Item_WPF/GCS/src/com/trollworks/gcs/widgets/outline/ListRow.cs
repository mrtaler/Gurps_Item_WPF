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


//using com.trollworks.gcs.character.;
//using com.trollworks.gcs.common.DataFile;
//using com.trollworks.gcs.common.LoadState;
//using com.trollworks.gcs.feature.AttributeBonus;
//using com.trollworks.gcs.feature.CostReduction;
//using com.trollworks.gcs.feature.DRBonus;
//using com.trollworks.gcs.feature.Feature;
//using com.trollworks.gcs.feature.SkillBonus;
//using com.trollworks.gcs.feature.SpellBonus;
//using com.trollworks.gcs.feature.WeaponBonus;
//using com.trollworks.gcs.prereq.PrereqList;
//using com.trollworks.gcs.skill.SkillDefault;
//using com.trollworks.gcs.skill.Technique;
//using com.trollworks.gcs.template.Template;
//using com.trollworks.toolkit.io.xml.XMLNodeType;
//using com.trollworks.toolkit.io.xml.XMLReader;
//using com.trollworks.toolkit.io.xml.XMLWriter;
//using com.trollworks.toolkit.ui.image.StdImage;
//using com.trollworks.toolkit.ui.widget.outline.Column;
//using com.trollworks.toolkit.ui.widget.outline.Row;
//using com.trollworks.toolkit.utility.VersionException;

//using java.io.IOException;
//using java.util.ArrayList;
//using java.util.Arrays;
//using java.util.Collection;
//using java.util.Collections;
//using java.util.HashMap;
//using java.util.HashSet;
//using java.util.List;
//using java.util.Set;
//using java.util.TreeSet;

//namespace com.trollworks.gcs.widgets.outline
//{
//    /** A common row super-class for the model. */
//    public abstract class ListRow : Row
//    {

//    private static const string ATTRIBUTE_OPEN = "open";        //$NON-NLS-1$
//    private static const string TAG_NOTES = "Notes";        //$NON-NLS-1$
//    private static const string TAG_CATEGORIES = "categories";  //$NON-NLS-1$
//    private static const string TAG_CATEGORY = "category";  //$NON-NLS-1$
//                                                            /** The data file the row is associated with. */
//    protected DataFile mDataFile;
//    private ArrayList<Feature> mFeatures;
//    private PrereqList mPrereqList;
//    private ArrayList<SkillDefault> mDefaults;
//    private bool mIsSatisfied;
//    private string mUnsatisfiedReason;
//    private string mNotes;
//    private TreeSet<String> mCategories;

//    /**
//	 * Extracts Any "nameable" portions of the buffer and puts their keys into the provided set.
//	 *
//	 * @param set The set to add the nameable keys to.
//	 * @param buffer The text to check for nameable portions.
//	 */
//    public static void extractNameables(HashSet<String> set, string buffer)
//    {
//        int first = buffer.indexOf('@');
//        int last = buffer.indexOf('@', first + 1);

//        while (first != -1 && last != -1)
//        {
//            set.add(buffer.substring(first + 1, last));
//            first = buffer.indexOf('@', last + 1);
//            last = buffer.indexOf('@', first + 1);
//        }
//    }

//    /**
//	 * Names Any "nameable" portions of the data and returns the resulting string.
//	 *
//	 * @param map The map of nameable keys to names.
//	 * @param data The data to change.
//	 * @return The revised string.
//	 */
//    public static string nameNameables(HashMap<String, String> map, string data)
//    {
//        int first = data.indexOf('@');
//        int last = data.indexOf('@', first + 1);
//        StringBuilder buffer = new StringBuilder();

//        while (first != -1 && last != -1)
//        {
//            string key = data.substring(first + 1, last);
//            string replacement = map.get(key);

//            if (first != 0)
//            {
//                buffer.append(data.substring(0, first));
//            }
//            if (replacement != null)
//            {
//                buffer.append(replacement);
//            }
//            else
//            {
//                buffer.append('@');
//                buffer.append(key);
//                buffer.append('@');
//            }
//            if (last + 1 != data.length())
//            {
//                data = data.substring(last + 1);
//            }
//            else
//            {
//                data = ""; //$NON-NLS-1$
//            }
//            first = data.indexOf('@');
//            last = data.indexOf('@', first + 1);
//        }
//        buffer.append(data);
//        return buffer.toString();
//    }

//    /**
//	 * Creates a new data row.
//	 *
//	 * @param dataFile The data file to associate it with.
//	 * @param isContainer Whether or not this row allows children.
//	 */
//    public ListRow(DataFile dataFile, bool isContainer)
//    {
//        super();
//        setCanHaveChildren(isContainer);
//        setOpen(isContainer);
//        mDataFile = dataFile;
//        mFeatures = new ArrayList<>();
//        mPrereqList = new PrereqList(null, true);
//        mDefaults = new ArrayList<>();
//        mIsSatisfied = true;
//        mNotes = ""; //$NON-NLS-1$
//        mCategories = new TreeSet<>();
//    }

//    /**
//	 * Creates a clone of an existing data row and associates it with the specified data file.
//	 *
//	 * @param dataFile The data file to associate it with.
//	 * @param rowToClone The data row to clone.
//	 */
//    public ListRow(DataFile dataFile, ListRow rowToClone)
//    {
//        this(dataFile, rowToClone.canHaveChildren());
//        setOpen(rowToClone.isOpen());
//        mNotes = rowToClone.mNotes;

//        for (Feature feature : rowToClone.mFeatures)
//        {
//            mFeatures.add(feature.cloneFeature());
//        }
//        mPrereqList = new PrereqList(null, rowToClone.getPrereqs());
//        mDefaults = new ArrayList<>();
//        for (SkillDefault skillDefault : rowToClone.mDefaults)
//        {
//            mDefaults.add(new SkillDefault(skillDefault));
//        }
//        mCategories = new TreeSet<>(rowToClone.mCategories);
//    }

//    /**
//	 * @param obj The other object to Compare against.
//	 * @return Whether or not this {@link ListRow} is equivalent.
//	 */
//    public bool isEquivalentTo(Object obj)
//    {
//        if (obj == this)
//        {
//            return true;
//        }
//        if (obj instanceof ListRow) {
//            ListRow row = (ListRow)obj;
//            if (mNotes.equals(row.mNotes) && mCategories.equals(row.mCategories))
//            {
//                if (mDefaults.equals(row.mDefaults))
//                {
//                    if (mPrereqList.equals(row.mPrereqList))
//                    {
//                        if (mFeatures.equals(row.mFeatures))
//                        {
//                            int childCount = getChildCount();
//                            if (childCount == row.getChildCount())
//                            {
//                                for (int i = 0; i < childCount; i++)
//                                {
//                                    if (!((ListRow)getChild(i)).isEquivalentTo(row.getChild(i)))
//                                    {
//                                        return false;
//                                    }
//                                }
//                                return true;
//                            }
//                        }
//                    }
//                }
//            }
//        }
//        return false;
//    }

//    /** @return Creates a detailed editor for this row. */
//    public abstract RowEditor<? extends ListRow> createEditor();

//    /** @return The localized Name for this row object. */
//    public abstract string getLocalizedName();

//    @Override
//    public bool addChild(Row row)
//    {
//        bool result = super.addChild(row);

//        if (result)
//        {
//            notifySingle(getListChangedID());
//        }
//        return result;
//    }

//    /** @return The ID for the "list changed" notification. */
//    public abstract string getListChangedID();

//    /** @return The XML root container tag Name for this particular row. */
//    public abstract string getXMLTagName();

//    /** @return The most recent version of the XML tag this object knows how to load. */
//    public abstract int getXMLTagVersion();

//    /** @return The type of row. */
//    public abstract string getRowType();

//    /** @return Whether or not this row's prerequisites are currently satisfied. */
//    public bool isSatisfied()
//    {
//        return mIsSatisfied;
//    }

//    /** @param satisfied Whether or not this row's prerequisites are currently satisfied. */
//    public void setSatisfied(bool satisfied)
//    {
//        mIsSatisfied = satisfied;
//        if (satisfied)
//        {
//            mUnsatisfiedReason = null;
//        }
//    }

//    /** @return The reason {@link #isSatisfied()} is returning <code>false</code>. */
//    public string getReasonForUnsatisfied()
//    {
//        return mUnsatisfiedReason;
//    }

//    /** @param reason The reason {@link #isSatisfied()} is returning <code>false</code>. */
//    public void setReasonForUnsatisfied(String reason)
//    {
//        mUnsatisfiedReason = reason;
//    }

//    /**
//	 * Loads this row's contents.
//	 *
//	 * @param reader The XML reader to load from.
//	 * @param state The {@link LoadState} to use.
//	 */
//    public const void load(XMLReader reader, LoadState state) throws IOException {

//        string marker = reader.getMarker();
//    state.mDataItemVersion = reader.getAttributeAsInteger(LoadState.ATTRIBUTE_VERSION, 0);
//		if (state.mDataItemVersion > getXMLTagVersion()) {
//			throw VersionException.createTooNew();
//		}

//        prepareForLoad(state);

//        loadAttributes(reader, state);
//		do {
//			if (reader.next() == XMLNodeType.START_TAG) {
//				String Name = reader.getName();
//				if (AttributeBonus.TAG_ROOT.equals(Name)) {
//					mFeatures.add(new AttributeBonus(reader));
//				} else if (DRBonus.TAG_ROOT.equals(Name)) {
//					mFeatures.add(new DRBonus(reader));
//				} else if (SkillBonus.TAG_ROOT.equals(Name)) {
//					mFeatures.add(new SkillBonus(reader));
//				} else if (SpellBonus.TAG_ROOT.equals(Name)) {
//					mFeatures.add(new SpellBonus(reader));
//				} else if (WeaponBonus.TAG_ROOT.equals(Name)) {
//					mFeatures.add(new WeaponBonus(reader));
//				} else if (CostReduction.TAG_ROOT.equals(Name)) {
//					mFeatures.add(new CostReduction(reader));
//				} else if (PrereqList.TAG_ROOT.equals(Name)) {
//					mPrereqList = new PrereqList(null, reader);
//				} else if (!(this instanceof Technique) && SkillDefault.TAG_ROOT.equals(Name)) {
//    mDefaults.add(new SkillDefault(reader));
//} else if (TAG_NOTES.equals(Name)) {
//    mNotes = reader.readText();
//} else if (TAG_CATEGORIES.equals(Name)) {
//    string subMarker = reader.getMarker();
//    do
//    {
//        if (reader.next() == XMLNodeType.START_TAG)
//        {
//            Name = reader.getName();
//            if (TAG_CATEGORY.equals(Name))
//            {
//                mCategories.add(reader.readText());
//            }
//            else
//            {
//                reader.skipTag(Name);
//            }
//        }
//    } while (reader.withinMarker(subMarker));
//} else {
//    loadSubElement(reader, state);
//}
//}
//		} while (reader.withinMarker(marker));

//        finishedLoading(state);
//	}

//	/**
//	 * Called to prepare the row for loading.
//	 *
//	 * @param state The {@link LoadState} to use.
//	 */
//	protected void prepareForLoad(LoadState state)
//{
//    mNotes = ""; //$NON-NLS-1$
//    mFeatures.clear();
//    mDefaults.clear();
//    mPrereqList = new PrereqList(null, true);
//    mCategories.clear();
//}

///**
// * Loads this row's custom attributes from the specified element.
// *
// * @param reader The XML reader to load from.
// * @param state The {@link LoadState} to use.
// */
//protected void loadAttributes(XMLReader reader, LoadState state)
//{
//    if (canHaveChildren())
//    {
//        setOpen(reader.isAttributeSet(ATTRIBUTE_OPEN));
//    }
//}

//    /**
//	 * Loads this row's custom data from the specified element.
//	 *
//	 * @param reader The XML reader to load from.
//	 * @param state The {@link LoadState} to use.
//	 */
//    @SuppressWarnings("static-method")

//    protected void loadSubElement(XMLReader reader, LoadState state) throws IOException
//{
//    reader.skipTag(reader.getName());
//}

///**
// * Called when loading of this row is complete. Does nothing by default.
// *
// * @param state The {@link LoadState} to use.
// */
//protected void finishedLoading(LoadState state)
//{
//    // Nothing to do.
//}

///**
// * Saves the row.
// *
// * @param out The XML writer to use.
// * @param forUndo Whether this is being called to save undo state.
// */
//public void save(XMLWriter out, bool forUndo)
//{
//		out.startTag(getXMLTagName());
//		out.writeAttribute(LoadState.ATTRIBUTE_VERSION, getXMLTagVersion());
//    if (canHaveChildren())
//    {
//			out.writeAttribute(ATTRIBUTE_OPEN, isOpen());
//    }
//    saveAttributes(out, forUndo);
//		out.finishTagEOL();
//    saveSelf(out, forUndo);
//		out.simpleTagNotEmpty(TAG_NOTES, mNotes);

//    if (!mCategories.isEmpty())
//    {
//			out.startSimpleTagEOL(TAG_CATEGORIES);
//        for (String category : mCategories)
//        {
//				out.simpleTag(TAG_CATEGORY, category);
//        }
//			out.endTagEOL(TAG_CATEGORIES, true);
//    }

//    if (!mFeatures.isEmpty())
//    {
//        for (Feature feature : mFeatures)
//        {
//            feature.save(out);
//        }
//    }

//    mPrereqList.save(out);

//    if (!(this instanceof Technique) && !mDefaults.isEmpty()) {
//        for (SkillDefault skillDefault : mDefaults)
//        {
//            skillDefault.save(out);
//        }
//    }

//    if (!forUndo && canHaveChildren())
//    {
//        for (Row row : getChildren())
//        {
//            ((ListRow)row).save(out, false);
//        }
//    }
//		out.endTagEOL(getXMLTagName(), true);
//}

///**
// * Saves the row.
// *
// * @param out The XML writer to use.
// * @param forUndo Whether this is being called to save undo state.
// */
//protected abstract void saveSelf(XMLWriter out, bool forUndo);

///**
// * Saves extra attributes of the row, if Any.
// *
// * @param out The XML writer to use.
// * @param forUndo Whether this is being called to save undo state.
// */
//protected void saveAttributes(XMLWriter out, bool forUndo)
//{
//    // Does nothing by default.
//}

///**
// * Starts the notification process. Should be called before calling
// * {@link #notify(String,Object)}.
// */
//protected const void startNotify() {
//		if (mDataFile != null) {

//        mDataFile.startNotify();
//		}
//	}

//	/**
//	 * Sends a notification to all interested consumers.
//	 *
//	 * @param type The notification type.
//	 * @param data Extra data specific to this notification.
//	 */
//	public void notify(String type, Object data)
//{
//    if (mDataFile != null)
//    {
//        mDataFile.notify(type, this);
//    }
//}

///**
// * Sends a notification to all interested consumers.
// *
// * @param type The notification type.
// */
//public const void notifySingle(String type) {
//		if (mDataFile != null) {
//			mDataFile.notifySingle(type, this);
//}
//	}

//	/**
//	 * Ends the notification process. Must be called after calling {@link #notify(String,Object)}.
//	 */
//	public void endNotify()
//{
//    if (mDataFile != null)
//    {
//        mDataFile.endNotify();
//    }
//}

///** Called to update Any information that relies on children. */
//public void update()
//{
//    // Do nothing by default.
//}

///** @return The owning data file. */
//public DataFile getDataFile()
//{
//    return mDataFile;
//}

///** @return The owning template. */
//public Template getTemplate()
//{
//    return mDataFile instanceof Template ? (Template)mDataFile : null;
//}

///** @return The owning character. */
//public GURPSCharacter getCharacter()
//{
//    return mDataFile instanceof GURPSCharacter ? (GURPSCharacter)mDataFile : null;
//}

///** @return The features provided by this data row. */
//public List<Feature> getFeatures()
//{
//    return Collections.unmodifiableList(mFeatures);
//}

///**
// * @param features The new features of this data row.
// * @return Whether there was a change or not.
// */
//public bool setFeatures(List<Feature> features)
//{
//    if (!mFeatures.equals(features))
//    {
//        mFeatures = new ArrayList<>(features);
//        return true;
//    }
//    return false;
//}

///** @return The categories this data row belongs to. */
//public Set<String> getCategories()
//{
//    return Collections.unmodifiableSet(mCategories);
//}

///** @return The categories this data row belongs to. */
//public string getCategoriesAsString()
//{
//    StringBuilder buffer = new StringBuilder();
//    for (String category : mCategories)
//    {
//        if (buffer.length() > 0)
//        {
//            buffer.append(", "); //$NON-NLS-1$
//        }
//        buffer.append(category);
//    }
//    return buffer.toString();
//}

///**
// * @param categories The categories this data row belongs to.
// * @return Whether there was a change or not.
// */
//public bool setCategories(Collection<String> categories)
//{
//    TreeSet<String> old = mCategories;
//    mCategories = new TreeSet<>();
//    for (String category : categories)
//    {
//        category = category.trim();
//        if (category.length() > 0)
//        {
//            mCategories.add(category);
//        }
//    }
//    if (!old.equals(mCategories))
//    {
//        string id = getCategoryID();
//        if (id != null)
//        {
//            notifySingle(id);
//        }
//        return true;
//    }
//    return false;
//}

///**
// * @param categories The categories this data row belongs to. Use commas to separate categories.
// * @return Whether there was a change or not.
// */
//public const bool setCategories(String categories) {
//		return setCategories(Arrays.asList(categories.split(","))); //$NON-NLS-1$
//	}

//	/**
//	 * @param category The category to add.
//	 * @return Whether there was a change or not.
//	 */
//	public bool addCategory(String category)
//{
//    category = category.trim();
//    if (category.length() > 0)
//    {
//        if (mCategories.add(category))
//        {
//            string id = getCategoryID();
//            if (id != null)
//            {
//                notifySingle(id);
//            }
//            return true;
//        }
//    }
//    return false;
//}

//    /** @return The notification ID to use with categories. */
//    @SuppressWarnings("static-method")

//    protected string getCategoryID()
//{
//    return null;
//}

///** @return The prerequisites needed by this data row. */
//public PrereqList getPrereqs()
//{
//    return mPrereqList;
//}

///**
// * @param prereqs The new prerequisites needed by this data row.
// * @return Whether there was a change or not.
// */
//public bool setPrereqs(PrereqList prereqs)
//{
//    if (!mPrereqList.equals(prereqs))
//    {
//        mPrereqList = (PrereqList)prereqs.clone(null);
//        return true;
//    }
//    return false;
//}

///** @return The defaults for this row. */
//public List<SkillDefault> getDefaults()
//{
//    return Collections.unmodifiableList(mDefaults);
//}

///**
// * @param defaults The new defaults for this row.
// * @return Whether there was a change or not.
// */
//public bool setDefaults(List<SkillDefault> defaults)
//{
//    if (!mDefaults.equals(defaults))
//    {
//        mDefaults = new ArrayList<>(defaults);
//        return true;
//    }
//    return false;
//}

//@Override
//    public const void setData(Column column, Object data) {
//        // Not used.
//    }

//    /**
//	 * @param text The text to search for.
//	 * @param lowerCaseOnly The passed in text is all lowercase.
//	 * @return <code>true</code> if this row contains the text.
//	 */
//    @SuppressWarnings("static-method")

//    public bool contains(String text, bool lowerCaseOnly)
//{
//    return false;
//}

///**
// * @param large Whether to return the small (16x16) or large (32x32) image.
// * @return An image representative of this row.
// */
//public abstract StdImage getIcon(bool large);

///** @param set The nameable keys. */
//public void fillWithNameableKeys(HashSet<String> set)
//{
//    extractNameables(set, mNotes);
//    for (SkillDefault def : mDefaults)
//    {
//        def.fillWithNameableKeys(set);
//    }
//    for (Feature feature : mFeatures)
//    {
//        feature.fillWithNameableKeys(set);
//    }
//    mPrereqList.fillWithNameableKeys(set);
//}

///** @param map The map of nameable keys to names to apply. */
//public void applyNameableKeys(HashMap<String, String> map)
//{
//    mNotes = nameNameables(map, mNotes);
//    for (SkillDefault def : mDefaults)
//    {
//        def.applyNameableKeys(map);
//    }
//    for (Feature feature : mFeatures)
//    {
//        feature.applyNameableKeys(map);
//    }
//    mPrereqList.applyNameableKeys(map);
//}

///** @return The Notes. */
//public string getNotes()
//{
//    return mNotes;
//}

//    /** @return The Notes due to modifiers. */
//    @SuppressWarnings("static-method")

//    public string getModifierNotes()
//{
//    return ""; //$NON-NLS-1$
//}

///**
// * @param Notes The Notes to set.
// * @return Whether it was changed.
// */
//public bool setNotes(String Notes)
//{
//    if (!mNotes.equals(Notes))
//    {
//        mNotes = Notes;
//        return true;
//    }
//    return false;
//}
//}
