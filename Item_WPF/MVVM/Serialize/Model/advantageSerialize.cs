using System.Collections.ObjectModel;
using Item_WPF.ItemEntityModel;
using System.Xml.Linq;

namespace Item_WPF.MVVM.Serialize.Model
{
    class AdvantageSerialize
    {
        private item1Entities context;
        public ObservableCollection<AdvantageXML> AdvantageXmlCollection = new ObservableCollection<AdvantageXML>();
        public AdvantageSerialize(string xmlString, string writePath)
        {
            context = new item1Entities();
            int contextAdded = 0;
            var xdoc = XDocument.Load(xmlString);

            #region Read XML For AdvantageXML
            foreach (XElement skillElement in xdoc.Element("advantage_list").Elements("advantage"))
            {
                contextAdded += 1;
                AdvantageXML advXml = new AdvantageXML();
                advXml.numPP = contextAdded ;
                advXml.name = skillElement.Element("Name");
                advXml.type = skillElement.Element("type");
                advXml.levels = skillElement.Element("levels");
                advXml.points_per_level = skillElement.Element("points_per_level");
                advXml.base_points = skillElement.Element("base_points");
                advXml.reference = skillElement.Element("reference");
                advXml.notes = skillElement.Element("Notes");
                advXml.version = skillElement.Attribute("version");
                advXml.round_down = skillElement.Attribute("round_down");
                advXml.cr = skillElement.Element("cr");

                #region categories
                if (skillElement.Element("categories").Elements("category") != null)
                {
                    advXml.categories = new ObservableCollection<CategoriesXML>();
                    foreach (var itemCategory in skillElement.Elements("categories").Elements("category"))
                    {
                        CategoriesXML cat = new CategoriesXML(itemCategory);
                        advXml.categories.Add(cat);
                    }
                }
                #endregion
                #region prereq_list
                if (skillElement.Element("prereq_list") != null)
                {
                    advXml.prereq_list = new ObservableCollection<Prereq_listXML>();
                    foreach (XElement itemprereqList in skillElement.Elements("prereq_list"))
                    {
                        Prereq_listXML prl = new Prereq_listXML(itemprereqList, skillElement);
                        advXml.prereq_list.Add(prl);
                    }
                }
                #endregion
                #region attribute_bonus
                if (skillElement.Element("attribute_bonus") != null)
                {
                    advXml.attribute_bonus = new ObservableCollection<Attribute_bonusXML>();
                    foreach (XElement itemskillElement in skillElement.Elements("attribute_bonus"))
                    {
                        Attribute_bonusXML atrbns = new Attribute_bonusXML(itemskillElement);
                        advXml.attribute_bonus.Add(atrbns);
                    }
                }
                #endregion
                #region Weapon_bonusXML
                if (skillElement.Element("weapon_bonus") != null)
                {
                    advXml.weapon_bonus = new ObservableCollection<Weapon_bonusXML>();
                    foreach (var itemweaponBonus in skillElement.Elements("weapon_bonus"))
                    {
                        Weapon_bonusXML wpnbns = new Weapon_bonusXML(itemweaponBonus);
                        advXml.weapon_bonus.Add(wpnbns);
                    }
                }
                #endregion
                #region modifier
                if (skillElement.Element("modifier") != null)
                {
                    advXml.modifier = new ObservableCollection<modifierXML>();
                    foreach (var itemmodifier in skillElement.Elements("modifier"))
                    {
                        modifierXML mdf = new modifierXML(itemmodifier);
                        advXml.modifier.Add(mdf);
                    }
                }
                #endregion
                #region   skill_bonus
                if (skillElement.Element("skill_bonus") != null)
                {
                    advXml.skill_bonus = new ObservableCollection<skill_bonusXML>();
                    foreach (var itemmodifier in skillElement.Elements("skill_bonus"))
                    { advXml.skill_bonus.Add(new skill_bonusXML(itemmodifier)); }
                }
                #endregion
                #region     spell_bonus
                if (skillElement.Element("spell_bonus") != null)
                {
                    advXml.spell_bonus = new ObservableCollection<spell_bonusXML>();
                    foreach (var itemmodifier in skillElement.Elements("spell_bonus"))
                    { advXml.spell_bonus.Add(new spell_bonusXML(itemmodifier)); }
                }
                #endregion
                #region  dr_bonus
                if (skillElement.Element("dr_bonus") != null)
                {
                    advXml.dr_bonus = new ObservableCollection<dr_bonusXml>();
                    foreach (var itemmodifier in skillElement.Elements("dr_bonus"))
                    { advXml.dr_bonus.Add(new dr_bonusXml(itemmodifier)); }
                }
                #endregion
                #region   melee_weapon;
                if (skillElement.Element("melee_weapon") != null)
                {
                    advXml.melee_weapon = new ObservableCollection<melee_weaponXML>();
                    foreach (var itemmodifier in skillElement.Elements("melee_weapon"))
                    { advXml.melee_weapon.Add(new melee_weaponXML(itemmodifier)); }
                }
                #endregion
                #region      ranged_weapon;
                if (skillElement.Element("ranged_weapon") != null)
                {
                    advXml.ranged_weapon = new ObservableCollection<ranged_weaponXML>();
                    foreach (var itemmodifier in skillElement.Elements("ranged_weapon"))
                    { advXml.ranged_weapon.Add(new ranged_weaponXML(itemmodifier)); }
                }
                #endregion
                #region        cost_reduction;
                if (skillElement.Element("cost_reduction") != null)
                {
                    advXml.cost_reduction = new ObservableCollection<CostReductionXml>();
                    foreach (var itemmodifier in skillElement.Elements("cost_reduction"))
                    { advXml.cost_reduction.Add(new CostReductionXml(itemmodifier)); }
                }
                #endregion
                #region          cr;
                //if (skillElement.Element("cr") != null)
                //{
                //    advXML.cr = new ObservableCollection<CrXml>();
                //    foreach (var itemmodifier in skillElement.Elements("cr"))
                //    { advXML.cr.Add(new CrXml(itemmodifier)); }
                //}
                #endregion
                
                AdvantageXmlCollection.Add(advXml);

            }
            #endregion
            foreach (AdvantageXML advXml in AdvantageXmlCollection)
            {
             //   Advantage adv = 

                context.Advantages.Add(new Advantage(advXml,context));
            }
            context.SaveChanges();
        }
    }
}
