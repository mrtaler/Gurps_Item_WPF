using System.Xml.Linq;

namespace GurpsDb.XML.XSD.List
{
    public class DrBonusXml
    {
        public XElement Amount;
        public XElement Location;
        public DrBonusXml(XElement item)
        {
            Location = item.Element("location");
            Amount = item.Element("amount");
        }
    }
}
