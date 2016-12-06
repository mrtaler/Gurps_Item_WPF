namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ARMOUR")]
    public partial class ARMOUR
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int uiIndex { get; set; }

        public int ubArmourClass { get; set; }

        public int ubProtection { get; set; }

        public int ubCoverage { get; set; }

        public int ubDegradePercent { get; set; }

        public bool FlakJacket { get; set; }

        public bool LeatherJacket { get; set; }

        public virtual ITEM ITEM { get; set; }
    }
}
