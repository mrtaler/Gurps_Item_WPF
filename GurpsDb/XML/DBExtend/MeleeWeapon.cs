using GurpsDb.XML.XSD.List;

namespace GurpsDb.GurpsModel
{
    public partial class MeleeWeapon
    {
        /// <summary>
        /// Constructor for XML
        /// </summary>
        /// <param name="item"></param>
        public MeleeWeapon(MeleeWeaponXml item)
        {
            this.Damage = item.Damage.Value;
            this.Strength = item.Strength.Value;
            this.Usage = item.Usage.Value;
            this.Reach = item.Reach.Value;
            this.Parry = item.Parry.Value;
            this.Block = item.Block.Value;
            if (item.Default != null)
            {
                foreach (DefaultXml itemDefault in item.Default)
                {
                    this.DefSkillSome.Add(new DefSkillSome(itemDefault));
                }
            }

        }
    }
}