namespace GurpsDb.GurpsModel
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    /// <summary>
    /// Class for description legality class
    /// </summary>
    [Table("Lc", Schema = "dbo")]
    public partial class Lc
    {
        /// <summary>
        /// Default constructor (DB load)
        /// </summary>
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Lc()
        {
            Item = new HashSet<Item>();
        }
        /// <summary>
        /// Constructor for new  legality class
        /// </summary>
        /// <param name="nameLc">name  legality class</param>
        /// <param name="shortDes">short description  legality class</param>
        /// <param name="description">full description  legality class</param>
        public Lc(string nameLc, string shortDes, string description)
        {
            NameLc = nameLc;
            ShortDes = shortDes;
            Description = description;
        }
        /// <summary>
        /// current id
        /// </summary>
        [Key]
        public int IdLc { get; set; }
        /// <summary>
        /// name  legality class
        /// </summary>
        [StringLength(10)]
        public string NameLc { get; set; }
        /// <summary>
        /// Short description  legality class
        /// </summary>
        [StringLength(15)]
        public string ShortDes { get; set; }
        /// <summary>
        /// full description  legality class
        /// </summary>
        [StringLength(300)]
        public string Description { get; set; }
        /// <summary>
        /// collection for fint Item
        /// </summary>
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Item> Item { get; set; }
    }
}
