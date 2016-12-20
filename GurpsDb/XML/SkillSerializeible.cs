using System.Collections.ObjectModel;
using System.Linq;
using System.Windows.Forms;
using System.Xml.Linq;
using GurpsDb.GurpsModel;
using GurpsDb.XML.XSD;
using GurpsDb.XML.XSD.List;
using GurpsDb.XML.XSD.prereq_list;
using System.Collections.Generic;

namespace GurpsDb.XML
{
    public class SkillSerializeible
    {
        private ContextGurpsModel _context;
        List<GurpsCategory> gurpsList;
        public ObservableCollection<GurpsSkill> GurpsSkillCollection = new ObservableCollection<GurpsSkill>();
        private ObservableCollection<GurpsSkill> collectionGurpsSkills;
        public ObservableCollection<SkillXmlModel> OutstringCollectionSkill = new ObservableCollection<SkillXmlModel>();
        //   public ObservableCollection<GurpsSkillCategory> gurpsSkillCategories = new ObservableCollection<GurpsSkillCategory>();
        public ObservableCollection<string> Retcompare;
        public SkillSerializeible(string xmlString, string writePath)
        {
            _context = new ContextGurpsModel();
            collectionGurpsSkills = new ObservableCollection<GurpsSkill>(_context.GurpsSkillDbSet);
           gurpsList=new List<GurpsCategory>(_context.GurpsCategoryDbSet);
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
                qwerty.Default = new ObservableCollection<DefaultXml>();
                foreach (var itemdefault in skillElement.Elements("default"))
                {
                    DefaultXml def = new DefaultXml(itemdefault);
                    qwerty.Default.Add(def);
                }
                #endregion
                #region categories Collection
                qwerty.Categories = new ObservableCollection<CategoriesXml>();
                foreach (var itemCategory in skillElement.Elements("categories").Elements("category"))
                {
                    CategoriesXml cat = new CategoriesXml(itemCategory);
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
                    AttributeBonusXml atrbns = new AttributeBonusXml(itemskillElement);
                    qwerty.AttributeBonus.Add(atrbns);
                }
                #endregion
                #region Weapon_bonusXML
                foreach (var itemweaponBonus in skillElement.Elements("weapon_bonus"))
                {
                    WeaponBonusXml wpnbns = new WeaponBonusXml(itemweaponBonus);
                    qwerty.WeaponBonus.Add(wpnbns);
                }
                #endregion
                qwerty.Type = "skill";
                OutstringCollectionSkill.Add(qwerty);
                GurpsSkillCollection.Add(new GurpsSkill(qwerty, "skill"));
                //qwerty.weapon_bonus =       new ObservableCollection<Weapon_bonusXML>   (skillElement.Elements("weapon_bonus"));
                //OutstringCollection.Add(qwerty);
                //contextAdded += 1;
            }

            #endregion
            #region Readd for tech
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
                techXml.Default = new ObservableCollection<DefaultXml>();
                foreach (var itemdefault in techElement.Elements("default"))
                {
                    DefaultXml def = new DefaultXml(itemdefault);
                    techXml.Default.Add(def);
                }
                #endregion
                #region categories Collection
                techXml.Categories = new ObservableCollection<CategoriesXml>();
                foreach (var itemCategory in techElement.Elements("categories").Elements("category"))
                {
                    CategoriesXml cat = new CategoriesXml(itemCategory);
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
                GurpsSkillCollection.Add(new GurpsSkill(techXml, "technique"));
            }
            #endregion
            contextAdded = 0;


            foreach (SkillXmlModel item in OutstringCollectionSkill)
            {
                //string nameSkill = item.NameSkill != null
                //                 ? item.NameSkill.Value.ToString() : null;
                //string specSkill = item.Specialization != null
                //                 ? item.Specialization.Value.ToString() : null;
                //string versSkill = item.Version != null
                //  ? item.Version.Value.ToString() : null;
                //string typeSkill = item.Type != null
                // ? item.Type : null;

                GurpsSkill skillFromHash = GurpsSkillCollection.
                    FirstOrDefault(p => p.GetHashCode() == item.GetHashCode());

                GurpsSkill tt = collectionGurpsSkills.
                    FirstOrDefault(p => p.GetHashCode() == item.GetHashCode());


                skillFromHash.FGurpsSkill(item, gurpsList, GurpsSkillCollection);
                if (tt==null)
                {
                    _context.GurpsSkillDbSet.Add(skillFromHash);
                    contextAdded++;
                }
               
                // }
            }
            _context.SaveChanges();
            MessageBox.Show("_context SaveChanges"+ contextAdded);
        }
    }
}
