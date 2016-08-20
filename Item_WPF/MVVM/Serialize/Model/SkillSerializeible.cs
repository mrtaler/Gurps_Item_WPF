using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections.ObjectModel;
using System.IO;
using System.Xml.Linq;
using Item_WPF.ItemEntityModel;
using Item_WPF.MVVM.Serialize.Model;
using Item_WPF.MVVM.Serialize.Model.prereq_list;
using System.Windows;

namespace Item_WPF.MVVM.Serialize
{
    public class SkillSerializeible
    {
        private item1Entities _context;
        public ObservableCollection<ItemEntityModel.GurpsSkill> CollectionCategiry = new ObservableCollection<ItemEntityModel.GurpsSkill>();
        public ObservableCollection<SkillXMLModel> OutstringCollection = new ObservableCollection<SkillXMLModel>();
        public ObservableCollection<GurpsSkillCategory> gurpsSkillCategories = new ObservableCollection<GurpsSkillCategory>();


        public SkillSerializeible(string xmlString, string writePath)
        {
            _context = new item1Entities();

            int contextAdded = 1;
            XDocument xdoc = XDocument.Load(xmlString);

            foreach (XElement skillElement in xdoc.Element("skill_list").Elements("skill"))
            {
                SkillXMLModel qwerty = new SkillXMLModel();
                qwerty.numPP = contextAdded;
                qwerty.NameSkill = skillElement.Element("name");
                qwerty.Specialization = skillElement.Element("specialization");
                if (
                    /*qwerty.NameSkill.Value.ToString() == "Brainwashing"
                    || qwerty.NameSkill.Value.ToString() == "Breaking Blow"
                    ||*/
                   // qwerty.NameSkill.Value.ToString() == "Explosives"
                    //  || qwerty.NameSkill.Value.ToString() == "Computer Hacking"
                    //       || qwerty.NameSkill.Value.ToString() == "Explosives"
                    // || 
                     qwerty.NameSkill.Value.ToString() == "Engineer"
                    )
                {
                    if (qwerty.Specialization.Value.ToString() == "Materials")
                    {
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
                            DefaultXML def = new DefaultXML();
                            def.nameDefaultXml = itemdefault.Element("name");
                            def.specializationDefaultXml = itemdefault.Element("specialization");
                            def.typeDefaultXml = itemdefault.Element("type");
                            def.modifierDefaultXml = itemdefault.Element("modifier");
                            qwerty.Default.Add(def);
                        }
                        #endregion
                        #region categories Collection
                        qwerty.categories = new ObservableCollection<CategoriesXML>();
                        foreach (var itemCategory in skillElement.Elements("categories").Elements("category"))
                        {
                            CategoriesXML cat = new CategoriesXML();
                            cat.category = itemCategory;
                            qwerty.categories.Add(cat);
                        }
                        #endregion
                        #region prereq_list
                        qwerty.prereq_list = new ObservableCollection<Prereq_listXML>();
                        
                        foreach (XElement itemprereq_list in skillElement.Elements("prereq_list"))
                        {
                            Prereq_listXML prl = new Prereq_listXML();
                            prl.FPrereq_list(itemprereq_list);             //1
                            prl.FSkill_prereq(itemprereq_list.Elements("skill_prereq"));            //2
                            prl.FSpell_prereq(skillElement.Elements("prereq_list"));            //3
                            prl.FAttribute_prereq(skillElement.Elements("prereq_list"));        //4
                            prl.FAdvantage_prereq(skillElement.Elements("prereq_list"));        //5
                            prl.FContained_weight_prereq(skillElement.Elements("prereq_list")); //6

                            prl.when_tl = itemprereq_list.Element("when_tl");
                            prl.college_count = itemprereq_list.Element("college_count");
                            prl.all = itemprereq_list.Attribute("all");

                            //foreach (var item in collection)
                            //{

                            //}
                            qwerty.prereq_list.Add(prl);
                        }
                        #endregion

                        OutstringCollection.Add(qwerty);
                        contextAdded += 1;
                    }
                }
                //qwerty.attribute_bonus =    new ObservableCollection<Attribute_bonusXML>(skillElement.Elements("attribute_bonus"));
                //qwerty.weapon_bonus =       new ObservableCollection<Weapon_bonusXML>   (skillElement.Elements("weapon_bonus"));
                //OutstringCollection.Add(qwerty);
                //contextAdded += 1;
            }
            OutstringCollection.OrderBy(p => p.numPP);

