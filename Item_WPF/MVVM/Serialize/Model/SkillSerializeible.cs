using System;
using System.Collections.Generic;
using System.Linq;
using System.Collections.ObjectModel;
using System.Xml.Linq;
using System.IO;
using Item_WPF.ItemEntityModel;
using System.Windows;

namespace Item_WPF.MVVM.Serialize.Model
{
    public class SkillSerializeible
    {
        private item1Entities _context;
        public ObservableCollection<GurpsSkill> CollectionCategiry = new ObservableCollection<GurpsSkill>();
        public ObservableCollection<SkillXMLModel> OutstringCollectionSkill = new ObservableCollection<SkillXMLModel>();

        public ObservableCollection<GurpsCategory> gurpsSkillCategories = new ObservableCollection<GurpsCategory>();
        public ObservableCollection<string> retcompare;

        public SkillSerializeible(string xmlString, string writePath)
        {
            _context = new item1Entities();
            retcompare = new ObservableCollection<string>();

            int contextAdded = 1;
            XDocument xdoc = XDocument.Load(xmlString);

            #region Read XML For Skill
            foreach (XElement skillElement in xdoc.Element("skill_list").Elements("skill"))
            {
                contextAdded += 1;
                SkillXMLModel qwerty = new SkillXMLModel();
                qwerty.numPP = contextAdded;
                qwerty.NameSkill = skillElement.Element("name");
                qwerty.Specialization = skillElement.Element("specialization");
                qwerty.tech_level = skillElement.Element("tech_level");
                qwerty.difficulty = skillElement.Element("difficulty");
                qwerty.Points = skillElement.Element("points");
                qwerty.Reference = skillElement.Element("reference");
                qwerty.version = skillElement.Attribute("version");
                qwerty.encumbrance_penalty_multiplier = skillElement.Element("encumbrance_penalty_multiplier");

                qwerty.notes = skillElement.Element("notes");

                #region  Default Collection
                qwerty.Default = new ObservableCollection<DefaultXML>();
                foreach (var itemdefault in skillElement.Elements("default"))
                {
                    DefaultXML def = new DefaultXML(itemdefault);
                    qwerty.Default.Add(def);
                }
                #endregion
                #region categories Collection
                qwerty.categories = new ObservableCollection<CategoriesXML>();
                foreach (var itemCategory in skillElement.Elements("categories").Elements("category"))
                {
                    CategoriesXML cat = new CategoriesXML(itemCategory);
                    qwerty.categories.Add(cat);
                }
                #endregion

                #region prereq_list
                qwerty.prereq_list = new ObservableCollection<Prereq_listXML>();
                foreach (XElement itemprereq_list in skillElement.Elements("prereq_list"))
                {
                    Prereq_listXML prl = new Prereq_listXML(itemprereq_list, skillElement);
                    qwerty.prereq_list.Add(prl);
                }
                #endregion
                #region attribute_bonus
                foreach (XElement itemskillElement in skillElement.Elements("attribute_bonus"))
                {
                    Attribute_bonusXML atrbns = new Attribute_bonusXML(itemskillElement);
                    qwerty.attribute_bonus.Add(atrbns);
                }

                #endregion
                #region Weapon_bonusXML
                foreach (var itemweapon_bonus in skillElement.Elements("weapon_bonus"))
                {
                    Weapon_bonusXML wpnbns = new Weapon_bonusXML(itemweapon_bonus);
                    qwerty.weapon_bonus.Add(wpnbns);
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
                SkillXMLModel techXML = new SkillXMLModel();
                techXML.NameSkill = techElement.Element("name");
                techXML.difficulty = techElement.Element("difficulty");
                techXML.Points = techElement.Element("points");
                techXML.Reference = techElement.Element("reference");
                techXML.notes = techElement.Element("notes");
                techXML.version = techElement.Attribute("version");
                techXML.limit = techElement.Attribute("limit");

                #region  Default Collection
                techXML.Default = new ObservableCollection<DefaultXML>();
                foreach (var itemdefault in techElement.Elements("default"))
                {
                    DefaultXML def = new DefaultXML(itemdefault);
                    techXML.Default.Add(def);
                }
                #endregion
                #region categories Collection
                techXML.categories = new ObservableCollection<CategoriesXML>();
                foreach (var itemCategory in techElement.Elements("categories").Elements("category"))
                {
                    CategoriesXML cat = new CategoriesXML(itemCategory);
                    techXML.categories.Add(cat);
                }
                #endregion
                #region prereq_list
                techXML.prereq_list = new ObservableCollection<Prereq_listXML>();
                foreach (XElement itemprereq_list in techElement.Elements("prereq_list"))
                {
                    Prereq_listXML prl = new Prereq_listXML(itemprereq_list, techElement);
                    techXML.prereq_list.Add(prl);
                }
                #endregion
                techXML.Type = "technique";
                OutstringCollectionSkill.Add(techXML);
                CollectionCategiry.Add(new GurpsSkill(techXML, "technique"));

            }
            // Console.WriteLine("Read XML is Complite\n reading {0} entities", contextAdded.ToString());
            //Console.ReadKey();

            contextAdded = 0;
            //  ObservableCollection<SkillXMLModel> qt = new ObservableCollection<SkillXMLModel>(OutstringCollection.Where(p => p.NameSkill.Value.ToString() == "Group Performance"));
            //    SkillXMLModel qm = qt.FirstOrDefault(p => p.Specialization.Value.ToString() == "Conducting");


            foreach (SkillXMLModel item in OutstringCollectionSkill.OrderBy(p => p.numPP))
            // foreach (SkillXMLModel item in qt)
            {
                string NameSkill = item.NameSkill != null
                                 ? item.NameSkill.Value.ToString() : null;
                string SpecSkill = item.Specialization != null
                                 ? item.Specialization.Value.ToString() : null;
                string VersSkill = item.version != null
                  ? item.version.Value.ToString() : null;
                string TypeSkill = item.Type != null
                 ? item.Type : null;
                GurpsSkill SkillAstronomy = CollectionCategiry
                    .Where(p => p.TypeSkTh == TypeSkill)
                    .Where(p => p.NameSkill == NameSkill)
                    .Where(p => p.Specialization == SpecSkill)
                    .FirstOrDefault(p => p.version == VersSkill);

                //if (item.Specialization.Value.ToString() == "Conducting")
                //  {
                SkillAstronomy.FGurpsSkill(item, _context, CollectionCategiry);
                //  _context.GurpsSkills.AddObject(SkillAstronomy);
                // }
            }


            _context.SaveChanges();
            MessageBox.Show("_context SaveChanges");
        }
        public void ToSqlFromCollString(ObservableCollection<DefaultSkill> ResultOrder, ObservableCollection<string> outSting)
        {
            foreach (var item in ResultOrder)
            {
                outSting.Add("INSERT INTO CharDB.       "
                    + item
                    + "' )GO"
                    );
            }
        }
        public void WriteToFile(string writePathin, ObservableCollection<string> resultin)
        {
            using (StreamWriter sw = new StreamWriter(writePathin, false, System.Text.Encoding.Default))
            {
                foreach (var article in resultin)
                {
                    Console.WriteLine("{0}", article);
                    sw.WriteLine(article);
                }
            }
        }
    }
}
