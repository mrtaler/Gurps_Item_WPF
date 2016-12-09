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
        public GurpsDb.GurpsModel.CharacterDb Character;
        /// <summary>
        /// Context with now work
        /// </summary>
        public GurpsDb.GurpsModel.GurpsModel Context { get; set; }
        /// <summary>
        /// Collection for All Gurps Skill in DB
        /// </summary>
        public ObservableCollection<GurpsDb.GurpsModel.GurpsSkill> AllGurpsSkillCollection { get; set; }
        /// <summary>
        /// COllection from Character Skill 
        /// </summary>
        public ObservableCollection<GurpsDb.GurpsModel.CharSkill> CharSkillCollection =>
            new ObservableCollection<GurpsDb.GurpsModel.CharSkill>(Character.CharSkillCollection);
        /// <summary>
        /// Collection for gurps char skill
        /// </summary>
        public ObservableCollection<GurpsDb.GurpsModel.GurpsSkill> CharGurpsSkillCollection
        {
            get
            {
                return new ObservableCollection<GurpsDb.GurpsModel.GurpsSkill>
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
        public AddSkilltoCharViewModel(GurpsDb.GurpsModel.CharacterDb character, GurpsDb.GurpsModel.GurpsModel context)
        {
            Character = character;
            Context = context;

            // Load GurpsSkills from DB
            AllGurpsSkillCollection = new ObservableCollection<GurpsDb.GurpsModel.GurpsSkill>(Context.GurpsSkill.
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
            GurpsDb.GurpsModel.GurpsSkill skillToWork = (param as GurpsDb.GurpsModel.GurpsSkill);
            GurpsDb.GurpsModel.CharSkill charSkillsToWork = Character.CharSkillCollection.First(p => p.GurpsSkill == skillToWork);

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
            GurpsDb.GurpsModel.GurpsSkill gs = (param as GurpsDb.GurpsModel.GurpsSkill);
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
            if (CharGurpsSkillCollection.FirstOrDefault(p => p.id == gsid) == null)
            {
                GurpsDb.GurpsModel.CharSkill charSkill = new GurpsDb.GurpsModel.CharSkill(AllGurpsSkillCollection.First(p => p.id == gsid));
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
            GurpsDb.GurpsModel.GurpsSkill gs = (param as GurpsDb.GurpsModel.GurpsSkill);
            GurpsDb.GurpsModel.CharSkill cha = Character.CharSkillCollection.FirstOrDefault(p => p.GurpsSkill == gs);
            //Context.GurpsSkill.Remove(cha);
            Character.CharSkillCollection.Remove(cha);

            NotifyPropertyChanged("CharGurpsSkillCollection");
            NotifyPropertyChanged("CharSkillCollection");
        }
    }
}
