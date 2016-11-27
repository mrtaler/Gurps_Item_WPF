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
            damage = item.damage.Value.ToString();
            strength = item.strength.Value.ToString();
            usage = item.usage.Value.ToString();
            reach = item.reach.Value.ToString();
            parry = item.parry.Value.ToString();
            block = item.block.Value.ToString();
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