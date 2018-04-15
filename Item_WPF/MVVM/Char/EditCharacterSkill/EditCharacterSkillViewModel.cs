using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using GurpsDb.BaseModel;
using GurpsDb.GurpsModel;
using Item_WPF.addin;

namespace Item_WPF.MVVM.Char.EditCharacterSkill
{
    public class EditCharacterSkillViewModel : ViewModelBase
    {
        public CharSkill CharSkillForEdit { get; set; }
        /// <summary>
        /// increase skill point in char skill collection
        /// </summary>
        public ViewModelCommand SkillPointIncreaseCommand { get; set; }
        /// <summary>
        /// Decrease skill point in char skill collection
        /// </summary>
        public ViewModelCommand SkillPointDecreaseCommand { get; set; }

        public EditCharacterSkillViewModel(CharSkill param)
        {
            CharSkillForEdit = param;

            SkillPointIncreaseCommand = new ViewModelCommand(SkillPointIncrease);
            SkillPointDecreaseCommand = new ViewModelCommand(SkillPointDecrease);

            // var exit = String.Format("{0,10}", param.GurpsSkill.NameSkill);
            // MessageBox.Show(exit);
        }
        /// <summary>
        /// Increase Skill point in char
        /// </summary>
        /// <param name="param">GurpsSkill as object</param>
        private void SkillPointIncrease(object param)
        {
            CharSkillForEdit.IncreasePoint();
        }
        /// <summary>
        /// Decrease Skill point in char
        /// </summary>
        /// <param name="param">GurpsSkill as object</param>
        private void SkillPointDecrease(object param)
        {
            CharSkillForEdit.DecreasePoint();
        }
    }
}


