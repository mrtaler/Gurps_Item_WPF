using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GurpsDb.XML.XSD.List
{
    public class Weapon_bonusXML
    {
        public XElement Amount;
        public XElement name;
        public XElement specialization;
        public XElement level;
        public Weapon_bonusXML(XElement itemWeapon_bonusXML)
        {
            Amount = itemWeapon_bonusXML.Element("amount");
            name = itemWeapon_bonusXML.Element("name");
            specialization = itemWeapon_bonusXML.Element("specialization");
            level = itemWeapon_bonusXML.Element("level");
        }
    }
}
