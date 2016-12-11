namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CharDB.DefSkillSome")]
    public partial class DefSkillSome
    {
        public int Id { get; set; }

        [StringLength(50)]
        public string NameSkill { get; set; }

        [StringLength(50)]
        public string Specialization { get; set; }

        [StringLength(50)]
        public string Type { get; set; }

        [StringLength(50)]
        public string Modifier { get; set; }

        public int? IdSkill { get; set; }

        public int? IdRangeWeap { get; set; }

        public int? IdMeleWeap { get; set; }

        public virtual GurpsSkill GurpsSkill { get; set; }

        public virtual RangedWeapon RangedWeapon { get; set; }

        public virtual MeleeWeapon MeleeWeapon { get; set; }
    }
}
