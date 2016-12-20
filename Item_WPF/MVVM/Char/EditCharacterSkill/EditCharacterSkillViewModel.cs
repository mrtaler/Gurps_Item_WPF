using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using GurpsDb.GurpsModel;

namespace Item_WPF.MVVM.Char.EditCharacterSkill
{
  public  class EditCharacterSkillViewModel
  {
      public CharSkill CharSkillForEdit { get; set; }

      public  EditCharacterSkillViewModel(CharSkill param)
      {
          CharSkillForEdit = param;
           
          var exit = String.Format("{0,10}", param.GurpsSkill.NameSkill);
            MessageBox.Show(exit);
        }
    }
}


