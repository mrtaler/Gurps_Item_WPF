namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CharDB.CharacterDB")]
    public partial class CharacterDB
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public CharacterDB()
        {
            CharSkill = new HashSet<CharSkill>();
            InventoryOfChar = new HashSet<InventoryOfChar>();
        }

        public int id { get; set; }

        [StringLength(80)]
        public string name { get; set; }

        public int StrengthPoints { get; set; }

        public int DexterityPoints { get; set; }

        public int IntelligencePoints { get; set; }

        public int HealthPoints { get; set; }

        public int MaxHPPoints { get; set; }

        public int MaxFPPoints { get; set; }

        public int PerceptionPoints { get; set; }

        public int WillpowerPoints { get; set; }

        public float BasicSpeedPoints { get; set; }

        public int BasicMovePoints { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CharSkill> CharSkill { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<InventoryOfChar> InventoryOfChar { get; set; }
    }
}
