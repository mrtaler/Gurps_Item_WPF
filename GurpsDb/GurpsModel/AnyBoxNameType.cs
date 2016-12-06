namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("AnyBoxNameType")]
    public partial class AnyBoxNameType
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public AnyBoxNameType()
        {
            AnyBoxNameType1 = new HashSet<AnyBoxNameType>();
            BoxItem = new HashSet<BoxItem>();
        }

        public int id { get; set; }

        [StringLength(50)]
        public string nameOfBox { get; set; }

        public int TypeOfBox { get; set; }

        public int? ParentBoxName { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AnyBoxNameType> AnyBoxNameType1 { get; set; }

        public virtual AnyBoxNameType AnyBoxNameType2 { get; set; }

        public virtual Type_of_Box Type_of_Box { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BoxItem> BoxItem { get; set; }
    }
}
