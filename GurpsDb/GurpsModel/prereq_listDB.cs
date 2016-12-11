namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CharDB.prereq_listDB")]
    public partial class PrereqListDb
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PrereqListDb()
        {
            AdvantagePrereq = new HashSet<AdvantagePrereq>();
            AttributePrereq = new HashSet<AttributePrereq>();
            ContainedWeightPrereq = new HashSet<ContainedWeightPrereq>();
            PrereqListDb1 = new HashSet<PrereqListDb>();
            SkillPrereqDb = new HashSet<SkillPrereqDb>();
            SpellPrereqDb = new HashSet<SpellPrereqDb>();
        }

        public int Id { get; set; }

        [StringLength(10)]
        public string All { get; set; }

        [StringLength(10)]
        public string WhenTlCompare { get; set; }

        [StringLength(10)]
        public string WhenTl { get; set; }

        [StringLength(10)]
        public string CollegeCountCompare { get; set; }

        [StringLength(10)]
        public string CollegeCount { get; set; }

        public int? FkPrereqList { get; set; }

        public int? FkSkill { get; set; }

        public int? FkTechnique { get; set; }

        public int? FkAdvantage { get; set; }

        public virtual Advantage Advantage { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AdvantagePrereq> AdvantagePrereq { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AttributePrereq> AttributePrereq { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ContainedWeightPrereq> ContainedWeightPrereq { get; set; }

        public virtual GurpsSkill GurpsSkill { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PrereqListDb> PrereqListDb1 { get; set; }

        public virtual PrereqListDb PrereqListDb2 { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SkillPrereqDb> SkillPrereqDb { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SpellPrereqDb> SpellPrereqDb { get; set; }
    }
}
