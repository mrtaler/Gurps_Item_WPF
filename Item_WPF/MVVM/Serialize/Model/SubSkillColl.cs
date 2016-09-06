using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml.Linq;
using System.Collections.ObjectModel;

namespace Item_WPF.MVVM.Serialize.Model
{
    /// <summary>
    /// Table="default"
    /// </summary>
    public partial class DefaultXML
    {
        /// <summary>
        /// 1 Element name
        /// </summary>
        public XElement nameDefaultXml;
        /// <summary>
        /// 2 Element specialization
        /// </summary>
        public XElement specializationDefaultXml;
        /// <summary>
        /// 3 Element type
        /// </summary>
        public XElement typeDefaultXml;
        /// <summary>
        /// 4 Element modifier 
        /// </summary>
        public XElement modifierDefaultXml;
        public DefaultXML() { }
        public DefaultXML(XElement itemdefault)
        {
            nameDefaultXml = itemdefault.Element("name");
            specializationDefaultXml = itemdefault.Element("specialization");
            typeDefaultXml = itemdefault.Element("type");
            modifierDefaultXml = itemdefault.Element("modifier");
        }
    }
    public partial class CategoriesXML
    {
        public XElement category;
        public CategoriesXML() { }
        public CategoriesXML(XElement itemCategoryx)
        {
            category = itemCategoryx;
        }
    }
    public class dr_bonusXml
    {
        public ObservableCollection<amountXml> amount;
        public XElement location;
        public dr_bonusXml(XElement item)
        {
            location = item.Element("location");
            if (item.Element("amount") != null)
            {
                amount = new ObservableCollection<amountXml>();
                foreach (var itemamount in item.Elements("amount"))
                {
                    amount.Add(new amountXml(itemamount));
                }
            }
        }
    }
    public class skill_bonusXML
    {
        public ObservableCollection<amountXml> amount;
        public XElement name;
        public XElement specialization;
        public skill_bonusXML(XElement item)
        {
            name = item.Element("name");
            specialization = item.Element("specialization");
            if (item.Element("amount") != null)
            {
                amount = new ObservableCollection<amountXml>();
                foreach (var itemamount in item.Elements("amount"))
                {
                    amountXml amoxml = new amountXml(itemamount);
                    amount.Add(amoxml);
                }
            }
        }

    }
    public class spell_bonusXML
    {
        public ObservableCollection<amountXml> amount;
        public XElement spell_name;
        public XElement college_name;
        public XAttribute all_colleges;
        public spell_bonusXML(XElement item)
        {
            spell_name = item.Element("spell_name");
            college_name = item.Element("college_name");
            all_colleges = item.Attribute("all_colleges");
            if (item.Element("amount") != null)
            {
                amount = new ObservableCollection<amountXml>();
                foreach (var itemamount in item.Elements("amount"))
                {
                    amountXml amoxml = new amountXml(itemamount);
                    amount.Add(amoxml);
                }
            }
        }
    }
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
    public class Attribute_bonusXML
    {
        public ObservableCollection<attributeXml> Attribute = new ObservableCollection<attributeXml>();
        public ObservableCollection<amountXml> Amount = new ObservableCollection<amountXml>();
        /// <summary>
        /// Attribute bonus
        /// </summary>
        /// <param name="itemAttribute_bonus">give 1up Attribute_bonus collection</param>
        public Attribute_bonusXML(XElement itemAttribute_bonus)
        {
            foreach (var item in itemAttribute_bonus.Elements("attribute"))
            {
                attributeXml atrxml = new attributeXml();
                atrxml.attribute = item;
                Attribute.Add(atrxml);
            }
            foreach (var item in itemAttribute_bonus.Elements("amount"))
            {
                amountXml amoxml = new amountXml();
                amoxml.amount = item;
                Amount.Add(amoxml);
            }
        }
    }
    /// <summary>
    /// work
    /// </summary>
    public class modifierXML
    {
        public ObservableCollection<skill_bonusXML> skill_bonus;
        public ObservableCollection<Attribute_bonusXML> attribute_bonus;
        public XElement name;
        public XElement notes;
        public XElement levels;
        public XElement cost;
        public XElement reference;
        public XElement affects;
        public XAttribute version;
        public XAttribute enabled;
        public modifierXML(XElement itemmodifier)
        {
            name = itemmodifier.Element("name");
            notes = itemmodifier.Element("notes");
            levels = itemmodifier.Element("levels");
            cost = itemmodifier.Element("cost");
            reference = itemmodifier.Element("reference");
            affects = itemmodifier.Element("affects");
            version = itemmodifier.Attribute("version");
            enabled = itemmodifier.Attribute("enabled");

            if (itemmodifier.Element("skill_bonus") != null)
            {
                skill_bonus = new ObservableCollection<skill_bonusXML>();
                foreach (var item in itemmodifier.Elements("skill_bonus"))
                {
                    skill_bonus.Add(new skill_bonusXML(item));
                }
            }

            if (itemmodifier.Element("attribute_bonus") != null)
            {
                attribute_bonus = new ObservableCollection<Attribute_bonusXML>();
                foreach (var itemattribute_bonus in itemmodifier.Elements("attribute_bonus"))
                {
                    attribute_bonus.Add(new Attribute_bonusXML(itemattribute_bonus));
                }
            }
        }
    }
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
