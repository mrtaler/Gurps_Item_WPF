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
            Item = new HashSet<Item>();
        }

        public int Id { get; set; }

        [Required]
        [StringLength(255)]
        public string CaliberName { get; set; }

        [StringLength(255)]
        public string AltCaliberName { get; set; }

        [Required]
        [StringLength(50)]
        public string ClassOfCaliber { get; set; }

        public decimal? DimOfBulletSi { get; set; }

        public decimal? DimOfBulletUs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Item> Item { get; set; }
    }
}
