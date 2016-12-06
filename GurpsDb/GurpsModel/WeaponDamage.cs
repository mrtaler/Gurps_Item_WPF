namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("WeaponDamage")]
    public partial class WeaponDamage
    {
        public int id { get; set; }

        public int idWeapon { get; set; }

        public int idWeaponAttackType { get; set; }

        [StringLength(50)]
        public string Damage { get; set; }

        public decimal ArmorDivision { get; set; }

        public int? idTypeOfDamage1 { get; set; }

        public int? idTypeOfDamage2 { get; set; }

        [StringLength(50)]
        public string TypeOfDamage1text { get; set; }

        [StringLength(50)]
        public string TypeOfDamage2text { get; set; }

        [StringLength(50)]
        public string Descrip { get; set; }

        public virtual TypeOfDamage TypeOfDamage { get; set; }

        public virtual TypeOfDamage TypeOfDamage1 { get; set; }

        public virtual WEAPON WEAPON { get; set; }

        public virtual WeaponAttackType WeaponAttackType { get; set; }
    }
}
