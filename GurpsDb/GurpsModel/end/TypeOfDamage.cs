namespace GurpsDb.GurpsModel
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    /// <summary>
    /// Class for Type Of Damage
    /// </summary>
    [Table("TypeOfDamage", Schema = "dbo")]
    public partial class TypeOfDamage
    {
        /// <summary>
        /// Default constructor db init
        /// </summary>
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TypeOfDamage()
        {
            WeaponDamage = new HashSet<WeaponDamage>();
            WeaponDamage1 = new HashSet<WeaponDamage>();
        }
        /// <summary>
        /// Constructor for new Type Of Damage
        /// </summary>
        /// <param name="name">Short Name Type Damage</param>
        /// <param name="longName">Long name</param>
        /// <param name="mDamage">Damage multiplare</param>
        public TypeOfDamage(string name, string longName, string mDamage)
        {
            this.Name = name;
            this.LongName = longName;
            this.MDamage = mDamage;
        }


        public int Id { get; set; }

        [Required]
        [StringLength(5)]
        public string Name { get; set; }

        [StringLength(30)]
        public string LongName { get; set; }

        [Required]
        [StringLength(5)]
        public string MDamage { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<WeaponDamage> WeaponDamage { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<WeaponDamage> WeaponDamage1 { get; set; }
    }
}
