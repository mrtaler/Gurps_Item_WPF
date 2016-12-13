namespace GurpsDb.GurpsModel
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("CharSkill", Schema = "CharDB")]
    public partial class CharSkill
    {
        [Key]
        [Column("idSkill", Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IdSkill { get; set; }

        [Key]
        [Column("idChar", Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IdChar { get; set; }

        public int? PointOfSkill { get; set; }

        public virtual CharacterDb CharacterDb { get; set; }

        public virtual GurpsSkill GurpsSkill { get; set; }
    }
}
