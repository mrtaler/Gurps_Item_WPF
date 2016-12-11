namespace GurpsDb.GurpsModel
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("CharDB.dr_bonusDB")]
    public partial class DrBonusDb
    {
        public int Id { get; set; }

        [StringLength(50)]
        public string Location { get; set; }

        [StringLength(50)]
        public string PerLevel { get; set; }

        [StringLength(50)]
        public string Value { get; set; }

        public int? IdAdv { get; set; }

        public virtual Advantage Advantage { get; set; }
    }
}
