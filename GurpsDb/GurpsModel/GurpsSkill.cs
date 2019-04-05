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
            this.AttributeBonusCollection = new HashSet<AttributeBonus>();
            this.DefaultSkillInNeedCollection = new HashSet<DefaultSkill>();
            this.DefaultSkillOutNeededCollection = new HashSet<DefaultSkill>();
            this.DefSkillSomeCollection = new HashSet<DefSkillSome>();
            this.CharSkillCollection = new HashSet<CharSkill>();
            this.GurpsSkillCollection = new HashSet<GurpsSkill>();
            this.NeedSkillOutCollection = new HashSet<NeedSkill>();
            this.PrereqListDbCollection = new HashSet<PrereqListDb>();
            this.WeaponBonusCollection = new HashSet<WeaponBonus>();
            this.GurpsCategoryCollection = new HashSet<GurpsCategory>();
            this.GetHashCode();
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
            if (this.TypeSkTh != null) hash ^= this.TypeSkTh.GetHashCode();
            if (this.NameSkill != null) hash ^= this.NameSkill.GetHashCode();
            if (this.Specialization != null) hash ^= this.Specialization.GetHashCode();
            if (this.Version != null) hash ^= this.Version.GetHashCode();

            return hash;
        }

    }
}
