namespace GurpsDb.GurpsModel
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("ItemClass", Schema = "dbo")]
    public partial class ItemClass
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ItemClass()
        {
            this.ItemSubClass = new HashSet<ItemSubClass>();
        }

        public int Id { get; set; }

        [Required]
        [StringLength(70)]
        public string Name { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ItemSubClass> ItemSubClass { get; set; }
    }
}
