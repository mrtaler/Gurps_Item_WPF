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
            this.Name = itemmodifier.Element("name") != null
            ? itemmodifier.Element("name") : null;

            this.Notes = itemmodifier.Element("notes") != null
            ? itemmodifier.Element("notes") : null;
            this.Levels = itemmodifier.Element("levels") != null
              ? itemmodifier.Element("levels") : null;
            this.Cost = itemmodifier.Element("cost") != null
               ? itemmodifier.Element("cost") : null;
            this.Reference = itemmodifier.Element("reference") != null
               ? itemmodifier.Element("reference") : null;
            this.Affects = itemmodifier.Element("affects") != null
               ? itemmodifier.Element("affects") : null;
            this.Version = itemmodifier.Attribute("version") != null
                ? itemmodifier.Attribute("version") : null;
            this.Enabled = itemmodifier.Attribute("enabled") != null
                ? itemmodifier.Attribute("enabled") : null;

            if (itemmodifier.Element("skill_bonus") != null)
            {
                this.SkillBonus = new ObservableCollection<SkillBonusXml>();
                foreach (var item in itemmodifier.Elements("skill_bonus"))
                {
                    this.SkillBonus.Add(new SkillBonusXml(item));
                }
            }

            if (itemmodifier.Element("attribute_bonus") != null)
            {
                this.AttributeBonus = new ObservableCollection<AttributeBonusXml>();
                foreach (var itemattributeBonus in itemmodifier.Elements("attribute_bonus"))
                {
                    this.AttributeBonus.Add(new AttributeBonusXml(itemattributeBonus));
                }
            }
        }
    }
}
