namespace GurpsDb.GurpsModel
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("Explosive", Schema = "dbo")]
    public partial class Explosive : Item
    {

        public int UbType { get; set; }

        public int UbDamage { get; set; }

        public int UbStunDamage { get; set; }

        public int UbRadius { get; set; }

        public int UbDuration { get; set; }

        public int UbStartRadius { get; set; }

        public int UbMagSize { get; set; }

        public int UsNumFragments { get; set; }

        public int UbFragType { get; set; }

        public int UbFragDamage { get; set; }

        public int UbFragRange { get; set; }

        public int UbHorizontalDegree { get; set; }

        public int UbVerticalDegree { get; set; }

        public decimal BIndoorModifier { get; set; }

        public bool FExplodeOnImpact { get; set; }

        public bool GlGrenade { get; set; }

        public bool RlGrenade { get; set; }

        public bool Mine { get; set; }

        public bool Flare { get; set; }

        public bool Directional { get; set; }

        public bool ShapedCharge { get; set; }
    }
}
