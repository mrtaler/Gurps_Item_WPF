namespace GurpsDb.GurpsModel
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("MeleeWeapon", Schema = "CharDB")]
    public partial class MeleeWeapon
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public MeleeWeapon()
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
        public string Reach { get; set; }

        [StringLength(50)]
        public string Parry { get; set; }

        [StringLength(50)]
        public string Block { get; set; }

        public int? IdAdv { get; set; }

        public virtual Advantage Advantage { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DefSkillSome> DefSkillSome { get; set; }
    }
}
