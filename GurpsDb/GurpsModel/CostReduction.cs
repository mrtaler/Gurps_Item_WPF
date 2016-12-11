namespace GurpsDb.GurpsModel
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("CharDB.cost_reduction")]
    public partial class CostReduction
    {
        public int Id { get; set; }

        [StringLength(50)]
        public string Attribute { get; set; }

        [StringLength(50)]
        public string Percentage { get; set; }

        public int? IdAdv { get; set; }

        public virtual Advantage Advantage { get; set; }
    }
}
