namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CharDB.DefaultSkill")]
    public partial class DefaultSkill
    {
        public int idSkillIn { get; set; }

        public int? idSkillOut { get; set; }

        public int? Modifier { get; set; }

        [StringLength(10)]
        public string type { get; set; }

        public int id { get; set; }

        public virtual GurpsSkill GurpsSkill { get; set; }

        public virtual GurpsSkill GurpsSkill1 { get; set; }
    }
}
