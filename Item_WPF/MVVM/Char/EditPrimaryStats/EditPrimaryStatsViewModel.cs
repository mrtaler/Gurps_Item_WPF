using GurpsDb.BaseModel;
using GurpsDb.GurpsModel;
using Item_WPF.addin;

namespace Item_WPF.MVVM.EditPrimaryStats
{
    class EditPrimaryStatsViewModel : ViewModelBase
    {
        public CharacterDb Character { get; set; }
        public ViewModelCommand IncreasePointCommand { get; set; }
        public ViewModelCommand DecreasePointCommand { get; set; }
        public EditPrimaryStatsViewModel() : this(new CharacterDb())
        {
        }

        public EditPrimaryStatsViewModel(CharacterDb character)
        {
            this.Character = character;
            this.IncreasePointCommand = new ViewModelCommand(this.IncreasePoint, true);
            this.DecreasePointCommand = new ViewModelCommand(this.DecreasePoint, true);
            this.PropertyDependencyMap.Add("StrengthPoints", new[] { "Strength", "CharacterPoints", "StrengthCost", "TotalPoint" });

            this.PropertyDependencyMap.Add("DexterityPoints", new[] { "Dexterity", "CharacterPoints", "DexterityCost", "TotalPoint" });
            this.PropertyDependencyMap.Add("IntelligencePoints", new[] { "Intelligence", "CharacterPoints", "IntelligenceCost", "TotalPoint" });
            this.PropertyDependencyMap.Add("HealthPoints", new[] { "Health", "CharacterPoints", "HealthCost", "TotalPoint" });
        }

        #region Strength
        public int Strength => this.Character.Strength;
        public int StrengthCost => this.Character.StrengthCost;
        public int StrengthPoints
        {
            get
            {
                return this.Character.StrengthPoints;
            }

            set
            {
                this.Character.StrengthPoints = value;
                this.NotifyPropertyChanged("StrengthPoints");
            }
        }
        #endregion

        public int Dexterity => this.Character.Dexterity;
        public int DexterityCost => this.Character.DexterityCost;
        public int DexterityPoints
        {
            get
            {
                return this.Character.DexterityPoints;
            }

            set
            {
                this.Character.DexterityPoints = value;
                this.NotifyPropertyChanged("DexterityPoints");
            }
        }

        public int Intelligence => this.Character.Intelligence;
        public int IntelligenceCost => this.Character.IntelligenceCost;
        public int IntelligencePoints
        {
            get
            {
                return this.Character.IntelligencePoints;
            }

            set
            {
                this.Character.IntelligencePoints = value;
                this.NotifyPropertyChanged("IntelligencePoints");
            }
        }

        public int Health => this.Character.Health;
        public int HealthCost => this.Character.HealtCost;
        public int HealthPoints
        {
            get
            {
                return this.Character.HealthPoints;
            }

            set
            {
                this.Character.HealthPoints = value;
                this.NotifyPropertyChanged("HealthPoints");
            }
        }

        public int TotalPoint => this.Character.CharacterPoints;



        private void IncreasePoint(object parameter)
        {
            string param = parameter.ToString();
            switch (param)
            {
                case "StrengthPoints":
                    this.StrengthPoints += 1;
                    break;
                case "DexterityPoints":
                    this.DexterityPoints += 1;
                    break;
                case "IntelligencePoints":
                    this.IntelligencePoints += 1;
                    break;
                case "HealthPoints":
                    this.HealthPoints += 1;
                    break;
            }
        }

        private void DecreasePoint(object parameter)
        {
            string param = parameter.ToString();
            switch (param)
            {
                case "StrengthPoints":
                    this.StrengthPoints -= 1;
                    break;
                case "DexterityPoints":
                    this.DexterityPoints -= 1;
                    break;
                case "IntelligencePoints":
                    this.IntelligencePoints -= 1;
                    break;
                case "HealthPoints":
                    this.HealthPoints -= 1;
                    break;
            }
        }
    }
}
