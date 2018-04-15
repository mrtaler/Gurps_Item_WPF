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
            Damage = item.Damage.Value;
            Strength = item.Strength.Value;
            Usage = item.Usage.Value;
            Reach = item.Reach.Value;
            Parry = item.Parry.Value;
            Block = item.Block.Value;
            if (item.Default != null)
            {
                foreach (DefaultXml itemDefault in item.Default)
                {
                    DefSkillSome.Add(new DefSkillSome(itemDefault));
                }
            }

        }
    }
}