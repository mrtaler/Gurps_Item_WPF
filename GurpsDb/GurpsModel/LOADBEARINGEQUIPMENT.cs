namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Loadbearingequipment")]
    public partial class LOADBEARINGEQUIPMENT
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int LbeIndex { get; set; }

        public int LbeClass { get; set; }

        public int LbeCombo { get; set; }

        public int LbeFilledSize { get; set; }

        public int LbeAvailableVolume { get; set; }

        public int LbePocketsAvailable { get; set; }

        public int LbePocketIndex1 { get; set; }

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

        public virtual ITEM Item { get; set; }
    }
}
