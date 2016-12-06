namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TypeOfDamage")]
    public partial class TypeOfDamage
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TypeOfDamage()
        {
            WeaponDamage = new HashSet<WeaponDamage>();
            WeaponDamage1 = new HashSet<WeaponDamage>();
        }

        public int id { get; set; }

        [Required]
        [StringLength(5)]
        public string name { get; set; }

        [StringLength(30)]
        public string LongName { get; set; }

        [Required]
        [StringLength(5)]
        public string mDamage { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<WeaponDamage> WeaponDamage { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<WeaponDamage> WeaponDamage1 { get; set; }
    }
}
