namespace GurpsDb.GurpsModel
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("WeaponDamage")]
    public partial class WeaponDamage
    {
        public int Id { get; set; }

        public int IdWeapon { get; set; }

        public int IdWeaponAttackType { get; set; }

        [StringLength(50)]
        public string Damage { get; set; }

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
