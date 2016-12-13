namespace GurpsDb.GurpsModel
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("AttributeBonus", Schema = "CharDB")]
    public partial class AttributeBonus
    {
        public int Id { get; set; }

        public int? FkSkill { get; set; }

        public int? FkAmount { get; set; }

        [StringLength(50)]
        public string AttributeLimitation { get; set; }

        [StringLength(50)]
        public string AttributeValue { get; set; }

        [StringLength(50)]
        public string AmountPerLevel { get; set; }

        [StringLength(50)]
        public string AmountValue { get; set; }

        public int? FkAdvantage { get; set; }

        public virtual Advantage Advantage { get; set; }

        public virtual GurpsSkill GurpsSkill { get; set; }
    }
}
