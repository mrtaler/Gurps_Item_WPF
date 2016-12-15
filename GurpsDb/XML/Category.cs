using System;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Xml.Linq;

namespace GurpsDb.XML

{
    public class Category
    {
        private ObservableCollection<string> collectionCategory;
        public ObservableCollection<string> CollectionCategiry
        {
            get
            {
                return new ObservableCollection<string>(collectionCategory.Distinct().OrderBy(i => i));

            }
        }

        /// <summary>
        /// Получение в файл категорий
        /// </summary>
        /// <param name="xmlString"></param>
        /// <param name="writePath">файл для записи результата</param>
        public Category(string xmlString, string writePath)
        {
            collectionCategory = new ObservableCollection<string>();
            XDocument xdoc = XDocument.Load(xmlString);
            if (xmlString.Contains(".skl"))
            {
                foreach (XElement skillElement in xdoc.Element("skill_list").Elements("skill").Elements("categories").Elements("category"))
                {
                    string cat = skillElement != null ? skillElement.Value.ToString() : "0";
                    if (!collectionCategory.Contains(cat))
                    {
                        collectionCategory.Add(cat);
                    }
                }
                foreach (XElement skillElement in xdoc.Element("skill_list").Elements("technique").Elements("categories").Elements("category"))
                {
                    string cat = skillElement != null ? skillElement.Value.ToString() : "0";
                    if (!collectionCategory.Contains(cat))
                    {
                        collectionCategory.Add(cat);
                    }
                }
            }
            else if (xmlString.Contains(".adq"))
            {
                foreach (XElement skillElement in xdoc.Element("advantage_list").Elements("advantage").Elements("categories").Elements("category"))
                {
                    string cat = skillElement != null ? skillElement.Value.ToString() : "0";
                    if (!collectionCategory.Contains(cat))
                    {
                        collectionCategory.Add(cat);
                    }
                }
            }
        }
        public void ToSqlFromCollString(ObservableCollection<string> outSting)
        {
            foreach (var item in collectionCategory)
            {
                outSting.Add("INSERT INTO CharDB.GurpsSkillCategory(  NamelCategory) VALUES(N'"
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
