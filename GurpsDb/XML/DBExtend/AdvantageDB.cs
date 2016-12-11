using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Item_WPF.MVVM.Serialize.Model;

namespace Item_WPF.ItemEntityModel
{
    public partial class Advantage
    {
        //  public Advantage() { }
       public Advantage(AdvantageXml advXml)
        {
            name = advXml.Name != null
                                  ? advXml.Name.Value.ToString() : null;
            nameCompare = advXml.Name.Attribute("Compare") != null
                                        ? advXml.Name.Attribute("Compare").Value.ToString() : null;
            typeadc = advXml.Type != null
                                        ? advXml.Type.Value.ToString() : null;
            levels = advXml.Levels != null
                                        ? advXml.Levels.Value.ToString() : null;
            points_per_level = advXml.PointsPerLevel != null
                                        ? advXml.PointsPerLevel.Value.ToString() : null;
            base_points = advXml.BasePoints != null
                                        ? advXml.BasePoints.Value.ToString() : null;
            reference = advXml.Reference != null
                                        ? advXml.Reference.Value.ToString() : null;
            notes = advXml.Notes != null
                                        ? advXml.Notes.Value.ToString() : null;
            cr = advXml.Cr != null
                                        ? advXml.Cr.Value.ToString() : null;
            versionadv = advXml.Version != null
                                        ? advXml.Version.Value.ToString() : null;
            round_down = advXml.RoundDown != null
                                        ? advXml.RoundDown.Value.ToString() : null;
            #region Prereq_listXML
            if (advXml.PrereqList != null)
            {
                //  prereq_listDB = new System.Data.Objects.DataClasses.EntityCollection<ItemEntityModel.prereq_listDB>();
                //     var q = advXML.prereq_list;
                foreach (PrereqListXml item in advXml.PrereqList)
                {
                    PrereqListDb.Add(new PrereqListDb(item));
                }
            }
            #endregion
          //  FCATEGORY(advXML);
            Fdr_bonus(advXml);
            Fattribute_bonus(advXml);

            Fweapon_bonus(advXml);
            Fcost_reduction(advXml);

            Fmelee_weapon(advXml);
            Franged_weapon(advXml);
            Fskill_bonus(advXml);
            Fspell_bonus(advXml);
            Fmodifier(advXml);


        }
        public void Fcategory(AdvantageXml advFromXml, item1Entities context)
        {
            foreach (CategoriesXML itemCategory in advFromXml.Categories)
            {
                string qery = itemCategory.category.Value.ToString();

                var qe = context.GurpsCategories.
                      FirstOrDefault(p => p.NamelCategory.Contains(qery));
                GurpsCategories.
                      Add(qe);
            }
        }
        public void Fdr_bonus(AdvantageXml advFromXml)
        {
            if (advFromXml.DrBonus != null)
            {
                foreach (var itemdrBonus in advFromXml.DrBonus)
                {
                    dr_bonusDB drb = new dr_bonusDB();
                    drb.location = itemdrBonus.location.Value.ToString();

                    drb.per_level = itemdrBonus.amount.Attribute("per_level") != null
                                        ? itemdrBonus.amount.Attribute("per_level").Value.ToString() : null;
                    drb.Value = itemdrBonus.amount.Value.ToString();
                    dr_bonusDB.Add(drb);
                }
            }
        }
        public void Fattribute_bonus(AdvantageXml advFromXml)
        {
            if (advFromXml.AttributeBonus != null)
            {
                foreach (Attribute_bonusXML item in advFromXml.AttributeBonus)
                {
                    AttributeBonus.Add(new AttributeBonus(item));
                }
            }
        }

        public void Fweapon_bonus(AdvantageXml advFromXml)
        {
            if (advFromXml.WeaponBonus != null)
            {
                foreach (Weapon_bonusXML itemWeaponBonus in advFromXml.WeaponBonus)
                {
                    WeaponBonus.Add(new WeaponBonus(itemWeaponBonus));
                }
            }
        }
        public void Fcost_reduction(AdvantageXml advFromXml)
        {
            if (advFromXml.CostReduction != null)
            {
                foreach (cost_reductionXML item in advFromXml.CostReduction)
                {
                    CostReduction.Add(new CostReduction(item));
                }
            }
        }

        public void Fmelee_weapon(AdvantageXml advFromXml)
        {
            if (advFromXml.MeleeWeapon != null)
            {
                foreach (melee_weaponXML item in advFromXml.MeleeWeapon)
                {
                    MeleeWeapon.Add(new MeleeWeapon(item));
                }
            }
        }
        public void Franged_weapon(AdvantageXml advFromXml)
        {
            if (advFromXml.RangedWeapon != null)
            {
                foreach (ranged_weaponXML item in advFromXml.RangedWeapon)
                {
                    RangedWeapon.Add(new RangedWeapon(item));
                }
            }
        }
        public void Fskill_bonus(AdvantageXml advFromXml)
        {
            if (advFromXml.SkillBonus != null)
            {
                foreach (skill_bonusXML item in advFromXml.SkillBonus)
                {
                    SkillBonusDb.Add(new SkillBonusDb(item));
                }
            }
        }
        public void Fspell_bonus(AdvantageXml advFromXml)
        {
            if (advFromXml.SpellBonus != null)
            {
                foreach (spell_bonusXML item in advFromXml.SpellBonus)
                {
                    SpellBonus.Add(new SpellBonus(item));
                }
            }
        }
        public void Fmodifier(AdvantageXml advFromXml)
        {
            if (advFromXml.Modifier != null)
            {
                foreach (modifierXML item in advFromXml.Modifier)
                {
                    modifiers.Add(new Modifier(item));
                }
            }
        }
    }
}