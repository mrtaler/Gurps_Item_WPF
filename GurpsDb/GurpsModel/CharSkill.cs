namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CharDB.CharSkill")]
    public partial class CharSkill
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int idSkill { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int idChar { get; set; }

        public int? PointOfSkill { get; set; }

        public virtual CharacterDB CharacterDB { get; set; }

        public virtual GurpsSkill GurpsSkill { get; set; }
    }
}
