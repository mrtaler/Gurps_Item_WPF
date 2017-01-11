namespace GurpsDb.GurpsModel
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    /// <summary>
    /// Class for description weapod damage
    /// </summary>
    [Table("WeaponDamage", Schema = "dbo")]
    public partial class WeaponDamage
    {
        /// <summary>
        /// Default constructor
        /// </summary>
        public WeaponDamage()
        {
        }

        /// <summary>
        /// Constructor for create new weapon damage
        /// </summary>
        /// <param name="damage">Gurps damage</param>
        /// <param name="weaponAttackType">weapon attack type</param>
        /// <param name="typeOfDamage">pi++</param>
        /// <param name="armorDivision">Armor Division (def 1)</param>
        public WeaponDamage(
            string damage,
            WeaponAttackType weaponAttackType,
            TypeOfDamage typeOfDamage,
            decimal armorDivision = 1.0M)
        {
            Damage = damage;
            ArmorDivision = armorDivision;
            WeaponAttackType = weaponAttackType;

            TypeOfDamage = typeOfDamage;
            TypeOfDamage1 = null;


            TypeOfDamage1Text = string.Empty;
            TypeOfDamage2Text = string.Empty;
        }

        public int Id { get; set; }

        public int IdWeapon { get; set; }

        public int IdWeaponAttackType { get; set; }
        /// <summary>
        /// Gurps damage
        /// </summary>
        [StringLength(50)]
        public string Damage { get; set; }
        /// <summary>
        /// Armor division
        /// </summary>
        public decimal ArmorDivision { get; set; }

        public int? IdTypeOfDamage1 { get; set; }

        public int? IdTypeOfDamage2 { get; set; }

        [StringLength(50)]
        public string TypeOfDamage1Text { get; set; }

        [StringLength(50)]
        public string TypeOfDamage2Text { get; set; }

        [StringLength(50)]
        public string Descrip { get; set; }

        public virtual TypeOfDamage TypeOfDamage { get; set; }

        public virtual TypeOfDamage TypeOfDamage1 { get; set; }

        public virtual Weapon Weapon { get; set; }

        public virtual WeaponAttackType WeaponAttackType { get; set; }
    }
}
