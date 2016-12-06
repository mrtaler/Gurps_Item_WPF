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
        public int id { get; set; }

        [StringLength(50)]
        public string nameSkill { get; set; }

        [StringLength(50)]
        public string specialization { get; set; }

        [StringLength(50)]
        public string type { get; set; }

        [StringLength(50)]
        public string modifier { get; set; }

        public int? idSkill { get; set; }

        public int? idRangeWeap { get; set; }

        public int? idMeleWeap { get; set; }

        public virtual GurpsSkill GurpsSkill { get; set; }

        public virtual ranged_weapon ranged_weapon { get; set; }

        public virtual melee_weapon melee_weapon { get; set; }
    }
}
