using System;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Xml.Linq;
using GurpsDb.GurpsModel;
using System.Collections.Generic;

namespace GurpsDb.XML

{
    public class Category
    {
       public List<GurpsCategory> GurpsCategoryColleList { get; set; }
        /// <summary>
        /// Получение в файл категорий
        /// </summary>
        /// <param name="xmlString"></param>
        /// <param name="writePath">файл для записи результата</param>
        public Category(string xmlString, string writePath)
        {
            GurpsCategoryColleList=new List<GurpsCategory>();  
               XDocument xdoc = XDocument.Load(xmlString);
            if (xmlString.Contains(".skl"))
            {
                foreach (XElement skillElement in xdoc.Element("skill_list").Elements("skill").Elements("categories").Elements("category"))
                {
                    string cat = skillElement != null ? skillElement.Value : "0";
                    GurpsCategory newGurpsCategory = new GurpsCategory(cat);
                    int findIndex = GurpsCategoryColleList.BinarySearch(newGurpsCategory);
                    if (findIndex<0)
                    {
                        GurpsCategoryColleList.Insert(~findIndex, newGurpsCategory);
                    }
                }
                foreach (XElement skillElement in xdoc.Element("skill_list").Elements("technique").Elements("categories").Elements("category"))
                {
                    string cat = skillElement != null ? skillElement.Value : "0";
                    GurpsCategory newGurpsCategory = new GurpsCategory(cat);
                    int findIndex = GurpsCategoryColleList.BinarySearch(newGurpsCategory);
                    if (findIndex < 0)
                    {
                        GurpsCategoryColleList.Insert(~findIndex, newGurpsCategory);
                    }
                }
            }
            else if (xmlString.Contains(".adq"))
            {
                foreach (XElement skillElement in xdoc.Element("advantage_list").Elements("advantage").Elements("categories").Elements("category"))
                {
                    string cat = skillElement != null ? skillElement.Value : "0";
                    GurpsCategory newGurpsCategory = new GurpsCategory(cat);
                    int findIndex = GurpsCategoryColleList.BinarySearch(newGurpsCategory);
                    if (findIndex < 0)
                    {
                        GurpsCategoryColleList.Insert(~findIndex, newGurpsCategory);
                    }
                }
            }
        }
        public void ToSqlFromCollString(ObservableCollection<string> outSting)
        {
            //foreach (var item in collectionCategory)
            //{
            //    outSting.Add("INSERT INTO CharDB.GurpsSkillCategory(  NamelCategory) VALUES(N'"
            //        + item
            //        + "' )GO"
            //        );
            //}
        }
        public void WriteToFile(string writePathin, ObservableCollection<string> resultin)
        {
            //using (StreamWriter sw = new StreamWriter(writePathin, false, System.Text.Encoding.Default))
            //{
            //    foreach (var article in resultin)
            //    {
            //        Console.WriteLine("{0}", article);
            //        sw.WriteLine(article);
            //    }
            //}
        }
    }
}
