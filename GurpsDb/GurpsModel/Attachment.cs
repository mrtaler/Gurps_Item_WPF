namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Attachment")]
    public partial class Attachment
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Attachment()
        {
            G_AvAttachClass = new HashSet<G_AvAttachClass>();
        }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int uiIndex { get; set; }

        [Required]
        [StringLength(80)]
        public string szAttName { get; set; }

        public int rAttachmentClass { get; set; }

        [StringLength(50)]
        public string Attachmentmount { get; set; }

        public bool HiddenAttachment { get; set; }

        public int? NoiseReduction { get; set; }

        public bool HideMuzzleFlash { get; set; }

        public int? RangeBonus { get; set; }

        public int? AimBonus { get; set; }

        public int? MinRangeForAimBonus { get; set; }

        public int? MagSizeBonus { get; set; }

        public int? BurstSizeBonus { get; set; }

        public int? RateOfFireBonus { get; set; }

        public int? DamageBonus { get; set; }

        public decimal? ScopeMagFactor { get; set; }

        public int? HearingRangeBonus { get; set; }

        public int? VisionRangeBonus { get; set; }

        public int? NightVisionRangeBonus { get; set; }

        public int? DayVisionRangeBonus { get; set; }

        public int? CaveVisionRangeBonus { get; set; }

        public int? BrightLightVisionRangeBonus { get; set; }

        public int? PercentTunnelVision { get; set; }

        public int? FlashLightRange { get; set; }

        public int? RecoilModifier { get; set; }

        public int G_SubAttachClass { get; set; }

        public int G_AttachClass { get; set; }

        public int? Darkness { get; set; }

        public int? Bulk_add { get; set; }

        public bool Fix { get; set; }

        public int? BatTimeWork { get; set; }

        public bool Tritium { get; set; }

        public int? ScopeMagMin { get; set; }

        public int? ScopeMagMax { get; set; }

        public int? AccAddmax { get; set; }

        public int id_Attachmentmount { get; set; }

        public bool ImpVisSights { get; set; }

        public bool BlockIronSight { get; set; }

        public bool Collimator { get; set; }

        public bool Reflex { get; set; }

        public bool Targetingprogram { get; set; }

        public bool Laserrangefinder { get; set; }

        public int? LaserRFrange { get; set; }

        public int? LaserRFAcc { get; set; }

        public int? NightVision { get; set; }

        public bool NeedIRillumination { get; set; }

        public bool Infravision { get; set; }

        public bool IRFilter { get; set; }

        public int? LightRange { get; set; }

        public int? IRLigRange { get; set; }

        public int? LaserRange { get; set; }

        [StringLength(10)]
        public string LaserColor { get; set; }

        public decimal? LaserColorEf { get; set; }

        public int? usedBatType { get; set; }

        public virtual Attachmentmount Attachmentmount1 { get; set; }

        public virtual ITEM ITEM { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<G_AvAttachClass> G_AvAttachClass { get; set; }
    }
}