using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GurpsDb.XML.XSD.List
{
    public class dr_bonusXml
    {
        public XElement amount;
        public XElement location;
        public dr_bonusXml(XElement item)
        {
            location = item.Element("location");
            amount = item.Element("amount");
        }
    }
}
