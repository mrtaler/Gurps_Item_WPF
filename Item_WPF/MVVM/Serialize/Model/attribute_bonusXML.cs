using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace Item_WPF.MVVM.Serialize.Model
{
    /// <summary>
    /// Class for Attribute bonus
    /// </summary>
    public class Attribute_bonusXML
    {
        public ObservableCollection<attributeXml> Attribute = new ObservableCollection<attributeXml>();
        public ObservableCollection<amountXml> Amount = new ObservableCollection<amountXml>();
        /// <summary>
        /// Attribute bonus
        /// </summary>
        /// <param name="itemAttribute_bonus">give 1up Attribute_bonus collection</param>
        public Attribute_bonusXML(XElement itemAttribute_bonus)
        {
            foreach (var item in itemAttribute_bonus.Elements("attribute"))
            {
                attributeXml atrxml = new attributeXml();
                atrxml.attribute = item;
                Attribute.Add(atrxml);
            }
            foreach (var item in itemAttribute_bonus.Elements("amount"))
            {
                amountXml amoxml = new amountXml();
                amoxml.amount = item;
                Amount.Add(amoxml);
            }
        }
    }
    public class attributeXml
    {
        public XElement attribute;
        //  public string 
    }

    public class amountXml
    {
        public XElement amount;
    }
}
