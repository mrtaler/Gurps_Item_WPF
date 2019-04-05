using GurpsDb.XML.XSD.List;

// ReSharper disable once CheckNamespace
namespace GurpsDb.GurpsModel
{
    /// <summary>
    /// Class for WeaponBonus 
    /// </summary>
    public partial class WeaponBonus
    {
        /// <summary>
        /// Default constructor
        /// </summary>
        public WeaponBonus() { }

        /// <summary>
        /// Constructor for Work with xml
        /// </summary>
        /// <param name="itemWeaponBonus"></param>
        public WeaponBonus(WeaponBonusXml itemWeaponBonus)
        {
            this.AmountPerLevel = itemWeaponBonus.Amount.Attribute("per_level")?.Value;
            this.AmountValue = itemWeaponBonus.Amount.Value;

            this.NameCompare = itemWeaponBonus.Name.Attribute("compare")?.Value;
            this.Name = itemWeaponBonus.Name?.Value;
            this.SpecializationCompare = itemWeaponBonus.Specialization.Attribute("compare")?.Value;
            this.Specialization = itemWeaponBonus.Specialization.Value;
            this.LevelCompare = itemWeaponBonus.Level.Attribute("compare")?.Value;
            this.Level = itemWeaponBonus.Level.Value;
        }
    }
}
