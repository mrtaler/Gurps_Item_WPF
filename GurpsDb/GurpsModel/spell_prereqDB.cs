namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CharDB.spell_prereqDB")]
    public partial class spell_prereqDB
    {
        public int id { get; set; }

        [StringLength(50)]
        public string nameCompare { get; set; }

        [StringLength(50)]
        public string name { get; set; }

        [StringLength(50)]
        public string collegeCompare { get; set; }

        [StringLength(50)]
        public string college { get; set; }

        [StringLength(50)]
        public string college_countCompare { get; set; }

        [StringLength(50)]
        public string college_count { get; set; }

        [StringLength(50)]
        public string quantityCompare { get; set; }

        [StringLength(50)]
        public string quantity { get; set; }

        [StringLength(50)]
        public string anyt { get; set; }

        [StringLength(50)]
        public string has { get; set; }

        public int? idPrqlist { get; set; }

        [StringLength(50)]
        public string Value { get; set; }

        public virtual prereq_listDB prereq_listDB { get; set; }
    }
}
