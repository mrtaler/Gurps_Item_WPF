namespace GurpsDb.GurpsModel
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("TypeOfDamage")]
    public partial class TypeOfDamage
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TypeOfDamage()
        {
            WeaponDamage = new HashSet<WeaponDamage>();
            WeaponDamage1 = new HashSet<WeaponDamage>();
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
