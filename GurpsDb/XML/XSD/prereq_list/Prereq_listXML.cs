using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Xml.Linq;

namespace GurpsDb.XML.XSD.prereq_list
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
        public ObservableCollection<SkillPrereqXml> SkillPrereq;

        /// <summary>
        /// 3 coll spell_prereq
        /// </summary>
        public ObservableCollection<SpellPrereqXml> SpellPrereq;

        /// <summary>
        /// 4 coll attribute_prereq
        /// </summary>
        public ObservableCollection<AttributePrereqXml> AttributePrereq;

        /// <summary>
        /// 5 coll advantage_prereq
        /// </summary>
        public ObservableCollection<AdvantagePrereqXml> AdvantagePrereq;

        /// <summary>
        /// 6 coll contained_weight_prereq
        /// </summary>
        public ObservableCollection<ContainedWeightPrereqXml> ContainedWeightPrereq;

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
            this.PrereqList = new ObservableCollection<PrereqListXml>();
            this.SkillPrereq = new ObservableCollection<SkillPrereqXml>();
            this.SpellPrereq = new ObservableCollection<SpellPrereqXml>();
            this.AttributePrereq = new ObservableCollection<AttributePrereqXml>();
            this.AdvantagePrereq = new ObservableCollection<AdvantagePrereqXml>();
            this.ContainedWeightPrereq = new ObservableCollection<ContainedWeightPrereqXml>();
        }

        public PrereqListXml(XElement itemprereqList, XElement skillElement) :
            this()
        {
            this.FPrereq_list(itemprereqList);                                  // 1
            this.FSkill_prereq(itemprereqList.Elements("skill_prereq"));        // 2
            this.FSpell_prereq(itemprereqList.Elements("spell_prereq"));            // 3
            this.FAttribute_prereq(itemprereqList.Elements("attribute_prereq"));        // 4
            this.FAdvantage_prereq(itemprereqList.Elements("advantage_prereq"));        // 5
            this.FContained_weight_prereq(itemprereqList.Elements("contained_weight_prereq")); // 6

            this.WhenTl = itemprereqList.Element("when_tl");
            this.CollegeCount = itemprereqList.Element("college_count");
            this.All = itemprereqList.Attribute("all");
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
                    SkillPrereqXml sclprq = new SkillPrereqXml();

                    // FSingleSkill_prereq(items, sclprq);
                    sclprq.Name = items.Element("name");

                    sclprq.Level = items.Element("level");
                    sclprq.Specialization = items.Element("specialization");
                    sclprq.Has = items.Attribute("has");
                    this.SkillPrereq.Add(sclprq);
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
                SpellPrereqXml splrprq = new SpellPrereqXml();
                splrprq.Name = item.Element("name");
                splrprq.College = item.Element("college");
                splrprq.CollegeCount = item.Element("college_count");
                splrprq.Quantity = item.Element("quantity");
                splrprq.Any = item.Element("any");
                splrprq.Has = item.Attribute("has");
                this.SpellPrereq.Add(splrprq);
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
                AttributePrereqXml atrprq = new AttributePrereqXml();

                atrprq.Has = item.Attribute("has");
                atrprq.Which = item.Attribute("which");
                atrprq.Compare = item.Attribute("compare");
                atrprq.CombinedWith = item.Attribute("combined_with");
                atrprq.Value = item.Value.ToString();
                this.AttributePrereq.Add(atrprq);
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
                AdvantagePrereqXml advprq = new AdvantagePrereqXml();
                advprq.Name = itemAdvantagePrereq.Element("name");
                advprq.Notes = itemAdvantagePrereq.Element("notes");
                advprq.Level = itemAdvantagePrereq.Element("level");
                advprq.Has = itemAdvantagePrereq.Attribute("has");
                this.AdvantagePrereq.Add(advprq);
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
                ContainedWeightPrereqXml cwprq = new ContainedWeightPrereqXml();
                cwprq.Has = item.Attribute("has");
                cwprq.Compare = item.Attribute("compare");
                cwprq.Value = item.Value;
                this.ContainedWeightPrereq.Add(cwprq);
            }
        }
    }
}
