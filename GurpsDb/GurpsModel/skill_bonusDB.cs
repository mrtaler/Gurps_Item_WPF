namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CharDB.skill_bonusDB")]
    public partial class skill_bonusDB
    {
        public int id { get; set; }

        [StringLength(50)]
        public string name { get; set; }

        [StringLength(50)]
        public string namecompare { get; set; }

        [StringLength(50)]
        public string specialization { get; set; }

        [StringLength(50)]
        public string specializationcompare { get; set; }

        [StringLength(50)]
        public string AmountPer_level { get; set; }

        [StringLength(50)]
        public string AmountValue { get; set; }

        public int? FK_Adv { get; set; }

        public virtual Advantage Advantage { get; set; }
    }
}
