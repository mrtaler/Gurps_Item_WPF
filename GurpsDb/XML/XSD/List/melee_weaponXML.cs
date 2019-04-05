using System.Collections.ObjectModel;
using System.Xml.Linq;

namespace GurpsDb.XML.XSD.List
{
    public class MeleeWeaponXml
    {
        public ObservableCollection<DefaultXml> Default;
        public XElement Damage;
        public XElement Strength;
        public XElement Usage;
        public XElement Reach;
        public XElement Parry;
        public XElement Block;
        public MeleeWeaponXml(XElement item)
        {
            this.Damage = item.Element("damage");
            this.Strength = item.Element("strength");
            this.Usage = item.Element("usage");
            this.Reach = item.Element("reach");
            this.Parry = item.Element("parry");
            this.Block = item.Element("block");
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
