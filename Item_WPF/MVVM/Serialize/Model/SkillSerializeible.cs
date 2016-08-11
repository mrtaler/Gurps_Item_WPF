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
       public ObservableCollection<XElement> CollectionCategiry = new ObservableCollection<XElement>();
       public ObservableCollection<string> OutstringCollection = new ObservableCollection<string>();
       public ObservableCollection<string> ResultOrder;

       public SkillSerializeible(string xmlString, string writePath)
       {
           XDocument xdoc = XDocument.Load(xmlString);
           foreach (XElement skillElement in xdoc.Element("skill_list").Elements("skill"))
           {
               XElement cat = skillElement.Element("name");
               CollectionCategiry.Add(cat);
           }
           var SkillList = (from item in CollectionCategiry
                              select new
                              {
                                  name = item.Value.ToString() != null ? item.Value.ToString() : "0"
                              });
           foreach (var skill in SkillList)
           {
               OutstringCollection.Add(skill.name.ToString());
           }
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
