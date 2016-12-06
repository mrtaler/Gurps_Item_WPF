namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Battery")]
    public partial class Battery
    {
        public int id { get; set; }

        [Required]
        [StringLength(50)]
        public string name { get; set; }

        [StringLength(50)]
        public string SmolName { get; set; }

        [StringLength(500)]
        public string Description { get; set; }

        [Column(TypeName = "money")]
        public decimal? CPP { get; set; }

        public decimal? WPP { get; set; }
    }
}
