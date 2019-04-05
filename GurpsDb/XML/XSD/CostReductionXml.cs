using System.Xml.Linq;

namespace GurpsDb.XML.XSD
{
    public class CostReductionXml
    {
        public XElement Attribute;
        public XElement Percentage;
        public CostReductionXml(XElement item)
        {
            this.Attribute = item.Element("attribute");
            this.Percentage = item.Element("percentage");
        }
    }
}
