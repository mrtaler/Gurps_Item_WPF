using System.Collections.ObjectModel;
using Item_WPF.ItemEntityModel;
using System.Xml.Linq;

namespace Item_WPF.MVVM.Serialize.Model
{
    class AdvantageSerialize
    {
        private item1Entities _context;
        public ObservableCollection<AdvantageXml> AdvantageXmlCollection = new ObservableCollection<AdvantageXml>();
        public AdvantageSerialize(string xmlString, string writePath)
        {
            _context = new item1Entities();
            int contextAdded = 0;
            XDocument xdoc = XDocument.Load(xmlString);

            #region Read XML For AdvantageXML
            foreach (XElement skillElement in xdoc.Element("advantage_list").Elements("advantage"))
            {
                contextAdded += 1;
                AdvantageXml advXml = new AdvantageXml();
                advXml.NumPp = contextAdded;
                advXml.Name = skillElement.Element("name");
                advXml.Type = skillElement.Element("type");
                advXml.Levels = skillElement.Element("levels");
                advXml.PointsPerLevel = skillElement.Element("points_per_level");
                advXml.BasePoints = skillElement.Element("base_points");
                advXml.Reference = skillElement.Element("reference");
                advXml.Notes = skillElement.Element("notes");
                advXml.Version = skillElement.Attribute("version");
                advXml.RoundDown = skillElement.Attribute("round_down");
                advXml.Cr = skillElement.Element("cr");

                #region categories
                if (skillElement.Element("categories").Elements("category") != null)
                {
                    advXml.Categories = new ObservableCollection<CategoriesXML>();
                    foreach (var itemCategory in skillElement.Elements("categories").Elements("category"))
                    {
                        CategoriesXML cat = new CategoriesXML(itemCategory);
                        advXml.Categories.Add(cat);
                    }
                }
                #endregion
                #region prereq_list
                if (skillElement.Element("prereq_list") != null)
                {
                    advXml.PrereqList = new ObservableCollection<PrereqListXml>();
                    foreach (XElement itemprereqList in skillElement.Elements("prereq_list"))
                    {
                        PrereqListXml prl = new PrereqListXml(itemprereqList, skillElement);
                        advXml.PrereqList.Add(prl);
                    }
                }
                #endregion
                #region attribute_bonus
                if (skillElement.Element("attribute_bonus") != null)
                {
                    advXml.AttributeBonus = new ObservableCollection<Attribute_bonusXML>();
                    foreach (XElement itemskillElement in skillElement.Elements("attribute_bonus"))
                    {
                        Attribute_bonusXML atrbns = new Attribute_bonusXML(itemskillElement);
                        advXml.AttributeBonus.Add(atrbns);
                    }
                }
                #endregion
                #region Weapon_bonusXML
                if (skillElement.Element("weapon_bonus") != null)
                {
                    advXml.WeaponBonus = new ObservableCollection<Weapon_bonusXML>();
                    foreach (var itemweaponBonus in skillElement.Elements("weapon_bonus"))
                    {
                        Weapon_bonusXML wpnbns = new Weapon_bonusXML(itemweaponBonus);
                        advXml.WeaponBonus.Add(wpnbns);
                    }
                }
                #endregion
                #region modifier
                if (skillElement.Element("modifier") != null)
                {
                    advXml.Modifier = new ObservableCollection<modifierXML>();
                    foreach (var itemmodifier in skillElement.Elements("modifier"))
                    {
                        modifierXML mdf = new modifierXML(itemmodifier);
                        advXml.Modifier.Add(mdf);
                    }
                }
                #endregion
                #region   skill_bonus
                if (skillElement.Element("skill_bonus") != null)
                {
                    advXml.SkillBonus = new ObservableCollection<skill_bonusXML>();
                    foreach (var itemmodifier in skillElement.Elements("skill_bonus"))
                    { advXml.SkillBonus.Add(new skill_bonusXML(itemmodifier)); }
                }
                #endregion
                #region     spell_bonus
                if (skillElement.Element("spell_bonus") != null)
                {
                    advXml.SpellBonus = new ObservableCollection<spell_bonusXML>();
                    foreach (var itemmodifier in skillElement.Elements("spell_bonus"))
                    { advXml.SpellBonus.Add(new spell_bonusXML(itemmodifier)); }
                }
                #endregion
                #region  dr_bonus
                if (skillElement.Element("dr_bonus") != null)
                {
                    advXml.DrBonus = new ObservableCollection<dr_bonusXml>();
                    foreach (var itemmodifier in skillElement.Elements("dr_bonus"))
                    { advXml.DrBonus.Add(new dr_bonusXml(itemmodifier)); }
                }
                #endregion
                #region   melee_weapon;
                if (skillElement.Element("melee_weapon") != null)
                {
                    advXml.MeleeWeapon = new ObservableCollection<melee_weaponXML>();
                    foreach (var itemmodifier in skillElement.Elements("melee_weapon"))
                    { advXml.MeleeWeapon.Add(new melee_weaponXML(itemmodifier)); }
                }
                #endregion
                #region      ranged_weapon;
                if (skillElement.Element("ranged_weapon") != null)
                {
                    advXml.RangedWeapon = new ObservableCollection<ranged_weaponXML>();
                    foreach (var itemmodifier in skillElement.Elements("ranged_weapon"))
                    { advXml.RangedWeapon.Add(new ranged_weaponXML(itemmodifier)); }
                }
                #endregion
                #region        cost_reduction;
                if (skillElement.Element("cost_reduction") != null)
                {
                    advXml.CostReduction = new ObservableCollection<cost_reductionXML>();
                    foreach (var itemmodifier in skillElement.Elements("cost_reduction"))
                    { advXml.CostReduction.Add(new cost_reductionXML(itemmodifier)); }
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

                AdvantageXmlCollection.Add(advXml);

            }
            #endregion
            foreach (AdvantageXml advXml in AdvantageXmlCollection)
            {
                //   Advantage adv = 

                _context.Advantages.Add(new Advantage(advXml));
            }
            _context.SaveChanges();
        }
    }
}