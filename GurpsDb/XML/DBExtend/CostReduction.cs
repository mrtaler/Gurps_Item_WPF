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
            this.Attribute = item.Attribute.Value.ToString();
            this.Percentage = item.Percentage.Value.ToString();
        }
    }
}