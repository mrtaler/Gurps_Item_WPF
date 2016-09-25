using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Item_WPF.MVVM.Serialize.Model;

namespace Item_WPF.ItemEntityModel
{
    public partial class Advantage
    {
        public Advantage() { }
        public Advantage(AdvantageXML advXML, item1Entities _context)
        {
            name = advXML.name != null
                                  ? advXML.name.Value.ToString() : null;
            nameCompare = advXML.name.Attribute("Compare") != null
                                        ? advXML.name.Attribute("Compare").Value.ToString() : null;
            typeadc = advXML.type != null
                                        ? advXML.type.Value.ToString() : null;
            levels = advXML.levels != null
                                        ? advXML.levels.Value.ToString() : null;
            points_per_level = advXML.points_per_level != null
                                        ? advXML.points_per_level.Value.ToString() : null;
            base_points = advXML.base_points != null
                                        ? advXML.base_points.Value.ToString() : null;
            reference = advXML.reference != null
                                        ? advXML.reference.Value.ToString() : null;
            notes = advXML.notes != null
                                        ? advXML.notes.Value.ToString() : null;
            cr = advXML.cr != null
                                        ? advXML.cr.Value.ToString() : null;
            versionadv = advXML.version != null
                                        ? advXML.version.Value.ToString() : null;
            round_down = advXML.round_down != null
                                        ? advXML.round_down.Value.ToString() : null;
            #region Prereq_listXML
            if (advXML.prereq_list != null)
            {
                //  prereq_listDB = new System.Data.Objects.DataClasses.EntityCollection<ItemEntityModel.prereq_listDB>();
                //     var q = advXML.prereq_list;
                foreach (Prereq_listXML item in advXML.prereq_list)
                {
                    prereq_listDB.Add(new prereq_listDB(item));
                }
            }
            #endregion
            FCATEGORY(advXML, _context);
            Fdr_bonus(advXML);
            Fattribute_bonus(advXML);

            Fweapon_bonus(advXML);
            Fcost_reduction(advXML);

            Fmelee_weapon(advXML);
            Franged_weapon(advXML);
            Fskill_bonus(advXML);
            Fspell_bonus(advXML);
            Fmodifier(advXML);


        }
        public void FCATEGORY(AdvantageXML AdvFromXml, item1Entities _context)
        {
            foreach (CategoriesXML itemCategory in AdvFromXml.categories)
            {
                string qery = itemCategory.category.Value.ToString();

                var qe = _context.GurpsCategories.
                      FirstOrDefault(p => p.NamelCategory.Contains(qery));
                GurpsCategories.
                      Add(qe);
            }
        }
        public void Fdr_bonus(AdvantageXML AdvFromXml)
        {
            if (AdvFromXml.dr_bonus != null)
            {
                foreach (var itemdr_bonus in AdvFromXml.dr_bonus)
                {
                    dr_bonusDB drb = new dr_bonusDB();
                    drb.location = itemdr_bonus.location.Value.ToString();

                    drb.per_level = itemdr_bonus.amount.Attribute("per_level") != null
                                        ? itemdr_bonus.amount.Attribute("per_level").Value.ToString() : null;
                    drb.Value = itemdr_bonus.amount.Value.ToString();
                    dr_bonusDB.Add(drb);
                }
            }
        }
        public void Fattribute_bonus(AdvantageXML AdvFromXml)
        {
            if (AdvFromXml.attribute_bonus != null)
            {
                foreach (Attribute_bonusXML item in AdvFromXml.attribute_bonus)
                {
                    attribute_bonus.Add(new attribute_bonus(item));
                }
            }
        }

        public void Fweapon_bonus(AdvantageXML AdvFromXml)
        {
            if (AdvFromXml.weapon_bonus != null)
            {
                foreach (Weapon_bonusXML itemWeapon_bonus in AdvFromXml.weapon_bonus)
                {
                    weapon_bonus.Add(new weapon_bonus(itemWeapon_bonus));
                }
            }
        }
        public void Fcost_reduction(AdvantageXML AdvFromXml)
        {
            if (AdvFromXml.cost_reduction != null)
            {
                foreach (cost_reductionXML item in AdvFromXml.cost_reduction)
                {
                    cost_reduction.Add(new cost_reduction(item));
                }
            }
        }

        public void Fmelee_weapon(AdvantageXML AdvFromXml)
        {
            if (AdvFromXml.melee_weapon != null)
            {
                foreach (melee_weaponXML item in AdvFromXml.melee_weapon)
                {
                    melee_weapon.Add(new melee_weapon(item));
                }
            }
        }
        public void Franged_weapon(AdvantageXML AdvFromXml)
        {
            if (AdvFromXml.ranged_weapon != null)
            {
                foreach (ranged_weaponXML item in AdvFromXml.ranged_weapon)
                {
                    ranged_weapon.Add(new ranged_weapon(item));
                }
            }
        }
        public void Fskill_bonus(AdvantageXML AdvFromXml)
        {
            if (AdvFromXml.skill_bonus != null)
            {
                foreach (skill_bonusXML item in AdvFromXml.skill_bonus)
                {
                    skill_bonusDB.Add(new skill_bonusDB(item));
                }
            }
        }
        public void Fspell_bonus(AdvantageXML AdvFromXml)
        {
            if (AdvFromXml.spell_bonus != null)
            {
                foreach (spell_bonusXML item in AdvFromXml.spell_bonus)
                {
                    spell_bonus.Add(new spell_bonus(item));
                }
            }
        }
        public void Fmodifier(AdvantageXML AdvFromXml)
        {
            if (AdvFromXml.modifier != null)
            {
                foreach (modifierXML item in AdvFromXml.modifier)
                {
                    modifiers.Add(new modifier(item));
                }
            }
        }
    }
}
