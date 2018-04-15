namespace GurpsDb.GurpsModel
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    /// <summary>
    /// Class for description of TechLevel
    /// </summary>
    [Table("Tl", Schema = "dbo")]
    public class Tl
    {
        /// <summary>
        /// Defaul constructor (for dbLoad)
        /// </summary>
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Tl()
        {
            GurpsSkill = new HashSet<GurpsSkill>();
            Item = new HashSet<Item>();
        }
        /// <summary>
        /// Constructor for TechLevel Data
        /// </summary>
        /// <param name="nameTl">string Tech Level name</param>
        /// <param name="description">string Description</param>
        /// <param name="startMoney">decimal Start Money</param>
        public Tl(string nameTl, string description, decimal startMoney)
        // :this()
        {
            NameTl = nameTl;
            Description = description;
            StartMoney = startMoney;
        }
        /// <summary>
        /// Tl Id
        /// </summary>
        [Key]
        public int IdTl { get; set; }
        /// <summary>
        /// Name of TechLevel
        /// </summary>
        [StringLength(50)]
        public string NameTl { get; set; }
        /// <summary>
        /// Description of Tech Level
        /// </summary>
        [StringLength(60)]
        public string Description { get; set; }
        /// <summary>
        /// Start money fo current TechLevel
        /// </summary>
        public decimal StartMoney { get; set; }
        /// <summary>
        /// collection for search GurpsSkill
        /// </summary>
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GurpsSkill> GurpsSkill { get; set; }
        /// <summary>
        /// collection for search Item
        /// </summary>
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Item> Item { get; set; }
    }
}
