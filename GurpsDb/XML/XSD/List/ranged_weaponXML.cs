using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GurpsDb.XML.XSD.List
{
    public class RangedWeaponXml
    {
        public ObservableCollection<DefaultXml> Default;
        public XElement Damage;
        public XElement Strength;
        public XElement Usage;
        public XElement Accuracy;
        public XElement Range;
        public XElement RateOfFire;
        public XElement Recoil;
        public XElement Shots;
        public XElement Bulk;
        public RangedWeaponXml(XElement item)
        {
            Damage = item.Element("damage");
            Strength = item.Element("strength");
            Usage = item.Element("usage");
            Accuracy = item.Element("accuracy");
            Range = item.Element("range");
            RateOfFire = item.Element("rate_of_fire");
            Recoil = item.Element("recoil");
            Shots = item.Element("shots");
            Bulk = item.Element("bulk");
            if (item.Element("default") != null)
            {
                Default = new ObservableCollection<DefaultXml>();
                foreach (var itemdefault in item.Elements("default"))
                {
                    Default.Add(new DefaultXml(itemdefault));
                }
            }
        }

    }
}
