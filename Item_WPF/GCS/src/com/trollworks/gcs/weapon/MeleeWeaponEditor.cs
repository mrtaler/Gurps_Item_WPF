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



//using com.trollworks.gcs.advantage;
//using com.trollworks.gcs.equipment;
//using com.trollworks.gcs.skill;
//using com.trollworks.gcs.spell;
//using com.trollworks.gcs.widgets.outline;
////using com.trollworks.toolkit.annotation;
////using com.trollworks.toolkit.ui.widget.EditorField;
////using com.trollworks.toolkit.utility.Localization;

////using java.awt.Container;
////using java.util.List;

///** An editor for melee weapon statistics. */

//namespace com.trollworks.gcs.weapon
//{
//    public class MeleeWeaponEditor : WeaponEditor
//    {
//        @Localize("Melee Weapon")
//	@Localize(locale = "de", value = "Nahkampfwaffe")
//	@Localize(locale = "ru", value = "Контактное оружие")
//	@Localize(locale = "es", value = "Arma de cuerpo a cuerpo")

//    private static string MELEE_WEAPON;

//    @Localize("Reach")

//    @Localize(locale = "de", value = "Reichweite")

//    @Localize(locale = "ru", value = "Досягаемость")

//    @Localize(locale = "es", value = "Alcance")

//    private static string REACH;

//    @Localize("Parry Modifier")

//    @Localize(locale = "de", value = "Paradewert")

//    @Localize(locale = "ru", value = "Модификатор парирования")

//    @Localize(locale = "es", value = "Modificador de parada")

//    private static string PARRY;

//    @Localize("Block Modifier")

//    @Localize(locale = "de", value = "Abblockwert")

//    @Localize(locale = "ru", value = "Модификатор блока")

//    @Localize(locale = "es", value = "Modificador de bloqueo")

//    private static string BLOCK;

//    static {
//		Localization.initialize();
//	}

//private EditorField mReach;
//private EditorField mParry;
//private EditorField mBlock;

///**
// * Creates a new melee weapon editor for the specified row.
// *
// * @param row The row to edit melee weapon statistics for.
// * @return The editor, or <code>null</code> if the row is not appropriate.
// */
//static public MeleeWeaponEditor createEditor(ListRow row)
//{
//    if (row instanceof Equipment) {
//        return new MeleeWeaponEditor(row, ((Equipment)row).getWeapons());
//    } else if (row instanceof Advantage) {
//        return new MeleeWeaponEditor(row, ((Advantage)row).getWeapons());
//    } else if (row instanceof Spell) {
//        return new MeleeWeaponEditor(row, ((Spell)row).getWeapons());
//    } else if (row instanceof Skill) {
//        return new MeleeWeaponEditor(row, ((Skill)row).getWeapons());
//    }
//    return null;
//}

///**
// * Creates a new {@link MeleeWeaponStats} editor.
// *
// * @param owner The owning row.
// * @param weapons The weapons to modify.
// */
//public MeleeWeaponEditor(ListRow owner, List<WeaponStats> weapons)
//{
//    super(owner, weapons, MeleeWeaponStats.class);
//	}

//	@Override
//    protected void createFields(Container parent)
//{
//    mParry = createTextField(parent, PARRY, EMPTY);
//    mReach = createTextField(parent, REACH, EMPTY);
//    mBlock = createTextField(parent, BLOCK, EMPTY);
//}

//@Override
//    protected void updateFromField(Object source)
//{
//    if (mReach == source)
//    {
//        changeReach();
//    }
//    else if (mParry == source)
//    {
//        changeParry();
//    }
//    else if (mBlock == source)
//    {
//        changeBlock();
//    }
//}

//private void changeReach()
//{
//    ((MeleeWeaponStats)getWeapon()).setReach((String)mReach.getValue());
//    adjustOutlineToContent();
//}

//private void changeParry()
//{
//    ((MeleeWeaponStats)getWeapon()).setParry((String)mParry.getValue());
//    adjustOutlineToContent();
//}

//private void changeBlock()
//{
//    ((MeleeWeaponStats)getWeapon()).setBlock((String)mBlock.getValue());
//    adjustOutlineToContent();
//}

//@Override
//    protected WeaponStats createWeaponStats()
//{
//    return new MeleeWeaponStats(getOwner());
//}

//@Override
//    protected void updateFields()
//{
//    MeleeWeaponStats weapon = (MeleeWeaponStats)getWeapon();
//    mReach.setValue(weapon.getReach());
//    mParry.setValue(weapon.getParry());
//    mBlock.setValue(weapon.getBlock());
//    super.updateFields();
//}

//@Override
//    protected void enableFields(bool enabled)
//{
//    mReach.setEnabled(enabled);
//    mParry.setEnabled(enabled);
//    mBlock.setEnabled(enabled);
//    super.enableFields(enabled);
//}

//@Override
//    protected void blankFields()
//{
//    mReach.setValue(EMPTY);
//    mParry.setValue(EMPTY);
//    mBlock.setValue(EMPTY);
//    super.blankFields();
//}

//@Override
//    public string toString()
//{
//    return MELEE_WEAPON;
//}
//}
//}