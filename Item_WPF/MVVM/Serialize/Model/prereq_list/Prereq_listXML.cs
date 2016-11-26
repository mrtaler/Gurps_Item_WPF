using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
        public ObservableCollection<Prereq_listXML> Prereq_list;
        /// <summary>
        /// 2 coll skill_prereq
        /// </summary>
        public ObservableCollection<SkillPrereqXml> Skill_prereq;
        /// <summary>
        /// 3 coll spell_prereq
        /// </summary>
        public ObservableCollection<SpellPrereqXml> Spell_prereq;
        /// <summary>
        /// 4 coll attribute_prereq
        /// </summary>
        public ObservableCollection<AttributePrereqXml> Attribute_prereq;
        /// <summary>
        /// 5 coll advantage_prereq
        /// </summary>
        public ObservableCollection<AdvantagePrereqXml> Advantage_prereq;
        /// <summary>
        /// 6 coll contained_weight_prereq
        /// </summary>
        public ObservableCollection<ContainedWeightPrereqXml> Contained_weight_prereq;
        /// <summary>
        /// 1_1 Element   when_tl
        /// </summary>
        public XElement when_tl;
        /// <summary>
        /// 1_2 Element CollegeCount
        /// </summary>
        public XElement college_count;
        /// <summary>
        /// 1_3  Attribute all
        /// </summary>
        public XAttribute all;
        public Prereq_listXML()
        {
            Prereq_list = new ObservableCollection<Prereq_listXML>();
            Skill_prereq = new ObservableCollection<SkillPrereqXml>();
            Spell_prereq = new ObservableCollection<SpellPrereqXml>();
            Attribute_prereq = new ObservableCollection<AttributePrereqXml>();
            Advantage_prereq = new ObservableCollection<AdvantagePrereqXml>();
            Contained_weight_prereq = new ObservableCollection<ContainedWeightPrereqXml>();
        }
        public Prereq_listXML(XElement itemprereq_list, XElement skillElement) :
            this()
        {
            FPrereq_list(itemprereq_list);                                  //1
            FSkill_prereq(itemprereq_list.Elements("skill_prereq"));        //2
            FSpell_prereq(itemprereq_list.Elements("spell_prereq"));            //3
            FAttribute_prereq(itemprereq_list.Elements("attribute_prereq"));        //4
            FAdvantage_prereq(itemprereq_list.Elements("advantage_prereq"));        //5
            FContained_weight_prereq(itemprereq_list.Elements("contained_weight_prereq")); //6

            when_tl = itemprereq_list.Element("when_tl");
            college_count = itemprereq_list.Element("CollegeCount");
            all = itemprereq_list.Attribute("all");
        }

        /// <summary>
        /// 2 Skill_prereq collections
        /// </summary>
        /// <param Name="itemprereq_list">Prereq_listXML</param>
        public void FSkill_prereq(IEnumerable<XElement> itemprereq_list)
        {
            foreach (var items in itemprereq_list/*.Elements("skill_prereq")*/)
            {
                if (items.Elements("skill_prereq") != null)
                {
                    SkillPrereqXml sclprq = new SkillPrereqXml();
                    //FSingleSkill_prereq(items, sclprq);
                    sclprq.Name = items.Element("Name");

                    sclprq.Level = items.Element("Level");
                    sclprq.Specialization = items.Element("Specialization");
                    sclprq.Has = items.Attribute("Has");
                    Skill_prereq.Add(sclprq);
                }
            }
        }

        /// <summary>
        ///  3 coll spell_prereq
        /// </summary>
        /// <param Name="itemprereq_list">Prereq_listXML</param>
        public void FSpell_prereq(IEnumerable<XElement> itemprereq_list)
        {
            foreach (var item in itemprereq_list)
            {
                SpellPrereqXml splrprq = new SpellPrereqXml();
                splrprq.Name = item.Element("Name");
                splrprq.College = item.Element("College");
                splrprq.CollegeCount = item.Element("CollegeCount");
                splrprq.Quantity = item.Element("Quantity");
                splrprq.Any = item.Element("Any");
                splrprq.Has = item.Attribute("Has");
                Spell_prereq.Add(splrprq);
            }
        }
        /// <summary>
        /// 4 coll attribute_prereq
        /// </summary>
        /// <param Name="itemprereq_list">Prereq_listXML</param>
        public void FAttribute_prereq(IEnumerable<XElement> itemprereq_list)
        {
            foreach (var item in itemprereq_list)
            {
                AttributePrereqXml atrprq = new AttributePrereqXml();

                atrprq.Has = item.Attribute("Has");
                atrprq.Which = item.Attribute("Which");
                atrprq.Compare = item.Attribute("Compare");
                atrprq.CombinedWith = item.Attribute("CombinedWith");
                atrprq.Value = item.Value.ToString();
                Attribute_prereq.Add(atrprq);
            }

        }
        /// <summary>
        ///  5 coll advantage_prereq
        /// </summary>
        /// <param Name="itemprereq_list">Prereq_listXML</param>
        public void FAdvantage_prereq(IEnumerable<XElement> itemprereq_list)
        {

            foreach (var itemAdvantage_prereq in itemprereq_list)
            {
                AdvantagePrereqXml advprq = new AdvantagePrereqXml();
                advprq.Name = itemAdvantage_prereq.Element("Name");
                advprq.Notes = itemAdvantage_prereq.Element("Notes");
                advprq.Level = itemAdvantage_prereq.Element("Level");
                advprq.Has = itemAdvantage_prereq.Attribute("Has");
                Advantage_prereq.Add(advprq);
            }

        }
        /// <summary>
        /// 6 coll contained_weight_prereq
        /// </summary>
        /// <param Name="itemprereq_list">Prereq_listXML</param>
        public void FContained_weight_prereq(IEnumerable<XElement> itemprereq_list)
        {
            foreach (var item in itemprereq_list)
            {
                ContainedWeightPrereqXml cwprq = new ContainedWeightPrereqXml();
                cwprq.Has = item.Attribute("Has");
                cwprq.Compare = item.Attribute("Compare");
                cwprq.Value = item.Value.ToString();
                Contained_weight_prereq.Add(cwprq);
            }
        }
    }
}
