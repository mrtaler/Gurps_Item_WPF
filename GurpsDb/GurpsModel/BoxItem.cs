namespace GurpsDb.GurpsModel
{
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("BoxItem", Schema = "dbo")]
    public partial class BoxItem
    {
        public int Id { get; set; }

        public int BoxName { get; set; }

        public int Items { get; set; }

        public int CountItems { get; set; }

        public virtual AnyBoxNameType AnyBoxNameType { get; set; }

        public virtual Item Item { get; set; }
    }
}
