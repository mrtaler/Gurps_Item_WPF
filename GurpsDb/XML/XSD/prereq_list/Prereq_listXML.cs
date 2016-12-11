using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace Item_WPF.MVVM.Serialize.Model
{
    public partial class PrereqListXml
    {
        /// <summary>
        /// 1 coll prereq_list
        /// </summary>
        public ObservableCollection<PrereqListXml> PrereqList;
        /// <summary>
        /// 2 coll skill_prereq
        /// </summary>
        public ObservableCollection<skill_prereqXml> SkillPrereq;
        /// <summary>
        /// 3 coll spell_prereq
        /// </summary>
        public ObservableCollection<spell_prereqXml> SpellPrereq;
        /// <summary>
        /// 4 coll attribute_prereq
        /// </summary>
        public ObservableCollection<attribute_prereqXml> AttributePrereq;
        /// <summary>
        /// 5 coll advantage_prereq
        /// </summary>
        public ObservableCollection<advantage_prereqXml> AdvantagePrereq;
        /// <summary>
        /// 6 coll contained_weight_prereq
        /// </summary>
        public ObservableCollection<contained_weight_prereqXml> ContainedWeightPrereq;
        /// <summary>
        /// 1_1 Element   when_tl
        /// </summary>
        public XElement WhenTl;
        /// <summary>
        /// 1_2 Element college_count
        /// </summary>
        public XElement CollegeCount;
        /// <summary>
        /// 1_3  Attribute all
        /// </summary>
        public XAttribute All;
        public PrereqListXml()
        {
            PrereqList = new ObservableCollection<PrereqListXml>();
            SkillPrereq = new ObservableCollection<skill_prereqXml>();
            SpellPrereq = new ObservableCollection<spell_prereqXml>();
            AttributePrereq = new ObservableCollection<attribute_prereqXml>();
            AdvantagePrereq = new ObservableCollection<advantage_prereqXml>();
            ContainedWeightPrereq = new ObservableCollection<contained_weight_prereqXml>();
        }
        public PrereqListXml(XElement itemprereqList, XElement skillElement) :
            this()
        {
            FPrereq_list(itemprereqList);                                  //1
            FSkill_prereq(itemprereqList.Elements("skill_prereq"));        //2
            FSpell_prereq(itemprereqList.Elements("spell_prereq"));            //3
            FAttribute_prereq(itemprereqList.Elements("attribute_prereq"));        //4
            FAdvantage_prereq(itemprereqList.Elements("advantage_prereq"));        //5
            FContained_weight_prereq(itemprereqList.Elements("contained_weight_prereq")); //6

            WhenTl = itemprereqList.Element("when_tl");
            CollegeCount = itemprereqList.Element("college_count");
            All = itemprereqList.Attribute("all");
        }

        /// <summary>
        /// 2 Skill_prereq collections
        /// </summary>
        /// <param name="itemprereqList">Prereq_listXML</param>
        public void FSkill_prereq(IEnumerable<XElement> itemprereqList)
        {
            foreach (var items in itemprereqList/*.Elements("skill_prereq")*/)
            {
                if (items.Elements("skill_prereq") != null)
                {
                    skill_prereqXml sclprq = new skill_prereqXml();
                    //FSingleSkill_prereq(items, sclprq);
                    sclprq.name = items.Element("name");

                    sclprq.level = items.Element("level");
                    sclprq.specialization = items.Element("specialization");
                    sclprq.has = items.Attribute("has");
                    SkillPrereq.Add(sclprq);
                }
            }
        }

        /// <summary>
        ///  3 coll spell_prereq
        /// </summary>
        /// <param name="itemprereqList">Prereq_listXML</param>
        public void FSpell_prereq(IEnumerable<XElement> itemprereqList)
        {
            foreach (var item in itemprereqList)
            {
                spell_prereqXml splrprq = new spell_prereqXml();
                splrprq.name = item.Element("name");
                splrprq.college = item.Element("college");
                splrprq.college_count = item.Element("college_count");
                splrprq.quantity = item.Element("quantity");
                splrprq.any = item.Element("any");
                splrprq.has = item.Attribute("has");
                SpellPrereq.Add(splrprq);
            }
        }
        /// <summary>
        /// 4 coll attribute_prereq
        /// </summary>
        /// <param name="itemprereqList">Prereq_listXML</param>
        public void FAttribute_prereq(IEnumerable<XElement> itemprereqList)
        {
            foreach (var item in itemprereqList)
            {
                attribute_prereqXml atrprq = new attribute_prereqXml();

                atrprq.has = item.Attribute("has");
                atrprq.which = item.Attribute("which");
                atrprq.compare = item.Attribute("compare");
                atrprq.combined_with = item.Attribute("combined_with");
                atrprq.Value = item.Value.ToString();
                AttributePrereq.Add(atrprq);
            }

        }
        /// <summary>
        ///  5 coll advantage_prereq
        /// </summary>
        /// <param name="itemprereqList">Prereq_listXML</param>
        public void FAdvantage_prereq(IEnumerable<XElement> itemprereqList)
        {

            foreach (var itemAdvantagePrereq in itemprereqList)
            {
                advantage_prereqXml advprq = new advantage_prereqXml();
                advprq.name = itemAdvantagePrereq.Element("name");
                advprq.notes = itemAdvantagePrereq.Element("notes");
                advprq.level = itemAdvantagePrereq.Element("level");
                advprq.has = itemAdvantagePrereq.Attribute("has");
                AdvantagePrereq.Add(advprq);
            }

        }
        /// <summary>
        /// 6 coll contained_weight_prereq
        /// </summary>
        /// <param name="itemprereqList">Prereq_listXML</param>
        public void FContained_weight_prereq(IEnumerable<XElement> itemprereqList)
        {
            foreach (var item in itemprereqList)
            {
                contained_weight_prereqXml cwprq = new contained_weight_prereqXml();
                cwprq.has = item.Attribute("has");
                cwprq.compare = item.Attribute("compare");
                cwprq.Value = item.Value.ToString();
                ContainedWeightPrereq.Add(cwprq);
            }
        }
    }
}
