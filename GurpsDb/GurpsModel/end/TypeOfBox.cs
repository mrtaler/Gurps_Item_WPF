using System.ComponentModel.DataAnnotations.Schema;

namespace GurpsDb.GurpsModel
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    /// <summary>
    /// Class for box type
    /// </summary>
    [Table("TypeOfBox", Schema = "dbo")]
    public partial class TypeOfBox
    {
        /// <summary>
        /// Default constructor
        /// </summary>
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TypeOfBox()
        {
            this.AnyBoxNameType = new HashSet<AnyBoxNameType>();
        }

        /// <summary>
        /// Constructor for new Type of Box
        /// </summary>
        /// <param name="nameOfType">Box Type Name</param>
        public TypeOfBox(string nameOfType)
        {
            this.NameOfType = nameOfType;
        }

        public int Id { get; set; }

        /// <summary>
        /// name box type
        /// </summary>
        [StringLength(50)]
        public string NameOfType { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AnyBoxNameType> AnyBoxNameType { get; set; }
    }
}
