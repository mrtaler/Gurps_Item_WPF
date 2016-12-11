using System.Linq;
using System.Collections.ObjectModel;
using System.Xml.Linq;
using Item_WPF.ItemEntityModel;

namespace Item_WPF.MVVM.Serialize.Model
{
    public class SkillSerializeible
    {
        private item1Entities _context;
        public ObservableCollection<GurpsSkill> CollectionCategiry = new ObservableCollection<GurpsSkill>();
        public ObservableCollection<SkillXmlModel> OutstringCollectionSkill = new ObservableCollection<SkillXmlModel>();
        //   public ObservableCollection<GurpsSkillCategory> gurpsSkillCategories = new ObservableCollection<GurpsSkillCategory>();
        public ObservableCollection<string> Retcompare;
        public SkillSerializeible(string xmlString, string writePath)
        {
            _context = new item1Entities();
            Retcompare = new ObservableCollection<string>();
            int contextAdded = 1;
            XDocument xdoc = XDocument.Load(xmlString);
            #region Read XML For Skill
            foreach (XElement skillElement in xdoc.Element("skill_list").Elements("skill"))
            {
                contextAdded += 1;
                SkillXmlModel qwerty = new SkillXmlModel();
                qwerty.NumPp = contextAdded;
                qwerty.NameSkill = skillElement.Element("name");
                qwerty.Specialization = skillElement.Element("specialization");
                qwerty.TechLevel = skillElement.Element("tech_level");
                qwerty.Difficulty = skillElement.Element("difficulty");
                qwerty.Points = skillElement.Element("points");
                qwerty.Reference = skillElement.Element("reference");
                qwerty.Version = skillElement.Attribute("version");
                qwerty.EncumbrancePenaltyMultiplier = skillElement.Element("encumbrance_penalty_multiplier");
                qwerty.Notes = skillElement.Element("notes");
                #region  Default Collection
                qwerty.Default = new ObservableCollection<DefaultXML>();
                foreach (var itemdefault in skillElement.Elements("default"))
                {
                    DefaultXML def = new DefaultXML(itemdefault);
                    qwerty.Default.Add(def);
                }
                #endregion
                #region categories Collection
                qwerty.Categories = new ObservableCollection<CategoriesXML>();
                foreach (var itemCategory in skillElement.Elements("categories").Elements("category"))
                {
                    CategoriesXML cat = new CategoriesXML(itemCategory);
                    qwerty.Categories.Add(cat);
                }
                #endregion
                #region prereq_list
                qwerty.PrereqList = new ObservableCollection<PrereqListXml>();
                foreach (XElement itemprereqList in skillElement.Elements("prereq_list"))
                {
                    PrereqListXml prl = new PrereqListXml(itemprereqList, skillElement);
                    qwerty.PrereqList.Add(prl);
                }
                #endregion
                #region attribute_bonus
                foreach (XElement itemskillElement in skillElement.Elements("attribute_bonus"))
                {
                    Attribute_bonusXML atrbns = new Attribute_bonusXML(itemskillElement);
                    qwerty.AttributeBonus.Add(atrbns);
                }
                #endregion
                #region Weapon_bonusXML
                foreach (var itemweaponBonus in skillElement.Elements("weapon_bonus"))
                {
                    Weapon_bonusXML wpnbns = new Weapon_bonusXML(itemweaponBonus);
                    qwerty.WeaponBonus.Add(wpnbns);
                }
                #endregion
                qwerty.Type = "skill";
                OutstringCollectionSkill.Add(qwerty);
                CollectionCategiry.Add(new GurpsSkill(qwerty, "skill"));
                //qwerty.weapon_bonus =       new ObservableCollection<Weapon_bonusXML>   (skillElement.Elements("weapon_bonus"));
                //OutstringCollection.Add(qwerty);
                //contextAdded += 1;
            }

            #endregion
            foreach (XElement techElement in xdoc.Element("skill_list").Elements("technique"))
            {
                SkillXmlModel techXml = new SkillXmlModel();
                techXml.NameSkill = techElement.Element("name");
                techXml.Difficulty = techElement.Element("difficulty");
                techXml.Points = techElement.Element("points");
                techXml.Reference = techElement.Element("reference");
                techXml.Notes = techElement.Element("notes");
                techXml.Version = techElement.Attribute("version");
                techXml.Limit = techElement.Attribute("limit");
                #region  Default Collection
                techXml.Default = new ObservableCollection<DefaultXML>();
                foreach (var itemdefault in techElement.Elements("default"))
                {
                    DefaultXML def = new DefaultXML(itemdefault);
                    techXml.Default.Add(def);
                }
                #endregion
                #region categories Collection
                techXml.Categories = new ObservableCollection<CategoriesXML>();
                foreach (var itemCategory in techElement.Elements("categories").Elements("category"))
                {
                    CategoriesXML cat = new CategoriesXML(itemCategory);
                    techXml.Categories.Add(cat);
                }
                #endregion
                #region prereq_list
                techXml.PrereqList = new ObservableCollection<PrereqListXml>();
                foreach (XElement itemprereqList in techElement.Elements("prereq_list"))
                {
                    PrereqListXml prl = new PrereqListXml(itemprereqList, techElement);
                    techXml.PrereqList.Add(prl);
                }
                #endregion
                techXml.Type = "technique";
                OutstringCollectionSkill.Add(techXml);
                CollectionCategiry.Add(new GurpsSkill(techXml, "technique"));
            }
            contextAdded = 0;
            foreach (SkillXmlModel item in OutstringCollectionSkill.OrderBy(p => p.NumPp))
            // foreach (SkillXMLModel item in qt)
            {
                string nameSkill = item.NameSkill != null
                                 ? item.NameSkill.Value.ToString() : null;
                string specSkill = item.Specialization != null
                                 ? item.Specialization.Value.ToString() : null;
                string versSkill = item.Version != null
                  ? item.Version.Value.ToString() : null;
                string typeSkill = item.Type != null
                 ? item.Type : null;
                GurpsSkill skillAstronomy = CollectionCategiry
                    .Where(p => p.TypeSkTh == typeSkill)
                    .Where(p => p.NameSkill == nameSkill)
                    .Where(p => p.Specialization == specSkill)
                    .FirstOrDefault(p => p.version == versSkill);

                //if (item.Specialization.Value.ToString() == "Conducting")
                //  {
                skillAstronomy.FGurpsSkill(item, _context, CollectionCategiry);
                _context.GurpsSkills.Add(skillAstronomy);
                // }
            }
            _context.SaveChanges();
            MessageBox.Show("_context SaveChanges");
        }
    }
}
