using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GurpsDb.XML.XSD.List
{
    public class skill_bonusXML
    {
        public XElement amount;
        public XElement name;
        public XElement specialization;

        public skill_bonusXML(XElement item)
        {
            name = item.Element("name");
            specialization = item.Element("specialization");
            amount = item.Element("amount");
        }
    }
}
