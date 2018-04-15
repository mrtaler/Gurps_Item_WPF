

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
            SpellName = item.SpellName.Value;
            SpellNameC = item.SpellName.Attribute("compare") != null
                ? item.SpellName.Attribute("compare")?.Value : null;
            CollegeName = item.CollegeName.Value;
            CollegeNameC = item.CollegeName.Attribute("compare") != null
                ? item.CollegeName.Attribute("compare")?.Value : null;
            AllColleges = item.AllColleges.Value;
            AmountperLevel = item.Amount.Attribute("per_level") != null
                                 ? item.Amount.Attribute("per_level")?.Value : null;
            AmountValue = item.Amount.Value;
        }
    }
}
