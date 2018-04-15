namespace GurpsDb.GurpsModel
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("Armour", Schema = "dbo")]
    public partial class Armour : Item
    {
        public int UbArmourClass { get; set; }

        public int UbProtection { get; set; }

        public int UbCoverage { get; set; }

        public int UbDegradePercent { get; set; }

        public bool FlakJacket { get; set; }

        public bool LeatherJacket { get; set; }

    }
}
