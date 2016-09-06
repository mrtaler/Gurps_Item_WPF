using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml.Linq;

namespace Item_WPF.MVVM.Serialize.Model
{
    public class contained_weight_prereqXml
    {
        public XAttribute has;
        public XAttribute compare;
        public string Value;
    }
    public class advantage_prereqXml
    {
        public XElement name;
        public XElement notes;
        public XElement level;
        public XAttribute has;
    }
    public class attribute_prereqXml
    {
        public XAttribute has;
        public XAttribute which;
        public XAttribute compare;
        public XAttribute combined_with;
        public string Value;
    }
    public class spell_prereqXml
    {
        public XElement name;
        public XElement college;
        public XElement college_count;
        public XElement quantity;
        public XElement any;
        public XAttribute has;
    }
    public class skill_prereqXml
    {
        public XElement name;
        public XElement level;
        public XElement specialization;
        public XAttribute has;
    }
    public class cost_reductionXML
    {
        public XElement attribute;
        public XElement percentage;
        public cost_reductionXML(XElement item)
        {
            attribute = item.Element("attribute");
            percentage = item.Element("percentage");
        }
    }
    public class crXML
    {
        public XAttribute adj;
        public crXML(XElement item)
        {
            adj = item.Attribute("adj");
        }
    }
    public class attributeXml
    {
        public XElement attribute;
    }

    public class amountXml
    {
        public XElement amount;
        public amountXml() { }
        public amountXml(XElement item)
        {
            amount = item;
        }
    }
}
