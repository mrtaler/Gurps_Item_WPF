using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Item_WPF.MVVM.Serialize.Model;

namespace Item_WPF.ItemEntityModel
{
  public partial  class weapon_bonus
    {
      public weapon_bonus() { }
      public weapon_bonus(Weapon_bonusXML itemWeapon_bonus)
      {
          AmountPer_level = itemWeapon_bonus.Amount.Attribute("per_level").Value.ToString();
          AmountValue = itemWeapon_bonus.Amount.Value.ToString();
          
          nameCompare = itemWeapon_bonus.name.Attribute("compare").Value.ToString();
          name = itemWeapon_bonus.name.Value.ToString();
          specializationCompare = itemWeapon_bonus.specialization.Attribute("compare").Value.ToString(); ;
          specialization = itemWeapon_bonus.specialization.Value.ToString();
          levelCompare = itemWeapon_bonus.level.Attribute("compare").Value.ToString(); ;
          level = itemWeapon_bonus.level.Value.ToString();
      }
    }
}
