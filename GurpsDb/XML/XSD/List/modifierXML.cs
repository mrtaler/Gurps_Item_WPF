using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GurpsDb.XML.XSD.List
{
    /// <summary>
    /// work
    /// </summary>
    public class modifierXML
    {
        public ObservableCollection<skill_bonusXML> skill_bonus;
        public ObservableCollection<Attribute_bonusXML> attribute_bonus;
        public XElement name;
        public XElement notes;
        public XElement levels;
        public XElement cost;
        public XElement reference;
        public XElement affects;
        public XAttribute version;
        public XAttribute enabled;
        public modifierXML(XElement itemmodifier)
        {
            name = itemmodifier.Element("name") != null
            ? itemmodifier.Element("name") : null;

            notes = itemmodifier.Element("notes") != null
            ? itemmodifier.Element("notes") : null;
            levels = itemmodifier.Element("levels") != null
              ? itemmodifier.Element("levels") : null;
            cost = itemmodifier.Element("cost") != null
               ? itemmodifier.Element("cost") : null;
            reference = itemmodifier.Element("reference") != null
               ? itemmodifier.Element("reference") : null;
            affects = itemmodifier.Element("affects") != null
               ? itemmodifier.Element("affects") : null;
            version = itemmodifier.Attribute("version") != null
                ? itemmodifier.Attribute("version") : null;
            enabled = itemmodifier.Attribute("enabled") != null
                ? itemmodifier.Attribute("enabled") : null;

            if (itemmodifier.Element("skill_bonus") != null)
            {
                skill_bonus = new ObservableCollection<skill_bonusXML>();
                foreach (var item in itemmodifier.Elements("skill_bonus"))
                {
                    skill_bonus.Add(new skill_bonusXML(item));
                }
            }

            if (itemmodifier.Element("attribute_bonus") != null)
            {
                attribute_bonus = new ObservableCollection<Attribute_bonusXML>();
                foreach (var itemattribute_bonus in itemmodifier.Elements("attribute_bonus"))
                {
                    attribute_bonus.Add(new Attribute_bonusXML(itemattribute_bonus));
                }
            }
        }
    }
}
