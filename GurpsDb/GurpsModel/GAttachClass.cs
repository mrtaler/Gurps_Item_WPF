using System.ComponentModel.DataAnnotations.Schema;

namespace GurpsDb.GurpsModel
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [Table("GAttachClass", Schema = "dbo")]
    public partial class GAttachClass
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public GAttachClass()
        {
            this.GSubAttachClass = new HashSet<GSubAttachClass>();
        }

        public int Id { get; set; }

        [StringLength(50)]
        public string NameClass { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GSubAttachClass> GSubAttachClass { get; set; }
    }
}
