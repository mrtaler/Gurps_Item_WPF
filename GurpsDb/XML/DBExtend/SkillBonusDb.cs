
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
            this.Name = item.Name.Value;
            this.Namecompare = item.Name.Attribute("compare")?.Value;
            this.Specialization = item.Specialization.ToString();
            this.Specializationcompare = item.Specialization.Attribute("compare")?.Value;
            this.AmountValue = item.Amount.Value;
            this.AmountPerLevel = item.Amount.Attribute("per_level")?.Value;
        }
    }
}