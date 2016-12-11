using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GurpsDb.XML.XSD.List
{
    public class spell_bonusXML
    {
        public XElement amount;
        public XElement spell_name;
        public XElement college_name;
        public XAttribute all_colleges;
        public spell_bonusXML(XElement item)
        {
            spell_name = item.Element("spell_name");
            college_name = item.Element("college_name");
            all_colleges = item.Attribute("all_colleges");
            amount = item.Element("amount");
        }
    }
}
