using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml.Linq;
using System.Collections.ObjectModel;

namespace Item_WPF.MVVM.Serialize.Model
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
    }

    public partial class CategoriesXML
    {
        public XElement category;
        public CategoriesXML(){}
    }


    public class Attribute_bonusXML
    {
        public ObservableCollection<attributeXml> Attribute;
        public ObservableCollection<amountXml> Amount;
    }

    public class Weapon_bonusXML
    {
        public ObservableCollection<amountXml> Amount;
        public XElement name;
        public XElement specialization;
        public XElement level;
    }


}
