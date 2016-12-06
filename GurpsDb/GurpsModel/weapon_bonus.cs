namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CharDB.weapon_bonus")]
    public partial class weapon_bonus
    {
        public int id { get; set; }

        [StringLength(50)]
        public string nameCompare { get; set; }

        [StringLength(50)]
        public string name { get; set; }

        [StringLength(50)]
        public string specializationCompare { get; set; }

        [StringLength(50)]
        public string specialization { get; set; }

        [StringLength(50)]
        public string levelCompare { get; set; }

        [StringLength(50)]
        public string level { get; set; }

        public int? FK_Skill { get; set; }

        [StringLength(50)]
        public string AmountPer_level { get; set; }

        [StringLength(50)]
        public string AmountValue { get; set; }

        public int? FK_Adv { get; set; }

        public virtual Advantage Advantage { get; set; }

        public virtual GurpsSkill GurpsSkill { get; set; }
    }
}
