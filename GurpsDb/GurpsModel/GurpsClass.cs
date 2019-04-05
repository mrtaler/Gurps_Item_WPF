namespace GurpsDb.GurpsModel
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;


    [Table("GurpsClass", Schema = "dbo")]
    public partial class GurpsClass
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public GurpsClass()
        {
            this.ItemSubClass = new HashSet<ItemSubClass>();
        }

        public int Id { get; set; }

        [Required]
        [StringLength(16)]
        public string Name { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ItemSubClass> ItemSubClass { get; set; }
    }
}
