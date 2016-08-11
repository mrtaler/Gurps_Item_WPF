//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Text;
//using System.Data;
//using System.Xml;
//using System.Xml.Linq;
//using System.IO;
//using System.Collections.ObjectModel;

//namespace Item_WPF.MVVM.Serialize
//{
//    class Program
//    {
       
//            Category CAt = new Category(@"c:\Basic Set.skl", @"C:\Category.txt");
//            CAt.ToSqlFromCollString();
//            var frSql = CAt.outSting;
//            foreach (var item in frSql)
//            {
//                 Console.WriteLine(item);
//            }
//            CAt.WriteToFile(@"C:\htaSql.txt", frSql);
//            Console.WriteLine(CAt.ResultOrder.Count());

//            Default Deff = new Default (@"c:\Basic Set.skl", @"C:\Category.txt");
//            Deff.WriteToFile(@"C:\Deff.txt", Deff.CollectionDefaultSkill);

//            Skill skil = new Skill(@"c:\Basic Set.skl", @"C:\Skill.txt");

          
//            Console.ReadKey();
//           // ObservableCollection<Pars> ParQwe = new ObservableCollection<Pars>();
//           // ObservableCollection<XElement> CollectionCategiry = new ObservableCollection<XElement>();
//           // 
//           // ObservableCollection<string> stringCollection = new ObservableCollection<string>();
//           // foreach (XElement skillElement in xdoc.Element("skill_list").Elements("skill").Elements("categories"))
//           // {
//           //     XElement cat = skillElement.Element("category");
//           //  //   string Category = skillElement.Element("category").ToString();
                
//           //     //Pars qwerty = new Pars();
//           //     //// XAttribute  nameAttribute = skillElement.Attribute("name");
//           //     //qwerty.name = skillElement.Element("name");
//           //     //qwerty.specialization = skillElement.Element("specialization");
//           //     //qwerty.tech_level = skillElement.Element("tech_level");
//           //     //qwerty.difficulty = skillElement.Element("difficulty");
//           //     //qwerty.points = skillElement.Element("points");
//           //     //qwerty.reference = skillElement.Element("reference");

//           //     CollectionCategiry.Add(cat);
//           //     ////if (nameElement != null && specializationElement != null)
//           //     //{
//           //     //  //  Console.WriteLine("Смартфон: {0}", nameAttribute.Value);
//           //     //Console.WriteLine("name: {0}",          nameElement.Value);
//           //     //Console.WriteLine("specialization: {0}", specializationElement.Value);
//           //     //}
//           //     //Console.WriteLine();
//           // }





//           // //IEnumerable<Object> xmlList = (from item in items.Descendants("skill")
//           // //               select new
//           // //               {
//           // //                   name =           items.Descendants("name").SingleOrDefault(),
//           // //                   specialization = items.Descendants("specialization").SingleOrDefault(),
//           // //                   tech_level =     items.Descendants("tech_level").SingleOrDefault(),
//           // //                   difficulty =     items.Descendants("difficulty").SingleOrDefault(),
//           // //                   points =         items.Descendants("points").SingleOrDefault(),
//           // //                   reference =      items.Descendants("reference").SingleOrDefault()
//           // //               }).ToList();

//           // var articleList = (from item in CollectionCategiry
//           //                    select new
//           //                      {
//           //                          name = item.Value.ToString() != null ? item.Value.ToString() : "0"
//           //                          //specialization = item.specialization != null ? item.specialization.Value : "0",
//           //                          //tech_level = item.tech_level != null ? item.tech_level.Value : "0",
//           //                          //difficulty = item.difficulty != null ? item.difficulty.Value : "0",
//           //                          //points = item.points != null ? item.points.Value : "0",
//           //                          //reference = item.reference != null ? item.reference.Value : "0"
//           //                      });
//           // //foreach (var article in articleList)
//           // //{
//           // //    Console.WriteLine("{0}\t{1}\t{2}\t{3}\t{4}\t{5}",
//           // //        article.name, article.specialization, article.tech_level, article.difficulty, article.points, article.reference);
//           // //}
//           //             //                   });
//           // foreach (var article in articleList)
//           // {
//           //     stringCollection.Add(article.name.ToString());
//           //     Console.WriteLine("{0}",
//           //         article);
//           // }

//           // //            XmlDocument xDoc = new XmlDocument();

//           // //            xDoc.Load(@"c:\Basic Set.skl");

//           // //            XDocument doc = XDocument.Load(@"c:\Basic Set.skl");

//           // //            XElement items = doc.Root;





//           // //            IEnumerable<XElement> result =
//           // //                from item in items.Descendants("skill")
//           // //                select item;

//           //var result= stringCollection.Distinct();
//           //var resultorder =result.OrderBy(i => i);
//           // using (StreamWriter sw = new StreamWriter(writePath, false, System.Text.Encoding.Default))
//           // {

//           //     foreach (var article in resultorder)
//           //     {

//           //         sw.WriteLine(article);
//           //     }
//           // }

//           // Console.ReadKey();
        
//    }

//    public class Pars
//    {
//        public XElement name;
//        public XElement specialization;
//        public XElement tech_level;
//        public XElement difficulty;
//        public XElement points;
//        public XElement reference;
//    }
//}



////class Record
////{
////    public string question;
////    public IEnumerable<string> answers;
////}

////var xdoc = XDocument.Load(...);
////var records = xdoc.Root.Elements("Key").Select(key =>
////    new Record()
////    {
////        question = key.Nodes.First().Value,
////        answers = key.Elements("Value").Select(e => (string)e)
////    });


