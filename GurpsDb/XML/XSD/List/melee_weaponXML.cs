using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GurpsDb.XML.XSD.List
{
    public class melee_weaponXML
    {
        public ObservableCollection<DefaultXML> Default;
        public XElement damage;
        public XElement strength;
        public XElement usage;
        public XElement reach;
        public XElement parry;
        public XElement block;
        public melee_weaponXML(XElement item)
        {
            damage = item.Element("damage");
            strength = item.Element("strength");
            usage = item.Element("usage");
            reach = item.Element("reach");
            parry = item.Element("parry");
            block = item.Element("block");
            if (item.Element("default") != null)
            {
                Default = new ObservableCollection<DefaultXML>();
                foreach (var itemdefault in item.Elements("default"))
                {
                    Default.Add(new DefaultXML(itemdefault));
                }
            }


        }
    }
}
