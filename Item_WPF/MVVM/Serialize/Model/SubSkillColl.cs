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
        /// 1 Element Name
        /// </summary>
        public XElement nameDefaultXml;
        /// <summary>
        /// 2 Element Specialization
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
            nameDefaultXml = itemdefault.Element("Name");
            specializationDefaultXml = itemdefault.Element("Specialization");
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
        public XElement amount;
        public XElement location;
        public dr_bonusXml(XElement item)
        {
            location = item.Element("location");
            amount = item.Element("Amount");
        }
    }

    public class skill_bonusXML
    {
        public XElement amount;
        public XElement name;
        public XElement specialization;

        public skill_bonusXML(XElement item)
        {
            name = item.Element("Name");
            specialization = item.Element("Specialization");
            amount = item.Element("Amount");
        }
    }
    public class spell_bonusXML
    {
        public XElement amount;
        public XElement spell_name;
        public XElement college_name;
        public XAttribute all_colleges;
        public spell_bonusXML(XElement item)
        {
            spell_name = item.Element("spell_name");
            college_name = item.Element("college_name");
            all_colleges = item.Attribute("all_colleges");
            amount = item.Element("Amount");
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
        public XElement Attribute;
        public XElement Amount;
        /// <summary>
        /// Attribute bonus
        /// </summary>
        /// <param Name="itemAttribute_bonus">give 1up Attribute_bonus collection</param>
        public Attribute_bonusXML(XElement itemAttribute_bonus)
        {
            Attribute = itemAttribute_bonus.Element("Attribute");
            Amount = itemAttribute_bonus.Element("Amount");
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
            name = itemmodifier.Element("Name") != null
            ? itemmodifier.Element("Name") : null;

            notes = itemmodifier.Element("Notes") != null
            ? itemmodifier.Element("Notes") : null;
            levels = itemmodifier.Element("levels") != null
              ? itemmodifier.Element("levels") : null;
            cost = itemmodifier.Element("cost") != null
               ? itemmodifier.Element("cost") : null;
            reference = itemmodifier.Element("reference") != null
               ? itemmodifier.Element("reference") : null;
            affects = itemmodifier.Element("affects") != null
               ? itemmodifier.Element("affects") : null;
            version = itemmodifier.Attribute("version") != null
                ? itemmodifier.Attribute("version") : null;
            enabled = itemmodifier.Attribute("enabled") != null
                ? itemmodifier.Attribute("enabled") : null;

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
        public XElement Amount;
        public XElement name;
        public XElement specialization;
        public XElement level;
        public Weapon_bonusXML(XElement itemWeapon_bonusXML)
        {
            Amount = itemWeapon_bonusXML.Element("Amount");
            name = itemWeapon_bonusXML.Element("Name");
            specialization = itemWeapon_bonusXML.Element("Specialization");
            level = itemWeapon_bonusXML.Element("Level");
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
