namespace GurpsDb.GurpsModel
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("Drug", Schema = "dbo")]
    public partial class Drug : Item
    {
        public int? IdDrugType { get; set; }

        public virtual Item Item { get; set; }
    }
}
