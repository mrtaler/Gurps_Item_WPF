using System.Xml.Linq;

namespace GurpsDb.XML.XSD
{
    public class AmountXml
    {
        public XElement Amount;
        public AmountXml() { }
        public AmountXml(XElement item)
        {
            this.Amount = item;
        }
    }
}
