namespace GurpsDb.GurpsModel
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("CharDB.attribute_prereq")]
    public partial class AttributePrereq
    {
        public int Id { get; set; }

        [StringLength(50)]
        public string Has { get; set; }

        [StringLength(50)]
        public string Which { get; set; }

        [StringLength(50)]
        public string Compare { get; set; }

        [StringLength(50)]
        public string CombinedWith { get; set; }

        public int? IdPrqList { get; set; }

        [StringLength(50)]
        public string Value { get; set; }

        public virtual PrereqListDb PrereqListDb { get; set; }
    }
}
