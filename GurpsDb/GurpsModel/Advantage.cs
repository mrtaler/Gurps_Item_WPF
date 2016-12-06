namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CharDB.Advantage")]
    public partial class Advantage
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Advantage()
        {
            attribute_bonus = new HashSet<attribute_bonus>();
            cost_reduction = new HashSet<cost_reduction>();
            dr_bonusDB = new HashSet<dr_bonusDB>();
            melee_weapon = new HashSet<melee_weapon>();
            modifier = new HashSet<modifier>();
            prereq_listDB = new HashSet<prereq_listDB>();
            ranged_weapon = new HashSet<ranged_weapon>();
            skill_bonusDB = new HashSet<skill_bonusDB>();
            spell_bonus = new HashSet<spell_bonus>();
            weapon_bonus = new HashSet<weapon_bonus>();
            GurpsCategory = new HashSet<GurpsCategory>();
        }

        public int id { get; set; }

        [StringLength(50)]
        public string name { get; set; }

        [StringLength(50)]
        public string nameCompare { get; set; }

        [StringLength(50)]
        public string typeadc { get; set; }

        [StringLength(50)]
        public string levels { get; set; }

        [StringLength(50)]
        public string points_per_level { get; set; }

        [StringLength(50)]
        public string base_points { get; set; }

        [StringLength(50)]
        public string reference { get; set; }

        [StringLength(500)]
        public string notes { get; set; }

        [StringLength(50)]
        public string cr { get; set; }

        [StringLength(50)]
        public string versionadv { get; set; }

        [StringLength(50)]
        public string round_down { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<attribute_bonus> attribute_bonus { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<cost_reduction> cost_reduction { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<dr_bonusDB> dr_bonusDB { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<melee_weapon> melee_weapon { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<modifier> modifier { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<prereq_listDB> prereq_listDB { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ranged_weapon> ranged_weapon { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<skill_bonusDB> skill_bonusDB { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<spell_bonus> spell_bonus { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<weapon_bonus> weapon_bonus { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GurpsCategory> GurpsCategory { get; set; }
    }
}
