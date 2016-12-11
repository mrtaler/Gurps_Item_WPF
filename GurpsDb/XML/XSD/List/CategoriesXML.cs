using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GurpsDb.XML.XSD.List
{
    public partial class CategoriesXML
    {
        public XElement category;
        public CategoriesXML() { }
        public CategoriesXML(XElement itemCategoryx)
        {
            category = itemCategoryx;
        }
    }
}
