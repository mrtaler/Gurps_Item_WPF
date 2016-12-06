namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CharDB.contained_weight_prereq")]
    public partial class contained_weight_prereq
    {
        public int id { get; set; }

        [StringLength(50)]
        public string has { get; set; }

        [StringLength(50)]
        public string compare { get; set; }

        [StringLength(50)]
        public string Value { get; set; }

        public int? idPrqList { get; set; }

        public virtual prereq_listDB prereq_listDB { get; set; }
    }
}
