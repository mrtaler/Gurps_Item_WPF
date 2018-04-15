using GurpsDb.XML.XSD.List;

// ReSharper disable once CheckNamespace
namespace GurpsDb.GurpsModel
{
    public partial class AttributeBonus
    {
        public AttributeBonus() { }
        public AttributeBonus(AttributeBonusXml item)
        {
            AttributeLimitation = item.Attribute.Attribute("limitation")?.Value;
            AttributeValue = item.Attribute.Value;
            AmountPerLevel = item.Amount.Attribute("per_level")?.Value;
            AmountValue = item.Amount.Value;
        }
    }
}