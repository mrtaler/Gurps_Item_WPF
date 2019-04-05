using System.Collections.ObjectModel;
using System.Xml.Linq;

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
            this.Damage = item.Element("damage");
            this.Strength = item.Element("strength");
            this.Usage = item.Element("usage");
            this.Accuracy = item.Element("accuracy");
            this.Range = item.Element("range");
            this.RateOfFire = item.Element("rate_of_fire");
            this.Recoil = item.Element("recoil");
            this.Shots = item.Element("shots");
            this.Bulk = item.Element("bulk");
            if (item.Element("default") != null)
            {
                this.Default = new ObservableCollection<DefaultXml>();
                foreach (var itemdefault in item.Elements("default"))
                {
                    this.Default.Add(new DefaultXml(itemdefault));
                }
            }
        }

    }
}
