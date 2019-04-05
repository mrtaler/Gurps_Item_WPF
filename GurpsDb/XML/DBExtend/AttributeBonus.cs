using GurpsDb.XML.XSD.List;

// ReSharper disable once CheckNamespace
namespace GurpsDb.GurpsModel
{
    public partial class AttributeBonus
    {
        public AttributeBonus() { }
        public AttributeBonus(AttributeBonusXml item)
        {
            this.AttributeLimitation = item.Attribute.Attribute("limitation")?.Value;
            this.AttributeValue = item.Attribute.Value;
            this.AmountPerLevel = item.Amount.Attribute("per_level")?.Value;
            this.AmountValue = item.Amount.Value;
        }
    }
}