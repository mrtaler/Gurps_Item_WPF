namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("LaserColorEf")]
    public partial class LaserColorEf
    {
        public int id { get; set; }

        [StringLength(10)]
        public string name { get; set; }

        public decimal? LaserColorDayEfect { get; set; }
    }
}
