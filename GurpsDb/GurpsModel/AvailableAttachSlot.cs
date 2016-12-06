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
        public int id { get; set; }

        public int rItemId { get; set; }

        public int rATTACHMENTSLOT { get; set; }

        public int rAttachmentmount { get; set; }

        public virtual Attachmentmount Attachmentmount { get; set; }

        public virtual ITEM ITEM { get; set; }
    }
}
