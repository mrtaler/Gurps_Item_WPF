using Item_WPF.MVVM.Serialize.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Item_WPF.ItemEntityModel
{

    public partial class prereq_listDB
    {
     //   public prereq_listDB() { }

        public void FPPrereq_list(Prereq_listXML item)
        {
            when_tlCompare = item.when_tl != null
                                           ? item.when_tl.Attribute("compare").Value.ToString() : null;
            when_tl = item.when_tl != null
                                    ? item.when_tl.Value.ToString() : null;
            college_countCompare = item.college_count != null
                                    ? item.college_count.Attribute("compare").Value.ToString() : null;
            college_count = item.college_count != null
                                    ? item.college_count.Value.ToString() : null;
            all = item.all != null
                                    ? item.all.Value.ToString() : null;

        }
        public void FPskill_prereq(Prereq_listXML item)
        {
            // skill_prereqDB=new  
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
                skill_prereqDB.Add(sklprq);
            }

        }
        public void FPspell_prereq(Prereq_listXML item)
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
                spell_prereqDB.Add(splprq);
            }
        }

        public void FPattribute_prereq(Prereq_listXML item)
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
                attribute_prereq.Add(atrprq);
            }
        }

        public void FPadvantage_prereq(Prereq_listXML item)
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
                advantage_prereq.Add(advprq);
            }
        }
        public void FPcontained_weight_prereq(Prereq_listXML item)
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
                contained_weight_prereq.Add(contprq);
            }
        }
        public prereq_listDB(Prereq_listXML item)
       //     : this()
        {

            FPPrereq_list(item);

            FPskill_prereq(item);
            FPspell_prereq(item);
            FPattribute_prereq(item);
            FPadvantage_prereq(item);
            FPcontained_weight_prereq(item);

            #region prq_list
            if (item.Prereq_list != null)
            {
                foreach (var itemPrereq_list in item.Prereq_list)
                {
                    prereq_listDB prlDBSub = new prereq_listDB();


                    prlDBSub.FPPrereq_list(itemPrereq_list);
                    prlDBSub.FPskill_prereq(itemPrereq_list);

                    prlDBSub.FPspell_prereq(itemPrereq_list);
                    prlDBSub.FPattribute_prereq(itemPrereq_list);
                    prlDBSub.FPadvantage_prereq(itemPrereq_list);
                    prlDBSub.FPcontained_weight_prereq(itemPrereq_list);

                    if (itemPrereq_list.Prereq_list != null)
                    {
                        foreach (var itemSubPrereq_list in itemPrereq_list.Prereq_list)
                        {
                            prereq_listDB prlDBSubSub = new prereq_listDB();

                            prlDBSubSub.FPPrereq_list(itemSubPrereq_list);
                            prlDBSubSub.FPskill_prereq(itemSubPrereq_list);

                            prlDBSubSub.FPspell_prereq(itemSubPrereq_list);
                            prlDBSubSub.FPattribute_prereq(itemSubPrereq_list);
                            prlDBSubSub.FPadvantage_prereq(itemSubPrereq_list);
                            prlDBSubSub.FPcontained_weight_prereq(itemSubPrereq_list);

                            prlDBSub.prereq_listDB1.Add(prlDBSubSub);
                        }
                    }
                    prereq_listDB1.Add(prlDBSub);
                }
            }
            #endregion
        }
    }
}
