using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Item_WPF.MVVM.Serialize.Model;

namespace Item_WPF.ItemEntityModel
{
    public partial class spell_bonus
    {
        public spell_bonus() { }
        public spell_bonus(spell_bonusXML item)
            : this()
        {
            spell_name = item.spell_name != null
                ? item.spell_name.Value.ToString() : null;
            //if (item.spell_name.Attribute("compare") != null)
            //{
            //    spell_nameC = item.spell_name.Attribute("compare") != null
            //        ? item.spell_name.Attribute("compare").Value.ToString() : null;
            //}
            college_name = item.college_name != null
                ? item.college_name.Value.ToString() : null;
            //college_nameC = item.college_name.Attribute("compare") != null
            //    ? item.college_name.Attribute("compare").Value.ToString() : null;
            all_colleges = item.all_colleges != null
                                 ? item.all_colleges.Value.ToString() : null;
            amountper_level = item.amount.Attribute("per_level") != null
                                 ? item.amount.Attribute("per_level").Value.ToString() : null;
            amountValue = item.amount.Value != null
                                 ? item.amount.Value.ToString() : null;
        }
    }
}
