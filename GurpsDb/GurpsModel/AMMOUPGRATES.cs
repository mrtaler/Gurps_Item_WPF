namespace GurpsDb.GurpsModel
{
    using System.ComponentModel.DataAnnotations;

    public partial class Ammoupgrates
    {
        public int Id { get; set; }

        [Required]
        [StringLength(150)]
        public string Name { get; set; }

        [Required]
        [StringLength(20)]
        public string Shortname { get; set; }

        public int Malf { get; set; }

        public decimal ArDivX { get; set; }

        public int AccAdd { get; set; }

        public decimal AccX { get; set; }

        public decimal DamageX { get; set; }

        [StringLength(5)]
        public string DamType { get; set; }

        public decimal RangeX12 { get; set; }

        public decimal RangeX { get; set; }

        public decimal StX { get; set; }

        public decimal WpsX { get; set; }

        public decimal CpsX { get; set; }

        public int Hearing { get; set; }

        [StringLength(15)]
        public string AmmoClass { get; set; }

        public decimal? MinCaliber { get; set; }

        public decimal? MaxCalider { get; set; }

        public decimal? DtMinAmmoCAliber { get; set; }

        [StringLength(3)]
        public string ConditionDtMinAmmoCal { get; set; }

        public int HearingTable { get; set; }

        [Required]
        [StringLength(150)]
        public string Upgrates { get; set; }

        [StringLength(50)]
        public string FollowUp { get; set; }

        [StringLength(50)]
        public string Linked { get; set; }
    }
}
