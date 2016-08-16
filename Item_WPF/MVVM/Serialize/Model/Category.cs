using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml.Linq;
using System.Collections.ObjectModel;
using System.IO;

namespace Item_WPF.MVVM.Serialize

{
    public class Category
    {
        //public ObservableCollection<Pars> ParQwe = new ObservableCollection<Pars>();
        public ObservableCollection<XElement> CollectionCategiry = new ObservableCollection<XElement>();
        public ObservableCollection<string> OutstringCollection = new ObservableCollection<string>();
        public ObservableCollection<string> ResultOrder;
        public ObservableCollection<string> outSting = new ObservableCollection<string>();
        /// <summary>
        /// Получение в файл категорий
        /// </summary>
        /// <param name="xdoc">извлёчённый документ</param>
        /// <param name="writePath">файл для записи результата</param>
        public Category(string xmlString, string writePath)
        {
            XDocument xdoc = XDocument.Load(xmlString);
            foreach (XElement skillElement in xdoc.Element("skill_list").Elements("skill").Elements("categories"))
            {
                XElement cat = skillElement.Element("category");
                CollectionCategiry.Add(cat);
            }
            var articleList = (from item in CollectionCategiry
                               select new
                               {
                                   name = item.Value.ToString() != null ? item.Value.ToString() : "0"
                               });
            foreach (var article in articleList)
            {
                OutstringCollection.Add(article.name.ToString());

            }

            ObservableCollection<string> result = new ObservableCollection<string>(OutstringCollection.Distinct());
            ResultOrder = new ObservableCollection<string>(result.OrderBy(i => i));
            WriteToFile(writePath, ResultOrder);
            //  Console.ReadKey();
        }
        public void ToSqlFromCollString()
        {
            foreach (var item in ResultOrder)
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
