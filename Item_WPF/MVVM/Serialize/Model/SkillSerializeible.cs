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
        public ObservableCollection<string> OutstringCollection = new ObservableCollection<string>();
        public ObservableCollection<string> ResultOrder;

        public SkillSerializeible(string xmlString, string writePath)
        {
            _context = new ItemEntityModel.item1Entities();
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

                //     gsk.idDifficulty skillElement.Value              != null ? skillElement.Value.ToString() : null;
                // gsk.idSpecialization = skillElement.Value != null ? skillElement.Value.ToString() : null;
                // gsk.TypeSpecialization = skillElement.Value != null ? skillElement.Value.ToString() : null;
                //  gsk.DefaultModifier = skillElement.Value != null ? skillElement.Value.ToString() : null;
                //XElement cat = skillElement.Element("name");
              
                //if (!_context.GurpsSkills.Contains(gsk))
                //{
                    _context.GurpsSkills.Add(gsk);
                //}

                CollectionSkill.Add(gsk);
            }
            _context.SaveChanges();
            //var SkillList = (from item in CollectionCategiry
            //                   select new
            //                   {
            //                       name = item.Value.ToString() != null ? item.Value.ToString() : "0"
            //                   });
            //foreach (var skill in SkillList)
            //{
            //    OutstringCollection.Add(skill.name.ToString());
            //}

            ObservableCollection<string> result = new ObservableCollection<string>(OutstringCollection.Distinct());
            ResultOrder = new ObservableCollection<string>(result.OrderBy(i => i));

            WriteToFile(writePath, ResultOrder);
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
