using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GurpsDb.XML.XSD
{
    public class AmountXml
    {
        public XElement Amount;
        public AmountXml() { }
        public AmountXml(XElement item)
        {
            Amount = item;
        }
    }
}
