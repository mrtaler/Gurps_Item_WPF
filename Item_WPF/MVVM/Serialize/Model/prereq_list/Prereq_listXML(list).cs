﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace Item_WPF.MVVM.Serialize.Model.prereq_list
{
    public partial class Prereq_listXML
    {
        /// <summary>
        /// 1 coll prereq_list 
        /// </summary>
        /// <param name="itemprereq_list">Prereq_listXML</param>
        public void FPrereq_list( XElement  itemprereq_list)
        {
            foreach (var item in itemprereq_list.Elements("prereq_list"))
            {
                Prereq_listXML prqList = new Prereq_listXML();
                //skill_prereqXml sclprq = new skill_prereqXml();
                prqList.FSkill_prereq(item.Elements("skill_prereq"));
                ///prqList.Skill_prereq.Add(sclprq);
                prqList.FSkill_prereq(item.Elements("prereq_list"));
                prqList.FSpell_prereq(item.Elements("prereq_list"));
                prqList.FAttribute_prereq(item.Elements("prereq_list"));
                prqList.FAdvantage_prereq(item.Elements("prereq_list"));
                prqList.FContained_weight_prereq(item.Elements("prereq_list"));

                prqList.when_tl = item.Element("when_tl");
                prqList.college_count = item.Element("college_count");
                prqList.all = item.Attribute("all");
                Prereq_list.Add(prqList);
            }
        }
    }
}
