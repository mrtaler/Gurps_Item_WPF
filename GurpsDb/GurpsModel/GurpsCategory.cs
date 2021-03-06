namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;


    [Table("GurpsCategory", Schema = "CharDB")]
    public partial class GurpsCategory: IComparable
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public GurpsCategory()
        {
            this.Advantage = new HashSet<Advantage>();
            this.GurpsSkill = new HashSet<GurpsSkill>();
        }

        public int Id { get; set; }

        [StringLength(50)]
        public string NameCategory { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Advantage> Advantage { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GurpsSkill> GurpsSkill { get; set; }

        public GurpsCategory(string name)
        {
            this.NameCategory = name;
        }

        public int CompareTo(object obj)
        {
            GurpsCategory gs = (GurpsCategory) obj;
            return string.CompareOrdinal(this.NameCategory, gs.NameCategory);
        }
    }
}
