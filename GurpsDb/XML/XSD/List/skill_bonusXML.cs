using System.Xml.Linq;

namespace GurpsDb.XML.XSD.List
{
    public class SkillBonusXml
    {
        public XElement Amount;
        public XElement Name;
        public XElement Specialization;

        public SkillBonusXml(XElement item)
        {
            Name = item.Element("name");
            Specialization = item.Element("specialization");
            Amount = item.Element("amount");
        }
    }
}
