using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GurpsDb.XML.XSD.List
{
    public class ranged_weaponXML
    {
        public ObservableCollection<DefaultXML> Default;
        public XElement damage;
        public XElement strength;
        public XElement usage;
        public XElement accuracy;
        public XElement range;
        public XElement rate_of_fire;
        public XElement recoil;
        public XElement shots;
        public XElement bulk;
        public ranged_weaponXML(XElement item)
        {
            damage = item.Element("damage");
            strength = item.Element("strength");
            usage = item.Element("usage");
            accuracy = item.Element("accuracy");
            range = item.Element("range");
            rate_of_fire = item.Element("rate_of_fire");
            recoil = item.Element("recoil");
            shots = item.Element("shots");
            bulk = item.Element("bulk");
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
