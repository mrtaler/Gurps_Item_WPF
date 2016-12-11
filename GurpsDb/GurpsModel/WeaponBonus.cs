namespace GurpsDb.GurpsModel
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("CharDB.weapon_bonus")]
    public partial class WeaponBonus
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
        public string LevelCompare { get; set; }

        [StringLength(50)]
        public string Level { get; set; }

        public int? FkSkill { get; set; }

        [StringLength(50)]
        public string AmountPerLevel { get; set; }

        [StringLength(50)]
        public string AmountValue { get; set; }

        public int? FkAdv { get; set; }

        public virtual Advantage Advantage { get; set; }

        public virtual GurpsSkill GurpsSkill { get; set; }
    }
}
