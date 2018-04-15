namespace GurpsDb.GurpsModel
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("GurpsSkill", Schema = "CharDB")]
    public partial class GurpsSkill
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public GurpsSkill()
        {
            AttributeBonusCollection = new HashSet<AttributeBonus>();
            DefaultSkillInNeedCollection = new HashSet<DefaultSkill>();
            DefaultSkillOutNeededCollection = new HashSet<DefaultSkill>();
            DefSkillSomeCollection = new HashSet<DefSkillSome>();
            CharSkillCollection = new HashSet<CharSkill>();
            GurpsSkillCollection = new HashSet<GurpsSkill>();
            NeedSkillOutCollection = new HashSet<NeedSkill>();
            PrereqListDbCollection = new HashSet<PrereqListDb>();
            WeaponBonusCollection = new HashSet<WeaponBonus>();
            GurpsCategoryCollection = new HashSet<GurpsCategory>();
            GetHashCode();
        }
        public int Id { get; set; }
        [StringLength(50)]
        public string NameSkill { get; set; }
        [StringLength(500)]
        public string Specialization { get; set; }
        [StringLength(50)]
        public string Difficulty { get; set; }
        public int? Points { get; set; }
        [StringLength(50)]
        public string Reference { get; set; }
        public bool? TypeSpecialization { get; set; }
        public int? DefaultModifier { get; set; }
        [StringLength(50)]
        public string Version { get; set; }
        [StringLength(50)]
        public string EncumbrancePenaltyMultiplier { get; set; }
        [StringLength(500)]
        public string Notes { get; set; }
        public int? IdDifficulty { get; set; }
        public int? IdSpecialization { get; set; }
        public int? IdtechLevel { get; set; }
        [StringLength(50)]
        public string LimitT { get; set; }
        [StringLength(50)]
        public string TypeSkTh { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AttributeBonus> AttributeBonusCollection { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DefaultSkill> DefaultSkillInNeedCollection { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DefaultSkill> DefaultSkillOutNeededCollection { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DefSkillSome> DefSkillSomeCollection { get; set; }

        public virtual DifficultySkill DifficultySkill { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CharSkill> CharSkillCollection { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GurpsSkill> GurpsSkillCollection { get; set; }

        public virtual GurpsSkill GurpsSkillSelf { get; set; }

        public virtual Tl Tl { get; set; }

        public virtual NeedSkill NeedSkill { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<NeedSkill> NeedSkillOutCollection { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PrereqListDb> PrereqListDbCollection { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<WeaponBonus> WeaponBonusCollection { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GurpsCategory> GurpsCategoryCollection { get; set; }

        public override int GetHashCode()
        {
            int hash = 0;
            if (TypeSkTh != null) hash ^= TypeSkTh.GetHashCode();
            if (NameSkill != null) hash ^= NameSkill.GetHashCode();
            if (Specialization != null) hash ^= Specialization.GetHashCode();
            if (Version != null) hash ^= Version.GetHashCode();

            return hash;
        }

    }
}
