namespace GurpsDb.GurpsModel
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("LoadBearingEquipment", Schema = "dbo")]
    public partial class LoadBearingEquipment
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

        public int LbePocketIndex2 { get; set; }

        public int LbePocketIndex3 { get; set; }

        public int LbePocketIndex4 { get; set; }

        public int LbePocketIndex5 { get; set; }

        public int LbePocketIndex6 { get; set; }

        public int LbePocketIndex7 { get; set; }

        public int LbePocketIndex8 { get; set; }

        public int LbePocketIndex9 { get; set; }

        public int LbePocketIndex10 { get; set; }

        public int LbePocketIndex11 { get; set; }

        public int LbePocketIndex12 { get; set; }

        public virtual Item Item { get; set; }
    }
}
