namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("WEAPON")]
    public partial class WEAPON
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public WEAPON()
        {
            WeaponDamage = new HashSet<WeaponDamage>();
        }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int uiIndex { get; set; }

        [Required]
        [StringLength(80)]
        public string szWeaponName { get; set; }

        public int DefACC { get; set; }

        public int? ACCAddin { get; set; }

        public decimal Half_Range { get; set; }

        public decimal FullRange { get; set; }

        public bool MinRange { get; set; }

        public decimal AWeight { get; set; }

        public int ROF { get; set; }

        public bool Full_auto { get; set; }

        public int? ROF_for_Sh { get; set; }

        public int Shots { get; set; }

        public int Time_For_reload { get; set; }

        public bool single_reload { get; set; }

        public int Recoil { get; set; }

        public bool HeavyWeapon { get; set; }

        public bool Add_in_Chamber { get; set; }

        public bool CutOff_shots { get; set; }

        public int CutOff_shotsCount { get; set; }

        public bool GrenadeLauncher { get; set; }

        public bool RocketLauncher { get; set; }

        public bool Mortar { get; set; }

        public bool Cannon { get; set; }

        public bool SingleShot_RocketLauncher { get; set; }

        public bool RocketRifle { get; set; }

        public bool Bulkfolded { get; set; }

        public bool HCROF { get; set; }

        public int HCROFValue { get; set; }

        public virtual ITEM ITEM { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<WeaponDamage> WeaponDamage { get; set; }
    }
}
