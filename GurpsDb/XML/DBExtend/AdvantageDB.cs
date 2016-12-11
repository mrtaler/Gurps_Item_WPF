using System.Linq;
using GurpsDb.XML.XSD;
using GurpsDb.XML.XSD.List;
using GurpsDb.XML.XSD.prereq_list;

// ReSharper disable once CheckNamespace
namespace GurpsDb.GurpsModel
{
    public partial class Advantage
    {
        /// <summary>
        /// Constructor for XML
        /// </summary>
        /// <param name="advXml"></param>
        public Advantage(AdvantageXml advXml)
        {
            Name = advXml.Name?.Value;
            NameCompare = advXml.Name?.Attribute("Compare")?.Value;
            Typeadc = advXml.Type?.Value;
            Levels = advXml.Levels?.Value;
            PointsPerLevel = advXml.PointsPerLevel?.Value;
            BasePoints = advXml.BasePoints?.Value;
            Reference = advXml.Reference?.Value;
            Notes = advXml.Notes?.Value;
            Cr = advXml.Cr?.Value;
            Versionadv = advXml.Version?.Value;
            RoundDown = advXml.RoundDown?.Value;
            #region Prereq_listXML
            if (advXml.PrereqList != null)
            {
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
        public void Fcategory(AdvantageXml advFromXml, ContextGurpsModel context)
        {
            foreach (CategoriesXml itemCategory in advFromXml.Categories)
            {
                string qery = itemCategory.Category.Value;

                var qe = context.GurpsCategoryDbSet.
                      FirstOrDefault(p => p.NamelCategory.Contains(qery));
                GurpsCategory.Add(qe);
            }
        }
        public void Fdr_bonus(AdvantageXml advFromXml)
        {
            if (advFromXml.DrBonus != null)
            {
                foreach (var itemdrBonus in advFromXml.DrBonus)
                {
                    DrBonusDb drb = new DrBonusDb();
                    drb.Location = itemdrBonus.Location.Value;

                    drb.PerLevel = itemdrBonus.Amount.Attribute("per_level")?.Value;
                    drb.Value = itemdrBonus.Amount.Value;
                    DrBonusDb.Add(drb);
                }
            }
        }
        public void Fattribute_bonus(AdvantageXml advFromXml)
        {
            if (advFromXml.AttributeBonus != null)
            {
                foreach (AttributeBonusXml item in advFromXml.AttributeBonus)
                {
                    AttributeBonus.Add(new AttributeBonus(item));
                }
            }
        }

        public void Fweapon_bonus(AdvantageXml advFromXml)
        {
            if (advFromXml.WeaponBonus != null)
            {
                foreach (WeaponBonusXml itemWeaponBonus in advFromXml.WeaponBonus)
                {
                    WeaponBonus.Add(new WeaponBonus(itemWeaponBonus));
                }
            }
        }
        public void Fcost_reduction(AdvantageXml advFromXml)
        {
            if (advFromXml.CostReduction != null)
            {
                foreach (CostReductionXml item in advFromXml.CostReduction)
                {
                    CostReduction.Add(new CostReduction(item));
                }
            }
        }

        public void Fmelee_weapon(AdvantageXml advFromXml)
        {
            if (advFromXml.MeleeWeapon != null)
            {
                foreach (MeleeWeaponXml item in advFromXml.MeleeWeapon)
                {
                    MeleeWeapon.Add(new MeleeWeapon(item));
                }
            }
        }
        public void Franged_weapon(AdvantageXml advFromXml)
        {
            if (advFromXml.RangedWeapon != null)
            {
                foreach (RangedWeaponXml item in advFromXml.RangedWeapon)
                {
                    RangedWeapon.Add(new RangedWeapon(item));
                }
            }
        }
        public void Fskill_bonus(AdvantageXml advFromXml)
        {
            if (advFromXml.SkillBonus != null)
            {
                foreach (SkillBonusXml item in advFromXml.SkillBonus)
                {
                    SkillBonusDb.Add(new SkillBonusDb(item));
                }
            }
        }
        public void Fspell_bonus(AdvantageXml advFromXml)
        {
            if (advFromXml.SpellBonus != null)
            {
                foreach (SpellBonusXml item in advFromXml.SpellBonus)
                {
                    SpellBonus.Add(new SpellBonus(item));
                }
            }
        }
        public void Fmodifier(AdvantageXml advFromXml)
        {
            if (advFromXml.Modifier != null)
            {
                foreach (ModifierXml item in advFromXml.Modifier)
                {
                    Modifier.Add(new Modifier(item));
                }
            }
        }
    }
}