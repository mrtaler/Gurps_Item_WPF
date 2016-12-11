using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections.ObjectModel;
using Item_WPF.ItemEntityModel;
using Item_WPF.MVVM.Serialize.Model;

namespace Item_WPF.ItemEntityModel
{
    public partial class GurpsSkill
    {
        public void Fmain(SkillXMLModel skillFromXml, string type)
        {
            NameSkill = skillFromXml.NameSkill != null
                ? skillFromXml.NameSkill.Value.ToString() : null;
            Specialization = skillFromXml.Specialization != null
                 ? skillFromXml.Specialization.Value.ToString() : null;
            idtech_level = skillFromXml.tech_level != null && skillFromXml.tech_level.Value.ToString() != ""
                 ? Convert.ToInt32(skillFromXml.tech_level.Value) : 100;
            Difficulty = skillFromXml.difficulty != null
                 ? skillFromXml.difficulty.Value.ToString() : null;
            Points = skillFromXml.Points != null
                 ? Convert.ToInt32(skillFromXml.Points.Value) : 0;
            Reference = skillFromXml.Reference != null
                 ? skillFromXml.Reference.Value.ToString() : null;
            version = skillFromXml.version != null
                 ? skillFromXml.version.Value.ToString() : null;
            notes = skillFromXml.notes != null
                 ? skillFromXml.notes.Value.ToString() : null;
            encumbrance_penalty_multiplier = skillFromXml.encumbrance_penalty_multiplier != null
                 ? skillFromXml.encumbrance_penalty_multiplier.Value.ToString() : null;
            limitT = skillFromXml.limit != null
                 ? skillFromXml.limit.Value.ToString() : null;
            if (idtech_level == 100)
                idtech_level = null;
            TypeSkTh = type;
        }
        public void FCATEGORY(SkillXMLModel SkillFromXml, item1Entities _context)
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
        public void FDefault(SkillXMLModel SkillFromXml, ObservableCollection<GurpsSkill> CollectionCategiry)
        {
            foreach (DefaultXML itemDefault in SkillFromXml.Default)
            {
                DefaultSkill dfSk = new DefaultSkill(itemDefault, CollectionCategiry);
                DefaultSkills.Add(dfSk);
            }
        }

        public void FSpecialization(SkillXMLModel SkillFromXml, ObservableCollection<GurpsSkill> CollectionCategiry)
        {


            string NameSkill = SkillFromXml.NameSkill != null
                             ? SkillFromXml.NameSkill.Value.ToString() : null;
            string SpecSkill = SkillFromXml.Specialization != null
                             ? SkillFromXml.Specialization.Value.ToString() : null;
            string VersSkill = SkillFromXml.version != null
              ? SkillFromXml.version.Value.ToString() : null;
            string TypeSkill = SkillFromXml.Type != null
             ? SkillFromXml.Type : null;
            if (NameSkill == "Area Knowledge")
            { }

            if (SpecSkill != null)
            {
                if (!SpecSkill.EndsWith("@"))
                {
                    GurpsSkill GSSpec = CollectionCategiry
                    .Where(p => p.TypeSkTh == TypeSkill)
                    .Where(p => p.NameSkill == NameSkill)
                    .Where(p => p.version == VersSkill)
                    .FirstOrDefault(p => p.Specialization == null || (p.Specialization.StartsWith("@") && p.Specialization.EndsWith("@")));
                    if (GSSpec != null)
                    {
                        GurpsSkill2 = GSSpec;
                        //   GurpsSkill1.Add(GSSpec);    
                    }
                }
            }
        }
        public void Fattribute_bonus(SkillXMLModel SkillFromXml)
        {
            foreach (Attribute_bonusXML item in SkillFromXml.attribute_bonus)
            {
                attribute_bonus atrbnr = new attribute_bonus();
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
                attribute_bonus.Add(atrbnr);
            }
        }
        public void Fweapon_bonus(SkillXMLModel SkillFromXml)
        {
            foreach (Weapon_bonusXML itemWeapon_bonus in SkillFromXml.weapon_bonus)
            {
                weapon_bonus weapbns = new weapon_bonus();
                //foreach (var itemAmount in itemWeapon_bonus.Amount)
                //{
                //    AmountAtribute amnatr = new AmountAtribute();
                //    amnatr.per_level = itemAmount.amount.Attribute("per_level").Value.ToString();
                //    amnatr.Value = itemAmount.amount.Value.ToString();
                //    weapbns.AmountAtributes.Add(amnatr);
                //}
                weapbns.nameCompare = itemWeapon_bonus.name.Attribute("compare").Value.ToString();
                weapbns.name = itemWeapon_bonus.name.Value.ToString();
                weapbns.specializationCompare = itemWeapon_bonus.specialization.Attribute("compare").Value.ToString(); ;
                weapbns.specialization = itemWeapon_bonus.specialization.Value.ToString();
                weapbns.levelCompare = itemWeapon_bonus.level.Attribute("compare").Value.ToString(); ;
                weapbns.level = itemWeapon_bonus.level.Value.ToString();
                weapon_bonus.Add(weapbns);
            }
        }





        // public /*override */GurpsSkill() { }

        public GurpsSkill(SkillXMLModel SkillFromXml, string type)
            : this()
        {
            Fmain(SkillFromXml, type);
        }

        public void FGurpsSkill(SkillXMLModel SkillFromXml, item1Entities _context, ObservableCollection<GurpsSkill> CollectionCategiry)
        // :this()
        {
            FCATEGORY(SkillFromXml, _context);
            FSpecialization(SkillFromXml, CollectionCategiry);
            FDefault(SkillFromXml, CollectionCategiry);
            Fattribute_bonus(SkillFromXml);
            Fweapon_bonus(SkillFromXml);

            #region Prereq_listXML
            var q = SkillFromXml.prereq_list;
            foreach (Prereq_listXML item in SkillFromXml.prereq_list)
            {
                prereq_listDB.Add(new prereq_listDB(item));
            }
            #endregion
        }
    }
}