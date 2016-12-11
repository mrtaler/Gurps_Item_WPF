using System;
using System.Collections.ObjectModel;
using System.Linq;
using GurpsDb.GurpsModel;
using Item_WPF.addin;

namespace Item_WPF.MVVM.Char.AddSkilltoChar
{
    public class AddSkilltoCharViewModel : ViewModelBase
    {
        /// <summary>
        /// Character With now work
        /// </summary>
        public CharacterDb Character;
        /// <summary>
        /// Context with now work
        /// </summary>
        public ContextGurpsModel Context { get; set; }
        /// <summary>
        /// Collection for All Gurps Skill in DB
        /// </summary>
        public ObservableCollection<GurpsSkill> AllGurpsSkillCollection { get; set; }
        /// <summary>
        /// COllection from Character Skill 
        /// </summary>
        public ObservableCollection<CharSkill> CharSkillCollection =>
            new ObservableCollection<CharSkill>(Character.CharSkillCollection);
        /// <summary>
        /// Collection for gurps char skill
        /// </summary>
        public ObservableCollection<GurpsSkill> CharGurpsSkillCollection
        {
            get
            {
                return new ObservableCollection<GurpsSkill>
                    (Character.CharSkillCollection.Select(p => p.GurpsSkill));
            }
        }
        #region Command
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
        #endregion
        /// <summary>
        /// Constructor With param
        /// </summary>
        /// <param name="character">Character who now worked</param>
        /// <param name="context">now Context</param>
        public AddSkilltoCharViewModel(CharacterDb character, ContextGurpsModel context)
        {
            Character = character;
            Context = context;

            // Load GurpsSkills from DB
            AllGurpsSkillCollection = new ObservableCollection<GurpsSkill>(Context.GurpsSkillDbSet.
                OrderBy(p => p.TypeSkTh).
                ThenBy(p => p.NameSkill)
                );


            //  GurpsSkill nf=new GurpsSkill();
            //   nf.CharSkills
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
            CharSkill charSkillsToWork = Character.CharSkillCollection.First(p => p.GurpsSkill == skillToWork);

            charSkillsToWork.PointOfSkill++;/*.IncreasePoint();*/

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
            var cha = Character.CharSkillCollection.First(p => p.GurpsSkill == gs);

            cha.PointOfSkill--; /*DecreasePoint();*/
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
            if (CharGurpsSkillCollection.FirstOrDefault(p => p.Id == gsid) == null)
            {
                CharSkill charSkill = new CharSkill(AllGurpsSkillCollection.First(p => p.Id == gsid));
                Character.CharSkillCollection.Add(charSkill);
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
            CharSkill cha = Character.CharSkillCollection.FirstOrDefault(p => p.GurpsSkill == gs);
            //Context.GurpsSkill.Remove(cha);
            Character.CharSkillCollection.Remove(cha);

            NotifyPropertyChanged("CharGurpsSkillCollection");
            NotifyPropertyChanged("CharSkillCollection");
        }
    }
}
