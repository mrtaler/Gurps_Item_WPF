

using GurpsDb.XML.XSD.List;
// ReSharper disable once CheckNamespace
namespace GurpsDb.GurpsModel
{
    public partial class SpellBonus
    {
        /// <summary>
        /// Default
        /// </summary>
        public SpellBonus() { }

        /// <summary>
        /// Constructor for work XML
        /// </summary>
        /// <param name="item"></param>
        public SpellBonus(SpellBonusXml item)
        {
            this.SpellName = item.SpellName.Value;
            this.SpellNameC = item.SpellName.Attribute("compare") != null
                ? item.SpellName.Attribute("compare")?.Value : null;
            this.CollegeName = item.CollegeName.Value;
            this.CollegeNameC = item.CollegeName.Attribute("compare") != null
                ? item.CollegeName.Attribute("compare")?.Value : null;
            this.AllColleges = item.AllColleges.Value;
            this.AmountperLevel = item.Amount.Attribute("per_level") != null
                                 ? item.Amount.Attribute("per_level")?.Value : null;
            this.AmountValue = item.Amount.Value;
        }
    }
}
