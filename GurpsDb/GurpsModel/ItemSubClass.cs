namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ItemSubClass")]
    public partial class ItemSubClass
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ItemSubClass()
        {
            Item = new HashSet<Item>();
        }

        public int Id { get; set; }

        [StringLength(50)]
        public string NameSub { get; set; }

        public int IdItemClass { get; set; }

        [StringLength(50)]
        public string Type { get; set; }

        public int? IdGurpsSubClass { get; set; }

        public virtual GurpsClass GurpsClass { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Item> Item { get; set; }

        public virtual ItemClass ItemClass { get; set; }
    }
}
