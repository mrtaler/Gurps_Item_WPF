using System.Xml.Linq;

namespace GurpsDb.XML.XSD.List
{
    public class DrBonusXml
    {
        public XElement Amount;
        public XElement Location;
        public DrBonusXml(XElement item)
        {
            this.Location = item.Element("location");
            this.Amount = item.Element("amount");
        }
    }
}
