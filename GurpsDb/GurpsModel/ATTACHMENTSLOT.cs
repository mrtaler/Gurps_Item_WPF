namespace GurpsDb.GurpsModel
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("ATTACHMENTSLOT")]
    public partial class Attachmentslot
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Attachmentslot()
        {
            Attachmentmount = new HashSet<Attachmentmount>();
            GSubAttachClass = new HashSet<GSubAttachClass>();
        }

        [Key]
        public int UiSlotIndex { get; set; }

        [Required]
        [StringLength(50)]
        public string SzSlotName { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Attachmentmount> Attachmentmount { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GSubAttachClass> GSubAttachClass { get; set; }
    }
}
