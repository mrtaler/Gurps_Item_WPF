namespace GurpsDb.XML.XSD
{
    public class CostReductionXml
    {
        public XElement Attribute;
        public XElement Percentage;
        public CostReductionXml(XElement item)
        {
            Attribute = item.Element("attribute");
            Percentage = item.Element("percentage");
        }
    }
}
