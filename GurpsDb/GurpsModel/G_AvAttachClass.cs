namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class GAvAttachClass
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IdAttach { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IdGSubClass { get; set; }

        public int? IdAttachClass { get; set; }

        public virtual Attachment Attachment { get; set; }

        public virtual GSubAttachClass GSubAttachClass { get; set; }
    }
}
