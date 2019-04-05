namespace GurpsDb.GurpsModel
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    /// <summary>
    /// Class for description Attachment Mount
    /// </summary>
    [Table("AttachmentMount", Schema = "dbo")]
    public partial class AttachmentMount
    {
        /// <summary>
        /// Default constructor for db load
        /// </summary>
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public AttachmentMount()
        {
            this.Attachment = new HashSet<Attachment>();
            this.AvailableAttachSlot = new HashSet<AvailableAttachSlot>();
        }

        /// <summary>
        /// Constructor for new Attachment Mount
        /// </summary>
        /// <param name="name"></param>
        /// <param name="attachmentSlot"></param>
        public AttachmentMount(string name, AttachmentSlot attachmentSlot)
        {
            this.Name = name;
            this.AttachmentSlot = attachmentSlot;
        }

        /// <summary>
        /// ID
        /// </summary>
        public int Id { get; set; }

        /// <summary>
        /// Name mount
        /// </summary>
        [StringLength(50)]
        public string Name { get; set; }

        /// <summary>
        /// id Attach class
        /// </summary>
        public int IdAttacClass { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Attachment> Attachment { get; set; }

        public virtual AttachmentSlot AttachmentSlot { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AvailableAttachSlot> AvailableAttachSlot { get; set; }
    }
}
