namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CharDB.GurpsSkill")]
    public partial class GurpsSkill
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public GurpsSkill()
        {
            attribute_bonus = new HashSet<attribute_bonus>();
            DefaultSkill = new HashSet<DefaultSkill>();
            DefaultSkill1 = new HashSet<DefaultSkill>();
            DefSkillSome = new HashSet<DefSkillSome>();
            CharSkill = new HashSet<CharSkill>();
            GurpsSkill1 = new HashSet<GurpsSkill>();
            NeedSkill1 = new HashSet<NeedSkill>();
            prereq_listDB = new HashSet<prereq_listDB>();
            weapon_bonus = new HashSet<weapon_bonus>();
            GurpsCategory = new HashSet<GurpsCategory>();
        }

        public int id { get; set; }

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
        public string version { get; set; }

        [StringLength(50)]
        public string encumbrance_penalty_multiplier { get; set; }

        [StringLength(500)]
        public string notes { get; set; }

        public int? idDifficulty { get; set; }

        public int? idSpecialization { get; set; }

        public int? idtech_level { get; set; }

        [StringLength(50)]
        public string limitT { get; set; }

        [StringLength(50)]
        public string TypeSkTh { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<attribute_bonus> attribute_bonus { get; set; }

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

        public virtual TL TL { get; set; }

        public virtual NeedSkill NeedSkill { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<NeedSkill> NeedSkill1 { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<prereq_listDB> prereq_listDB { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<weapon_bonus> weapon_bonus { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GurpsCategory> GurpsCategory { get; set; }
    }
}
