using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml.Linq;
using System.Collections.ObjectModel;
using System.Xml;
using System.IO;

namespace Item_WPF.MVVM.Serialize.Model
{
    public class Default
    {
        public ObservableCollection<DefaultSkill> CollectionDefaultSkill = new ObservableCollection<DefaultSkill>();

        public Default(string xmlString, string writePath)
        {

            XmlDocument xmlDoc = new XmlDocument();
            xmlDoc.Load(xmlString);
            string namemain = "";
            XmlElement xRoot = xmlDoc.DocumentElement;
            int i = 0;
            foreach (XmlNode xnode in xRoot)
            {


                if (xnode.Name == "skill")
                {

                    Console.WriteLine(xnode.Name);


                    foreach (XmlNode childnode in xnode.ChildNodes)
                    {

                        DefaultSkill Defsk = new DefaultSkill();
                        if (childnode.Name == "Name")
                            namemain = childnode.InnerText;

                        // если узел - company
                        //if (childnode.Name != "#text")
                        //{

                        if (childnode.Name == "default")
                        {
                            Defsk.nameMainSkill = namemain;


                                                     Console.WriteLine("     : {0} : {1}", childnode.Name, childnode.InnerText);

                            foreach (XmlNode childnodeSub in childnode.ChildNodes)
                            {
                                if (childnodeSub.Name == "Name") Defsk.nameSubSkill = childnodeSub.InnerText;
                                if (childnodeSub.Name == "Specialization") Defsk.specialization = childnodeSub.InnerText;
                                if (childnodeSub.Name == "type") Defsk.type = childnodeSub.InnerText;
                                if (childnodeSub.Name == "modifier") Defsk.modifier = childnodeSub.InnerText;







                                if (childnodeSub.Name != "#text")
                                {
                                    Console.WriteLine("          : {0} : {1}", childnodeSub.Name, childnodeSub.InnerText);
                                }
                            }
                            //// если узел age
                            //if (childnode.Name == "age")
                            //{
                            //    Console.WriteLine("Возраст: {0}", childnode.InnerText);
                            //}
                            CollectionDefaultSkill.Add(Defsk);
                        }
                        //}

                    }

                }
                i += 1;
                if (i == 10) break;

            }



            //}

            //foreach (var item in collection)
            //{

            //}
            //XElement cat = skillElement.Element("category");
            //CollectionCategiry.Add(cat);
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
        public void WriteToFile(string writePathin, ObservableCollection<DefaultSkill> resultin)
        {
            using (StreamWriter sw = new StreamWriter(writePathin, false, System.Text.Encoding.Default))
            {
                foreach (var article in resultin)
                {
                    Console.WriteLine("{0},{1},{2},{3},{4},", article.nameMainSkill, article.nameSubSkill, article.specialization, article.type, article.modifier);
                    sw.WriteLine("{0},{1},{2},{3},{4},", article.nameMainSkill, article.nameSubSkill, article.specialization, article.type, article.modifier);
                }
            }
        }

    }
    public class DefaultSkill
    {
        public string nameMainSkill;
        public string nameSubSkill;
        public string specialization;
        public string type;
        public string modifier;
    }
}
