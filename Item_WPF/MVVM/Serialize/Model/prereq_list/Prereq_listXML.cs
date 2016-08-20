using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
        public ObservableCollection<Prereq_listXML> Prereq_list;
        /// <summary>
        /// 2 coll skill_prereq
        /// </summary>
        public ObservableCollection<skill_prereqXml> Skill_prereq;
        /// <summary>
        /// 3 coll spell_prereq
        /// </summary>
        public ObservableCollection<spell_prereqXml> Spell_prereq;
        /// <summary>
        /// 4 coll attribute_prereq
        /// </summary>
        public ObservableCollection<attribute_prereqXml> Attribute_prereq;
        /// <summary>
        /// 5 coll advantage_prereq
        /// </summary>
        public ObservableCollection<advantage_prereqXml> Advantage_prereq;
        /// <summary>
        /// 6 coll contained_weight_prereq
        /// </summary>
        public ObservableCollection<contained_weight_prereqXml> Contained_weight_prereq;
        /// <summary>
        /// 1_1 Element   when_tl
        /// </summary>
        public XElement when_tl;
        /// <summary>
        /// 1_2 Element college_count
        /// </summary>
        public XElement college_count;
        /// <summary>
        /// 1_3  Attribute all
        /// </summary>
        public XAttribute all;
        public Prereq_listXML()
        {
            Prereq_list = new ObservableCollection<Prereq_listXML>();
            Skill_prereq = new ObservableCollection<skill_prereqXml>();
            Spell_prereq = new ObservableCollection<spell_prereqXml>();
            Attribute_prereq = new ObservableCollection<attribute_prereqXml>();
            Advantage_prereq = new ObservableCollection<advantage_prereqXml>();
            Contained_weight_prereq = new ObservableCollection<contained_weight_prereqXml>();
        }

        /// <summary>
        /// 2 Skill_prereq collections
        /// </summary>
        /// <param name="itemprereq_list">Prereq_listXML</param>
        public void FSkill_prereq(IEnumerable<XElement> itemprereq_list)
        {
            foreach (var items in itemprereq_list/*.Elements("skill_prereq")*/)
            {
                skill_prereqXml sclprq = new skill_prereqXml();
                //FSingleSkill_prereq(items, sclprq);
                sclprq.name = items.Element("name");

                sclprq.level = items.Element("level");
                sclprq.specialization = items.Element("specialization");
                sclprq.has = items.Attribute("has");
                Skill_prereq.Add(sclprq);
            }
        }

        /// <summary>
        ///  3 coll spell_prereq
        /// </summary>
        /// <param name="itemprereq_list">Prereq_listXML</param>
        public void FSpell_prereq(IEnumerable<XElement> itemprereq_list)
        {
            foreach (var item in itemprereq_list)
            {
                spell_prereqXml splrprq = new spell_prereqXml();
                splrprq.name = item.Element("name");
                splrprq.college = item.Element("college");
                splrprq.college_count = item.Element("college_count");
                splrprq.quantity = item.Element("quantity");
                splrprq.any = item.Element("any");
                splrprq.has = item.Attribute("has");

            }
        }
        /// <summary>
        /// 4 coll attribute_prereq
        /// </summary>
        /// <param name="itemprereq_list">Prereq_listXML</param>
        public void FAttribute_prereq(IEnumerable<XElement> itemprereq_list)
        {
            foreach (var item in itemprereq_list.Elements("attribute_prereq"))
            {
                attribute_prereqXml atrprq = new attribute_prereqXml();

                atrprq.has = item.Attribute("has");
                atrprq.which = item.Attribute("which");
                atrprq.compare = item.Attribute("compare");
                atrprq.combined_with = item.Attribute("combined_with");
                atrprq.Value = item.Value.ToString();
                Attribute_prereq.Add(atrprq);
            }
        }
        /// <summary>
        ///  5 coll advantage_prereq
        /// </summary>
        /// <param name="itemprereq_list">Prereq_listXML</param>
        public void FAdvantage_prereq(IEnumerable<XElement> itemprereq_list)
        {
            foreach (var itemAdvantage_prereq in itemprereq_list.Elements("advantage_prereq"))
            {
                advantage_prereqXml advprq = new advantage_prereqXml();
                advprq.name = itemAdvantage_prereq.Element("name");
                advprq.notes = itemAdvantage_prereq.Element("notes");
                advprq.level = itemAdvantage_prereq.Element("level");
                advprq.has = itemAdvantage_prereq.Attribute("has");
                Advantage_prereq.Add(advprq);
            }
        }
        /// <summary>
        /// 6 coll contained_weight_prereq
        /// </summary>
        /// <param name="itemprereq_list">Prereq_listXML</param>
        public void FContained_weight_prereq(IEnumerable<XElement> itemprereq_list)
        {
            foreach (var item in itemprereq_list)
            {
                contained_weight_prereqXml cwprq = new contained_weight_prereqXml();
                cwprq.has = item.Attribute("has");
                cwprq.compare = item.Attribute("compare");
                cwprq.Value = item.Value.ToString();
            }
        }
    }    
}
