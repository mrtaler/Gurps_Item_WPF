namespace GurpsDb.GurpsModel
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    /// <summary>
    /// Laser Color Effictievis
    /// </summary>
    [Table("LaserColorEf", Schema = "dbo")]
    public partial class LaserColorEf
    {
        public LaserColorEf()
        {

        }
        public LaserColorEf(string name, decimal? laserColorDayEfect)
        {
            Name = name;
            LaserColorDayEfect = laserColorDayEfect;
        }

        public int Id { get; set; }

        [StringLength(10)]
        public string Name { get; set; }

        public decimal? LaserColorDayEfect { get; set; }
    }
}
