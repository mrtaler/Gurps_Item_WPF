namespace GurpsDb.GurpsModel
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("CharacterDb", Schema = "CharDB")]
    public partial class CharacterDb
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public CharacterDb()
        {
            CharSkillCollection = new HashSet<CharSkill>();
            InventoryOfChar = new HashSet<InventoryOfChar>();
        }
        public int Id { get; set; }

        [StringLength(80)]
        public string Name { get; set; }

        public int StrengthPoints { get; set; }

        public int DexterityPoints { get; set; }

        public int IntelligencePoints { get; set; }

        public int HealthPoints { get; set; }

        public int MaxHPPoints { get; set; }

        public int MaxFPPoints { get; set; }

        public int PerceptionPoints { get; set; }

        public int WillpowerPoints { get; set; }

        public decimal BasicSpeedPoints { get; set; }

        public int BasicMovePoints { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CharSkill> CharSkillCollection { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<InventoryOfChar> InventoryOfChar { get; set; }
    }
}
