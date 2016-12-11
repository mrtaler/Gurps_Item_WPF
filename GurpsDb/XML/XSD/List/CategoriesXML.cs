using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GurpsDb.XML.XSD.List
{
    public partial class CategoriesXml
    {
        public XElement Category;
        public CategoriesXml() { }
        public CategoriesXml(XElement itemCategoryx)
        {
            Category = itemCategoryx;
        }
    }
}
