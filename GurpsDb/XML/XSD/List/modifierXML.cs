using System.Collections.ObjectModel;
using System.Xml.Linq;

namespace GurpsDb.XML.XSD.List
{
    /// <summary>
    /// work
    /// </summary>
    public class ModifierXml
    {
        public ObservableCollection<SkillBonusXml> SkillBonus;
        public ObservableCollection<AttributeBonusXml> AttributeBonus;
        public XElement Name;
        public XElement Notes;
        public XElement Levels;
        public XElement Cost;
        public XElement Reference;
        public XElement Affects;
        public XAttribute Version;
        public XAttribute Enabled;
        public ModifierXml(XElement itemmodifier)
        {
            Name = itemmodifier.Element("name") != null
            ? itemmodifier.Element("name") : null;

            Notes = itemmodifier.Element("notes") != null
            ? itemmodifier.Element("notes") : null;
            Levels = itemmodifier.Element("levels") != null
              ? itemmodifier.Element("levels") : null;
            Cost = itemmodifier.Element("cost") != null
               ? itemmodifier.Element("cost") : null;
            Reference = itemmodifier.Element("reference") != null
               ? itemmodifier.Element("reference") : null;
            Affects = itemmodifier.Element("affects") != null
               ? itemmodifier.Element("affects") : null;
            Version = itemmodifier.Attribute("version") != null
                ? itemmodifier.Attribute("version") : null;
            Enabled = itemmodifier.Attribute("enabled") != null
                ? itemmodifier.Attribute("enabled") : null;

            if (itemmodifier.Element("skill_bonus") != null)
            {
                SkillBonus = new ObservableCollection<SkillBonusXml>();
                foreach (var item in itemmodifier.Elements("skill_bonus"))
                {
                    SkillBonus.Add(new SkillBonusXml(item));
                }
            }

            if (itemmodifier.Element("attribute_bonus") != null)
            {
                AttributeBonus = new ObservableCollection<AttributeBonusXml>();
                foreach (var itemattributeBonus in itemmodifier.Elements("attribute_bonus"))
                {
                    AttributeBonus.Add(new AttributeBonusXml(itemattributeBonus));
                }
            }
        }
    }
}
