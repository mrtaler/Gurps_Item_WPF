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
            this.Name = item.Element("name");
            this.Specialization = item.Element("specialization");
            this.Amount = item.Element("amount");
        }
    }
}
