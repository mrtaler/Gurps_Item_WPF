namespace GurpsDb.GurpsModel
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("SkillPrereqDb", Schema = "CharDB")]
    public partial class SkillPrereqDb
    {
        public int Id { get; set; }

        [StringLength(50)]
        public string NameCompare { get; set; }

        [StringLength(50)]
        public string Name { get; set; }

        [StringLength(50)]
        public string SpecializationCompare { get; set; }

        [StringLength(50)]
        public string Specialization { get; set; }

        [StringLength(50)]
        public string LevelSpCompare { get; set; }

        [StringLength(50)]
        public string LevelSp { get; set; }

        [StringLength(10)]
        public string Has { get; set; }

        public int? IdprereqList { get; set; }

        public virtual PrereqListDb PrereqListDb { get; set; }
    }
}
