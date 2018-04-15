using System.ComponentModel.DataAnnotations.Schema;

namespace GurpsDb.GurpsModel
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [Table("Clothes", Schema = "dbo")]
    public partial class Clothes : Item
    {
        [StringLength(255)]
        public string ComfortTemperature { get; set; }
        public string Wearout { get; set; }
    }
}
