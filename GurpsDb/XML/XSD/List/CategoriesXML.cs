using System.Xml.Linq;

namespace GurpsDb.XML.XSD.List
{
    public partial class CategoriesXml
    {
        public XElement Category;
        public CategoriesXml() { }
        public CategoriesXml(XElement itemCategoryx)
        {
            this.Category = itemCategoryx;
        }
    }
}
