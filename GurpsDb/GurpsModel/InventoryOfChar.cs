namespace GurpsDb.GurpsModel
{
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("InventoryOfChar", Schema = "CharDB")]
    public partial class InventoryOfChar
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public int IdCharacter { get; set; }

        public int IdItem { get; set; }

        public long Count { get; set; }

        public virtual CharacterDb CharacterDb { get; set; }

        public virtual Item Item { get; set; }
    }
}
