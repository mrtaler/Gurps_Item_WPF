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
        public void FPPrereq_list(Prereq_listXML item)
        {
            when_tlCompare = item.when_tl != null
                                           ? item.when_tl.Attribute("Compare").Value.ToString() : null;
            when_tl = item.when_tl != null
                                    ? item.when_tl.Value.ToString() : null;
            college_countCompare = item.college_count != null
                                    ? item.college_count.Attribute("Compare").Value.ToString() : null;
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
                sklprq.nameCompare = itemSkill_prereq.Name != null
                                                ? itemSkill_prereq.Name.Attribute("Compare").Value.ToString() : null;
                sklprq.name = itemSkill_prereq.Name != null
                                                ? itemSkill_prereq.Name.Value.ToString() : null;

                sklprq.specializationCompare = itemSkill_prereq.Specialization != null
                                                ? itemSkill_prereq.Specialization.Attribute("Compare").Value.ToString() : null;
                sklprq.specialization = itemSkill_prereq.Specialization != null
                                                ? itemSkill_prereq.Specialization.Value.ToString() : null;

                sklprq.levelSPCompare = itemSkill_prereq.Level != null
                                                ? itemSkill_prereq.Level.Attribute("Compare").Value.ToString() : null;
                sklprq.levelSP = itemSkill_prereq.Level != null
                                                ? itemSkill_prereq.Level.Value.ToString() : null;

                sklprq.has = itemSkill_prereq.Has != null
                                                ? itemSkill_prereq.Has.Value.ToString() : null;
                skill_prereqDB.Add(sklprq);
            }

        }
        public void FPspell_prereq(Prereq_listXML item)
        {
            foreach (var itemspell_prereqDB in item.Spell_prereq)
            {
                spell_prereqDB splprq = new spell_prereqDB();

                splprq.nameCompare = itemspell_prereqDB.Name != null
                                    ? itemspell_prereqDB.Name.Attribute("Compare").Value.ToString() : null;
                splprq.name = itemspell_prereqDB.Name != null
                                    ? itemspell_prereqDB.Name.Value.ToString() : null;
                splprq.collegeCompare = itemspell_prereqDB.College != null
                                    ? itemspell_prereqDB.College.Attribute("Compare").Value.ToString() : null;
                splprq.college = itemspell_prereqDB.College != null
                                    ? itemspell_prereqDB.College.Value.ToString() : null;
                splprq.college_countCompare = itemspell_prereqDB.CollegeCount != null
                                    ? itemspell_prereqDB.CollegeCount.Attribute("Compare").Value.ToString() : null;
                splprq.college_count = itemspell_prereqDB.CollegeCount != null
                                    ? itemspell_prereqDB.CollegeCount.Value.ToString() : null;
                splprq.quantityCompare = itemspell_prereqDB.Quantity != null
                                    ? itemspell_prereqDB.Quantity.Attribute("Compare").Value.ToString() : null;
                splprq.quantity = itemspell_prereqDB.Quantity != null
                                    ? itemspell_prereqDB.Quantity.Value.ToString() : null;
                splprq.anyt = itemspell_prereqDB.Any != null
                                    ? itemspell_prereqDB.Any.Value.ToString() : null;
                splprq.has = itemspell_prereqDB.Has != null
                                    ? itemspell_prereqDB.Has.Value.ToString() : null;
                //  splprq.Value =itemspell_prereqDB.
                spell_prereqDB.Add(splprq);
            }
        }

        public void FPattribute_prereq(Prereq_listXML item)
        {
            foreach (var itemAttribute_prereq in item.Attribute_prereq)
            {
                attribute_prereq atrprq = new attribute_prereq();
                atrprq.has = itemAttribute_prereq.Has != null
                                    ? itemAttribute_prereq.Has.Value.ToString() : null;
                atrprq.which = itemAttribute_prereq.Which != null
                                ? itemAttribute_prereq.Which.Value.ToString() : null;
                atrprq.compare = itemAttribute_prereq.Compare != null
                                ? itemAttribute_prereq.Compare.Value.ToString() : null;
                atrprq.combined_with = itemAttribute_prereq.CombinedWith != null
                                ? itemAttribute_prereq.CombinedWith.Value.ToString() : null;
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
                advprq.nameCompare = itemAdvantage_prereq.Name != null
                    ? itemAdvantage_prereq.Name.Attribute("Compare").Value.ToString() : null;
                advprq.name = itemAdvantage_prereq.Name != null
                    ? itemAdvantage_prereq.Name.Value.ToString() : null;
                advprq.notesCompare = itemAdvantage_prereq.Notes != null
                    ? itemAdvantage_prereq.Notes.Attribute("Compare").Value.ToString() : null;
                advprq.notes = itemAdvantage_prereq.Notes != null
                    ? itemAdvantage_prereq.Notes.Value.ToString() : null;
                advprq.levelCompare = itemAdvantage_prereq.Level != null
                    ? itemAdvantage_prereq.Level.Attribute("Compare").Value.ToString() : null;
                advprq.level = itemAdvantage_prereq.Level != null
                    ? itemAdvantage_prereq.Level.Value.ToString() : null;
                advprq.has = itemAdvantage_prereq.Has != null
                    ? itemAdvantage_prereq.Has.Value.ToString() : null;
                //advprq.Value NVARCHAR(50) NULL
                advantage_prereq.Add(advprq);
            }
        }
        public void FPcontained_weight_prereq(Prereq_listXML item)
        {
            foreach (var itemContained_weight_prereq in item.Contained_weight_prereq)
            {
                contained_weight_prereq contprq = new contained_weight_prereq();
                contprq.has = itemContained_weight_prereq.Has != null
                    ? itemContained_weight_prereq.Has.Value.ToString() : null;
                contprq.compare = itemContained_weight_prereq.Compare != null
                    ? itemContained_weight_prereq.Compare.Value.ToString() : null;
                contprq.Value = itemContained_weight_prereq.Value != null
                    ? itemContained_weight_prereq.Value.ToString() : null;
                contained_weight_prereq.Add(contprq);
            }
        }
        public prereq_listDB(Prereq_listXML item)
            :this()
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
