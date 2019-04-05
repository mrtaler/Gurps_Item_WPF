namespace GurpsDb.GurpsModel
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    /// <summary>
    /// Class for description Gurps Firearm weapon
    /// </summary>
    [Table("Weapon", Schema = "dbo")]
    public partial class Weapon : Item
    {
        /// <summary>
        /// default constructor
        /// </summary>
        [System.Diagnostics.CodeAnalysis.SuppressMessage(
            "Microsoft.Usage",
            "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Weapon()
        {
            this.WeaponDamage = new HashSet<WeaponDamage>();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="weaponDamage"></param>
        /// <param name="lc">Legasy Class</param>
        /// <param name="defAcc"></param>
        /// <param name="halfRange"></param>
        /// <param name="fullRange"></param>
        /// <param name="minRange"></param>
        /// <param name="aWeight"></param>
        /// <param name="rof"></param>
        /// <param name="fullAuto"></param>
        /// <param name="shots"></param>
        /// <param name="timeForReload"></param>
        /// <param name="singleReload"></param>
        /// <param name="recoil"></param>
        /// <param name="heavyWeapon"></param>
        /// <param name="addInChamber"></param>
        /// <param name="cutOffShots"></param>
        /// <param name="cutOffShotsCount"></param>
        /// <param name="grenadeLauncher"></param>
        /// <param name="rocketLauncher"></param>
        /// <param name="mortar"></param>
        /// <param name="cannon"></param>
        /// <param name="singleShotRocketLauncher"></param>
        /// <param name="rocketRifle"></param>
        /// <param name="bulkfolded"></param>
        /// <param name="hcrof"></param>
        /// <param name="hcrofValue"></param>
        /// <param name="name">Weapon Name</param>
        /// <param name="itemSubClass">Item Class</param>
        /// <param name="tl">Tech Level</param>
        public Weapon(
            WeaponDamage weaponDamage,
            string name,
            ItemSubClass itemSubClass,
            Tl tl,
            Lc lc,
            int defAcc = 1,
            int hcrofValue = 0,
            int cutOffShotsCount = 3,
            int rof = 1,
            int shots = 1,
            int timeForReload = 2,
            int recoil = 3,
            decimal halfRange = 100M,
            decimal fullRange = 1000M,
            decimal aWeight = 1.3M,
            bool fullAuto = false,
            bool singleReload = true,
            bool heavyWeapon = false,
            bool addInChamber = true,
            bool cutOffShots = false,
            bool minRange = false,
            bool grenadeLauncher = false,
            bool rocketLauncher = false,
            bool mortar = false,
            bool cannon = false,
            bool singleShotRocketLauncher = false,
            bool rocketRifle = false,
            bool bulkfolded = true,
            bool hcrof = false)
            : base(szItemName: name, itemSubClass: itemSubClass, lc1: lc, tl1: tl)
        {
            this.DefAcc = defAcc;
            this.HalfRange = halfRange;
            this.FullRange = fullRange;
            this.MinRange = minRange;
            this.AWeight = aWeight;
            this.Rof = rof;
            this.FullAuto = fullAuto;

            this.Shots = shots;
            this.TimeForReload = timeForReload;
            this.SingleReload = singleReload;
            this.Recoil = recoil;
            this.HeavyWeapon = heavyWeapon;
            this.AddInChamber = addInChamber;
            this.CutOffShots = cutOffShots;
            this.CutOffShotsCount = cutOffShotsCount;
            this.GrenadeLauncher = grenadeLauncher;
            this.RocketLauncher = rocketLauncher;
            this.Mortar = mortar;
            this.Cannon = cannon;
            this.SingleShotRocketLauncher = singleShotRocketLauncher;
            this.RocketRifle = rocketRifle;
            this.Bulkfolded = bulkfolded;
            this.Hcrof = hcrof;
            this.HcrofValue = hcrofValue;

            this.WeaponDamage = new HashSet<WeaponDamage>();
            this.WeaponDamage.Add(weaponDamage);
        }

        /*  [Key]
          [DatabaseGenerated(DatabaseGeneratedOption.None)]
          public int UiIndex { get; set; }
          */

        /* [Required]
         [StringLength(80)]
         public string SzWeaponName { get; set; }
         */

        /// <summary>
        /// Default Acc
        /// </summary>
        public int DefAcc { get; set; }

        public int? AccAddin { get; set; }

        public decimal HalfRange { get; set; }

        public decimal FullRange { get; set; }

        public bool MinRange { get; set; }

        public decimal AWeight { get; set; }

        public int Rof { get; set; }

        public bool FullAuto { get; set; }

        public int? RofForSh { get; set; }

        public int Shots { get; set; }

        public int TimeForReload { get; set; }

        public bool SingleReload { get; set; }

        public int Recoil { get; set; }

        public bool HeavyWeapon { get; set; }

        public bool AddInChamber { get; set; }

        public bool CutOffShots { get; set; }

        public int CutOffShotsCount { get; set; }

        public bool GrenadeLauncher { get; set; }

        public bool RocketLauncher { get; set; }

        public bool Mortar { get; set; }

        public bool Cannon { get; set; }

        public bool SingleShotRocketLauncher { get; set; }

        public bool RocketRifle { get; set; }

        public bool Bulkfolded { get; set; }

        public bool Hcrof { get; set; }

        // public int? UbCalibre
        // {
        // get
        // {
        // return ubCalibre;
        // }
        // set
        // {
        // if (ubCalibre != value)
        // {
        // ubCalibre = value;
        // NotifyPropertyChanged("UbCalibre");
        // }
        // }
        // }
        public virtual Caliber Caliber { get; set; }

        /* {
             get { return caliber; }
             set { if (caliber != value) { caliber = value; NotifyPropertyChanged("Caliber"); } }
         }*/
        public int HcrofValue { get; set; }

        // public virtual Item Item { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage(
            "Microsoft.Usage",
            "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<WeaponDamage> WeaponDamage { get; set; }
    }
}
