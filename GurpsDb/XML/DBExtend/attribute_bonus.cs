namespace Item_WPF.ItemEntityModel
{
    public partial class AttributeBonus
    {
        public AttributeBonus() { }
        public AttributeBonus(Attribute_bonusXML item)
        {
            AttributeLimitation = item.Attribute.Attribute("limitation") != null
                                        ? item.Attribute.Attribute("limitation").Value.ToString() : null;
            AttributeValue = item.Attribute.Value.ToString();
            AmountPer_level = item.Amount.Attribute("per_level") != null
                                        ? item.Amount.Attribute("per_level").Value.ToString() : null;
            AmountValue = item.Amount.Value.ToString();
        }
    }
}