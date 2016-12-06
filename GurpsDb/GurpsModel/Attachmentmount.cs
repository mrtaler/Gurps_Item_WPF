namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Attachmentmount")]
    public partial class Attachmentmount
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Attachmentmount()
        {
            Attachment = new HashSet<Attachment>();
            AvailableAttachSlot = new HashSet<AvailableAttachSlot>();
        }

        public int id { get; set; }

        [StringLength(50)]
        public string name { get; set; }

        public int idAttacClass { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Attachment> Attachment { get; set; }

        public virtual ATTACHMENTSLOT ATTACHMENTSLOT { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AvailableAttachSlot> AvailableAttachSlot { get; set; }
    }
}
