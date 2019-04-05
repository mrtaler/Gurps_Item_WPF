using System.Xml.Linq;

namespace GurpsDb.XML.XSD.List
{
    public class WeaponBonusXml
    {
        public XElement Amount;
        public XElement Name;
        public XElement Specialization;
        public XElement Level;
        public WeaponBonusXml(XElement itemWeaponBonusXml)
        {
            this.Amount = itemWeaponBonusXml.Element("amount");
            this.Name = itemWeaponBonusXml.Element("name");
            this.Specialization = itemWeaponBonusXml.Element("specialization");
            this.Level = itemWeaponBonusXml.Element("level");
        }
    }
}
