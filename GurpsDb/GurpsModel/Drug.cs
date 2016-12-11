namespace GurpsDb.GurpsModel
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("Drug")]
    public partial class Drug
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Name { get; set; }

        public int? IdDrugType { get; set; }

        public virtual Item Item { get; set; }
    }
}
