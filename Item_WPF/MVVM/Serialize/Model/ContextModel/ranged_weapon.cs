using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Item_WPF.MVVM.Serialize.Model;

namespace Item_WPF.ItemEntityModel
{
    public partial class ranged_weapon
    {
        public ranged_weapon() { }
        public ranged_weapon(ranged_weaponXML item)
        {
            damage = item.damage != null
                           ? item.damage.Value.ToString() : null;

            strength = item.strength != null
                           ? item.strength.Value.ToString() : null;
            usage = item.usage != null
                           ? item.usage.Value.ToString() : null;
            accuracy = item.accuracy != null
                           ? item.accuracy.Value.ToString() : null;
            range = item.range != null
                           ? item.range.Value.ToString() : null;
            rate_of_fire = item.rate_of_fire != null
                           ? item.rate_of_fire.Value.ToString() : null;
            recoil = item.recoil != null
                           ? item.recoil.Value.ToString() : null;
            shots = item.shots != null
                           ? item.shots.Value.ToString() : null;
            bulk = item.bulk != null
                           ? item.bulk.Value.ToString() : null;
            if (item.Default != null)
            {
                foreach (DefaultXML itemDefault in item.Default)
                {
                    DefSkillSomes.Add(new DefSkillSome(itemDefault));
                }
            }
        }
    }
}
