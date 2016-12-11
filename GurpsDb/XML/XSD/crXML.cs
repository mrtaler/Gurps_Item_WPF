using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GurpsDb.XML.XSD
{
    public class crXML
    {
        public XAttribute adj;
        public crXML(XElement item)
        {
            adj = item.Attribute("adj");
        }
    }
}
