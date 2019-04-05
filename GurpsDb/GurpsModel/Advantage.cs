namespace GurpsDb.GurpsModel
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("Advantage", Schema = "CharDB")]
    public partial class Advantage
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage(
            "Microsoft.Usage",
            "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Advantage()
        {
            this.AttributeBonus = new HashSet<AttributeBonus>();
            this.CostReduction = new HashSet<CostReduction>();
            this.DrBonusDb = new HashSet<DrBonusDb>();
            this.MeleeWeapon = new HashSet<MeleeWeapon>();
            this.Modifier = new HashSet<Modifier>();
            this.PrereqListDb = new HashSet<PrereqListDb>();
            this.RangedWeapon = new HashSet<RangedWeapon>();
            this.SkillBonusDb = new HashSet<SkillBonusDb>();
            this.SpellBonus = new HashSet<SpellBonus>();
            this.WeaponBonus = new HashSet<WeaponBonus>();
            this.GurpsCategory = new HashSet<GurpsCategory>();
        }

        // [Column("id")]
        public int Id { get; set; }

        [StringLength(50)]

        // [Column("name")]
        public string Name { get; set; }

        [StringLength(50)]

        // [Column("nameCompare")]
        public string NameCompare { get; set; }

        [StringLength(50)]

        // [Column("typeadc")]
        public string Typeadc { get; set; }

        [StringLength(50)]

        // [Column("levels")]
        public string Levels { get; set; }

        [StringLength(50)]

        // [Column("points_per_level")]
        public string PointsPerLevel { get; set; }

        [StringLength(50)]

        // [Column("base_points")]
        public string BasePoints { get; set; }

        [StringLength(50)]

        // [Column("reference")]
        public string Reference { get; set; }

        [StringLength(500)]

        // [Column("notes")]
        public string Notes { get; set; }

        [StringLength(50)]

        // [Column("cr")]
        public string Cr { get; set; }

        [StringLength(50)]

        // [Column("versionadv")]
        public string Versionadv { get; set; }

        [StringLength(50)]

        // [Column("round_down")]
        public string RoundDown { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage(
            "Microsoft.Usage",
            "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AttributeBonus> AttributeBonus { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage(
            "Microsoft.Usage",
            "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CostReduction> CostReduction { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage(
            "Microsoft.Usage",
            "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DrBonusDb> DrBonusDb { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage(
            "Microsoft.Usage",
            "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MeleeWeapon> MeleeWeapon { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage(
            "Microsoft.Usage",
            "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Modifier> Modifier { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage(
            "Microsoft.Usage",
            "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PrereqListDb> PrereqListDb { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage(
            "Microsoft.Usage",
            "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<RangedWeapon> RangedWeapon { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage(
            "Microsoft.Usage",
            "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SkillBonusDb> SkillBonusDb { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage(
            "Microsoft.Usage",
            "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SpellBonus> SpellBonus { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage(
            "Microsoft.Usage",
            "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<WeaponBonus> WeaponBonus { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage(
            "Microsoft.Usage",
            "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GurpsCategory> GurpsCategory { get; set; }
    }
}
