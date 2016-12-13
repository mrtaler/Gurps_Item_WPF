using System.ComponentModel.DataAnnotations.Schema;

namespace GurpsDb.GurpsModel
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [Table("TypeOfBox", Schema = "dbo")]
    public partial class TypeOfBox
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TypeOfBox()
        {
            AnyBoxNameType = new HashSet<AnyBoxNameType>();
        }

        public int Id { get; set; }

        [StringLength(50)]
        public string NameOfType { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AnyBoxNameType> AnyBoxNameType { get; set; }
    }
}
