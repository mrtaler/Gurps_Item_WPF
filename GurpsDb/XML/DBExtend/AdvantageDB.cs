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
            this.Name = advXml.Name?.Value;
            this.NameCompare = advXml.Name?.Attribute("Compare")?.Value;
            this.Typeadc = advXml.Type?.Value;
            this.Levels = advXml.Levels?.Value;
            this.PointsPerLevel = advXml.PointsPerLevel?.Value;
            this.BasePoints = advXml.BasePoints?.Value;
            this.Reference = advXml.Reference?.Value;
            this.Notes = advXml.Notes?.Value;
            this.Cr = advXml.Cr?.Value;
            this.Versionadv = advXml.Version?.Value;
            this.RoundDown = advXml.RoundDown?.Value;
            
            if (advXml.PrereqList != null)
            {
                foreach (PrereqListXml item in advXml.PrereqList)
                {
                    this.PrereqListDb.Add(new PrereqListDb(item));
                }
            }
            
            // FCATEGORY(advXML);
            this.Fdr_bonus(advXml);
            this.Fattribute_bonus(advXml);

            this.Fweapon_bonus(advXml);
            this.Fcost_reduction(advXml);

            this.Fmelee_weapon(advXml);
            this.Franged_weapon(advXml);
            this.Fskill_bonus(advXml);
            this.Fspell_bonus(advXml);
            this.Fmodifier(advXml);


        }

        public void Fcategory(AdvantageXml advFromXml, ContextGurpsModel context)
        {
            foreach (CategoriesXml itemCategory in advFromXml.Categories)
            {
                string qery = itemCategory.Category.Value;

                var qe = context.GurpsCategoryDbSet.
                      FirstOrDefault(p => p.NameCategory.Contains(qery));
                this.GurpsCategory.Add(qe);
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
                    this.DrBonusDb.Add(drb);
                }
            }
        }

        public void Fattribute_bonus(AdvantageXml advFromXml)
        {
            if (advFromXml.AttributeBonus != null)
            {
                foreach (AttributeBonusXml item in advFromXml.AttributeBonus)
                {
                    this.AttributeBonus.Add(new AttributeBonus(item));
                }
            }
        }

        public void Fweapon_bonus(AdvantageXml advFromXml)
        {
            if (advFromXml.WeaponBonus != null)
            {
                foreach (WeaponBonusXml itemWeaponBonus in advFromXml.WeaponBonus)
                {
                    this.WeaponBonus.Add(new WeaponBonus(itemWeaponBonus));
                }
            }
        }

        public void Fcost_reduction(AdvantageXml advFromXml)
        {
            if (advFromXml.CostReduction != null)
            {
                foreach (CostReductionXml item in advFromXml.CostReduction)
                {
                    this.CostReduction.Add(new CostReduction(item));
                }
            }
        }

        public void Fmelee_weapon(AdvantageXml advFromXml)
        {
            if (advFromXml.MeleeWeapon != null)
            {
                foreach (MeleeWeaponXml item in advFromXml.MeleeWeapon)
                {
                    this.MeleeWeapon.Add(new MeleeWeapon(item));
                }
            }
        }

        public void Franged_weapon(AdvantageXml advFromXml)
        {
            if (advFromXml.RangedWeapon != null)
            {
                foreach (RangedWeaponXml item in advFromXml.RangedWeapon)
                {
                    this.RangedWeapon.Add(new RangedWeapon(item));
                }
            }
        }

        public void Fskill_bonus(AdvantageXml advFromXml)
        {
            if (advFromXml.SkillBonus != null)
            {
                foreach (SkillBonusXml item in advFromXml.SkillBonus)
                {
                    this.SkillBonusDb.Add(new SkillBonusDb(item));
                }
            }
        }

        public void Fspell_bonus(AdvantageXml advFromXml)
        {
            if (advFromXml.SpellBonus != null)
            {
                foreach (SpellBonusXml item in advFromXml.SpellBonus)
                {
                    this.SpellBonus.Add(new SpellBonus(item));
                }
            }
        }

        public void Fmodifier(AdvantageXml advFromXml)
        {
            if (advFromXml.Modifier != null)
            {
                foreach (ModifierXml item in advFromXml.Modifier)
                {
                    this.Modifier.Add(new Modifier(item));
                }
            }
        }
    }
}