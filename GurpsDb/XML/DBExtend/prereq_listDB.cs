using Item_WPF.MVVM.Serialize.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Item_WPF.ItemEntityModel
{
    public partial class PrereqListDb
    {
        public void FPPrereq_list(PrereqListXml item)
        {
            when_tlCompare = item.WhenTl != null
                                           ? item.WhenTl.Attribute("compare").Value.ToString() : null;
            when_tl = item.WhenTl != null
                                    ? item.WhenTl.Value.ToString() : null;
            college_countCompare = item.CollegeCount != null
                                    ? item.CollegeCount.Attribute("compare").Value.ToString() : null;
            college_count = item.CollegeCount != null
                                    ? item.CollegeCount.Value.ToString() : null;
            all = item.All != null
                                    ? item.All.Value.ToString() : null;

        }
        public void FPskill_prereq(PrereqListXml item)
        {
            // skill_prereqDB=new  
            foreach (var itemSkillPrereq in item.SkillPrereq)
            {
                skill_prereqDB sklprq = new skill_prereqDB();
                sklprq.nameCompare = itemSkillPrereq.name != null
                                                ? itemSkillPrereq.name.Attribute("compare").Value.ToString() : null;
                sklprq.name = itemSkillPrereq.name != null
                                                ? itemSkillPrereq.name.Value.ToString() : null;

                sklprq.specializationCompare = itemSkillPrereq.specialization != null
                                                ? itemSkillPrereq.specialization.Attribute("compare").Value.ToString() : null;
                sklprq.specialization = itemSkillPrereq.specialization != null
                                                ? itemSkillPrereq.specialization.Value.ToString() : null;

                sklprq.levelSPCompare = itemSkillPrereq.level != null
                                                ? itemSkillPrereq.level.Attribute("compare").Value.ToString() : null;
                sklprq.levelSP = itemSkillPrereq.level != null
                                                ? itemSkillPrereq.level.Value.ToString() : null;

                sklprq.has = itemSkillPrereq.has != null
                                                ? itemSkillPrereq.has.Value.ToString() : null;
                skill_prereqDB.Add(sklprq);
            }

        }
        public void FPspell_prereq(PrereqListXml item)
        {
            foreach (var itemspellPrereqDb in item.SpellPrereq)
            {
                spell_prereqDB splprq = new spell_prereqDB();

                splprq.nameCompare = itemspellPrereqDb.name != null
                                    ? itemspellPrereqDb.name.Attribute("compare").Value.ToString() : null;
                splprq.name = itemspellPrereqDb.name != null
                                    ? itemspellPrereqDb.name.Value.ToString() : null;
                splprq.collegeCompare = itemspellPrereqDb.college != null
                                    ? itemspellPrereqDb.college.Attribute("compare").Value.ToString() : null;
                splprq.college = itemspellPrereqDb.college != null
                                    ? itemspellPrereqDb.college.Value.ToString() : null;
                splprq.college_countCompare = itemspellPrereqDb.college_count != null
                                    ? itemspellPrereqDb.college_count.Attribute("compare").Value.ToString() : null;
                splprq.college_count = itemspellPrereqDb.college_count != null
                                    ? itemspellPrereqDb.college_count.Value.ToString() : null;
                splprq.quantityCompare = itemspellPrereqDb.quantity != null
                                    ? itemspellPrereqDb.quantity.Attribute("compare").Value.ToString() : null;
                splprq.quantity = itemspellPrereqDb.quantity != null
                                    ? itemspellPrereqDb.quantity.Value.ToString() : null;
                splprq.anyt = itemspellPrereqDb.any != null
                                    ? itemspellPrereqDb.any.Value.ToString() : null;
                splprq.has = itemspellPrereqDb.has != null
                                    ? itemspellPrereqDb.has.Value.ToString() : null;
                //  splprq.Value =itemspell_prereqDB.
                spell_prereqDB.Add(splprq);
            }
        }

        public void FPattribute_prereq(PrereqListXml item)
        {
            foreach (var itemAttributePrereq in item.AttributePrereq)
            {
                attribute_prereq atrprq = new attribute_prereq();
                atrprq.has = itemAttributePrereq.has != null
                                    ? itemAttributePrereq.has.Value.ToString() : null;
                atrprq.which = itemAttributePrereq.which != null
                                ? itemAttributePrereq.which.Value.ToString() : null;
                atrprq.compare = itemAttributePrereq.compare != null
                                ? itemAttributePrereq.compare.Value.ToString() : null;
                atrprq.combined_with = itemAttributePrereq.combined_with != null
                                ? itemAttributePrereq.combined_with.Value.ToString() : null;
                atrprq.Value = itemAttributePrereq.Value != null
                                ? itemAttributePrereq.Value.ToString() : null;
                attribute_prereq.Add(atrprq);
            }
        }

        public void FPadvantage_prereq(PrereqListXml item)
        {
            foreach (var itemAdvantagePrereq in item.AdvantagePrereq)
            {
                advantage_prereq advprq = new advantage_prereq();
                advprq.nameCompare = itemAdvantagePrereq.name != null
                    ? itemAdvantagePrereq.name.Attribute("compare").Value.ToString() : null;
                advprq.name = itemAdvantagePrereq.name != null
                    ? itemAdvantagePrereq.name.Value.ToString() : null;
                advprq.notesCompare = itemAdvantagePrereq.notes != null
                    ? itemAdvantagePrereq.notes.Attribute("compare").Value.ToString() : null;
                advprq.notes = itemAdvantagePrereq.notes != null
                    ? itemAdvantagePrereq.notes.Value.ToString() : null;
                advprq.levelCompare = itemAdvantagePrereq.level != null
                    ? itemAdvantagePrereq.level.Attribute("compare").Value.ToString() : null;
                advprq.level = itemAdvantagePrereq.level != null
                    ? itemAdvantagePrereq.level.Value.ToString() : null;
                advprq.has = itemAdvantagePrereq.has != null
                    ? itemAdvantagePrereq.has.Value.ToString() : null;
                //advprq.Value NVARCHAR(50) NULL
                advantage_prereq.Add(advprq);
            }
        }
        public void FPcontained_weight_prereq(PrereqListXml item)
        {
            foreach (var itemContainedWeightPrereq in item.ContainedWeightPrereq)
            {
                contained_weight_prereq contprq = new contained_weight_prereq();
                contprq.has = itemContainedWeightPrereq.has != null
                    ? itemContainedWeightPrereq.has.Value.ToString() : null;
                contprq.compare = itemContainedWeightPrereq.compare != null
                    ? itemContainedWeightPrereq.compare.Value.ToString() : null;
                contprq.Value = itemContainedWeightPrereq.Value != null
                    ? itemContainedWeightPrereq.Value.ToString() : null;
                contained_weight_prereq.Add(contprq);
            }
        }
        public PrereqListDb(PrereqListXml item)
            : this()
        {

            FPPrereq_list(item);

            FPskill_prereq(item);
            FPspell_prereq(item);
            FPattribute_prereq(item);
            FPadvantage_prereq(item);
            FPcontained_weight_prereq(item);

            #region prq_list
            if (item.PrereqList != null)
            {
                foreach (var itemPrereqList in item.PrereqList)
                {
                    PrereqListDb prlDbSub = new PrereqListDb();


                    prlDbSub.FPPrereq_list(itemPrereqList);
                    prlDbSub.FPskill_prereq(itemPrereqList);

                    prlDbSub.FPspell_prereq(itemPrereqList);
                    prlDbSub.FPattribute_prereq(itemPrereqList);
                    prlDbSub.FPadvantage_prereq(itemPrereqList);
                    prlDbSub.FPcontained_weight_prereq(itemPrereqList);

                    if (itemPrereqList.PrereqList != null)
                    {
                        foreach (var itemSubPrereqList in itemPrereqList.PrereqList)
                        {
                            PrereqListDb prlDbSubSub = new PrereqListDb();

                            prlDbSubSub.FPPrereq_list(itemSubPrereqList);
                            prlDbSubSub.FPskill_prereq(itemSubPrereqList);

                            prlDbSubSub.FPspell_prereq(itemSubPrereqList);
                            prlDbSubSub.FPattribute_prereq(itemSubPrereqList);
                            prlDbSubSub.FPadvantage_prereq(itemSubPrereqList);
                            prlDbSubSub.FPcontained_weight_prereq(itemSubPrereqList);

                            prlDbSub.prereq_listDB1.Add(prlDbSubSub);
                        }
                    }
                    prereq_listDB1.Add(prlDbSub);
                }
            }
            #endregion
        }
    }
}