namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CharDB.prereq_listDB")]
    public partial class prereq_listDB
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public prereq_listDB()
        {
            advantage_prereq = new HashSet<advantage_prereq>();
            attribute_prereq = new HashSet<attribute_prereq>();
            contained_weight_prereq = new HashSet<contained_weight_prereq>();
            prereq_listDB1 = new HashSet<prereq_listDB>();
            skill_prereqDB = new HashSet<skill_prereqDB>();
            spell_prereqDB = new HashSet<spell_prereqDB>();
        }

        public int id { get; set; }

        [StringLength(10)]
        public string all { get; set; }

        [StringLength(10)]
        public string when_tlCompare { get; set; }

        [StringLength(10)]
        public string when_tl { get; set; }

        [StringLength(10)]
        public string college_countCompare { get; set; }

        [StringLength(10)]
        public string college_count { get; set; }

        public int? FK_prereq_list { get; set; }

        public int? FK_skill { get; set; }

        public int? FK_technique { get; set; }

        public int? FK_Advantage { get; set; }

        public virtual Advantage Advantage { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<advantage_prereq> advantage_prereq { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<attribute_prereq> attribute_prereq { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<contained_weight_prereq> contained_weight_prereq { get; set; }

        public virtual GurpsSkill GurpsSkill { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<prereq_listDB> prereq_listDB1 { get; set; }

        public virtual prereq_listDB prereq_listDB2 { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<skill_prereqDB> skill_prereqDB { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<spell_prereqDB> spell_prereqDB { get; set; }
    }
}
