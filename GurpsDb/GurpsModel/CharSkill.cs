namespace GurpsDb.GurpsModel
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    using BaseModel;

    [Table("CharSkill", Schema = "CharDB")]
    public partial class CharSkill : ViewModelBase
    {
        [Key]
        [Column("idSkill", Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IdSkill { get; set; }

        [Key]
        [Column("idChar", Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IdChar { get; set; }



        public virtual CharacterDb CharacterDb { get; set; }

        public virtual GurpsSkill GurpsSkill { get; set; }

        [NotMapped]
        private int? pointOfSkill;
        public int? PointOfSkill
        {
            get
            {
                return this.pointOfSkill;
            }

            set
            {
                if (this.pointOfSkill!=value)
                {
                    this.pointOfSkill = value;
                    this.NotifyPropertyChanged("PointOfSkill");
                }
            }
        }
    }
}
