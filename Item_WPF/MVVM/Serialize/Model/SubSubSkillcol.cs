using System.Xml.Linq;

namespace Item_WPF.MVVM.Serialize.Model
{
    public class ContainedWeightPrereqXml
    {
        public XAttribute Has;
        public XAttribute Compare;
        public string Value;
    }
    public class AdvantagePrereqXml
    {
        public XElement Name;
        public XElement Notes;
        public XElement Level;
        public XAttribute Has;
    }
    public class AttributePrereqXml
    {
        public XAttribute Has;
        public XAttribute Which;
        public XAttribute Compare;
        public XAttribute CombinedWith;
        public string Value;
    }
    public class SpellPrereqXml
    {
        public XElement Name;
        public XElement College;
        public XElement CollegeCount;
        public XElement Quantity;
        public XElement Any;

        public XAttribute Has;

    }
    public class SkillPrereqXml
    {
        public XElement Name;
        public XElement Level;
        public XElement Specialization;
        public XAttribute Has;
    }

    public class CostReductionXml
    {
        public XElement Attribute;
        public XElement Percentage;
        public CostReductionXml(XElement item)
        {
            Attribute = item.Element("Attribute");
            Percentage = item.Element("Percentage");
        }
    }

    public class CrXml
    {
        public XAttribute Adj;
        public CrXml(XElement item)
        {
            Adj = item.Attribute("Adj");
        }
    }
    public class AttributeXml
    {
        public XElement Attribute;
    }

    public class AmountXml
    {
        public XElement Amount;
        public AmountXml() { }
        public AmountXml(XElement item)
        {
            Amount = item;
        }
    }
}
