namespace Item_WPF.ItemEntityModel
{
    public partial class CostReduction
    {
        public CostReduction() { }
        public CostReduction(cost_reductionXML item)
        {
            attribute = item.attribute.Value.ToString();
            percentage = item.percentage.Value.ToString();
        }
    }
}