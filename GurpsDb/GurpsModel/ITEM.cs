using System.ComponentModel;
using System.Net.Configuration;

namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.ModelConfiguration;

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
            SzItemName = szItemName;
            ItemSubClass = itemSubClass;

            Lc1 = lc1;
            Tl1 = tl1;

            SzLongItemName = "0";
            SzItemDesc = "0";

            UbClassIndex = 0;
            UbWeight = 10M;
            ItemSize = "0"; UsPrice = 10M;

            UbCalibre = null;
            Damageable = false;
            Repairable = false;
            WaterDamages = false;
            Metal = false;
            TwoHanded = false;
            Electronic = false;
            Ht = false;
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
            SizeBatteries = "0";
            LockPickModifier = 0;
            CrowbarModifier = 0;
            DisarmModifier = 0;
            RepairModifier = 0;
            DamageChance = 0;
            ItemImage = null;
            MinSt = 1;
            Link = string.Empty;
            Used = false;


            Dt = DateTime.Now;


            CountOfBat = 0;
            WorksOnBat = "0";

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
        [DefaultValue("0")]
        [Required]
        [StringLength(80)]
        public string ItemSize { get; set; }

        [Column(TypeName = "money")]
        public decimal UsPrice { get; set; }

        public int? UbCalibre { get; set; }
        [DefaultValue("false")]
        public bool Damageable { get; set; }
        [DefaultValue("false")]
        public bool Repairable { get; set; }
        [DefaultValue("false")]
        public bool WaterDamages { get; set; }
        [DefaultValue("false")]
        public bool Metal { get; set; }
        [DefaultValue("false")]
        public bool TwoHanded { get; set; }
        [DefaultValue("false")]
        public bool Electronic { get; set; }
        [DefaultValue("false")]
        public bool Ht { get; set; }
        [DefaultValue("false")]
        public bool Ut { get; set; }
        [DefaultValue("false")]
        public bool RemoteTrigger { get; set; }
        [DefaultValue("false")]
        public bool GasMask { get; set; }
        [DefaultValue("false")]
        public bool Alcohol { get; set; }
        [DefaultValue("false")]
        public bool Hardware { get; set; }
        [DefaultValue("false")]
        public bool Medical { get; set; }
        [DefaultValue("false")]
        public bool CamouflageKit { get; set; }
        [DefaultValue("false")]
        public bool LocksmithKit { get; set; }
        [DefaultValue("false")]
        public bool Toolkit { get; set; }
        [DefaultValue("false")]
        public bool FirstAidKit { get; set; }
        [DefaultValue("false")]
        public bool MedicalKit { get; set; }
        [DefaultValue("false")]
        public bool WireCutters { get; set; }
        [DefaultValue("false")]
        public bool Canteen { get; set; }
        [DefaultValue("false")]
        public bool GasCan { get; set; }
        [DefaultValue("false")]
        public bool Batteries { get; set; }
        [DefaultValue("false")]
        public bool NeedsBatteries { get; set; }
        [DefaultValue("false")]
        public bool ContainsLiquid { get; set; }
        [DefaultValue("false")]
        public bool MetalDetector { get; set; }
        [DefaultValue("false")]
        public bool FingerPrintId { get; set; }
        [DefaultValue("false")]
        public bool TripWireActivation { get; set; }
        [DefaultValue("false")]
        public bool TripWire { get; set; }
        [DefaultValue("false")]
        public bool Mount { get; set; }

        public int Tl { get; set; }
        public int Lc { get; set; }
        [StringLength(4)]
        public string SizeBatteries { get; set; }
        //   public int FoodType { get; set; }
        [DefaultValue(0)]
        public int LockPickModifier { get; set; }
        [DefaultValue(0)]
        public int CrowbarModifier { get; set; }
        [DefaultValue(0)]
        public int DisarmModifier { get; set; }
        [DefaultValue(0)]
        public int RepairModifier { get; set; }
        [DefaultValue(0)]
        public int DamageChance { get; set; }

        // public int Clothestype { get; set; }

        //public int DrugType { get; set; }

        public byte[] ItemImage { get; set; }
        [DefaultValue("1")]
        public int MinSt { get; set; }
        [DefaultValue("")]
        public string Link { get; set; }
        [DefaultValue("false")]
        public bool Used { get; set; }

        public DateTime? Dt { get; set; }

        [DefaultValue("0")]
        public int CountOfBat { get; set; }

        [Required]
        [StringLength(15)]
        [DefaultValue("0")]
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

    public class ItemConfiguration : EntityTypeConfiguration<Item>
    {
        public ItemConfiguration()
        {
            this.Property(e => e.UbWeight)
               .HasPrecision(7, 3);

            this.Property(e => e.UsPrice)
                .HasPrecision(19, 4);

            this.HasMany(e => e.InventoryOfChar)
                .WithRequired(e => e.Item)
                .HasForeignKey(e => e.IdItem);

            this.HasOptional(e => e.Armour)
                .WithRequired(e => e.Item)
                .WillCascadeOnDelete();

            this.HasOptional(e => e.Attachment)
                .WithRequired(e => e.Item)
                .WillCascadeOnDelete();

            this.HasMany(e => e.AvailableAttachSlot)
                .WithRequired(e => e.Item)
                .HasForeignKey(e => e.RItemId)
                .WillCascadeOnDelete(false);

            this.HasMany(e => e.BoxItem)
                .WithRequired(e => e.Item)
                .HasForeignKey(e => e.Items)
                .WillCascadeOnDelete(false);

            this.HasOptional(e => e.Drug)
                .WithRequired(e => e.Item);

            this.HasOptional(e => e.Explosive)
                .WithRequired(e => e.Item)
                .WillCascadeOnDelete();

            this.HasOptional(e => e.Loadbearingequipment)
                .WithRequired(e => e.Item)
                .WillCascadeOnDelete();






            /*  modelBuilder.Entity<Item>()
                   .HasOptional(e => e.Weapon)
                   .WithRequired(e => e.Item)
                   .WillCascadeOnDelete();
                   */
        }
    }
}
