namespace GurpsDb.GurpsModel
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("Drug", Schema = "dbo")]
    public partial class Drug : Item
    {
        public string Type { get; set; }
        public string Wearout { get; set; }
        public string Addict { get; set; }
    }
}
