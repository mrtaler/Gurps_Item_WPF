using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections.ObjectModel;
using System.IO;
using System.Xml.Linq;

namespace Item_WPF.MVVM.Serialize
{
    public class SkillSerializeible
    {
        private ItemEntityModel.item1Entities _context;
        public ObservableCollection<ItemEntityModel.GurpsSkill> CollectionSkill = new ObservableCollection<ItemEntityModel.GurpsSkill>();

        public ObservableCollection<ItemEntityModel.GurpsSkill> CollectionSkillDuplicates;

        public ObservableCollection<string> OutstringCollection = new ObservableCollection<string>();
        public ObservableCollection<string> ResultOrder;

        public SkillSerializeible(string xmlString, string writePath)
        {
            _context = new ItemEntityModel.item1Entities();
            CollectionSkillDuplicates = new ObservableCollection<ItemEntityModel.GurpsSkill>(_context.GurpsSkills);
            XDocument xdoc = XDocument.Load(xmlString);
            foreach (XElement skillElement in xdoc.Element("skill_list").Elements("skill"))
            {
                ItemEntityModel.GurpsSkill gsk = new ItemEntityModel.GurpsSkill();
                var tl22 = skillElement.Element("tech_level");
                gsk.NameSkill = skillElement.Element("name") != null ? skillElement.Element("name").Value.ToString() : "0";
                gsk.Points = skillElement.Element("points") != null ? Convert.ToInt32(skillElement.Element("points").Value) : 0;
                gsk.Reference = skillElement.Element("reference") != null ? skillElement.Element("reference").Value.ToString() : null;
                gsk.version = skillElement.Attribute("version") != null ? skillElement.Attribute("version").Value.ToString() : null;
                // gsk.tech_level =                        skillElement.Element("tech_level").Value                !=  ""  ? Convert.ToInt32(  skillElement.Element("tech_level").Value) : 1;
                gsk.encumbrance_penalty_multiplier = skillElement.Element("encumbrance_penalty_multiplier") != null ? skillElement.Element("encumbrance_penalty_multiplier").Value.ToString() : null;
                gsk.notes = skillElement.Element("notes") != null ? skillElement.Element("notes").Value.ToString() : null;
                gsk.Specialization = skillElement.Element("specialization") != null ? skillElement.Element("specialization").Value.ToString() : null;
                foreach (var item in skillElement.Elements("categories").Elements("category"))
                {
                    var qery = item.Value.ToString();
                    gsk.GurpsSkillCategories.
                        Add(_context.GurpsSkillCategories.
                        First(p => p.NamelCategory.Contains(qery)));
                }
                CollectionSkill.Add(gsk);
            }
            foreach (var item in CollectionSkill)
            {
                if (_context.GurpsSkills.FirstOrDefault(p=>p.NameSkill==item.NameSkill&&p.Specialization==item.Specialization) ==null)
                {
                    _context.GurpsSkills.Add(item);
                }
            }




            _context.SaveChanges();
            //IEnumerable<ItemEntityModel.GurpsSkill> duplicates =
            //    CollectionSkill.Intersect(_context.GurpsSkills, new SkillComparer());
            //foreach (var product in duplicates)
            //    CollectionSkillDuplicates.Add(product);
 
         //  _context.SaveChanges();
            //var SkillList = (from item in CollectionCategiry
            //                   select new
            //                   {
            //                       name = item.Value.ToString() != null ? item.Value.ToString() : "0"
            //                   });
            //foreach (var skill in SkillList)
            //{
            //    OutstringCollection.Add(skill.name.ToString());
            //}

         

           // WriteToFile(writePath, ResultOrder);
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
            int hashProductName = product.NameSkill == null         ? 0 : product.NameSkill.GetHashCode();

            //Get hash code for the Code field.
            int hashProductCode = product.Specialization == null    ? 0 : product.Specialization.GetHashCode();

            //Calculate the hash code for the product.
            return hashProductName ^ hashProductCode;
        }
    }
}
