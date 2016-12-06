namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CharDB.modifier")]
    public partial class modifier
    {
        public int id { get; set; }

        [StringLength(50)]
        public string name { get; set; }

        [StringLength(50)]
        public string nameC { get; set; }

        [StringLength(50)]
        public string notes { get; set; }

        [StringLength(50)]
        public string notesC { get; set; }

        [StringLength(50)]
        public string levels { get; set; }

        [StringLength(50)]
        public string reference { get; set; }

        [StringLength(50)]
        public string affects { get; set; }

        [StringLength(50)]
        public string version { get; set; }

        [StringLength(50)]
        public string enabled { get; set; }

        public int? idAdv { get; set; }

        [StringLength(50)]
        public string Cost { get; set; }

        [StringLength(50)]
        public string CostType { get; set; }

        public virtual Advantage Advantage { get; set; }
    }
}
