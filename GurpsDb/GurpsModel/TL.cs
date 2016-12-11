namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TL")]
    public partial class Tl
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Tl()
        {
            GurpsSkill = new HashSet<GurpsSkill>();
            Item = new HashSet<Item>();
        }

        [Key]
        public int IdTl { get; set; }

        [StringLength(50)]
        public string NameTl { get; set; }

        [StringLength(60)]
        public string Description { get; set; }

        public decimal? StartMoney { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GurpsSkill> GurpsSkill { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Item> Item { get; set; }
    }
}
