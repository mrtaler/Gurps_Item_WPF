namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CharDB.InventoryOfChar")]
    public partial class InventoryOfChar
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id { get; set; }

        public int IdCharacter { get; set; }

        public int IdItem { get; set; }

        public long Count { get; set; }

        public virtual CharacterDB CharacterDB { get; set; }

        public virtual ITEM ITEM { get; set; }
    }
}
