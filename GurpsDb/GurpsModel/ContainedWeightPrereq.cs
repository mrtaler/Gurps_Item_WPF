namespace GurpsDb.GurpsModel
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("ContainedWeightPrereq", Schema = "CharDB")]
    public partial class ContainedWeightPrereq
    {
        public int Id { get; set; }

        [StringLength(50)]
        public string Has { get; set; }

        [StringLength(50)]
        public string Compare { get; set; }

        [StringLength(50)]
        public string Value { get; set; }

        public int? IdPrqList { get; set; }

        public virtual PrereqListDb PrereqListDb { get; set; }
    }
}
