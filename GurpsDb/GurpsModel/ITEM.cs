namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("Item", Schema = "dbo")]
    public partial class Item
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Item()
        {
            InventoryOfChar = new HashSet<InventoryOfChar>();
            AvailableAttachSlot = new HashSet<AvailableAttachSlot>();
            BoxItem = new HashSet<BoxItem>();
        }
        /// <summary>
        /// Constructor for create new def item
        /// </summary>
        /// <param name="szItemName">Item name</param>
        /// <param name="itemSubClass">item class</param>
        /// <param name="lc1">LC</param>
        /// <param name="tl1">TL</param>
        public Item(
            string szItemName,
            ItemSubClass itemSubClass,
            Lc lc1,
            Tl tl1)
        {
            InventoryOfChar = new HashSet<InventoryOfChar>();
            AvailableAttachSlot = new HashSet<AvailableAttachSlot>();
            BoxItem = new HashSet<BoxItem>();

            SzItemName = szItemName;
            ItemSubClass = itemSubClass;

            Lc1 = lc1;
            Tl1 = tl1;
            WorksOnBat = "";


            SzLongItemName = "";

            SzItemDesc = "";

            UbWeight = 0M;
            ItemSize = "-3";

            UsPrice = 120M;


            UbCalibre = null;

            Damageable = true;

            Repairable = true;

            WaterDamages = true;

            Metal = true;

            TwoHanded = true;

            Electronic = true;

            Ht = true;

            Ut = false;

            RemoteTrigger = false;

            GasMask = false;

            Alcohol = false;

            Hardware = false;

            Medical = false;

            CamouflageKit = false;
            LocksmithKit = false;

            Toolkit = false;

            FirstAidKit = false;

            MedicalKit = false;


            WireCutters = false;

            Canteen = false;

            GasCan = false;

            Batteries = false;

            NeedsBatteries = false;

            ContainsLiquid = false;

            MetalDetector = false;
            FingerPrintId = false;
            TripWireActivation = false;
            TripWire = false;
            Mount = false;
            SizeBatteries = "";
            LockPickModifier = 0;
            CrowbarModifier = 0;
            DisarmModifier = 0;
            RepairModifier = 0;
            DamageChance = 0;
            MinSt = 2;

            Link = "";
            CountOfBat = 0;
        }
        [Key]
        public int UiIndex { get; set; }

        [Required]
        [StringLength(80)]
        public string SzItemName { get; set; }

        [StringLength(80)]
        public string SzLongItemName { get; set; }

        public string SzItemDesc { get; set; }

        public int UsItemClass { get; set; }

        public int UbClassIndex { get; set; }

        public decimal UbWeight { get; set; }

        [Required]
        [StringLength(80)]
        public string ItemSize { get; set; }

        [Column(TypeName = "money")]
        public decimal UsPrice { get; set; }

        public int? UbCalibre { get; set; }

        public bool Damageable { get; set; }

        public bool Repairable { get; set; }

        public bool WaterDamages { get; set; }

        public bool Metal { get; set; }

        public bool TwoHanded { get; set; }

        public bool Electronic { get; set; }

        public bool Ht { get; set; }

        public bool Ut { get; set; }

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

        public bool FingerPrintId { get; set; }

        public bool TripWireActivation { get; set; }

        public bool TripWire { get; set; }

        public bool Mount { get; set; }

        public int Tl { get; set; }

        public int Lc { get; set; }

        [StringLength(4)]
        public string SizeBatteries { get; set; }

        public int FoodType { get; set; }

        public int LockPickModifier { get; set; }

        public int CrowbarModifier { get; set; }

        public int DisarmModifier { get; set; }

        public int RepairModifier { get; set; }

        public int DamageChance { get; set; }

        public int Clothestype { get; set; }

        public int DrugType { get; set; }

        public byte[] ItemImage { get; set; }

        public int MinSt { get; set; }

        public string Link { get; set; }

        public bool Used { get; set; }

        public DateTime? Dt { get; set; }

        public int CountOfBat { get; set; }

        [Required]
        [StringLength(15)]
        public string WorksOnBat { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<InventoryOfChar> InventoryOfChar { get; set; }

        public virtual Armour Armour { get; set; }

        public virtual Attachment Attachment { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AvailableAttachSlot> AvailableAttachSlot { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BoxItem> BoxItem { get; set; }

        public virtual Caliber Caliber { get; set; }

        public virtual Clothes Clothes { get; set; }

        public virtual Drug Drug { get; set; }

        public virtual Explosive Explosive { get; set; }

        public virtual Food Food { get; set; }

        public virtual ItemSubClass ItemSubClass { get; set; }

        public virtual Lc Lc1 { get; set; }

        public virtual Tl Tl1 { get; set; }

        public virtual LoadBearingEquipment Loadbearingequipment { get; set; }

        //  public virtual Weapon Weapon { get; set; }
    }
}
