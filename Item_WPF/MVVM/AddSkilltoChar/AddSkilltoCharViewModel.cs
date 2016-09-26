using System.Collections.ObjectModel;
using Item_WPF.ItemEntityModel;
using Item_WPF.addin;

namespace Item_WPF.MVVM.AddSkilltoChar
{
    public class AddSkilltoCharViewModel
    {
        private item1Entities _context;
        private CharacterDB _character;
        public ObservableCollection<GurpsSkill> AllGurpsSkillCollection { get; set; }


        public ViewModelCommand AddSkillCommand { get; set; }

        public AddSkilltoCharViewModel(CharacterDB character)
        {
            _character = character;
            _context = new item1Entities();
            AllGurpsSkillCollection = new ObservableCollection<GurpsSkill>(_context.GurpsSkills);

            AddSkillCommand = new ViewModelCommand(IncreasePoint, true);
        }
    }
}
