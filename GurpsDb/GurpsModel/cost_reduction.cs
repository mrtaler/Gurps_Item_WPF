namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CharDB.cost_reduction")]
    public partial class cost_reduction
    {
        public int id { get; set; }

        [StringLength(50)]
        public string attribute { get; set; }

        [StringLength(50)]
        public string percentage { get; set; }

        public int? idAdv { get; set; }

        public virtual Advantage Advantage { get; set; }
    }
}
