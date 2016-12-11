namespace GurpsDb.GurpsModel
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("CharDB.spell_prereqDB")]
    public partial class SpellPrereqDb
    {
        public int Id { get; set; }

        [StringLength(50)]
        public string NameCompare { get; set; }

        [StringLength(50)]
        public string Name { get; set; }

        [StringLength(50)]
        public string CollegeCompare { get; set; }

        [StringLength(50)]
        public string College { get; set; }

        [StringLength(50)]
        public string CollegeCountCompare { get; set; }

        [StringLength(50)]
        public string CollegeCount { get; set; }

        [StringLength(50)]
        public string QuantityCompare { get; set; }

        [StringLength(50)]
        public string Quantity { get; set; }

        [StringLength(50)]
        public string Anyt { get; set; }

        [StringLength(50)]
        public string Has { get; set; }

        public int? IdPrqlist { get; set; }

        [StringLength(50)]
        public string Value { get; set; }

        public virtual PrereqListDb PrereqListDb { get; set; }
    }
}