            var qew = OutstringCollection.FirstOrDefault(p => p.prereq_list
           .FirstOrDefault(q => q.Attribute_prereq.FirstOrDefault(z => z.which.Value.ToString() == "dx") != null) != null);/*/.
         prereq_list.FirstOrDefault(qq => qq.Attribute_prereq.FirstOrDefault(zz => zz.which.Value.ToString() == "dx") != null).
         Attribute_prereq.FirstOrDefault(z => z.which.Value.ToString() == "dx")         ;*/
            MessageBox.Show("file contains {0} skill entities", contextAdded.ToString());


            contextAdded = 0;
            foreach (SkillXMLModel item in OutstringCollection)
            {
                ObservableCollection<GurpsSkill> qery1;
                string SelectNameFromContext = item.NameSkill.Value.ToString();
                // if (_context.GurpsSkills.Where(p => p.NameSkill == SelectNameFromContext) != null)
                // {
                qery1 = new ObservableCollection<GurpsSkill>
                (_context.GurpsSkills
                    .Where(p => p.NameSkill
                        == SelectNameFromContext));
                // }
                // else qery1 = null;

                string SelectSpecFromQ1 = item.Specialization != null ? item.Specialization.Value.ToString() : null;
                ObservableCollection<GurpsSkill> qery2 = new ObservableCollection<GurpsSkill>
                    (qery1.Where(p => p.Specialization == SelectSpecFromQ1));
                GurpsSkill qery3 = qery2.FirstOrDefault(p => p.version == item.version.Value.ToString());
                if (qery3 == null)
                {
                    GurpsSkill GurpsSkillcat = new GurpsSkill();



                    GurpsSkillcat.NameSkill = item.NameSkill != null ? item.NameSkill.Value.ToString() : null;
                    GurpsSkillcat.Specialization = item.Specialization != null ? item.Specialization.Value.ToString() : null;

                    GurpsSkillcat.idtech_level = item.tech_level != null && item.tech_level.Value.ToString() != "" ? Convert.ToInt32(item.tech_level.Value) : 1;
                    GurpsSkillcat.Difficulty = item.difficulty != null ? item.difficulty.Value.ToString() : null;
                    GurpsSkillcat.Points = item.Points != null ? Convert.ToInt32(item.Points.Value) : 0;
                    GurpsSkillcat.Reference = item.Reference != null ? item.Reference.Value.ToString() : null;
                    GurpsSkillcat.version = item.version != null ? item.version.Value.ToString() : null;
                    GurpsSkillcat.notes = item.notes != null ? item.notes.Value.ToString() : null;
                    GurpsSkillcat.encumbrance_penalty_multiplier = item.encumbrance_penalty_multiplier != null ? item.encumbrance_penalty_multiplier.Value.ToString() : null;

                    if (GurpsSkillcat.idtech_level == 1)
                    {
                        GurpsSkillcat.idtech_level = null;
                    }
                    foreach (var itemCategory in item.categories)
                    {
                        //    var qery = itemCategory.Value.ToString();
                        //    GurpsSkillcat.GurpsSkillCategories.
                        //        Add(_context.GurpsSkillCategories.
                        //        First(p => p.NamelCategory.Contains(qery)));
                    }
                    _context.GurpsSkills.Add(GurpsSkillcat);
                    contextAdded += 1;
                }
            }
            MessageBox.Show(" {0} skill entities added in MS SQL", contextAdded.ToString());
            _context.SaveChanges();

            MessageBox.Show("Context Saved");
            //    GurpsSkill GurpsSkillcat = new GurpsSkill();

            //    //IEnumerable<Object> xmlList = (from item in items.Descendants("skill")
            //    //            //               select new
            //    //            //               {
            //    //            //                   name =           items.Descendants("name").SingleOrDefault(),
            //    //            //                   specialization = items.Descendants("specialization").SingleOrDefault(),
            //    //            //                   tech_level =     items.Descendants("tech_level").SingleOrDefault(),
            //    //            //                   difficulty =     items.Descendants("difficulty").SingleOrDefault(),
            //    //            //                   points =         items.Descendants("points").SingleOrDefault(),
            //    //            //                   reference =      items.Descendants("reference").SingleOrDefault()
            //    //            //               }).ToList();
            /////    GurpsSkillcat.NameSkill = skillElement.Element("name") != null ? skillElement.Element("name").Value.ToString() : "0";
            /////    GurpsSkillcat.Specialization = skillElement.Element("specialization") != null ? skillElement.Element("specialization").Value.ToString() : null;
            /////    GurpsSkillcat.version = skillElement.Attribute("version") != null ? skillElement.Attribute("version").Value.ToString() : null;

