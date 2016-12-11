namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CharDB.modifier")]
    public partial class Modifier
    {
        public int Id { get; set; }

        [StringLength(50)]
        public string Name { get; set; }

        [StringLength(50)]
        public string NameC { get; set; }

        [StringLength(50)]
        public string Notes { get; set; }

        [StringLength(50)]
        public string NotesC { get; set; }

        [StringLength(50)]
        public string Levels { get; set; }

        [StringLength(50)]
        public string Reference { get; set; }

        [StringLength(50)]
        public string Affects { get; set; }

        [StringLength(50)]
        public string Version { get; set; }

        [StringLength(50)]
        public string Enabled { get; set; }

        public int? IdAdv { get; set; }

        [StringLength(50)]
        public string Cost { get; set; }

        [StringLength(50)]
        public string CostType { get; set; }

        public virtual Advantage Advantage { get; set; }
    }
}
