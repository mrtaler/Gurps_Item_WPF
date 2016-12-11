using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GurpsDb.XML.XSD
{
    public class cost_reductionXML
    {
        public XElement attribute;
        public XElement percentage;
        public cost_reductionXML(XElement item)
        {
            attribute = item.Element("attribute");
            percentage = item.Element("percentage");
        }
    }
}
