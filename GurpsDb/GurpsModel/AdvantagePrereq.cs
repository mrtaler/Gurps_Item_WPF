namespace GurpsDb.GurpsModel
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("AdvantagePrereq", Schema = "CharDB")]
    public partial class AdvantagePrereq
    {
        public int Id { get; set; }

        [StringLength(50)]
        public string NameCompare { get; set; }

        [StringLength(50)]
        public string Name { get; set; }

        [StringLength(50)]
        public string NotesCompare { get; set; }

        [StringLength(50)]
        public string Notes { get; set; }

        [StringLength(50)]
        public string LevelCompare { get; set; }

        [StringLength(50)]
        public string Level { get; set; }

        [StringLength(50)]
        public string Has { get; set; }

        public int? IdPrqList { get; set; }

        [StringLength(50)]
        public string Value { get; set; }

        public virtual PrereqListDb PrereqListDb { get; set; }
    }
}
