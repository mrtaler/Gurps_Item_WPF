namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CharDB.advantage_prereq")]
    public partial class advantage_prereq
    {
        public int id { get; set; }

        [StringLength(50)]
        public string nameCompare { get; set; }

        [StringLength(50)]
        public string name { get; set; }

        [StringLength(50)]
        public string notesCompare { get; set; }

        [StringLength(50)]
        public string notes { get; set; }

        [StringLength(50)]
        public string levelCompare { get; set; }

        [StringLength(50)]
        public string level { get; set; }

        [StringLength(50)]
        public string has { get; set; }

        public int? idPrqList { get; set; }

        [StringLength(50)]
        public string Value { get; set; }

        public virtual prereq_listDB prereq_listDB { get; set; }
    }
}
