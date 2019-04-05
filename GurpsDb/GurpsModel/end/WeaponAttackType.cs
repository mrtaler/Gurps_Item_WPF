namespace GurpsDb.GurpsModel
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    /// <summary>
    /// Class for Weapon Attack Type
    /// </summary>
    [Table("WeaponAttackType", Schema = "dbo")]
    public partial class WeaponAttackType
    {
        /// <summary>
        /// Default constructor 
        /// </summary>
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public WeaponAttackType()
        {
            this.WeaponDamage = new HashSet<WeaponDamage>();
        }

        public WeaponAttackType(string name, string descr)
        {
            this.Name = name;
            this.Descr = descr;
        }

        public int Id { get; set; }

        /// <summary>
        /// name lengh 20
        /// </summary>
        [StringLength(20)]
        public string Name { get; set; }

        /// <summary>
        /// description length 150
        /// </summary>
        [StringLength(150)]
        public string Descr { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<WeaponDamage> WeaponDamage { get; set; }
    }
}
