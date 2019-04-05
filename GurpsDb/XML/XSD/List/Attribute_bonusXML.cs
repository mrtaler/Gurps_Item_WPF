using System.Xml.Linq;

namespace GurpsDb.XML.XSD.List
{
    public class AttributeBonusXml
    {
        public XElement Attribute;
        public XElement Amount;

        /// <summary>
        /// Attribute bonus
        /// </summary>
        /// <param name="itemAttributeBonus">give 1up Attribute_bonus collection</param>
        public AttributeBonusXml(XElement itemAttributeBonus)
        {
            this.Attribute = itemAttributeBonus.Element("attribute");
            this.Amount = itemAttributeBonus.Element("amount");
        }
    }
}
