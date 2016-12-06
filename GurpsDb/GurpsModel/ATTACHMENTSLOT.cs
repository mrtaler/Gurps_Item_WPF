namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ATTACHMENTSLOT")]
    public partial class ATTACHMENTSLOT
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ATTACHMENTSLOT()
        {
            Attachmentmount = new HashSet<Attachmentmount>();
            G_SubAttachClass = new HashSet<G_SubAttachClass>();
        }

        [Key]
        public int uiSlotIndex { get; set; }

        [Required]
        [StringLength(50)]
        public string szSlotName { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Attachmentmount> Attachmentmount { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<G_SubAttachClass> G_SubAttachClass { get; set; }
    }
}
