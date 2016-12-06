namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Caliber")]
    public partial class Caliber
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Caliber()
        {
            ITEM = new HashSet<ITEM>();
        }

        public int id { get; set; }

        [Required]
        [StringLength(255)]
        public string Caliber_name { get; set; }

        [StringLength(255)]
        public string alt_caliber_name { get; set; }

        [Required]
        [StringLength(50)]
        public string Class_of_Caliber { get; set; }

        public decimal? Dim_of_bullet_SI { get; set; }

        public decimal? Dim_of_bullet_US { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ITEM> ITEM { get; set; }
    }
}
