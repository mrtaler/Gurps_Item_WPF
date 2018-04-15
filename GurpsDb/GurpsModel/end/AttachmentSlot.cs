namespace GurpsDb.GurpsModel
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    /// <summary>
    /// Class for description attacment slot
    /// </summary>
    [Table("AttachmentSlot", Schema = "dbo")]
    public partial class AttachmentSlot
    {
        /// <summary>
        /// Default constructor (db load)
        /// </summary>
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public AttachmentSlot()
        {
            Attachmentmount = new HashSet<AttachmentMount>();
            GSubAttachClass = new HashSet<GSubAttachClass>();
        }
        /// <summary>
        /// Constructor for new Attacment slot
        /// </summary>
        /// <param name="attachmentSlotName">Attacment slot name</param>
        public AttachmentSlot(string attachmentSlotName)
        {
            AttachmentSlotName = attachmentSlotName;
        }

        /// <summary>
        /// Id
        /// </summary>
        [Key]
        public int Id { get; set; }
        /// <summary>
        /// Attachment Slot Name
        /// </summary>
        [Required]
        [StringLength(50)]
        public string AttachmentSlotName { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AttachmentMount> Attachmentmount { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GSubAttachClass> GSubAttachClass { get; set; }
    }
}
