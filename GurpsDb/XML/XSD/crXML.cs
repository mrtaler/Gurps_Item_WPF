using System.Xml.Linq;

namespace GurpsDb.XML.XSD
{
    public class CrXml
    {
        public XAttribute Adj;
        public CrXml(XElement item)
        {
            Adj = item.Attribute("adj");
        }
    }
}
