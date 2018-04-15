using System.Data.Entity.ModelConfiguration;

namespace GurpsDb.GurpsModel
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("Caliber", Schema = "dbo")]
    public partial class Caliber
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Caliber()
        {
            Weapons = new HashSet<Weapon>();
        }

        public int Id { get; set; }

        [Required]
        [StringLength(255)]
        public string CaliberName { get; set; }

        [StringLength(255)]
        public string AltCaliberName { get; set; }

        [Required]
        [StringLength(50)]
        public string ClassOfCaliber { get; set; }

        public decimal? DimOfBulletSi { get; set; }

        public decimal? DimOfBulletUs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public ICollection<Weapon> Weapons { get; set; }
    }

    public class CaliberConfiguration : EntityTypeConfiguration<Caliber>
    {
        public CaliberConfiguration()
        {
            this.Property(e => e.DimOfBulletSi)
                       .HasPrecision(8, 4);

            this.Property(e => e.DimOfBulletUs)
                        .HasPrecision(8, 4);

            //this.HasMany(e => e.Weapons)
            //               .WithOptional(e => e.Caliber)
            //               .HasForeignKey(e => e.UbCalibre);
        }
    }
}
