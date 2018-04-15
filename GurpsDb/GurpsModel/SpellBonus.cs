namespace GurpsDb.GurpsModel
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("SpellBonus", Schema = "CharDB")]
    public partial class SpellBonus
    {
        public int Id { get; set; }

        [StringLength(50)]
        public string SpellName { get; set; }

        [StringLength(50)]
        public string SpellNameC { get; set; }

        [StringLength(50)]
        public string CollegeName { get; set; }

        [StringLength(50)]
        public string CollegeNameC { get; set; }

        [StringLength(50)]
        public string AllColleges { get; set; }

        [StringLength(50)]
        public string AmountperLevel { get; set; }

        [StringLength(50)]
        public string AmountValue { get; set; }

        public int? IdAdv { get; set; }

        public virtual Advantage Advantage { get; set; }
    }
}
