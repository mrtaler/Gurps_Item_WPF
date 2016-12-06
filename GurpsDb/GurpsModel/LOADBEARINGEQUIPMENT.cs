namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("LOADBEARINGEQUIPMENT")]
    public partial class LOADBEARINGEQUIPMENT
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int lbeIndex { get; set; }

        public int LBEClass { get; set; }

        public int lbeCombo { get; set; }

        public int lbeFilledSize { get; set; }

        public int lbeAvailableVolume { get; set; }

        public int lbePocketsAvailable { get; set; }

        public int lbePocketIndex1 { get; set; }

        public int lbePocketIndex2 { get; set; }

        public int lbePocketIndex3 { get; set; }

        public int lbePocketIndex4 { get; set; }

        public int lbePocketIndex5 { get; set; }

        public int lbePocketIndex6 { get; set; }

        public int lbePocketIndex7 { get; set; }

        public int lbePocketIndex8 { get; set; }

        public int lbePocketIndex9 { get; set; }

        public int lbePocketIndex10 { get; set; }

        public int lbePocketIndex11 { get; set; }

        public int lbePocketIndex12 { get; set; }

        public virtual ITEM ITEM { get; set; }
    }
}
