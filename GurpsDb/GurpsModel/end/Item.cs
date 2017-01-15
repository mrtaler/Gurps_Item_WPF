using System.ComponentModel;
using System.Net.Configuration;
using GurpsDb.BaseModel;

namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.ModelConfiguration;

    [Table("Item", Schema = "dbo")]
    public partial class Item : ViewModelBase
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

            Damageable = false;
            Repairable = false;
            WaterDamages = false;
            Metal = false;
            TwoHanded = false;
            Electronic = false;
            Ht = false;
            Ut = false;
            NeedsBatteries = false;
            HaveFingerPrintId = false;
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
        public int UiIndex
        {
            get
            {
                return uiIndex;
            }
            set
            {
                if (uiIndex != value)
                {
                    uiIndex = value;
                    NotifyPropertyChanged("UiIndex");
                }
            }
        }

        [Required]
        [StringLength(80)]
        public string SzItemName
        {
            get
            {
                return szItemName;
            }
            set
            {
                if (szItemName != value)
                {
                    szItemName = value;
                    NotifyPropertyChanged("SzItemName");
                }
            }
        }

        [StringLength(80)]
        public string SzLongItemName
        {
            get
            {
                return szLongItemName;
            }
            set
            {
                if (szLongItemName != value)
                {
                    szLongItemName = value;
                    NotifyPropertyChanged("SzLongItemName");
                }
            }
        }

        public string SzItemDesc
        {
            get
            {
                return szItemDesc;
            }
            set
            {
                if (szItemDesc != value)
                {
                    szItemDesc = value;
                    NotifyPropertyChanged("SzItemDesc");
                }
            }
        }

        public int UsItemClass
        {
            get
            {
                return usItemClass;
            }
            set
            {
                if (usItemClass != value)
                {
                    usItemClass = value;
                    NotifyPropertyChanged("UsItemClass");
                }
            }
        }

        public int UbClassIndex
        {
            get
            {
                return ubClassIndex;
            }
            set
            {
                if (ubClassIndex != value)
                {
                    ubClassIndex = value;
                    NotifyPropertyChanged("UbClassIndex");
                }
            }
        }

        public decimal UbWeight
        {
            get { return ubWeight; }
            set
            {
                if (ubWeight != value)
                {
                    ubWeight = value;
                    NotifyPropertyChanged("UbWeight");
                }
            }
        }






        [DefaultValue("0")]
        [Required]
        [StringLength(80)]
        public string ItemSize
        {
            get
            {
                return itemSize;

            }
            set
            {
                if (itemSize != value)
                {
                    itemSize = value;
                    NotifyPropertyChanged("ItemSize");
                }
            }
        }

        [Column(TypeName = "money")]
        public decimal UsPrice
        {
            get
            {
                return usPrice;
            }
            set
            {
                if (usPrice != value)
                {
                    usPrice = value;
                    NotifyPropertyChanged("UsPrice");
                }
            }
        }



        [DefaultValue("false")]
        public bool Damageable
        {
            get
            {
                return damageable;
            }
            set
            {
                if (damageable != value)
                {
                    damageable = value;
                    NotifyPropertyChanged("Damageable");
                }
            }
        }

        [DefaultValue("false")]
        public bool Repairable
        {
            get
            {
                return repairable;

            }
            set
            {
                if (repairable != value)
                {
                    repairable = value;
                    NotifyPropertyChanged("Repairable");
                }
            }
        }
        [DefaultValue("false")]
        public bool WaterDamages
        {
            get
            {
                return waterDamages;
            }
            set
            {
                if (waterDamages != value)
                {
                    waterDamages = value;
                    NotifyPropertyChanged("WaterDamages");
                }
            }
        }
        [DefaultValue("false")]
        public bool Metal
        {
            get
            {
                return metal;
            }
            set
            {
                if (metal != value)
                {
                    metal = value;
                    NotifyPropertyChanged("Metal");
                }
            }
        }
        [DefaultValue("false")]
        public bool TwoHanded
        {
            get
            {
                return twoHanded;
            }
            set
            {
                if (twoHanded != value)
                {
                    twoHanded = value;
                    NotifyPropertyChanged("TwoHanded");
                }
            }
        }
        [DefaultValue("false")]
        public bool Electronic
        {
            get
            {
                return electronic;
            }
            set
            {
                if (electronic != value)
                {
                    electronic = value;
                    NotifyPropertyChanged("Electronic");
                }
            }
        }
        [DefaultValue("false")]
        public bool Ht
        {
            get
            {
                return ht;
            }
            set
            {
                if (ht != value)
                {
                    ht = value;
                    NotifyPropertyChanged("Ht");
                }
            }
        }
        [DefaultValue("false")]
        public bool Ut
        {
            get
            {
                return ut;
            }
            set
            {
                if (ut != value)
                {
                    ut = value;
                    NotifyPropertyChanged("Ut");
                }
            }
        }
        [DefaultValue("false")]
        public bool NeedsBatteries
        {
            get
            {
                return needsBatteries;
            }
            set
            {
                if (needsBatteries != value)
                {
                    needsBatteries = value;
                    NotifyPropertyChanged("NeedsBatteries");
                }
            }
        }
        [DefaultValue("false")]
        public bool HaveFingerPrintId
        {
            get
            {
                return haveFingerPrintId;
            }
            set
            {
                if (haveFingerPrintId != value)
                {
                    haveFingerPrintId = value;
                    NotifyPropertyChanged("HaveFingerPrintId");
                }
            }
        }
        public int Tl
        {
            get
            {
                return tl;
            }
            set
            {
                if (tl != value)
                {
                    tl = value;
                    NotifyPropertyChanged("Tl");
                }
            }
        }
        public int Lc
        {
            get
            {
                return lc;
            }
            set
            {
                if (lc != value)
                {
                    lc = value;
                    NotifyPropertyChanged("Lc");
                }
            }
        }
        [StringLength(4)]
        public string SizeBatteries
        {
            get
            {
                return sizeBatteries;
            }
            set
            {
                if (sizeBatteries != value)
                {
                    sizeBatteries = value;
                    NotifyPropertyChanged("SizeBatteries");
                }
            }
        }
        //   public int FoodType{get{return uiIndex;}set{if (uiIndex != value){uiIndex = value;NotifyPropertyChanged("SzLongItemName");}}}
        public decimal? LockPickModifier
        {
            get
            {
                return lockPickModifier;
            }
            set
            {
                if (lockPickModifier != value)
                {
                    lockPickModifier = value;
                    NotifyPropertyChanged("LockPickModifier");
                }
            }
        }
        public decimal? CrowbarModifier
        {
            get
            {
                return crowbarModifier;
            }
            set
            {
                if (crowbarModifier != value)
                {
                    crowbarModifier = value;
                    NotifyPropertyChanged("CrowbarModifier");
                }
            }
        }
        public decimal? DisarmModifier
        {
            get
            {
                return disarmModifier;
            }
            set
            {
                if (disarmModifier != value)
                {
                    disarmModifier = value;
                    NotifyPropertyChanged("DisarmModifier");
                }
            }
        }
        public decimal? RepairModifier
        {
            get
            {
                return repairModifier;
            }
            set
            {
                if (repairModifier != value)
                {
                    repairModifier = value;
                    NotifyPropertyChanged("RepairModifier");
                }
            }
        }
        public decimal? DamageChance
        {
            get
            {
                return damageChance;
            }
            set
            {
                if (damageChance != value)
                {
                    damageChance = value;
                    NotifyPropertyChanged("DamageChance");
                }
            }
        }
        // public int Clothestype{get{return uiIndex;}set{if (uiIndex != value){uiIndex = value;NotifyPropertyChanged("SzLongItemName");}}}
        //public int DrugType{get{return uiIndex;}set{if (uiIndex != value){uiIndex = value;NotifyPropertyChanged("SzLongItemName");}}}
        public byte[] ItemImage
        {
            get { return itemImage; }
            set
            {
                if (itemImage != value)
                {
                    itemImage = value;
                    NotifyPropertyChanged("ItemImage");
                }
            }
        }
        [DefaultValue("1")]
        public int MinSt
        {
            get { return minSt; }
            set
            {
                if (minSt != value)
                {
                    minSt = value;
                    NotifyPropertyChanged("MinSt");
                }
            }
        }
        [DefaultValue("")]
        public string Link
        {
            get
            {
                return link;
            }
            set
            {
                if (link != value)
                {
                    link = value;
                    NotifyPropertyChanged("Link");
                }
            }
        }
        [DefaultValue("false")]
        public bool Used
        {
            get
            {
                return used;
            }
            set
            {
                if (used != value) { used = value; NotifyPropertyChanged("Used"); }
            }
        }
        public DateTime? Dt
        {
            get
            {
                return dt;
            }
            set
            {
                if (dt != value)
                {
                    dt = value;
                    NotifyPropertyChanged("Dt");
                }
            }
        }
        [DefaultValue("0")]
        public int CountOfBat
        {
            get
            {
                return countOfBat;
            }
            set
            {
                if (countOfBat != value)
                {
                    countOfBat = value; NotifyPropertyChanged("CountOfBat");
                }
            }
        }
        [Required]
        [StringLength(15)]
        [DefaultValue("0")]
        public string WorksOnBat
        {
            get
            {
                return worksOnBat;
            }
            set
            {
                if (worksOnBat != value) { worksOnBat = value; NotifyPropertyChanged("WorksOnBat"); }
            }
        }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage",
            "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<InventoryOfChar> InventoryOfChar
        {
            get
            {
                return inventoryOfChar;
            }
            set
            {
                if (inventoryOfChar != value)
                {
                    inventoryOfChar = value;
                    NotifyPropertyChanged("InventoryOfChar");
                }
            }
        }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage",
            "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AvailableAttachSlot> AvailableAttachSlot
        {
            get
            {
                return availableAttachSlot;
            }
            set
            {
                if (availableAttachSlot != value)
                {
                    availableAttachSlot = value;
                    NotifyPropertyChanged("AvailableAttachSlot");
                }
            }
        }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage",
            "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BoxItem> BoxItem
        {
            get
            {
                return boxItem;
            }
            set
            {
                if (boxItem != value)
                {
                    boxItem = value;
                    NotifyPropertyChanged("BoxItem");
                }
            }
        }
        public virtual ItemSubClass ItemSubClass
        {
            get { return itemSubClass; }
            set { if (itemSubClass != value) { itemSubClass = value; NotifyPropertyChanged("ItemSubClass"); } }
        }
        public virtual Lc Lc1
        {
            get { return lc1; }
            set { if (lc1 != value) { lc1 = value; NotifyPropertyChanged("Lc1"); } }
        }
        public virtual Tl Tl1
        {
            get { return tl1; }
            set { if (tl1 != value) { tl1 = value; NotifyPropertyChanged("Tl1"); } }
        }

        private int uiIndex;
        private string szItemName;
        private string szLongItemName;
        private string szItemDesc;
        private int usItemClass;
        private int ubClassIndex;
        private decimal ubWeight;
        private string itemSize;
        private decimal usPrice;
        private int? ubCalibre;
        private bool damageable;
        private bool repairable;
        private bool waterDamages;
        private bool metal;
        private bool twoHanded;
        private bool electronic;
        private bool ht;
        private bool ut;
        private bool batteries;
        private bool needsBatteries;
        private bool haveFingerPrintId;
        private int tl;
        private int lc;
        private string sizeBatteries;
        private decimal? lockPickModifier;
        private decimal? crowbarModifier;
        private decimal? disarmModifier;
        private decimal? repairModifier;
        private decimal? damageChance;
        private byte[] itemImage;
        private int minSt;
        private string link;
        private bool used;
        private DateTime? dt;
        private int countOfBat;
        private string worksOnBat;
        private ICollection<InventoryOfChar> inventoryOfChar;
        private ICollection<AvailableAttachSlot> availableAttachSlot;
        private ICollection<BoxItem> boxItem;
        private ItemSubClass itemSubClass;
        private Lc lc1;
        private Tl tl1;
    }

    public class ItemConfiguration : EntityTypeConfiguration<Item>
    {
        public ItemConfiguration()
        {
            this.Property(e => e.UbWeight)
               .HasPrecision(19, 4);

            this.Property(e => e.UsPrice)
                .HasPrecision(19, 4);

            this.HasMany(e => e.InventoryOfChar)
                .WithRequired(e => e.Item)
                .HasForeignKey(e => e.IdItem);


            this.HasMany(e => e.AvailableAttachSlot)
                .WithRequired(e => e.Item)
                .HasForeignKey(e => e.RItemId)
                .WillCascadeOnDelete(false);

            this.HasMany(e => e.BoxItem)
                .WithRequired(e => e.Item)
                .HasForeignKey(e => e.Items)
                .WillCascadeOnDelete(false);
        }
    }
}
