using System.Xml.Linq;

namespace GurpsDb.XML.XSD.List
{
    public class SpellBonusXml
    {
        public XElement Amount;
        public XElement SpellName;
        public XElement CollegeName;
        public XAttribute AllColleges;
        public SpellBonusXml(XElement item)
        {
            this.SpellName = item.Element("spell_name");
            this.CollegeName = item.Element("college_name");
            this.AllColleges = item.Attribute("all_colleges");
            this.Amount = item.Element("amount");
        }
    }
}
