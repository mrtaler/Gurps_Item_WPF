using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ConsoleApplication1.SkSr;
using System.Collections.ObjectModel;
using Item_WPF.ItemEntityModel;
using Item_WPF.MVVM.Serialize.Model;

namespace Item_WPF.ItemEntityModel
{
    public partial class GurpsSkill
    {
        public void Fmain(SkillXMLModel SkillFromXml, string type)
        {
            NameSkill = SkillFromXml.NameSkill != null
                ? SkillFromXml.NameSkill.Value.ToString() : null;
            Specialization = SkillFromXml.Specialization != null
                 ? SkillFromXml.Specialization.Value.ToString() : null;
            idtech_level = SkillFromXml.tech_level != null && SkillFromXml.tech_level.Value.ToString() != ""
                 ? Convert.ToInt32(SkillFromXml.tech_level.Value) : 100;
            Difficulty = SkillFromXml.difficulty != null
                 ? SkillFromXml.difficulty.Value.ToString() : null;
            Points = SkillFromXml.Points != null
                 ? Convert.ToInt32(SkillFromXml.Points.Value) : 0;
            Reference = SkillFromXml.Reference != null
                 ? SkillFromXml.Reference.Value.ToString() : null;
            version = SkillFromXml.version != null
                 ? SkillFromXml.version.Value.ToString() : null;
            notes = SkillFromXml.notes != null
                 ? SkillFromXml.notes.Value.ToString() : null;
            encumbrance_penalty_multiplier = SkillFromXml.encumbrance_penalty_multiplier != null
                 ? SkillFromXml.encumbrance_penalty_multiplier.Value.ToString() : null;
            limitT = SkillFromXml.limit != null
                 ? SkillFromXml.limit.Value.ToString() : null;
            if (idtech_level == 100)
                idtech_level = null;
            TypeSkTh = type;
        }
        public void FCATEGORY(SkillXMLModel SkillFromXml, item1Entities _context)
        {
            foreach (CategoriesXML itemCategory in SkillFromXml.categories)
            {
                string qery = itemCategory.category.Value.ToString();

                var qe = _context.GurpsCategories.
                      FirstOrDefault(p => p.NamelCategory.Contains(qery));
                GurpsCategories.
                      Add(qe);
            }
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
                attribute_bonus.Add(new attribute_bonus(item));
            }
        }
        public void Fweapon_bonus(SkillXMLModel SkillFromXml)
        {
            foreach (Weapon_bonusXML itemWeapon_bonus in SkillFromXml.weapon_bonus)
            {
                weapon_bonus.Add(new weapon_bonus(itemWeapon_bonus));
            }
        }

        public /*override */GurpsSkill() { }

        public GurpsSkill(SkillXMLModel SkillFromXml, string type)
        {
            Fmain(SkillFromXml, type);
        }

        public void FGurpsSkill(SkillXMLModel SkillFromXml, item1Entities _context, ObservableCollection<GurpsSkill> CollectionCategiry)
        //  :this()
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
