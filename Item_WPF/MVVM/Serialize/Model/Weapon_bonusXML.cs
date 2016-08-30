using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections.ObjectModel;
using System.Xml.Linq;

namespace Item_WPF.MVVM.Serialize.Model
{
    public class Weapon_bonusXML
    {
        public ObservableCollection<amountXml> Amount = new ObservableCollection<amountXml>();
        public XElement name;
        public XElement specialization;
        public XElement level;
        public Weapon_bonusXML(XElement itemWeapon_bonusXML)
        {
            foreach (var item in itemWeapon_bonusXML.Elements("amount"))
            {
                amountXml amoxml = new amountXml();
                amoxml.amount = item;
                Amount.Add(amoxml);
            }
            name = itemWeapon_bonusXML.Element("name");
            specialization = itemWeapon_bonusXML.Element("specialization");
            level = itemWeapon_bonusXML.Element("level");
        }
    }
}
