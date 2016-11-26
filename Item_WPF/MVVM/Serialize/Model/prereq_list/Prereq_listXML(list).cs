using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace Item_WPF.MVVM.Serialize.Model
{
    public partial class Prereq_listXML
    {
        /// <summary>
        /// 1 coll prereq_list 
        /// </summary>
        /// <param Name="itemprereq_list">Prereq_listXML</param>
        public void FPrereq_list(XElement itemprereq_list)
        {
            //
            foreach (var item in itemprereq_list.Elements("prereq_list"))
            {
                Prereq_listXML prqList = new Prereq_listXML();
                prqList.FSkill_prereq(item.Elements("skill_prereq"));

                //  prqList.FSkill_prereq(item.Elements("prereq_list"));
                prqList.FSpell_prereq(item.Elements("prereq_list"));
                prqList.FAttribute_prereq(item.Elements("prereq_list"));
                prqList.FAdvantage_prereq(item.Elements("prereq_list"));
                prqList.FContained_weight_prereq(item.Elements("prereq_list"));

                prqList.when_tl = item.Element("when_tl");
                prqList.college_count = item.Element("CollegeCount");
                prqList.all = item.Attribute("all");
                foreach (var itprereq_list in item.Elements("prereq_list"))
                {
                    Prereq_listXML prqListSub = new Prereq_listXML();
                    prqListSub.FSkill_prereq(itprereq_list.Elements("skill_prereq"));

                    prqListSub.FSkill_prereq(itprereq_list.Elements("prereq_list"));

                    prqListSub.FSpell_prereq(itprereq_list.Elements("prereq_list"));
                    prqListSub.FAttribute_prereq(itprereq_list.Elements("prereq_list"));
                    prqListSub.FAdvantage_prereq(itprereq_list.Elements("prereq_list"));
                    prqListSub.FContained_weight_prereq(itprereq_list.Elements("prereq_list"));

                    prqListSub.when_tl = itprereq_list.Element("when_tl");
                    prqListSub.college_count = itprereq_list.Element("CollegeCount");
                    prqListSub.all = itprereq_list.Attribute("all");
                    prqList.Prereq_list.Add(prqListSub);
                }
                Prereq_list.Add(prqList);
            }
        }
    }
}
