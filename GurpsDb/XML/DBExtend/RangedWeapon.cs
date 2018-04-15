

using GurpsDb.XML.XSD.List;

// ReSharper disable once CheckNamespace
namespace GurpsDb.GurpsModel
{
    public partial class RangedWeapon
    {
        /// <summary>
        /// Contructor for XML
        /// </summary>
        /// <param name="item"></param>
        public RangedWeapon(RangedWeaponXml item)
        {
            Damage = item.Damage.Value;
            Strength = item.Strength.Value;
            Usage = item.Usage.Value;
            Accuracy = item.Accuracy.Value;
            Range = item.Range.Value;
            RateOfFire = item.RateOfFire.Value;
            Recoil = item.Recoil.Value;
            Shots = item.Shots.Value;
            Bulk = item.Bulk.Value;
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