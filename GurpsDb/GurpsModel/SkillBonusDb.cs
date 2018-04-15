namespace GurpsDb.GurpsModel
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;


    [Table("SkillBonusDb", Schema = "CharDB")]
    public partial class SkillBonusDb
    {
        public int Id { get; set; }

        [StringLength(50)]
        public string Name { get; set; }

        [StringLength(50)]
        public string Namecompare { get; set; }

        [StringLength(50)]
        public string Specialization { get; set; }

        [StringLength(50)]
        public string Specializationcompare { get; set; }

        [StringLength(50)]
        public string AmountPerLevel { get; set; }

        [StringLength(50)]
        public string AmountValue { get; set; }

        public int? FkAdv { get; set; }

        public virtual Advantage Advantage { get; set; }
    }
}
