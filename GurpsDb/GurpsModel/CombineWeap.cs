namespace GurpsDb.GurpsModel
{
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("CombineWeap", Schema = "dbo")]
    public partial class CombineWeap
    {
        public int Id { get; set; }

        public int IdWeapon { get; set; }

        public int? ScopeSelect { get; set; }

        public int? LaserSelect { get; set; }

        public int? LightSelect { get; set; }

        public int? BipodSelect { get; set; }

        public int? SilenserSelect { get; set; }

        public int? LauncherSelect { get; set; }

        public int? BayonetSelect { get; set; }

        public int? MagazineSelect { get; set; }

        public int? InternalSelect { get; set; }

        public int? ExternalSelect { get; set; }

        public int? StockSelect { get; set; }
    }
}
