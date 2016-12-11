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
            Damage = item.Element("damage");
            Strength = item.Element("strength");
            Usage = item.Element("usage");
            Reach = item.Element("reach");
            Parry = item.Element("parry");
            Block = item.Element("block");
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
