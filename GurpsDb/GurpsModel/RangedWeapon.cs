namespace GurpsDb.GurpsModel
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;


    [Table("RangedWeapon", Schema = "CharDB")]
    public partial class RangedWeapon
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public RangedWeapon()
        {
            this.DefSkillSome = new HashSet<DefSkillSome>();
        }

        public int Id { get; set; }

        [StringLength(50)]
        public string Damage { get; set; }

        [StringLength(50)]
        public string Strength { get; set; }

        [StringLength(50)]
        public string Usage { get; set; }

        [StringLength(50)]
        public string Accuracy { get; set; }

        [StringLength(50)]
        public string Range { get; set; }

        [StringLength(50)]
        public string RateOfFire { get; set; }

        [StringLength(50)]
        public string Recoil { get; set; }

        [StringLength(50)]
        public string Shots { get; set; }

        [StringLength(50)]
        public string Bulk { get; set; }

        public int? IdAdv { get; set; }

        public virtual Advantage Advantage { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DefSkillSome> DefSkillSome { get; set; }
    }
}
