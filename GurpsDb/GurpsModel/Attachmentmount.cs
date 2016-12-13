namespace GurpsDb.GurpsModel
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("AttachmentMount", Schema = "dbo")]
    public partial class AttachmentMount
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public AttachmentMount()
        {
            Attachment = new HashSet<Attachment>();
            AvailableAttachSlot = new HashSet<AvailableAttachSlot>();
        }

        public int Id { get; set; }

        [StringLength(50)]
        public string Name { get; set; }

        public int IdAttacClass { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Attachment> Attachment { get; set; }

        public virtual AttachmentSlot Attachmentslot { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AvailableAttachSlot> AvailableAttachSlot { get; set; }
    }
}
