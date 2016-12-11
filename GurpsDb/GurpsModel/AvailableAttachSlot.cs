namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("AvailableAttachSlot")]
    public partial class AvailableAttachSlot
    {
        public int Id { get; set; }

        public int RItemId { get; set; }

        public int RAttachmentslot { get; set; }

        public int RAttachmentmount { get; set; }

        public virtual Attachmentmount Attachmentmount { get; set; }

        public virtual Item Item { get; set; }
    }
}
