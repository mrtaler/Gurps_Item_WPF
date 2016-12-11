namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class GSubAttachClass
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public GSubAttachClass()
        {
            GAvAttachClass = new HashSet<GAvAttachClass>();
        }

        public int Id { get; set; }

        [Required]
        [StringLength(50)]
        public string SubAttachName { get; set; }

        public int AttachClass { get; set; }

        public string SubAttachDescription { get; set; }

        public int Attachmentslot { get; set; }

        public virtual Attachmentslot Attachmentslot1 { get; set; }

        public virtual GAttachClass GAttachClass { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GAvAttachClass> GAvAttachClass { get; set; }
    }
}
