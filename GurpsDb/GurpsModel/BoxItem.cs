namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BoxItem")]
    public partial class BoxItem
    {
        public int Id { get; set; }

        public int BoxName { get; set; }

        public int Items { get; set; }

        public int CountItems { get; set; }

        public virtual AnyBoxNameType AnyBoxNameType { get; set; }

        public virtual Item Item { get; set; }
    }
}
