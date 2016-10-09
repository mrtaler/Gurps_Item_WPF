using System.Collections.ObjectModel;
using Item_WPF.ItemEntityModel;
using Item_WPF.addin;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Item_WPF.MVVM.AddSkilltoChar
{
    public class AddSkilltoCharViewModel : ViewModelBase
    {
        private item1Entities _context;
        public CharacterDB _character;
        public ObservableCollection<GurpsSkill> AllGurpsSkillCollection { get; set; }


        public ObservableCollection<GurpsSkill> CharGurpsSkillCollection
        {
            get { return new ObservableCollection<GurpsSkill>(_character.GurpsSkills); }
            set
            {
                if (_character.GurpsSkills != value)
                {
                    _character.GurpsSkills = value;
                }
            }
        }
        public ViewModelCommand AddSkillCommand { get; set; }
        public ViewModelCommand RemSkillCommand { get; set; }
        public AddSkilltoCharViewModel(CharacterDB character)
        {
            _character = character;
            _context = new item1Entities();
            AllGurpsSkillCollection = new ObservableCollection<GurpsSkill>(_context.GurpsSkills);

            AddSkillCommand = new ViewModelCommand(AddSkill, true);
            RemSkillCommand = new ViewModelCommand(RemSkill, true);
        }

        private void AddSkill(object param)
        {
            int gsid = Convert.ToInt32(param);

            GurpsSkill GurpsSkillFind = AllGurpsSkillCollection.First(p => p.id == gsid);
            

            _character.GurpsSkills.Add(GurpsSkillFind);
            NotifyPropertyChanged("CharGurpsSkillCollection");
        }
        private void RemSkill(object param)
        {
            int gsid = Convert.ToInt32(param);
            GurpsSkill gs = CharGurpsSkillCollection.First(p => p.id == gsid);
            //  CharSkill charSkill=

            // _character.CharSkills.Remove();
            NotifyPropertyChanged("CharGurpsSkillCollection");

        }

    }
}
