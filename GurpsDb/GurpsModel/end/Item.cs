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
    public partial class Item : ViewModelBase, IDataErrorInfo
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage(
            "Microsoft.Usage",
            "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Item()
        {
            this.InventoryOfChar = new HashSet<InventoryOfChar>();
            this.AvailableAttachSlot = new HashSet<AvailableAttachSlot>();
            this.BoxItem = new HashSet<BoxItem>();
        }

        /// <summary>
        /// Constructor for create new def item
        /// </summary>
        /// <param name="szItemName">Item name</param>
        /// <param name="itemSubClass">item class</param>
        /// <param name="lc1">LC</param>
        /// <param name="tl1">TL</param>
        public Item(string szItemName, ItemSubClass itemSubClass, Lc lc1, Tl tl1)
        {
            this.SzItemName = szItemName;
            this.ItemSubClass = itemSubClass;

            this.Lc1 = lc1;
            this.Tl1 = tl1;

            this.SzLongItemName = "0";
            this.SzItemDesc = "0";

            this.UbClassIndex = 0;
            this.UbWeight = 10M;
            this.ItemSize = "0";
            this.UsPrice = 10M;

            this.Damageable = false;
            this.Repairable = false;
            this.WaterDamages = false;
            this.Metal = false;
            this.TwoHanded = false;
            this.Electronic = false;
            this.Ht = false;
            this.Ut = false;
            this.NeedsBatteries = false;
            this.HaveFingerPrintId = false;
            this.SizeBatteries = "0";
            this.LockPickModifier = 0;
            this.CrowbarModifier = 0;
            this.DisarmModifier = 0;
            this.RepairModifier = 0;
            this.DamageChance = 0;
            this.ItemImage = null;
            this.MinSt = 1;
            this.Link = string.Empty;
            this.Used = false;

            this.Dt = DateTime.Now;

            this.CountOfBat = 0;
            this.WorksOnBat = "0";
        }

        [Key]
        public int UiIndex
        {
            get => this.uiIndex;

            set
            {
                if (this.uiIndex != value)
                {
                    this.uiIndex = value;
                    this.NotifyPropertyChanged("UiIndex");
                }
            }
        }

        [Required]
        [StringLength(80)]
        public string SzItemName
        {
            get
            {
                return this.szItemName;
            }

            set
            {
                if (this.szItemName != value)
                {
                    this.szItemName = value;
                    this.NotifyPropertyChanged("SzItemName");
                }
            }
        }

        [StringLength(80)]
        public string SzLongItemName
        {
            get
            {
                return this.szLongItemName;
            }

            set
            {
                if (this.szLongItemName != value)
                {
                    this.szLongItemName = value;
                    this.NotifyPropertyChanged("SzLongItemName");
                }
            }
        }

        public string SzItemDesc
        {
            get
            {
                return this.szItemDesc;
            }

            set
            {
                if (this.szItemDesc != value)
                {
                    this.szItemDesc = value;
                    this.NotifyPropertyChanged("SzItemDesc");
                }
            }
        }

        public int UsItemClass
        {
            get
            {
                return this.usItemClass;
            }

            set
            {
                if (this.usItemClass != value)
                {
                    this.usItemClass = value;
                    this.NotifyPropertyChanged("UsItemClass");
                }
            }
        }

        public int UbClassIndex
        {
            get
            {
                return this.ubClassIndex;
            }

            set
            {
                if (this.ubClassIndex != value)
                {
                    this.ubClassIndex = value;
                    this.NotifyPropertyChanged("UbClassIndex");
                }
            }
        }

        public decimal UbWeight
        {
            get
            {
                return this.ubWeight;
            }

            set
            {
                if (this.ubWeight != value)
                {
                    this.ubWeight = value;
                    this.NotifyPropertyChanged("UbWeight");
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
                return this.itemSize;
            }

            set
            {
                if (this.itemSize != value)
                {
                    this.itemSize = value;
                    this.NotifyPropertyChanged("ItemSize");
                }
            }
        }

        [Column(TypeName = "money")]
        public decimal UsPrice
        {
            get
            {
                return this.usPrice;
            }

            set
            {
                if (this.usPrice != value)
                {
                    this.usPrice = value;
                    this.NotifyPropertyChanged("UsPrice");
                }
            }
        }

        [DefaultValue("false")]
        public bool Damageable
        {
            get
            {
                return this.damageable;
            }

            set
            {
                if (this.damageable != value)
                {
                    this.damageable = value;
                    this.NotifyPropertyChanged("Damageable");
                }
            }
        }

        [DefaultValue("false")]
        public bool Repairable
        {
            get
            {
                return this.repairable;
            }

            set
            {
                if (this.repairable != value)
                {
                    this.repairable = value;
                    this.NotifyPropertyChanged("Repairable");
                }
            }
        }

        [DefaultValue("false")]
        public bool WaterDamages
        {
            get
            {
                return this.waterDamages;
            }

            set
            {
                if (this.waterDamages != value)
                {
                    this.waterDamages = value;
                    this.NotifyPropertyChanged("WaterDamages");
                }
            }
        }

        [DefaultValue("false")]
        public bool Metal
        {
            get
            {
                return this.metal;
            }

            set
            {
                if (this.metal != value)
                {
                    this.metal = value;
                    this.NotifyPropertyChanged("Metal");
                }
            }
        }

        [DefaultValue("false")]
        public bool TwoHanded
        {
            get
            {
                return this.twoHanded;
            }

            set
            {
                if (this.twoHanded != value)
                {
                    this.twoHanded = value;
                    this.NotifyPropertyChanged("TwoHanded");
                }
            }
        }

        [DefaultValue("false")]
        public bool Electronic
        {
            get
            {
                return this.electronic;
            }

            set
            {
                if (this.electronic != value)
                {
                    this.electronic = value;
                    this.NotifyPropertyChanged("Electronic");
                }
            }
        }

        [DefaultValue("false")]
        public bool Ht
        {
            get
            {
                return this.ht;
            }

            set
            {
                if (this.ht != value)
                {
                    this.ht = value;
                    this.NotifyPropertyChanged("Ht");
                }
            }
        }

        [DefaultValue("false")]
        public bool Ut
        {
            get
            {
                return this.ut;
            }

            set
            {
                if (this.ut != value)
                {
                    this.ut = value;
                    this.NotifyPropertyChanged("Ut");
                }
            }
        }

        [DefaultValue("false")]
        public bool NeedsBatteries
        {
            get
            {
                return this.needsBatteries;
            }

            set
            {
                if (this.needsBatteries != value)
                {
                    this.needsBatteries = value;
                    this.NotifyPropertyChanged("NeedsBatteries");
                }
            }
        }

        [DefaultValue("false")]
        public bool HaveFingerPrintId
        {
            get
            {
                return this.haveFingerPrintId;
            }

            set
            {
                if (this.haveFingerPrintId != value)
                {
                    this.haveFingerPrintId = value;
                    this.NotifyPropertyChanged("HaveFingerPrintId");
                }
            }
        }

        public int Tl
        {
            get
            {
                return this.tl;
            }

            set
            {
                if (this.tl != value)
                {
                    this.tl = value;
                    this.NotifyPropertyChanged("Tl");
                }
            }
        }

        public int Lc
        {
            get
            {
                return this.lc;
            }

            set
            {
                if (this.lc != value)
                {
                    this.lc = value;
                    this.NotifyPropertyChanged("Lc");
                }
            }
        }

        [StringLength(4)]
        public string SizeBatteries
        {
            get
            {
                return this.sizeBatteries;
            }

            set
            {
                if (this.sizeBatteries != value)
                {
                    this.sizeBatteries = value;
                    this.NotifyPropertyChanged("SizeBatteries");
                }
            }
        }

        // public int FoodType{get{return uiIndex;}set{if (uiIndex != value){uiIndex = value;NotifyPropertyChanged("SzLongItemName");}}}
        public decimal? LockPickModifier
        {
            get
            {
                return this.lockPickModifier;
            }

            set
            {
                if (this.lockPickModifier != value)
                {
                    this.lockPickModifier = value;
                    this.NotifyPropertyChanged("LockPickModifier");
                }
            }
        }

        public decimal? CrowbarModifier
        {
            get
            {
                return this.crowbarModifier;
            }

            set
            {
                if (this.crowbarModifier != value)
                {
                    this.crowbarModifier = value;
                    this.NotifyPropertyChanged("CrowbarModifier");
                }
            }
        }

        public decimal? DisarmModifier
        {
            get
            {
                return this.disarmModifier;
            }

            set
            {
                if (this.disarmModifier != value)
                {
                    this.disarmModifier = value;
                    this.NotifyPropertyChanged("DisarmModifier");
                }
            }
        }

        public decimal? RepairModifier
        {
            get
            {
                return this.repairModifier;
            }

            set
            {
                if (this.repairModifier != value)
                {
                    this.repairModifier = value;
                    this.NotifyPropertyChanged("RepairModifier");
                }
            }
        }

        public decimal? DamageChance
        {
            get
            {
                return this.damageChance;
            }

            set
            {
                if (this.damageChance != value)
                {
                    this.damageChance = value;
                    this.NotifyPropertyChanged("DamageChance");
                }
            }
        }

        // public int Clothestype{get{return uiIndex;}set{if (uiIndex != value){uiIndex = value;NotifyPropertyChanged("SzLongItemName");}}}
        // public int DrugType{get{return uiIndex;}set{if (uiIndex != value){uiIndex = value;NotifyPropertyChanged("SzLongItemName");}}}
        public byte[] ItemImage
        {
            get
            {
                return this.itemImage;
            }

            set
            {
                if (this.itemImage != value)
                {
                    this.itemImage = value;
                    this.NotifyPropertyChanged("ItemImage");
                }
            }
        }

        [DefaultValue("1")]
        public int MinSt
        {
            get
            {
                return this.minSt;
            }

            set
            {
                if (this.minSt != value)
                {
                    this.minSt = value;
                    this.NotifyPropertyChanged("MinSt");
                }
            }
        }

        [DefaultValue("")]
        public string Link
        {
            get
            {
                return this.link;
            }

            set
            {
                if (this.link != value)
                {
                    this.link = value;
                    this.NotifyPropertyChanged("Link");
                }
            }
        }

        [DefaultValue("false")]
        public bool Used
        {
            get
            {
                return this.used;
            }

            set
            {
                if (this.used != value)
                {
                    this.used = value;
                    this.NotifyPropertyChanged("Used");
                }
            }
        }

        public DateTime? Dt
        {
            get
            {
                return this.dt;
            }

            set
            {
                if (this.dt != value)
                {
                    this.dt = value;
                    this.NotifyPropertyChanged("Dt");
                }
            }
        }

        [DefaultValue("0")]
        public int CountOfBat
        {
            get
            {
                return this.countOfBat;
            }

            set
            {
                if (this.countOfBat != value)
                {
                    this.countOfBat = value;
                    this.NotifyPropertyChanged("CountOfBat");
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
                return this.worksOnBat;
            }

            set
            {
                if (this.worksOnBat != value)
                {
                    this.worksOnBat = value;
                    this.NotifyPropertyChanged("WorksOnBat");
                }
            }
        }

        [System.Diagnostics.CodeAnalysis.SuppressMessage(
            "Microsoft.Usage",
            "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<InventoryOfChar> InventoryOfChar
        {
            get
            {
                return this.inventoryOfChar;
            }

            set
            {
                if (this.inventoryOfChar != value)
                {
                    this.inventoryOfChar = value;
                    this.NotifyPropertyChanged("InventoryOfChar");
                }
            }
        }

        [System.Diagnostics.CodeAnalysis.SuppressMessage(
            "Microsoft.Usage",
            "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AvailableAttachSlot> AvailableAttachSlot
        {
            get
            {
                return this.availableAttachSlot;
            }

            set
            {
                if (this.availableAttachSlot != value)
                {
                    this.availableAttachSlot = value;
                    this.NotifyPropertyChanged("AvailableAttachSlot");
                }
            }
        }

        [System.Diagnostics.CodeAnalysis.SuppressMessage(
            "Microsoft.Usage",
            "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BoxItem> BoxItem
        {
            get
            {
                return this.boxItem;
            }

            set
            {
                if (this.boxItem != value)
                {
                    this.boxItem = value;
                    this.NotifyPropertyChanged("BoxItem");
                }
            }
        }

        public virtual ItemSubClass ItemSubClass
        {
            get
            {
                return this.itemSubClass;
            }

            set
            {
                if (this.itemSubClass != value)
                {
                    this.itemSubClass = value;
                    this.NotifyPropertyChanged("ItemSubClass");
                }
            }
        }

        public virtual Lc Lc1
        {
            get
            {
                return this.lc1;
            }

            set
            {
                if (this.lc1 != value)
                {
                    this.lc1 = value;
                    this.NotifyPropertyChanged("Lc1");
                }
            }
        }

        public virtual Tl Tl1
        {
            get
            {
                return this.tl1;
            }

            set
            {
                if (this.tl1 != value)
                {
                    this.tl1 = value;
                    this.NotifyPropertyChanged("Tl1");
                }
            }
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

        #region error

        public string this[string columnName]
        {
            get
            {
                string error = string.Empty;
                switch (columnName)
                {
                    case "SzItemName":
                    case "SzLongItemName":
                        if (this.SzItemName.Length > 80)
                        {
                            error = "не более 80 символов";
                        }

                        break;

                    // case "Name":
                    // Обработка ошибок для свойства Name
                    // break;
                    // case "Position":
                    // Обработка ошибок для свойства Position
                    // break;
                }

                return error;
            }
        }

        public string Error
        {
            get
            {
                throw new NotImplementedException();
            }
        }

        #endregion
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
