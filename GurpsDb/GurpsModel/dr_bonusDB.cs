namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CharDB.dr_bonusDB")]
    public partial class dr_bonusDB
    {
        public int id { get; set; }

        [StringLength(50)]
        public string location { get; set; }

        [StringLength(50)]
        public string per_level { get; set; }

        [StringLength(50)]
        public string Value { get; set; }

        public int? idAdv { get; set; }

        public virtual Advantage Advantage { get; set; }
    }
}
