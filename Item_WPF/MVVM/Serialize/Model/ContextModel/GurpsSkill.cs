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

        public GurpsSkill(SkillXMLModel SkillFromXml, item1Entities _context, ObservableCollection<GurpsSkill> CollectionCategiry)
            :this()
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
            if (idtech_level == 100)
                idtech_level = null;


            #region CATEGORY
            foreach (CategoriesXML itemCategory in SkillFromXml.categories)
            {
                string qery = itemCategory.category.Value.ToString();

                var qe = _context.GurpsSkillCategories.
                      FirstOrDefault(p => p.NamelCategory.Contains(qery));
                GurpsSkillCategories.
                      Add(qe);
            }
            #endregion   
            #region Default
            foreach (DefaultXML itemDefault in SkillFromXml.Default)
            {
                DefaultSkill dfSk = new DefaultSkill(itemDefault, CollectionCategiry);
                DefaultSkills.Add(dfSk);
            }
            #endregion

            foreach (Prereq_listXML item in SkillFromXml.prereq_list)
            {
                prereq_listDB prlDB = new prereq_listDB();
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
                #region Skill_prereq
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
                #endregion
                #region prq_list
                foreach (var itemPrereq_list in item.Prereq_list)
                {
                    prereq_listDB prlDBSub = new prereq_listDB();
                    prlDBSub.when_tlCompare = itemPrereq_list.when_tl != null
                                               ? itemPrereq_list.when_tl.Attribute("compare").Value.ToString() : null;
                    prlDBSub.when_tl = itemPrereq_list.when_tl != null
                                               ? itemPrereq_list.when_tl.Value.ToString() : null;
                    prlDBSub.college_countCompare = itemPrereq_list.college_count != null
                                               ? itemPrereq_list.college_count.Attribute("compare").Value.ToString() : null;
                    prlDBSub.college_count = itemPrereq_list.college_count != null
                                               ? itemPrereq_list.college_count.Value.ToString() : null;
                    prlDBSub.all = itemPrereq_list.all != null
                                               ? itemPrereq_list.all.Value.ToString() : null;
                    #region Skill_prereq

                    foreach (var itemSkill_prereq in itemPrereq_list.Skill_prereq)
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
                        prlDBSub.skill_prereqDB.Add(sklprq);
                    }

                    foreach (var itemSubPrereq_list in itemPrereq_list.Prereq_list)
                    {
                        prereq_listDB prlDBSubSub = new prereq_listDB();
                        prlDBSubSub.when_tlCompare = itemSubPrereq_list.when_tl != null
                                                   ? itemSubPrereq_list.when_tl.Attribute("compare").Value.ToString() : null;
                        prlDBSubSub.when_tl = itemSubPrereq_list.when_tl != null
                                                   ? itemSubPrereq_list.when_tl.Value.ToString() : null;
                        prlDBSubSub.college_countCompare = itemSubPrereq_list.college_count != null
                                                   ? itemSubPrereq_list.college_count.Attribute("compare").Value.ToString() : null;
                        prlDBSubSub.college_count = itemSubPrereq_list.college_count != null
                                                   ? itemSubPrereq_list.college_count.Value.ToString() : null;
                        prlDBSubSub.all = itemSubPrereq_list.all != null
                                                   ? itemSubPrereq_list.all.Value.ToString() : null;
                        #region Skill_prereq

                        foreach (var itemSkill_prereq in itemSubPrereq_list.Skill_prereq)
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
                            prlDBSubSub.skill_prereqDB.Add(sklprq);
                        }
                        prlDBSub.prereq_listDB1.Add(prlDBSubSub);
                        #endregion
                    }
                    prlDB.prereq_listDB1.Add(prlDBSub);
                    #endregion
                }
                #endregion
                prereq_listDB.Add(prlDB);
            }
        }
    }
}
