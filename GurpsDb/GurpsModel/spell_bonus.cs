namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CharDB.spell_bonus")]
    public partial class spell_bonus
    {
        public int id { get; set; }

        [StringLength(50)]
        public string spell_name { get; set; }

        [StringLength(50)]
        public string spell_nameC { get; set; }

        [StringLength(50)]
        public string college_name { get; set; }

        [StringLength(50)]
        public string college_nameC { get; set; }

        [StringLength(50)]
        public string all_colleges { get; set; }

        [StringLength(50)]
        public string amountper_level { get; set; }

        [StringLength(50)]
        public string amountValue { get; set; }

        public int? id_Adv { get; set; }

        public virtual Advantage Advantage { get; set; }
    }
}
