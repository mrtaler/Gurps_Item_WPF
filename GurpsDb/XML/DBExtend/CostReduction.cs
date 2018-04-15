using GurpsDb.XML.XSD;

namespace GurpsDb.GurpsModel
{
    public partial class CostReduction
    {
        /// <summary>
        /// Default
        /// </summary>
        public CostReduction() { }
        /// <summary>
        /// Constructor for XML
        /// </summary>
        /// <param name="item"></param>
        public CostReduction(CostReductionXml item)
        {
            Attribute = item.Attribute.Value.ToString();
            Percentage = item.Percentage.Value.ToString();
        }
    }
}