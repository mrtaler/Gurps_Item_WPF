using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Item_WPF.MVVM.Serialize.Model;

namespace Item_WPF.ItemEntityModel
{
    public partial class RangedWeapon
    {
        //     public ranged_weapon() { }
        public RangedWeapon(ranged_weaponXML item)
        {
            damage = item.damage.Value.ToString();
            strength = item.strength.Value.ToString();
            usage = item.usage.Value.ToString();
            accuracy = item.accuracy.Value.ToString();
            range = item.range.Value.ToString();
            rate_of_fire = item.rate_of_fire.Value.ToString();
            recoil = item.recoil.Value.ToString();
            shots = item.shots.Value.ToString();
            bulk = item.bulk.Value.ToString();
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