using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GurpsDb.XML.XSD.List
{
    /// <summary>
    /// Table="default"
    /// </summary>
    public partial class DefaultXML
    {
        /// <summary>
        /// 1 Element name
        /// </summary>
        public XElement nameDefaultXml;
        /// <summary>
        /// 2 Element specialization
        /// </summary>
        public XElement specializationDefaultXml;
        /// <summary>
        /// 3 Element type
        /// </summary>
        public XElement typeDefaultXml;
        /// <summary>
        /// 4 Element modifier 
        /// </summary>
        public XElement modifierDefaultXml;
        public DefaultXML() { }
        public DefaultXML(XElement itemdefault)
        {
            nameDefaultXml = itemdefault.Element("name");
            specializationDefaultXml = itemdefault.Element("specialization");
            typeDefaultXml = itemdefault.Element("type");
            modifierDefaultXml = itemdefault.Element("modifier");
        }
    }
}
