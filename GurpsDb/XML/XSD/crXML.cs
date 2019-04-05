using System.Xml.Linq;

namespace GurpsDb.XML.XSD
{
    public class CrXml
    {
        public XAttribute Adj;
        public CrXml(XElement item)
        {
            this.Adj = item.Attribute("adj");
        }
    }
}
