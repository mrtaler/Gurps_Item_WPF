using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections.ObjectModel;
using Item_WPF.ItemEntityModel;
using System.Xml.Linq;
using Item_WPF.MVVM.Serialize.Model;

namespace Item_WPF.MVVM.Serialize.Model
{
    class advantageSerialize
    {
        private item1Entities _context;
        public ObservableCollection<AdvantageXML> AdvantageXMLCollection = new ObservableCollection<AdvantageXML>();
        public advantageSerialize(string xmlString, string writePath)
        {
            _context = new item1Entities();
            int contextAdded = 0;
            XDocument xdoc = XDocument.Load(xmlString);

            #region Read XML For AdvantageXML
            foreach (XElement skillElement in xdoc.Element("advantage_list").Elements("advantage"))
            {
                contextAdded += 1;
                AdvantageXML advXML = new AdvantageXML();
                advXML.numPP = contextAdded ;
                advXML.name = skillElement.Element("name");
                advXML.type = skillElement.Element("type");
                advXML.levels = skillElement.Element("levels");
                advXML.points_per_level = skillElement.Element("points_per_level");
                advXML.base_points = skillElement.Element("base_points");
                advXML.reference = skillElement.Element("reference");
                advXML.notes = skillElement.Element("notes");
                advXML.version = skillElement.Attribute("version");
                advXML.round_down = skillElement.Attribute("round_down");
                advXML.cr = skillElement.Element("cr");

                #region categories
                if (skillElement.Element("categories").Elements("category") != null)
                {
                    advXML.categories = new ObservableCollection<CategoriesXML>();
                    foreach (var itemCategory in skillElement.Elements("categories").Elements("category"))
                    {
                        CategoriesXML cat = new CategoriesXML(itemCategory);
                        advXML.categories.Add(cat);
                    }
                }
                #endregion
                #region prereq_list
                if (skillElement.Element("prereq_list") != null)
                {
                    advXML.prereq_list = new ObservableCollection<Prereq_listXML>();
                    foreach (XElement itemprereq_list in skillElement.Elements("prereq_list"))
                    {
                        Prereq_listXML prl = new Prereq_listXML(itemprereq_list, skillElement);
                        advXML.prereq_list.Add(prl);
                    }
                }
                #endregion
                #region attribute_bonus
                if (skillElement.Element("attribute_bonus") != null)
                {
                    advXML.attribute_bonus = new ObservableCollection<Attribute_bonusXML>();
                    foreach (XElement itemskillElement in skillElement.Elements("attribute_bonus"))
                    {
                        Attribute_bonusXML atrbns = new Attribute_bonusXML(itemskillElement);
                        advXML.attribute_bonus.Add(atrbns);
                    }
                }
                #endregion
                #region Weapon_bonusXML
                if (skillElement.Element("weapon_bonus") != null)
                {
                    advXML.weapon_bonus = new ObservableCollection<Weapon_bonusXML>();
                    foreach (var itemweapon_bonus in skillElement.Elements("weapon_bonus"))
                    {
                        Weapon_bonusXML wpnbns = new Weapon_bonusXML(itemweapon_bonus);
                        advXML.weapon_bonus.Add(wpnbns);
                    }
                }
                #endregion
                #region modifier
                if (skillElement.Element("modifier") != null)
                {
                    advXML.modifier = new ObservableCollection<modifierXML>();
                    foreach (var itemmodifier in skillElement.Elements("modifier"))
                    {
                        modifierXML mdf = new modifierXML(itemmodifier);
                        advXML.modifier.Add(mdf);
                    }
                }
                #endregion
                #region   skill_bonus
                if (skillElement.Element("skill_bonus") != null)
                {
                    advXML.skill_bonus = new ObservableCollection<skill_bonusXML>();
                    foreach (var itemmodifier in skillElement.Elements("skill_bonus"))
                    { advXML.skill_bonus.Add(new skill_bonusXML(itemmodifier)); }
                }
                #endregion
                #region     spell_bonus
                if (skillElement.Element("spell_bonus") != null)
                {
                    advXML.spell_bonus = new ObservableCollection<spell_bonusXML>();
                    foreach (var itemmodifier in skillElement.Elements("spell_bonus"))
                    { advXML.spell_bonus.Add(new spell_bonusXML(itemmodifier)); }
                }
                #endregion
                #region  dr_bonus
                if (skillElement.Element("dr_bonus") != null)
                {
                    advXML.dr_bonus = new ObservableCollection<dr_bonusXml>();
                    foreach (var itemmodifier in skillElement.Elements("dr_bonus"))
                    { advXML.dr_bonus.Add(new dr_bonusXml(itemmodifier)); }
                }
                #endregion
                #region   melee_weapon;
                if (skillElement.Element("melee_weapon") != null)
                {
                    advXML.melee_weapon = new ObservableCollection<melee_weaponXML>();
                    foreach (var itemmodifier in skillElement.Elements("melee_weapon"))
                    { advXML.melee_weapon.Add(new melee_weaponXML(itemmodifier)); }
                }
                #endregion
                #region      ranged_weapon;
                if (skillElement.Element("ranged_weapon") != null)
                {
                    advXML.ranged_weapon = new ObservableCollection<ranged_weaponXML>();
                    foreach (var itemmodifier in skillElement.Elements("ranged_weapon"))
                    { advXML.ranged_weapon.Add(new ranged_weaponXML(itemmodifier)); }
                }
                #endregion
                #region        cost_reduction;
                if (skillElement.Element("cost_reduction") != null)
                {
                    advXML.cost_reduction = new ObservableCollection<cost_reductionXML>();
                    foreach (var itemmodifier in skillElement.Elements("cost_reduction"))
                    { advXML.cost_reduction.Add(new cost_reductionXML(itemmodifier)); }
                }
                #endregion
                #region          cr;
                //if (skillElement.Element("cr") != null)
                //{
                //    advXML.cr = new ObservableCollection<crXML>();
                //    foreach (var itemmodifier in skillElement.Elements("cr"))
                //    { advXML.cr.Add(new crXML(itemmodifier)); }
                //}
                #endregion
                
                AdvantageXMLCollection.Add(advXML);

            }
            #endregion
            foreach (AdvantageXML advXML in AdvantageXMLCollection)
            {
             //   Advantage adv = 

                _context.Advantages.Add(new Advantage(advXML));
            }
            _context.SaveChanges();
        }
    }
}
