
using GurpsDb.XML.XSD.List;
// ReSharper disable once CheckNamespace
namespace GurpsDb.GurpsModel
{
    public partial class SkillBonusDb
    {
        /// <summary>
        /// Default Constructor
        /// </summary>
        public SkillBonusDb() { }
        /// <summary>
        /// Constructor for work with XML
        /// </summary>
        /// <param name="item"></param>
        public SkillBonusDb(SkillBonusXml item)
        {
            Name = item.Name.Value;
            Namecompare = item.Name.Attribute("compare")?.Value;
            Specialization = item.Specialization.ToString();
            Specializationcompare = item.Specialization.Attribute("compare")?.Value;
            AmountValue = item.Amount.Value;
            AmountPerLevel = item.Amount.Attribute("per_level")?.Value;
        }
    }
}