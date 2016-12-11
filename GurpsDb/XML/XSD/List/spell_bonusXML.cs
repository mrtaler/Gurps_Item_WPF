using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GurpsDb.XML.XSD.List
{
    public class SpellBonusXml
    {
        public XElement Amount;
        public XElement SpellName;
        public XElement CollegeName;
        public XAttribute AllColleges;
        public SpellBonusXml(XElement item)
        {
            SpellName = item.Element("spell_name");
            CollegeName = item.Element("college_name");
            AllColleges = item.Attribute("all_colleges");
            Amount = item.Element("amount");
        }
    }
}
