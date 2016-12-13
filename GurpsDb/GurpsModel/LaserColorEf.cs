namespace GurpsDb.GurpsModel
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("LaserColorEf", Schema = "dbo")]
    public partial class LaserColorEf
    {
        public int Id { get; set; }

        [StringLength(10)]
        public string Name { get; set; }

        public decimal? LaserColorDayEfect { get; set; }
    }
}
