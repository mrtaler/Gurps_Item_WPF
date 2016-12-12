namespace GurpsDb.GurpsModel
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("CharDB.GurpsSkill")]
    public partial class GurpsSkill
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public GurpsSkill()
        {
            AttributeBonus = new HashSet<AttributeBonus>();
            DefaultSkill = new HashSet<DefaultSkill>();
            DefaultSkill1 = new HashSet<DefaultSkill>();
            DefSkillSome = new HashSet<DefSkillSome>();
            CharSkill = new HashSet<CharSkill>();
            GurpsSkill1 = new HashSet<GurpsSkill>();
            NeedSkill1 = new HashSet<NeedSkill>();
            PrereqListDb = new HashSet<PrereqListDb>();
            WeaponBonus = new HashSet<WeaponBonus>();
            GurpsCategory = new HashSet<GurpsCategory>();
        }
        [Column("id")]
        public int Id { get; set; }

        [StringLength(50)]
        [Column("NameSkill")]
        public string NameSkill { get; set; }
        [Column("Specialization")]
        [StringLength(500)]
        public string Specialization { get; set; }
        [Column("Difficulty")]
        [StringLength(50)]
        public string Difficulty { get; set; }
        [Column("Points")]
        public int? Points { get; set; }
        [Column("Reference")]
        [StringLength(50)]
        public string Reference { get; set; }
        [Column("TypeSpecialization")]
        public bool? TypeSpecialization { get; set; }
        [Column("DefaultModifier")]
        public int? DefaultModifier { get; set; }
        [Column("version")]
        [StringLength(50)]
        public string Version { get; set; }
        [Column("encumbrance_penalty_multiplier")]
        [StringLength(50)]
        public string EncumbrancePenaltyMultiplier { get; set; }
        [Column("notes")]
        [StringLength(500)]
        public string Notes { get; set; }
        [Column("idDifficulty")]
        public int? IdDifficulty { get; set; }
        [Column("idSpecialization")]
        public int? IdSpecialization { get; set; }
        [Column("idtech_level")]
        public int? IdtechLevel { get; set; }
        [Column("limitT")]
        [StringLength(50)]
        public string LimitT { get; set; }
        [Column("TypeSkTh")]
        [StringLength(50)]
        public string TypeSkTh { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AttributeBonus> AttributeBonus { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DefaultSkill> DefaultSkill { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DefaultSkill> DefaultSkill1 { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DefSkillSome> DefSkillSome { get; set; }

        public virtual DifficultySkill DifficultySkill { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CharSkill> CharSkill { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GurpsSkill> GurpsSkill1 { get; set; }

        public virtual GurpsSkill GurpsSkill2 { get; set; }

        public virtual Tl Tl { get; set; }

        public virtual NeedSkill NeedSkill { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<NeedSkill> NeedSkill1 { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PrereqListDb> PrereqListDb { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<WeaponBonus> WeaponBonus { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GurpsCategory> GurpsCategory { get; set; }
    }
}
