using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Item_WPF.MVVM.Serialize.Model;

namespace Item_WPF.ItemEntityModel
{
    public partial class Advantage
    {
       // public Advantage() { }
        public Advantage(AdvantageXML advXML)
        {
            name = advXML.name != null
                                  ? advXML.name.Value.ToString() : null;
            nameCompare = advXML.name.Attribute("Compare") != null
                                        ? advXML.name.Attribute("Compare").Value.ToString() : null;
            typeadc = advXML.type != null
                                        ? advXML.type.Value.ToString() : null;
            levels = advXML.levels != null
                                        ? advXML.levels.Value.ToString() : null;
            points_per_level = advXML.points_per_level != null
                                        ? advXML.points_per_level.Value.ToString() : null;
            base_points = advXML.base_points != null
                                        ? advXML.base_points.Value.ToString() : null;
            reference = advXML.reference != null
                                        ? advXML.reference.Value.ToString() : null;
            notes = advXML.notes != null
                                        ? advXML.notes.Value.ToString() : null;
            cr = advXML.cr != null
                                        ? advXML.cr.Value.ToString() : null;
            versionadv = advXML.version != null
                                        ? advXML.version.Value.ToString() : null;
            round_down = advXML.round_down != null
                                        ? advXML.round_down.Value.ToString() : null;
            #region Prereq_listXML
            if (advXML.prereq_list != null)
            {


                var q = advXML.prereq_list;
                foreach (Prereq_listXML item in advXML.prereq_list)
                {
                    prereq_listDB prlDB = new prereq_listDB();
                    FPPrereq_list(item, prlDB);

                    //   FPskill_prereq(item, prlDB);
                    //   FPspell_prereq(item, prlDB);
                    //   FPattribute_prereq(item, prlDB);
                    //   FPadvantage_prereq(item, prlDB);
                    //   FPcontained_weight_prereq(item, prlDB);

                    #region prq_list
                    foreach (var itemPrereq_list in item.Prereq_list)
                    {
                        prereq_listDB prlDBSub = new prereq_listDB();


                        FPPrereq_list(itemPrereq_list, prlDBSub);
                        //        FPskill_prereq(itemPrereq_list, prlDBSub);

                        // FPspell_prereq(itemPrereq_list, prlDBSub);
                        //FPattribute_prereq(itemPrereq_list, prlDBSub);
                        //FPadvantage_prereq(itemPrereq_list, prlDBSub);
                        //FPcontained_weight_prereq(itemPrereq_list, prlDBSub);


                        foreach (var itemSubPrereq_list in itemPrereq_list.Prereq_list)
                        {
                            prereq_listDB prlDBSubSub = new prereq_listDB();

                            FPPrereq_list(itemSubPrereq_list, prlDBSubSub);
                            //      FPskill_prereq(itemSubPrereq_list, prlDBSubSub);

                            //    FPspell_prereq(itemSubPrereq_list, prlDBSubSub);
                            //  FPattribute_prereq(itemSubPrereq_list, prlDBSubSub);
                            //FPadvantage_prereq(itemSubPrereq_list, prlDBSubSub);
                            //FPcontained_weight_prereq(itemSubPrereq_list, prlDBSubSub);

                            prlDBSub.prereq_listDB1.Add(prlDBSubSub);
                        }
                        prlDB.prereq_listDB1.Add(prlDBSub);
                    }
                    #endregion
                    prereq_listDB.Add(prlDB);
                }
            }
            #endregion
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

    }
}
