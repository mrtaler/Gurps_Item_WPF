namespace GurpsDb.GurpsModel
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    /// <summary>
    /// Clas for description ItemSubClass
    /// </summary>
    [Table("ItemSubClass", Schema = "dbo")]
    public class ItemSubClass
    {
        /// <summary>
        /// Default constructor
        /// </summary>
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ItemSubClass()
        {
            Item = new HashSet<Item>();
        }
        /// <summary>
        /// Constructor for init new ItemSubClass
        /// </summary>
        /// <param name="nameSub">Name</param>
        /// <param name="gurpsClass">Gurps Class</param>
        /// <param name="type">Type</param>
        /// <param name="itemClass">Item Class</param>
        public ItemSubClass(string nameSub, ItemClass itemClass, string type, GurpsClass gurpsClass)
        {
            NameSub = nameSub;
            GurpsClass = gurpsClass;
            Type = type;
            ItemClass = itemClass;
        }
        /// <summary>
        /// Id
        /// </summary>
        public int Id { get; set; }
        /// <summary>
        /// Name (length=50)
        /// </summary>
        [StringLength(50)]
        public string NameSub { get; set; }

        public int IdItemClass { get; set; }
        /// <summary>
        /// Type (length=50)
        /// </summary>
        [StringLength(50)]
        public string Type { get; set; }

        public int? IdGurpsSubClass { get; set; }
        /// <summary>
        /// Gurps Class
        /// </summary>
        public virtual GurpsClass GurpsClass { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Item> Item { get; set; }
        /// <summary>
        /// Item Class
        /// </summary>
        public virtual ItemClass ItemClass { get; set; }
    }
}
