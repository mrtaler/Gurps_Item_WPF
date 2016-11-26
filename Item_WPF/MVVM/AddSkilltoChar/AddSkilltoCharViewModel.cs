using System.Collections.ObjectModel;
using Item_WPF.ItemEntityModel;
using Item_WPF.addin;
using System;
using System.Linq;
using System.Collections.Specialized;

namespace Item_WPF.MVVM.AddSkilltoChar
{
    public class AddSkilltoCharViewModel : ViewModelBase
    {
        public CharacterDB Character;
        public item1Entities Context { get; set; }
        public ObservableCollection<GurpsSkill> AllGurpsSkillCollection { get; set; }
        public ObservableCollection<CharSkill> CharSkillCollection
        {
            get
            {
                return new ObservableCollection<CharSkill>(Character.CharSkills);
            }
        }
        public ObservableCollection<GurpsSkill> CharGurpsSkillCollection
        {
            get
            {
                return new ObservableCollection<GurpsSkill>
                    (Character.CharSkills.Select(p => p.GurpsSkill));
            }
        }

        public ViewModelCommand AddSkillCommand { get; set; }
        public ViewModelCommand RemSkillCommand { get; set; }

        public ViewModelCommand SkillPointIncreaseCommand { get; set; }
        public ViewModelCommand SkillPointDecreaseCommand { get; set; }

        public AddSkilltoCharViewModel(CharacterDB character, item1Entities context)
        {
            Character = character;
            Context = context;
            AllGurpsSkillCollection = new ObservableCollection<GurpsSkill>(Context.GurpsSkills.
                OrderBy(p => p.TypeSkTh).
                OrderBy(p => p.NameSkill)
                );

            AddSkillCommand = new ViewModelCommand(AddSkill, true);
            RemSkillCommand = new ViewModelCommand(RemSkill, true);

            SkillPointIncreaseCommand = new ViewModelCommand(SkillPointIncrease, true);
            SkillPointDecreaseCommand = new ViewModelCommand(SkillPointDecrease, true);
        }
        private void SkillPointIncrease(object param)
        {
            GurpsSkill skillToWork = (param as GurpsSkill);
            CharSkill charSkillsToWork = Character.CharSkills.First(p => p.GurpsSkill == skillToWork);


            charSkillsToWork.PointOfSkill++;

            NotifyPropertyChanged("CharGurpsSkillCollection");
            NotifyPropertyChanged("CharSkillCollection");
        }
        private void SkillPointDecrease(object param)
        {
            GurpsSkill gs = (param as GurpsSkill);
            var Cha = Character.CharSkills.First(p => p.GurpsSkill == gs);

            Cha.PointOfSkill--;

            NotifyPropertyChanged("CharGurpsSkillCollection");
            NotifyPropertyChanged("CharSkillCollection");
        }

        private void AddSkill(object param)
        {
            int gsid = Convert.ToInt32(param);
            if (CharGurpsSkillCollection.FirstOrDefault(p => p.id == gsid) == null)
            {
                GurpsSkill gurpsSkillFind = new GurpsSkill();

                gurpsSkillFind = AllGurpsSkillCollection.First(p => p.id == gsid);

                CharSkill charSkill = new CharSkill(Character, AllGurpsSkillCollection.First(p => p.id == gsid));

                //  string sd = charSkill.DefaultSkill;


                Character.CharSkills.Add(charSkill);
                // Character.Skills.Add(gurpsSkillFind);
                NotifyPropertyChanged("CharGurpsSkillCollection");
                NotifyPropertyChanged("CharSkillCollection");
            }

        }
        private void RemSkill(object param)
        {
            //    int gsid = Convert.ToInt32(param);
            //GurpsSkill gs = CharGurpsSkillCollection.First(p => p.id == gsid);
            GurpsSkill gs = (param as GurpsSkill);
            var Cha = Character.CharSkills.First(p => p.GurpsSkill == gs);

            Character.CharSkills.Remove(Cha);
            // Character.Skills.Remove(gs);

            NotifyPropertyChanged("CharGurpsSkillCollection");
            NotifyPropertyChanged("CharSkillCollection");
        }
    }
}
