namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CharDB.ranged_weapon")]
    public partial class ranged_weapon
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ranged_weapon()
        {
            DefSkillSome = new HashSet<DefSkillSome>();
        }

        public int id { get; set; }

        [StringLength(50)]
        public string damage { get; set; }

        [StringLength(50)]
        public string strength { get; set; }

        [StringLength(50)]
        public string usage { get; set; }

        [StringLength(50)]
        public string accuracy { get; set; }

        [StringLength(50)]
        public string range { get; set; }

        [StringLength(50)]
        public string rate_of_fire { get; set; }

        [StringLength(50)]
        public string recoil { get; set; }

        [StringLength(50)]
        public string shots { get; set; }

        [StringLength(50)]
        public string bulk { get; set; }

        public int? idADV { get; set; }

        public virtual Advantage Advantage { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DefSkillSome> DefSkillSome { get; set; }
    }
}
