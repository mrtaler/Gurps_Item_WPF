using System.Collections.ObjectModel;
using Item_WPF.ItemEntityModel;
using Item_WPF.addin;
using System;
using System.Linq;

namespace Item_WPF.MVVM.AddSkilltoChar
{
    public class AddSkilltoCharViewModel : ViewModelBase
    {
        public CharacterDB Character;
        public item1Entities Context { get; set; }
        public ObservableCollection<GurpsSkill> AllGurpsSkillCollection { get; set; }

        public ObservableCollection<GurpsSkill> CharGurpsSkillCollection
        {
            get
            {
                return new ObservableCollection<GurpsSkill>
                    (CharSkillsCollection.Select(p => p.GurpsSkill));
            }
        }

        public ObservableCollection<CharSkill> CharSkillsCollection
        {
            get { return new ObservableCollection<CharSkill>(Character.CharSkills); }
            set { Character.CharSkills = value; }
        }
        public ViewModelCommand AddSkillCommand { get; set; }
        public ViewModelCommand RemSkillCommand { get; set; }
        public AddSkilltoCharViewModel(CharacterDB character)
        {
            Character = character;
            Context = new item1Entities();
            AllGurpsSkillCollection = new ObservableCollection<GurpsSkill>(Context.GurpsSkills);

            AddSkillCommand = new ViewModelCommand(AddSkill, true);
            RemSkillCommand = new ViewModelCommand(RemSkill, true);
        }

        private void AddSkill(object param)
        {
            int gsid = Convert.ToInt32(param);
            if (CharGurpsSkillCollection.FirstOrDefault(p=>p.id==gsid)==null)
            {
                GurpsSkill gurpsSkillFind = AllGurpsSkillCollection.First(p => p.id == gsid);
                CharSkill charSkill = new CharSkill();
              
                charSkill.CharacterDB = Character;
                charSkill.GurpsSkill = gurpsSkillFind;
                charSkill.PointOfSkill = 1;
                Character.CharSkills.Add(charSkill);
                Character.Skills.Add(gurpsSkillFind);
                NotifyPropertyChanged("CharGurpsSkillCollection");
            }
            
        }
        private void RemSkill(object param)
        {
            // int gsid = Convert.ToInt32(param);
            //  GurpsSkill gs = CharGurpsSkillCollection.First(p => p.id == gsid);
            //  CharSkill charSkill=

            // Character.CharSkills.Remove();
            NotifyPropertyChanged("CharGurpsSkillCollection");

        }
    }
}
