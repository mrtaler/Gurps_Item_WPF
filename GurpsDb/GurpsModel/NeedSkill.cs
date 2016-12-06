namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CharDB.NeedSkill")]
    public partial class NeedSkill
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int idSkillIn { get; set; }

        public int? idSkillOut { get; set; }

        [StringLength(50)]
        public string Needed { get; set; }

        public virtual GurpsSkill GurpsSkill { get; set; }

        public virtual GurpsSkill GurpsSkill1 { get; set; }
    }
}
