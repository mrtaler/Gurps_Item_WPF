namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("LC")]
    public partial class LC
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public LC()
        {
            ITEM = new HashSet<ITEM>();
        }

        [Key]
        public int Id_LC { get; set; }

        [StringLength(10)]
        public string Name_LC { get; set; }

        [StringLength(15)]
        public string ShortDes { get; set; }

        [StringLength(300)]
        public string Description { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ITEM> ITEM { get; set; }
    }
}
