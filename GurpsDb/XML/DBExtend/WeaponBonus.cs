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
            AmountPerLevel = itemWeaponBonus.Amount.Attribute("per_level")?.Value;
            AmountValue = itemWeaponBonus.Amount.Value;

            NameCompare = itemWeaponBonus.Name.Attribute("compare")?.Value;
            Name = itemWeaponBonus.Name?.Value;
            SpecializationCompare = itemWeaponBonus.Specialization.Attribute("compare")?.Value;
            Specialization = itemWeaponBonus.Specialization.Value;
            LevelCompare = itemWeaponBonus.Level.Attribute("compare")?.Value;
            Level = itemWeaponBonus.Level.Value;
        }
    }
}
