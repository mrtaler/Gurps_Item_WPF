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

        public void FPskill_prereq(Prereq_listXML item, prereq_listDB prlDB)
        {
            foreach (var itemSkill_prereq in item.Skill_prereq)
            {
                skill_prereqDB sklprq = new skill_prereqDB();
                sklprq.nameCompare = itemSkill_prereq.name != null
                                                ? itemSkill_prereq.name.Attribute("compare").Value.ToString() : null;
                sklprq.name = itemSkill_prereq.name != null
                                                ? itemSkill_prereq.name.Value.ToString() : null;

                sklprq.specializationCompare = itemSkill_prereq.specialization != null
                                                ? itemSkill_prereq.specialization.Attribute("compare").Value.ToString() : null;
                sklprq.specialization = itemSkill_prereq.specialization != null
                                                ? itemSkill_prereq.specialization.Value.ToString() : null;

                sklprq.levelSPCompare = itemSkill_prereq.level != null
                                                ? itemSkill_prereq.level.Attribute("compare").Value.ToString() : null;
                sklprq.levelSP = itemSkill_prereq.level != null
                                                ? itemSkill_prereq.level.Value.ToString() : null;

                sklprq.has = itemSkill_prereq.has != null
                                                ? itemSkill_prereq.has.Value.ToString() : null;
                prlDB.skill_prereqDB.Add(sklprq);
            }

        }
        public void FPspell_prereq(Prereq_listXML item, prereq_listDB prlDB)
        {
            foreach (var itemspell_prereqDB in item.Spell_prereq)
            {
                spell_prereqDB splprq = new spell_prereqDB();

                splprq.nameCompare = itemspell_prereqDB.name != null
                                    ? itemspell_prereqDB.name.Attribute("compare").Value.ToString() : null;
                splprq.name = itemspell_prereqDB.name != null
                                    ? itemspell_prereqDB.name.Value.ToString() : null;
                splprq.collegeCompare = itemspell_prereqDB.college != null
                                    ? itemspell_prereqDB.college.Attribute("compare").Value.ToString() : null;
                splprq.college = itemspell_prereqDB.college != null
                                    ? itemspell_prereqDB.college.Value.ToString() : null;
                splprq.college_countCompare = itemspell_prereqDB.college_count != null
                                    ? itemspell_prereqDB.college_count.Attribute("compare").Value.ToString() : null;
                splprq.college_count = itemspell_prereqDB.college_count != null
                                    ? itemspell_prereqDB.college_count.Value.ToString() : null;
                splprq.quantityCompare = itemspell_prereqDB.quantity != null
                                    ? itemspell_prereqDB.quantity.Attribute("compare").Value.ToString() : null;
                splprq.quantity = itemspell_prereqDB.quantity != null
                                    ? itemspell_prereqDB.quantity.Value.ToString() : null;
                splprq.anyt = itemspell_prereqDB.any != null
                                    ? itemspell_prereqDB.any.Value.ToString() : null;
                splprq.has = itemspell_prereqDB.has != null
                                    ? itemspell_prereqDB.has.Value.ToString() : null;
                //  splprq.Value =itemspell_prereqDB.
                prlDB.spell_prereqDB.Add(splprq);
            }
        }
        public void FPattribute_prereq(Prereq_listXML item, prereq_listDB prlDB)
        {
            foreach (var itemAttribute_prereq in item.Attribute_prereq)
            {
                attribute_prereq atrprq = new attribute_prereq();
                atrprq.has = itemAttribute_prereq.has != null
                                    ? itemAttribute_prereq.has.Value.ToString() : null;
                atrprq.which = itemAttribute_prereq.which != null
                                ? itemAttribute_prereq.which.Value.ToString() : null;
                atrprq.compare = itemAttribute_prereq.compare != null
                                ? itemAttribute_prereq.compare.Value.ToString() : null;
                atrprq.combined_with = itemAttribute_prereq.combined_with != null
                                ? itemAttribute_prereq.combined_with.Value.ToString() : null;
                atrprq.Value = itemAttribute_prereq.Value != null
                                ? itemAttribute_prereq.Value.ToString() : null;
                prlDB.attribute_prereq.Add(atrprq);
            }
        }
        public void FPadvantage_prereq(Prereq_listXML item, prereq_listDB prlDB)
        {
            foreach (var itemAdvantage_prereq in item.Advantage_prereq)
            {
                advantage_prereq advprq = new advantage_prereq();
                advprq.nameCompare = itemAdvantage_prereq.name != null
                    ? itemAdvantage_prereq.name.Attribute("compare").Value.ToString() : null;
                advprq.name = itemAdvantage_prereq.name != null
                    ? itemAdvantage_prereq.name.Value.ToString() : null;
                advprq.notesCompare = itemAdvantage_prereq.notes != null
                    ? itemAdvantage_prereq.notes.Attribute("compare").Value.ToString() : null;
                advprq.notes = itemAdvantage_prereq.notes != null
                    ? itemAdvantage_prereq.notes.Value.ToString() : null;
                advprq.levelCompare = itemAdvantage_prereq.level != null
                    ? itemAdvantage_prereq.level.Attribute("compare").Value.ToString() : null;
                advprq.level = itemAdvantage_prereq.level != null
                    ? itemAdvantage_prereq.level.Value.ToString() : null;
                advprq.has = itemAdvantage_prereq.has != null
                    ? itemAdvantage_prereq.has.Value.ToString() : null;
                //advprq.Value NVARCHAR(50) NULL
                prlDB.advantage_prereq.Add(advprq);
            }
        }
        public void FPcontained_weight_prereq(Prereq_listXML item, prereq_listDB prlDB)
        {
            foreach (var itemContained_weight_prereq in item.Contained_weight_prereq)
            {
                contained_weight_prereq contprq = new contained_weight_prereq();
                contprq.has = itemContained_weight_prereq.has != null
                    ? itemContained_weight_prereq.has.Value.ToString() : null;
                contprq.compare = itemContained_weight_prereq.compare != null
                    ? itemContained_weight_prereq.compare.Value.ToString() : null;
                contprq.Value = itemContained_weight_prereq.Value != null
                    ? itemContained_weight_prereq.Value.ToString() : null;
                prlDB.contained_weight_prereq.Add(contprq);
            }
        }

        public void FPPrereq_list(Prereq_listXML item, prereq_listDB prlDB)
        {
            prlDB.when_tlCompare = item.when_tl != null
                                           ? item.when_tl.Attribute("compare").Value.ToString() : null;
            prlDB.when_tl = item.when_tl != null
                                    ? item.when_tl.Value.ToString() : null;
            prlDB.college_countCompare = item.college_count != null
                                    ? item.college_count.Attribute("compare").Value.ToString() : null;
            prlDB.college_count = item.college_count != null
                                    ? item.college_count.Value.ToString() : null;
            prlDB.all = item.all != null
                                    ? item.all.Value.ToString() : null;

        }

       // public /*override */GurpsSkill() { }

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
                prereq_listDB prlDB = new prereq_listDB();
                FPPrereq_list(item, prlDB);

                FPskill_prereq(item, prlDB);
                FPspell_prereq(item, prlDB);
                FPattribute_prereq(item, prlDB);
                FPadvantage_prereq(item, prlDB);
                FPcontained_weight_prereq(item, prlDB);

                #region prq_list
                foreach (var itemPrereq_list in item.Prereq_list)
                {
                    prereq_listDB prlDBSub = new prereq_listDB();


                    FPPrereq_list(itemPrereq_list, prlDBSub);
                    FPskill_prereq(itemPrereq_list, prlDBSub);

                    FPspell_prereq(itemPrereq_list, prlDBSub);
                    FPattribute_prereq(itemPrereq_list, prlDBSub);
                    FPadvantage_prereq(itemPrereq_list, prlDBSub);
                    FPcontained_weight_prereq(itemPrereq_list, prlDBSub);


                    foreach (var itemSubPrereq_list in itemPrereq_list.Prereq_list)
                    {
                        prereq_listDB prlDBSubSub = new prereq_listDB();

                        FPPrereq_list(itemSubPrereq_list, prlDBSubSub);
                        FPskill_prereq(itemSubPrereq_list, prlDBSubSub);

                        FPspell_prereq(itemSubPrereq_list, prlDBSubSub);
                        FPattribute_prereq(itemSubPrereq_list, prlDBSubSub);
                        FPadvantage_prereq(itemSubPrereq_list, prlDBSubSub);
                        FPcontained_weight_prereq(itemSubPrereq_list, prlDBSubSub);

                        prlDBSub.prereq_listDB1.Add(prlDBSubSub);
                    }
                    prlDB.prereq_listDB1.Add(prlDBSub);
                }
                #endregion
                prereq_listDB.Add(prlDB);
            }
            #endregion
        }
    }
}
