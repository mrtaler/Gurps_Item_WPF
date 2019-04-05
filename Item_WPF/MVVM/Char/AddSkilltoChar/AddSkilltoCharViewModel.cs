using System;
using System.Collections.ObjectModel;
using System.Linq;

using GurpsDb;
using GurpsDb.BaseModel;
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
        public ObservableCollection<CharSkill> CharSkillCollection
        {
            get
            {
                return new ObservableCollection<CharSkill>(this.Character.CharSkillCollection);
            }
        }

        /// <summary>
        /// Collection for gurps char skill
        /// </summary>
        public ObservableCollection<GurpsSkill> CharGurpsSkillCollection
        {
            get
            {
                return new ObservableCollection<GurpsSkill>
                    (this.Character.CharSkillCollection.Select(p => p.GurpsSkill));
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
            this.Character = character;
            this.Context = context;

            // Load GurpsSkills from DB
            this.AllGurpsSkillCollection = new ObservableCollection<GurpsSkill>(
                this.Context.GurpsSkillDbSet.
                OrderBy(p => p.TypeSkTh).
                ThenBy(p => p.NameSkill)
                );


            // GurpsSkill nf=new GurpsSkill();
            // nf.CharSkills
            

            this.AddSkillCommand = new ViewModelCommand(this.AddSkill);
            this.RemSkillCommand = new ViewModelCommand(this.RemSkill);
            this.SkillPointIncreaseCommand = new ViewModelCommand(this.SkillPointIncrease);
            this.SkillPointDecreaseCommand = new ViewModelCommand(this.SkillPointDecrease);
            
        }

        /// <summary>
        /// Increase Skill point in char
        /// </summary>
        /// <param name="param">GurpsSkill as object</param>
        private void SkillPointIncrease(object param)
        {
            GurpsSkill skillToWork = (param as GurpsSkill);
            CharSkill charSkillsToWork = this.Character.CharSkillCollection.First(p => p.GurpsSkill == skillToWork);

            charSkillsToWork.PointOfSkill++;/*.IncreasePoint();*/

            this.NotifyPropertyChanged("CharGurpsSkillCollection");
            this.NotifyPropertyChanged("CharSkillCollection");
        }

        /// <summary>
        /// Decrease Skill point in char
        /// </summary>
        /// <param name="param">GurpsSkill as object</param>
        private void SkillPointDecrease(object param)
        {
            GurpsSkill gs = (param as GurpsSkill);
            var cha = this.Character.CharSkillCollection.First(p => p.GurpsSkill == gs);

            cha.PointOfSkill--; /*DecreasePoint();*/
            this.NotifyPropertyChanged("CharGurpsSkillCollection");
            this.NotifyPropertyChanged("CharSkillCollection");
        }

        /// <summary>
        /// Add Skill for Character.CharSkills
        /// </summary>
        /// <param name="param">id selected skill</param>
        private void AddSkill(object param)
        {
            int gsid = Convert.ToInt32(param);
            if (this.CharGurpsSkillCollection.FirstOrDefault(p => p.Id == gsid) == null)
            {
                var cha = this.Character;

                // if (Character.Id > 0)
                // {
                CharSkill charSkill = new CharSkill(
                    this.Character,
                    this.AllGurpsSkillCollection.First(p => p.Id == gsid));
                this.Character.CharSkillCollection.Add(charSkill);

                // }
                // else
                // {
                // CharSkill charSkill = new CharSkill(Character, AllGurpsSkillCollection.First(p => p.Id == gsid));
                // Character.CharSkillCollection.Add(charSkill);
                // }
                this.NotifyPropertyChanged("CharGurpsSkillCollection");
                this.NotifyPropertyChanged("CharSkillCollection");
            }
        }

        /// <summary>
        /// Remove Skill from Char
        /// </summary>
        /// <param name="param"></param>
        private void RemSkill(object param)
        {
            GurpsSkill gs = (param as GurpsSkill);
            CharSkill cha = this.Character.CharSkillCollection.FirstOrDefault(p => p.GurpsSkill == gs);

            // Context.GurpsSkill.Remove(cha);
            this.Character.CharSkillCollection.Remove(cha);

            this.NotifyPropertyChanged("CharGurpsSkillCollection");
            this.NotifyPropertyChanged("CharSkillCollection");
        }
    }
}
