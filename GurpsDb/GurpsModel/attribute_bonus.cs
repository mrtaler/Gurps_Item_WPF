namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CharDB.attribute_bonus")]
    public partial class attribute_bonus
    {
        public int id { get; set; }

        public int? FK_Skill { get; set; }

        public int? FK_Amount { get; set; }

        [StringLength(50)]
        public string AttributeLimitation { get; set; }

        [StringLength(50)]
        public string AttributeValue { get; set; }

        [StringLength(50)]
        public string AmountPer_level { get; set; }

        [StringLength(50)]
        public string AmountValue { get; set; }

        public int? FK_Advantage { get; set; }

        public virtual Advantage Advantage { get; set; }

        public virtual GurpsSkill GurpsSkill { get; set; }
    }
}
