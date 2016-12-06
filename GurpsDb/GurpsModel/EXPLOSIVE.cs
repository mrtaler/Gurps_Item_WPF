namespace GurpsDb.GurpsModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("EXPLOSIVE")]
    public partial class EXPLOSIVE
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int uiIndex { get; set; }

        public int ubType { get; set; }

        public int ubDamage { get; set; }

        public int ubStunDamage { get; set; }

        public int ubRadius { get; set; }

        public int ubDuration { get; set; }

        public int ubStartRadius { get; set; }

        public int ubMagSize { get; set; }

        public int usNumFragments { get; set; }

        public int ubFragType { get; set; }

        public int ubFragDamage { get; set; }

        public int ubFragRange { get; set; }

        public int ubHorizontalDegree { get; set; }

        public int ubVerticalDegree { get; set; }

        public decimal bIndoorModifier { get; set; }

        public bool fExplodeOnImpact { get; set; }

        public bool GLGrenade { get; set; }

        public bool RLGrenade { get; set; }

        public bool Mine { get; set; }

        public bool Flare { get; set; }

        public bool Directional { get; set; }

        public bool ShapedCharge { get; set; }

        public virtual ITEM ITEM { get; set; }
    }
}
