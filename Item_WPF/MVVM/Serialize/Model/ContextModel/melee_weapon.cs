using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Item_WPF.MVVM.Serialize.Model;

namespace Item_WPF.ItemEntityModel
{
    public partial class melee_weapon
    {
     //   public melee_weapon() { }
        public melee_weapon(melee_weaponXML item)
        {
            damage = item.damage != null
                           ? item.damage.Value.ToString() : null;
            strength = item.strength != null
                           ? item.strength.Value.ToString() : null;
            usage = item.usage != null
                           ? item.usage.Value.ToString() : null;
            reach = item.reach != null
                           ? item.reach.Value.ToString() : null;
            parry = item.parry != null
                           ? item.parry.Value.ToString() : null;
            block = item.block != null
                           ? item.block.Value.ToString() : null;
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
