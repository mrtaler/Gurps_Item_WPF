namespace GurpsDb.GurpsModel
{
    using System.ComponentModel.DataAnnotations.Schema;

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
