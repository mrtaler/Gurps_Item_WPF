namespace GurpsDb.GurpsModel
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;


    [Table("NeedSkill", Schema = "CharDB")]
    public partial class NeedSkill
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IdSkillIn { get; set; }

        public int? IdSkillOut { get; set; }

        [StringLength(50)]
        public string Needed { get; set; }

        public virtual GurpsSkill GurpsSkill { get; set; }

        public virtual GurpsSkill GurpsSkill1 { get; set; }
    }
}
