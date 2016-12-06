namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class G_SubAttachClass
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public G_SubAttachClass()
        {
            G_AvAttachClass = new HashSet<G_AvAttachClass>();
        }

        public int id { get; set; }

        [Required]
        [StringLength(50)]
        public string SubAttach_name { get; set; }

        public int AttachClass { get; set; }

        public string SubAttachDescription { get; set; }

        public int ATTACHMENTSLOT { get; set; }

        public virtual ATTACHMENTSLOT ATTACHMENTSLOT1 { get; set; }

        public virtual G_AttachClass G_AttachClass { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<G_AvAttachClass> G_AvAttachClass { get; set; }
    }
}
