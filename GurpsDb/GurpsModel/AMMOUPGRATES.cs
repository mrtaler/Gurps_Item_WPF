using System.ComponentModel.DataAnnotations.Schema;

namespace GurpsDb.GurpsModel
{
    using System.ComponentModel.DataAnnotations;
    [Table("Ammoupgrates", Schema = "pbo")]
    public partial class Ammoupgrates
    {
        // [Column("id")]
        public int Id { get; set; }

        [Required]
        [StringLength(150)]

        // [Column("name")]
        public string Name { get; set; }

        [Required]
        [StringLength(20)]

        // [Column("shortname")]
        public string Shortname { get; set; }

        // [Column("malf")]
        public int Malf { get; set; }

        // [Column("AR_divX")]
        public decimal ArDivX { get; set; }

        // [Column("ACC_add")]
        public int AccAdd { get; set; }

        // [Column("ACC_x")]
        public decimal AccX { get; set; }

        // [Column("damage_x")]
        public decimal DamageX { get; set; }

        [StringLength(5)]

        // [Column("Dam_Type")]
        public string DamType { get; set; }

        // [Column("range_x12")]
        public decimal RangeX12 { get; set; }

        // [Column("range_x")]
        public decimal RangeX { get; set; }

        // [Column("ST_x")]
        public decimal StX { get; set; }

        // [Column("WPS_x")]
        public decimal WpsX { get; set; }

        // [Column("CPS_x")]
        public decimal CpsX { get; set; }

        // [Column("Hearing")]
        public int Hearing { get; set; }

        [StringLength(15)]

        // [Column("Ammo_Class")]
        public string AmmoClass { get; set; }

        // [Column("min_Caliber")]
        public decimal? MinCaliber { get; set; }

        // [Column("Max_Calider")]
        public decimal? MaxCalider { get; set; }

        // [Column("DT_Min_Ammo_CAliber")]
        public decimal? DtMinAmmoCAliber { get; set; }

        [StringLength(3)]

        // [Column("Condition_DT_Min_ammo_Cal")]
        public string ConditionDtMinAmmoCal { get; set; }

        // [Column("hearing_table")]
        public int HearingTable { get; set; }

        [Required]
        [StringLength(150)]

        // [Column("Upgrates")]
        public string Upgrates { get; set; }

        [StringLength(50)]

        // [Column("Follow_Up")]
        public string FollowUp { get; set; }

        [StringLength(50)]

        // [Column("Linked")]
        public string Linked { get; set; }
    }
}
