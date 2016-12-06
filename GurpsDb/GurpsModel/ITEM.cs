namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ITEM")]
    public partial class ITEM
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ITEM()
        {
            InventoryOfChar = new HashSet<InventoryOfChar>();
            AvailableAttachSlot = new HashSet<AvailableAttachSlot>();
            BoxItem = new HashSet<BoxItem>();
        }

        [Key]
        public int uiIndex { get; set; }

        [Required]
        [StringLength(80)]
        public string szItemName { get; set; }

        [StringLength(80)]
        public string szLongItemName { get; set; }

        public string szItemDesc { get; set; }

        public int usItemClass { get; set; }

        public int ubClassIndex { get; set; }

        public decimal ubWeight { get; set; }

        [Required]
        [StringLength(80)]
        public string ItemSize { get; set; }

        [Column(TypeName = "money")]
        public decimal usPrice { get; set; }

        public int? ubCalibre { get; set; }

        public bool Damageable { get; set; }

        public bool Repairable { get; set; }

        public bool WaterDamages { get; set; }

        public bool Metal { get; set; }

        public bool TwoHanded { get; set; }

        public bool Electronic { get; set; }

        public bool HT { get; set; }

        public bool UT { get; set; }

        public bool RemoteTrigger { get; set; }

        public bool GasMask { get; set; }

        public bool Alcohol { get; set; }

        public bool Hardware { get; set; }

        public bool Medical { get; set; }

        public bool CamouflageKit { get; set; }

        public bool LocksmithKit { get; set; }

        public bool Toolkit { get; set; }

        public bool FirstAidKit { get; set; }

        public bool MedicalKit { get; set; }

        public bool WireCutters { get; set; }

        public bool Canteen { get; set; }

        public bool GasCan { get; set; }

        public bool Batteries { get; set; }

        public bool NeedsBatteries { get; set; }

        public bool ContainsLiquid { get; set; }

        public bool MetalDetector { get; set; }

        public bool FingerPrintID { get; set; }

        public bool TripWireActivation { get; set; }

        public bool TripWire { get; set; }

        public bool Mount { get; set; }

        public int TL { get; set; }

        public int LC { get; set; }

        [StringLength(4)]
        public string SizeBatteries { get; set; }

        public int FoodType { get; set; }

        public int LockPickModifier { get; set; }

        public int CrowbarModifier { get; set; }

        public int DisarmModifier { get; set; }

        public int RepairModifier { get; set; }

        public int DamageChance { get; set; }

        public int clothestype { get; set; }

        public int DrugType { get; set; }

        public byte[] Item_Image { get; set; }

        public int minST { get; set; }

        public string Link { get; set; }

        public bool used { get; set; }

        public DateTime? dt { get; set; }

        public int Count_of_Bat { get; set; }

        [Required]
        [StringLength(15)]
        public string Works_on_Bat { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<InventoryOfChar> InventoryOfChar { get; set; }

        public virtual ARMOUR ARMOUR { get; set; }

        public virtual Attachment Attachment { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AvailableAttachSlot> AvailableAttachSlot { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BoxItem> BoxItem { get; set; }

        public virtual Caliber Caliber { get; set; }

        public virtual Clothes Clothes { get; set; }

        public virtual Drug Drug { get; set; }

        public virtual EXPLOSIVE EXPLOSIVE { get; set; }

        public virtual FOOD FOOD { get; set; }

        public virtual ItemSubClass ItemSubClass { get; set; }

        public virtual LC LC1 { get; set; }

        public virtual TL TL1 { get; set; }

        public virtual LOADBEARINGEQUIPMENT LOADBEARINGEQUIPMENT { get; set; }

        public virtual WEAPON WEAPON { get; set; }
    }
}
