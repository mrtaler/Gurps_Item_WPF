

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
            this.Damage = item.Damage.Value;
            this.Strength = item.Strength.Value;
            this.Usage = item.Usage.Value;
            this.Accuracy = item.Accuracy.Value;
            this.Range = item.Range.Value;
            this.RateOfFire = item.RateOfFire.Value;
            this.Recoil = item.Recoil.Value;
            this.Shots = item.Shots.Value;
            this.Bulk = item.Bulk.Value;
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