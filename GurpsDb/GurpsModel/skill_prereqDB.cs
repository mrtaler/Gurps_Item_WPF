namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CharDB.skill_prereqDB")]
    public partial class skill_prereqDB
    {
        public int id { get; set; }

        [StringLength(50)]
        public string nameCompare { get; set; }

        [StringLength(50)]
        public string name { get; set; }

        [StringLength(50)]
        public string specializationCompare { get; set; }

        [StringLength(50)]
        public string specialization { get; set; }

        [StringLength(50)]
        public string levelSPCompare { get; set; }

        [StringLength(50)]
        public string levelSP { get; set; }

        [StringLength(10)]
        public string has { get; set; }

        public int? idprereq_list { get; set; }

        public virtual prereq_listDB prereq_listDB { get; set; }
    }
}
