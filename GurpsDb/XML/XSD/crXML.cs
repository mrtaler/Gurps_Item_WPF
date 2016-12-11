using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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
