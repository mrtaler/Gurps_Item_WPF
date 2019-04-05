namespace GurpsDb.GurpsModel
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("AnyBoxNameType", Schema = "dbo")]
    public partial class AnyBoxNameType
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public AnyBoxNameType()
        {
            this.AnyBoxNameType1 = new HashSet<AnyBoxNameType>();
            this.BoxItem = new HashSet<BoxItem>();
        }

        public int Id { get; set; }

        [StringLength(50)]
        public string NameOfBox { get; set; }

        public int TypeOfBox { get; set; }

        public int? ParentBoxName { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AnyBoxNameType> AnyBoxNameType1 { get; set; }

        public virtual AnyBoxNameType AnyBoxNameType2 { get; set; }

        public virtual TypeOfBox Type_of_Box { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BoxItem> BoxItem { get; set; }
    }
}
