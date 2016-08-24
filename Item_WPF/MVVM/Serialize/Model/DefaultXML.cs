using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml.Linq;
namespace Item_WPF.MVVM.Serialize.Model
{
    public partial class DefaultXML
    {
        public DefaultXML(XElement itemdefault)
        {
            nameDefaultXml = itemdefault.Element("name");
            specializationDefaultXml = itemdefault.Element("specialization");
            typeDefaultXml = itemdefault.Element("type");
            modifierDefaultXml = itemdefault.Element("modifier");
        }
    }
}
