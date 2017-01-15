namespace GurpsDb.GurpsModel
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("Food", Schema = "dbo")]
    public partial class Food : Item
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage",
            "CA2214:DoNotCallOverridableMethodsInConstructors")]

        [StringLength(50)]
        public string GetEnergy { get; set; }
        [StringLength(50)]
        public string StorageLife { get; set; }
    }
}
