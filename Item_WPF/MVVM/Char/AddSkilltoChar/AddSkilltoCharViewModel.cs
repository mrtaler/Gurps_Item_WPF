using System;
using System.Collections.ObjectModel;
using System.Linq;
using Item_WPF.addin;
using Item_WPF.ItemEntityModel;

namespace Item_WPF.MVVM.Char.AddSkilltoChar
{
    public class AddSkilltoCharViewModel : ViewModelBase
    {
        /// <summary>
        /// Character With now work
        /// </summary>
        public CharacterDB Character;
        /// <summary>
        /// Context with now work
        /// </summary>
        public item1Entities Context { get; set; }
        /// <summary>
        /// Collection for All Gurps Skill in DB
        /// </summary>
        public ObservableCollection<GurpsSkill> AllGurpsSkillCollection { get; set; }
        /// <summary>
        /// COllection from Character Skill 
        /// </summary>
        public ObservableCollection<CharSkill> CharSkillCollection => new ObservableCollection<CharSkill>(Character.CharSkills);

        /// <summary>
        /// Collection for gurps char skill
        /// </summary>
        public ObservableCollection<GurpsSkill> CharGurpsSkillCollection
        {
            get
            {
                return new ObservableCollection<GurpsSkill>
                    (Character.CharSkills.Select(p => p.GurpsSkill));
            }
        }
        /// <summary>
        /// Add Skill to Char From DB
        /// </summary>
        public ViewModelCommand AddSkillCommand { get; set; }
        /// <summary>
        /// Remove skill from Char 
        /// </summary>
        public ViewModelCommand RemSkillCommand { get; set; }
        /// <summary>
        /// increase skill point in char skill collection
        /// </summary>
        public ViewModelCommand SkillPointIncreaseCommand { get; set; }
        /// <summary>
        /// Decrease skill point in char skill collection
        /// </summary>
        public ViewModelCommand SkillPointDecreaseCommand { get; set; }
        /// <summary>
        /// Constructor With param
        /// </summary>
        /// <param name="character">Character who now worked</param>
        /// <param name="context">now Context</param>
        public AddSkilltoCharViewModel(CharacterDB character, item1Entities context)
        {
            Character = character;
            Context = context;
      
            // Load GurpsSkills from DB
            AllGurpsSkillCollection = new ObservableCollection<GurpsSkill>(Context.GurpsSkills.
                OrderBy(p => p.TypeSkTh).
                ThenBy(p => p.NameSkill)
                );

            #region Command definshion
            AddSkillCommand = new ViewModelCommand(AddSkill);
            RemSkillCommand = new ViewModelCommand(RemSkill);
            SkillPointIncreaseCommand = new ViewModelCommand(SkillPointIncrease);
            SkillPointDecreaseCommand = new ViewModelCommand(SkillPointDecrease);
            #endregion
        }
        /// <summary>
        /// Increase Skill point in char
        /// </summary>
        /// <param name="param">GurpsSkill as object</param>
        private void SkillPointIncrease(object param)
        {
            GurpsSkill skillToWork = (param as GurpsSkill);
            CharSkill charSkillsToWork = Character.CharSkills.First(p => p.GurpsSkill == skillToWork);


            charSkillsToWork.PointOfSkill++;

            NotifyPropertyChanged("CharGurpsSkillCollection");
            NotifyPropertyChanged("CharSkillCollection");
        }
        /// <summary>
        /// Decrease Skill point in char
        /// </summary>
        /// <param name="param">GurpsSkill as object</param>
        private void SkillPointDecrease(object param)
        {
            GurpsSkill gs = (param as GurpsSkill);
            var cha = Character.CharSkills.First(p => p.GurpsSkill == gs);

            cha.PointOfSkill--;

            NotifyPropertyChanged("CharGurpsSkillCollection");
            NotifyPropertyChanged("CharSkillCollection");
        }
        /// <summary>
        /// Add Skill for Character.CharSkills
        /// </summary>
        /// <param name="param">id selected skill</param>
        private void AddSkill(object param)
        {
            int gsid = Convert.ToInt32(param);
            if (CharGurpsSkillCollection.FirstOrDefault(p => p.id == gsid) == null)
            {
                CharSkill charSkill = new CharSkill(Character, AllGurpsSkillCollection.First(p => p.id == gsid));
                Character.CharSkills.Add(charSkill);
                NotifyPropertyChanged("CharGurpsSkillCollection");
                NotifyPropertyChanged("CharSkillCollection");
            }
        }
        /// <summary>
        /// Remove Skill from Char
        /// </summary>
        /// <param name="param"></param>
        private void RemSkill(object param)
        {
            GurpsSkill gs = (param as GurpsSkill);
            CharSkill cha = Character.CharSkills.FirstOrDefault(p => p.GurpsSkill == gs);
            Context.CharSkills.Remove(cha);
            Character.CharSkills.Remove(cha);

            NotifyPropertyChanged("CharGurpsSkillCollection");
            NotifyPropertyChanged("CharSkillCollection");
        }
    }
}
