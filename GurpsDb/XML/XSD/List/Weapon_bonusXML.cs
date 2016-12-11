using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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
            Amount = itemWeaponBonusXml.Element("amount");
            Name = itemWeaponBonusXml.Element("name");
            Specialization = itemWeaponBonusXml.Element("specialization");
            Level = itemWeaponBonusXml.Element("level");
        }
    }
}
