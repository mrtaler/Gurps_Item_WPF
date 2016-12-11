using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GurpsDb.XML.XSD
{
    public class amountXml
    {
        public XElement amount;
        public amountXml() { }
        public amountXml(XElement item)
        {
            amount = item;
        }
    }
}
