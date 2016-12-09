namespace GurpsDb.GurpsModel
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("CharDB.CharSkill")]
    public partial class CharSkill
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IdSkill { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IdChar { get; set; }

        public int? PointOfSkill { get; set; }

        public virtual CharacterDb CharacterDb { get; set; }

        public virtual GurpsSkill GurpsSkill { get; set; }
    }
}
