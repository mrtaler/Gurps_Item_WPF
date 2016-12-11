using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GurpsDb.XML.XSD.List
{
    public class Attribute_bonusXML
    {
        public XElement Attribute;
        public XElement Amount;
        /// <summary>
        /// Attribute bonus
        /// </summary>
        /// <param name="itemAttribute_bonus">give 1up Attribute_bonus collection</param>
        public Attribute_bonusXML(XElement itemAttribute_bonus)
        {
            Attribute = itemAttribute_bonus.Element("attribute");
            Amount = itemAttribute_bonus.Element("amount");
        }
    }
}
