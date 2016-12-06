namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class G_AvAttachClass
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id_attach { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id_GSubClass { get; set; }

        public int? id_AttachClass { get; set; }

        public virtual Attachment Attachment { get; set; }

        public virtual G_SubAttachClass G_SubAttachClass { get; set; }
    }
}
