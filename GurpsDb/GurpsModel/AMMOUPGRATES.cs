namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class AMMOUPGRATES
    {
        public int id { get; set; }

        [Required]
        [StringLength(150)]
        public string name { get; set; }

        [Required]
        [StringLength(20)]
        public string shortname { get; set; }

        public int malf { get; set; }

        public decimal AR_divX { get; set; }

        public int ACC_add { get; set; }

        public decimal ACC_x { get; set; }

        public decimal damage_x { get; set; }

        [StringLength(5)]
        public string Dam_Type { get; set; }

        public decimal range_x12 { get; set; }

        public decimal range_x { get; set; }

        public decimal ST_x { get; set; }

        public decimal WPS_x { get; set; }

        public decimal CPS_x { get; set; }

        public int Hearing { get; set; }

        [StringLength(15)]
        public string Ammo_Class { get; set; }

        public decimal? min_Caliber { get; set; }

        public decimal? Max_Calider { get; set; }

        public decimal? DT_Min_Ammo_CAliber { get; set; }

        [StringLength(3)]
        public string Condition_DT_Min_ammo_Cal { get; set; }

        public int hearing_table { get; set; }

        [Required]
        [StringLength(150)]
        public string Upgrates { get; set; }

        [StringLength(50)]
        public string Follow_Up { get; set; }

        [StringLength(50)]
        public string Linked { get; set; }
    }
}
