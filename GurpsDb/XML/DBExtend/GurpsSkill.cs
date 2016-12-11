using System;
using System.Linq;
using System.Collections.ObjectModel;
using Item_WPF.MVVM.Serialize.Model;

namespace Item_WPF.ItemEntityModel
{
    public partial class GurpsSkill
    {
        public void Fmain(SkillXmlModel skillFromXml, string type)
        {
            NameSkill = skillFromXml.NameSkill != null
                ? skillFromXml.NameSkill.Value.ToString() : null;
            Specialization = skillFromXml.Specialization != null
                 ? skillFromXml.Specialization.Value.ToString() : null;
            idtech_level = skillFromXml.TechLevel != null && skillFromXml.TechLevel.Value.ToString() != ""
                 ? Convert.ToInt32(skillFromXml.TechLevel.Value) : 100;
            Difficulty = skillFromXml.Difficulty != null
                 ? skillFromXml.Difficulty.Value.ToString() : null;
            Points = skillFromXml.Points != null
                 ? Convert.ToInt32(skillFromXml.Points.Value) : 0;
            Reference = skillFromXml.Reference != null
                 ? skillFromXml.Reference.Value.ToString() : null;
            version = skillFromXml.Version != null
                 ? skillFromXml.Version.Value.ToString() : null;
            notes = skillFromXml.Notes != null
                 ? skillFromXml.Notes.Value.ToString() : null;
            encumbrance_penalty_multiplier = skillFromXml.EncumbrancePenaltyMultiplier != null
                 ? skillFromXml.EncumbrancePenaltyMultiplier.Value.ToString() : null;
            limitT = skillFromXml.Limit != null
                 ? skillFromXml.Limit.Value.ToString() : null;
            if (idtech_level == 100)
                idtech_level = null;
            TypeSkTh = type;
        }
        public void Fcategory(SkillXmlModel skillFromXml, item1Entities context)
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
            foreach (DefaultXML itemDefault in skillFromXml.Default)
            {
                DefaultSkill dfSk = new DefaultSkill(itemDefault, collectionCategiry);
                DefaultSkills.Add(dfSk);
            }
        }

        public void FSpecialization(SkillXmlModel skillFromXml, ObservableCollection<GurpsSkill> collectionCategiry)
        {


            string nameSkill = skillFromXml.NameSkill != null
                             ? skillFromXml.NameSkill.Value.ToString() : null;
            string specSkill = skillFromXml.Specialization != null
                             ? skillFromXml.Specialization.Value.ToString() : null;
            string versSkill = skillFromXml.Version != null
              ? skillFromXml.Version.Value.ToString() : null;
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
                    .Where(p => p.version == versSkill)
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
            foreach (Attribute_bonusXML item in skillFromXml.AttributeBonus)
            {
                AttributeBonus atrbnr = new AttributeBonus();
                //foreach (var itemAttribute in item.Attribute)
                //{
                //    atrbnr.AttributeLimitation = itemAttribute.attribute.Attribute("limitation").Value.ToString();
                //    atrbnr.atr= itemAttribute.attribute.Value.ToString();
                //    atrbnr.BonusAttributes.Add(bnsatr);
                //}
                //foreach (var itemAmount in item.Amount)
                //{
                //    AmountAtribute amnatr = new AmountAtribute();
                //    amnatr.per_level = itemAmount.amount.Attribute("per_level").Value.ToString();
                //    amnatr.Value = itemAmount.amount.Value.ToString();
                //    atrbnr.AmountAtributes.Add(amnatr);
                //}
                AttributeBonus.Add(atrbnr);
            }
        }
        public void Fweapon_bonus(SkillXmlModel skillFromXml)
        {
            foreach (Weapon_bonusXML itemWeaponBonus in skillFromXml.WeaponBonus)
            {
                WeaponBonus weapbns = new WeaponBonus();
                //foreach (var itemAmount in itemWeapon_bonus.Amount)
                //{
                //    AmountAtribute amnatr = new AmountAtribute();
                //    amnatr.per_level = itemAmount.amount.Attribute("per_level").Value.ToString();
                //    amnatr.Value = itemAmount.amount.Value.ToString();
                //    weapbns.AmountAtributes.Add(amnatr);
                //}
                weapbns.nameCompare = itemWeaponBonus.name.Attribute("compare").Value.ToString();
                weapbns.name = itemWeaponBonus.name.Value.ToString();
                weapbns.specializationCompare = itemWeaponBonus.specialization.Attribute("compare").Value.ToString(); ;
                weapbns.specialization = itemWeaponBonus.specialization.Value.ToString();
                weapbns.levelCompare = itemWeaponBonus.level.Attribute("compare").Value.ToString(); ;
                weapbns.level = itemWeaponBonus.level.Value.ToString();
                WeaponBonus.Add(weapbns);
            }
        }





        // public /*override */GurpsSkill() { }

        public GurpsSkill(SkillXmlModel skillFromXml, string type)
            : this()
        {
            Fmain(skillFromXml, type);
        }

        public void FGurpsSkill(SkillXmlModel skillFromXml, item1Entities context, ObservableCollection<GurpsSkill> collectionCategiry)
        // :this()
        {
            Fcategory(skillFromXml, context);
            FSpecialization(skillFromXml, collectionCategiry);
            FDefault(skillFromXml, collectionCategiry);
            Fattribute_bonus(skillFromXml);
            Fweapon_bonus(skillFromXml);

            #region Prereq_listXML
            var q = skillFromXml.PrereqList;
            foreach (PrereqListXml item in skillFromXml.PrereqList)
            {
                PrereqListDb.Add(new PrereqListDb(item));
            }
            #endregion
        }
    }
}