using System;
using System.Linq;
using System.Collections.ObjectModel;
using GurpsDb.XML.XSD;
using GurpsDb.XML.XSD.List;
using GurpsDb.XML.XSD.prereq_list;

namespace GurpsDb.GurpsModel
{
    public partial class GurpsSkill
    {
        public void Fmain(SkillXmlModel skillFromXml, string type)
        {
            NameSkill = skillFromXml.NameSkill?.Value;
            Specialization = skillFromXml.Specialization?.Value;
            IdtechLevel = skillFromXml.TechLevel != null && skillFromXml.TechLevel.Value != ""
                 ? Convert.ToInt32(skillFromXml.TechLevel.Value) : 100;
            Difficulty = skillFromXml.Difficulty?.Value;
            Points = skillFromXml.Points != null
                 ? Convert.ToInt32(skillFromXml.Points.Value) : 0;
            Reference = skillFromXml.Reference?.Value;
            Version = skillFromXml.Version?.Value;
            Notes = skillFromXml.Notes?.Value;
            EncumbrancePenaltyMultiplier = skillFromXml.EncumbrancePenaltyMultiplier?.Value;
            LimitT = skillFromXml.Limit?.Value;
            if (IdtechLevel == 100)
                IdtechLevel = null;
            TypeSkTh = type;
        }
        public void Fcategory(SkillXmlModel skillFromXml, ContextGurpsModel context)
        {
            //foreach (CategoriesXML itemCategory in SkillFromXml.categories)
            //{
            //    string qery = itemCategory.category.Value.ToString();
            //    var qe = _context.GurpsSkillCategories.
            //          FirstOrDefault(p => p.NamelCategory.Contains(qery));
            //    GurpsSkillCategories.
            //          Add(qe);
            //}
        }
        public void FDefault(SkillXmlModel skillFromXml, ObservableCollection<GurpsSkill> collectionCategiry)
        {
            foreach (DefaultXml itemDefault in skillFromXml.Default)
            {
                DefaultSkill dfSk = new DefaultSkill(itemDefault, collectionCategiry);
                DefaultSkill.Add(dfSk);
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
            if (nameSkill == "Area Knowledge")
            { }

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
                        GurpsSkill2 = gsSpec;
                        //   GurpsSkill1.Add(GSSpec);    
                    }
                }
            }
        }
        public void Fattribute_bonus(SkillXmlModel skillFromXml)
        {
            foreach (AttributeBonusXml item in skillFromXml.AttributeBonus)
            {
                AttributeBonus atrbnr = new AttributeBonus();
                AttributeBonus.Add(atrbnr);
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
                weapbns.SpecializationCompare = itemWeaponBonus.Specialization.Attribute("compare")?.Value.ToString(); ;
                weapbns.Specialization = itemWeaponBonus.Specialization.Value.ToString();
                weapbns.LevelCompare = itemWeaponBonus.Level.Attribute("compare")?.Value.ToString(); ;
                weapbns.Level = itemWeaponBonus.Level.Value.ToString();
                WeaponBonus.Add(weapbns);
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
            Fmain(skillFromXml, type);
        }

        public void FGurpsSkill(SkillXmlModel skillFromXml, ContextGurpsModel context, ObservableCollection<GurpsSkill> collectionCategiry)
        // :this()
        {
            Fcategory(skillFromXml, context);
            FSpecialization(skillFromXml, collectionCategiry);
            FDefault(skillFromXml, collectionCategiry);
            Fattribute_bonus(skillFromXml);
            Fweapon_bonus(skillFromXml);

            #region Prereq_listXML
            foreach (PrereqListXml item in skillFromXml.PrereqList)
            {
                PrereqListDb.Add(new PrereqListDb(item));
            }
            #endregion
        }
    }
}