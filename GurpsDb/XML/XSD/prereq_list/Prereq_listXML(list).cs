using System.Xml.Linq;

namespace GurpsDb.XML.XSD.prereq_list
{
    public partial class PrereqListXml
    {
        /// <summary>
        /// 1 coll prereq_list 
        /// </summary>
        /// <param name="itemprereqList">Prereq_listXML</param>
        public void FPrereq_list(XElement itemprereqList)
        {
            foreach (var item in itemprereqList.Elements("prereq_list"))
            {
                PrereqListXml prqList = new PrereqListXml();
                prqList.FSkill_prereq(item.Elements("skill_prereq"));

                // prqList.FSkill_prereq(item.Elements("prereq_list"));
                prqList.FSpell_prereq(item.Elements("prereq_list"));
                prqList.FAttribute_prereq(item.Elements("prereq_list"));
                prqList.FAdvantage_prereq(item.Elements("prereq_list"));
                prqList.FContained_weight_prereq(item.Elements("prereq_list"));

                prqList.WhenTl = item.Element("when_tl");
                prqList.CollegeCount = item.Element("college_count");
                prqList.All = item.Attribute("all");
                foreach (var itprereqList in item.Elements("prereq_list"))
                {
                    PrereqListXml prqListSub = new PrereqListXml();
                    prqListSub.FSkill_prereq(itprereqList.Elements("skill_prereq"));

                    prqListSub.FSkill_prereq(itprereqList.Elements("prereq_list"));

                    prqListSub.FSpell_prereq(itprereqList.Elements("prereq_list"));
                    prqListSub.FAttribute_prereq(itprereqList.Elements("prereq_list"));
                    prqListSub.FAdvantage_prereq(itprereqList.Elements("prereq_list"));
                    prqListSub.FContained_weight_prereq(itprereqList.Elements("prereq_list"));

                    prqListSub.WhenTl = itprereqList.Element("when_tl");
                    prqListSub.CollegeCount = itprereqList.Element("college_count");
                    prqListSub.All = itprereqList.Attribute("all");
                    prqList.PrereqList.Add(prqListSub);
                }

                this.PrereqList.Add(prqList);
            }
        }
    }
}