            //    ObservableCollection<GurpsSkill> qery1 = new ObservableCollection<GurpsSkill>(_context.GurpsSkills.Where(p => p.NameSkill == GurpsSkillcat.NameSkill));
            //    ObservableCollection<GurpsSkill> qery2 = new ObservableCollection<GurpsSkill>(qery1.Where(p => p.Specialization == GurpsSkillcat.Specialization));
            //    GurpsSkill qery3 = qery2.FirstOrDefault(p => p.version == GurpsSkillcat.version);

            //    if (qery3 == null)
            //    {


            //        GurpsSkillcat.Points = skillElement.Element("points") != null ? Convert.ToInt32(skillElement.Element("points").Value) : 0;
            //        GurpsSkillcat.Reference = skillElement.Element("reference") != null ? skillElement.Element("reference").Value.ToString() : null;


            //        GurpsSkillcat.encumbrance_penalty_multiplier = skillElement.Element("encumbrance_penalty_multiplier") != null ? skillElement.Element("encumbrance_penalty_multiplier").Value.ToString() : null;
            //        GurpsSkillcat.notes = skillElement.Element("notes") != null ? skillElement.Element("notes").Value.ToString() : null;


            //        foreach (var item in skillElement.Elements("categories").Elements("category"))
            //        {


            //            var qery = item.Value.ToString();
            //            GurpsSkillcat.GurpsSkillCategories.
            //                Add(gurpsSkillCategories.
            //                First(p => p.NamelCategory.Contains(qery)));

            //        }
            //        if (GurpsSkillcat.Specialization != null)
            //        //    //if (skillElement.Element("specialization") != null)
            //        {
            //            //if (!item.Specialization.StartsWith("@") & !item.Specialization.EndsWith("@"))
            //            //{
            //            var qq = _context.GurpsSkills.FirstOrDefault(p => p.NameSkill == GurpsSkillcat.NameSkill);
            //            //        if (item.id != qq.id)
            //            {
            //                GurpsSkillcat.idSpecialization = qq.id;
            //            }
            //        }




            //        _context.GurpsSkills.AddObject(GurpsSkillcat);
            //        contextAdded += 1;
            //    }
            //}


            //foreach (var item in CollectionCategiry)
            //{





            //        _context.GurpsSkills.AddObject(item);
            //        
            //    }
            //}


            //foreach (var item in _context.GurpsSkills)
            //{
            //    if (item.NameSkill.Contains("Area Know"))
            //    {

            //    }
            //    if (item.Specialization != null)
            //    //if (skillElement.Element("specialization") != null)
            //    {
            //        //if (!item.Specialization.StartsWith("@") & !item.Specialization.EndsWith("@"))
            //        //{
            //        var qq = _context.GurpsSkills.FirstOrDefault(p => p.NameSkill == item.NameSkill);

            //        if (item.id != qq.id)
            //        {
            //            item.idSpecialization = qq.id;
            //                                }
            //    }
            //}



            // CollectionCategiry.OrderBy(p => p.NameSkill);







            //ObservableCollection<GurpsSkill> result = new ObservableCollection<GurpsSkill>(CollectionCategiry.Distinct());
            //ResultOrder = new ObservableCollection<GurpsSkill>(CollectionCategiry.OrderBy(i => i.NameSkill));

            //WriteToFile(writePath, ResultOrder);
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
    public class SkillComparer : IEqualityComparer<ItemEntityModel.GurpsSkill>
    {
        public bool Equals(ItemEntityModel.GurpsSkill x, ItemEntityModel.GurpsSkill y)
        {

            //Check whether the compared objects reference the same data.
            if (Object.ReferenceEquals(x, y)) return true;

            //Check whether any of the compared objects is null.
            if (Object.ReferenceEquals(x, null) || Object.ReferenceEquals(y, null))
                return false;

            //Check whether the products' properties are equal.
            return x.NameSkill == y.NameSkill && x.Specialization == y.Specialization;
        }
        public int GetHashCode(ItemEntityModel.GurpsSkill product)
        {
            //Check whether the object is null
            if (Object.ReferenceEquals(product, null)) return 0;

            //Get hash code for the Name field if it is not null.
            int hashProductName = product.NameSkill == null ? 0 : product.NameSkill.GetHashCode();

            //Get hash code for the Code field.
            int hashProductCode = product.Specialization == null ? 0 : product.Specialization.GetHashCode();

            //Calculate the hash code for the product.
            return hashProductName ^ hashProductCode;
        }
    }
}
