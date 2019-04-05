using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;

using GurpsDb.XML.XSD;
using GurpsDb.XML.XSD.List;
using GurpsDb.XML.XSD.prereq_list;

namespace GurpsDb.GurpsModel
{
    public partial class GurpsSkill
    {
        public void Fmain(SkillXmlModel skillFromXml, string type)
        {
            this.NameSkill = skillFromXml.NameSkill?.Value;
            this.Specialization = skillFromXml.Specialization?.Value;
            this.IdtechLevel = skillFromXml.TechLevel != null && skillFromXml.TechLevel.Value != string.Empty
                 ? Convert.ToInt32(skillFromXml.TechLevel.Value) : 100;
            this.Difficulty = skillFromXml.Difficulty?.Value;
            this.Points = skillFromXml.Points != null
                 ? Convert.ToInt32(skillFromXml.Points.Value) : 0;
            this.Reference = skillFromXml.Reference?.Value;
            this.Version = skillFromXml.Version?.Value;
            this.Notes = skillFromXml.Notes?.Value;
            this.EncumbrancePenaltyMultiplier = skillFromXml.EncumbrancePenaltyMultiplier?.Value;
            this.LimitT = skillFromXml.Limit?.Value;
            if (this.IdtechLevel == 100) this.IdtechLevel = null;
            this.TypeSkTh = type;
        }

        public void Fcategory(SkillXmlModel skillFromXml, List<GurpsCategory> gurpsCategories)
        {
            foreach (CategoriesXml itemCategory in skillFromXml.Categories)
            {
                string qery = itemCategory.Category.Value;
                var qe = gurpsCategories.
                      FirstOrDefault(p => p.NameCategory.Contains(qery));
                this.GurpsCategoryCollection.
                      Add(qe);
            }
        }

        public void FDefault(SkillXmlModel skillFromXml, ObservableCollection<GurpsSkill> collectionCategiry)
        {
            foreach (DefaultXml itemDefault in skillFromXml.Default)
            {
                DefaultSkill dfSk = new DefaultSkill(itemDefault, collectionCategiry);
                this.DefaultSkillInNeedCollection.Add(dfSk);
            }
        }

        public void FSpecialization(SkillXmlModel skillFromXml, ObservableCollection<GurpsSkill> collectionCategiry)
        {
            string nameSkill = skillFromXml.NameSkill != null
                             ? skillFromXml.NameSkill.Value : null;
            string specSkill = skillFromXml.Specialization != null
                             ? skillFromXml.Specialization.Value : null;
            string versSkill = skillFromXml.Version != null
              ? skillFromXml.Version.Value : null;
            string typeSkill = skillFromXml.Type != null
             ? skillFromXml.Type : null;

            if (specSkill != null)
            {
                if (!specSkill.EndsWith("@"))
                {
                    GurpsSkill gsSpec = collectionCategiry
                    .Where(p => p.TypeSkTh == typeSkill)
                    .Where(p => p.NameSkill == nameSkill)
                    .Where(p => p.Version == versSkill)
                    .FirstOrDefault(p => p.Specialization == null || (p.Specialization.StartsWith("@") && p.Specialization.EndsWith("@")));
                    if (gsSpec != null)
                    {
                        this.GurpsSkillSelf = gsSpec;

                        // GurpsSkill1.Add(GSSpec);    
                    }
                }
            }
        }

        public void Fattribute_bonus(SkillXmlModel skillFromXml)
        {
            foreach (AttributeBonusXml item in skillFromXml.AttributeBonus)
            {
                AttributeBonus atrbnr = new AttributeBonus();
                this.AttributeBonusCollection.Add(atrbnr);
            }
        }

        /// <summary>
        /// Method for wepon bonus
        /// </summary>
        /// <param name="skillFromXml"></param>
        public void Fweapon_bonus(SkillXmlModel skillFromXml)
        {
            foreach (WeaponBonusXml itemWeaponBonus in skillFromXml.WeaponBonus)
            {
                WeaponBonus weapbns = new WeaponBonus();
                weapbns.NameCompare = itemWeaponBonus.Name.Attribute("compare")?.Value.ToString();
                weapbns.Name = itemWeaponBonus.Name.Value.ToString();
                weapbns.SpecializationCompare = itemWeaponBonus.Specialization.Attribute("compare")?.Value.ToString(); 
                weapbns.Specialization = itemWeaponBonus.Specialization.Value.ToString();
                weapbns.LevelCompare = itemWeaponBonus.Level.Attribute("compare")?.Value.ToString(); 
                weapbns.Level = itemWeaponBonus.Level.Value.ToString();
                this.WeaponBonusCollection.Add(weapbns);
            }
        }





        // public /*override */GurpsSkill() { }
        /// <summary>
        /// Constructor for Work with XML
        /// </summary>
        /// <param name="skillFromXml"></param>
        /// <param name="type"></param>
        public GurpsSkill(SkillXmlModel skillFromXml, string type)
            : this()
        {
            this.Fmain(skillFromXml, type);
        }

        public void FGurpsSkill(SkillXmlModel skillFromXml, List<GurpsCategory> gurpsCategories, ObservableCollection<GurpsSkill> collectionCategiry)
        {
            // :this()
            this.Fcategory(skillFromXml, gurpsCategories);
            this.FSpecialization(skillFromXml, collectionCategiry);
            this.FDefault(skillFromXml, collectionCategiry);
            this.Fattribute_bonus(skillFromXml);
            this.Fweapon_bonus(skillFromXml);

            
            foreach (PrereqListXml item in skillFromXml.PrereqList)
            {
                this.PrereqListDbCollection.Add(new PrereqListDb(item));
            }
            
        }
    }
}