namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CharDB.melee_weapon")]
    public partial class melee_weapon
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public melee_weapon()
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
        public string reach { get; set; }

        [StringLength(50)]
        public string parry { get; set; }

        [StringLength(50)]
        public string block { get; set; }

        public int? idAdv { get; set; }

        public virtual Advantage Advantage { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DefSkillSome> DefSkillSome { get; set; }
    }
}
