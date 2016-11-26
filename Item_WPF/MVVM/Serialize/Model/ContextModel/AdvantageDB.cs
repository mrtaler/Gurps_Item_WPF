using System.Linq;
using System.Runtime.Remoting.Contexts;
using Item_WPF.MVVM.Serialize.Model;

namespace Item_WPF.ItemEntityModel
{
    public partial class Advantage
    {
      //  public Advantage() { }
        public Advantage(AdvantageXML advXml, item1Entities context)
        {
            name = advXml.name?.Value.ToString();
            nameCompare = advXml.name.Attribute("Compare") != null
                                        ? advXml.name.Attribute("Compare").Value.ToString() : null;
            typeadc = advXml.type != null
                                        ? advXml.type.Value.ToString() : null;
            levels = advXml.levels != null
                                        ? advXml.levels.Value.ToString() : null;
            points_per_level = advXml.points_per_level != null
                                        ? advXml.points_per_level.Value.ToString() : null;
            base_points = advXml.base_points != null
                                        ? advXml.base_points.Value.ToString() : null;
            reference = advXml.reference != null
                                        ? advXml.reference.Value.ToString() : null;
            notes = advXml.notes != null
                                        ? advXml.notes.Value.ToString() : null;
            cr = advXml.cr != null
                                        ? advXml.cr.Value.ToString() : null;
            versionadv = advXml.version != null
                                        ? advXml.version.Value.ToString() : null;
            round_down = advXml.round_down != null
                                        ? advXml.round_down.Value.ToString() : null;
            #region Prereq_listXML
            if (advXml.prereq_list != null)
            {
                //  prereq_listDB = new System.Data.Objects.DataClasses.EntityCollection<ItemEntityModel.prereq_listDB>();
                //     var q = advXml.prereq_list;
                foreach (Prereq_listXML item in advXml.prereq_list)
                {
                    prereq_listDB.Add(new prereq_listDB(item));
                }
            }
            #endregion
            FCategory(advXml, context);
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
        public void FCategory(AdvantageXML advFromXml, item1Entities context)
        {
            foreach (CategoriesXML itemCategory in advFromXml.categories)
            {
                string qery = itemCategory.category.Value.ToString();

                var qe = context.GurpsCategories.
                      FirstOrDefault(p => p.NamelCategory.Contains(qery));
                GurpsCategories.
                      Add(qe);
            }
        }
        public void Fdr_bonus(AdvantageXML advFromXml)
        {
            if (advFromXml.dr_bonus != null)
            {
                foreach (var itemdrBonus in advFromXml.dr_bonus)
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
        public void Fattribute_bonus(AdvantageXML advFromXml)
        {
            if (advFromXml.attribute_bonus != null)
            {
                foreach (Attribute_bonusXML item in advFromXml.attribute_bonus)
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
                foreach (CostReductionXml item in AdvFromXml.cost_reduction)
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
