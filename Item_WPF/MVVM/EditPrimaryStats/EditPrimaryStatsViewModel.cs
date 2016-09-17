using Item_WPF.addin;

namespace Item_WPF.MVVM.ViewModels
{
    class EditPrimaryStatsViewModel : ViewModelBase
    {
        public ItemEntityModel.CharacterDB Character { get; set; }
        public ViewModelCommand IncreasePointCommand { get; set; }
        public ViewModelCommand DecreasePointCommand { get; set; }
        public EditPrimaryStatsViewModel() : this(new ItemEntityModel.CharacterDB())
        {
        }

        public EditPrimaryStatsViewModel(ItemEntityModel.CharacterDB character)
        {
            Character = character;
            IncreasePointCommand = new ViewModelCommand(IncreasePoint, true);
            DecreasePointCommand = new ViewModelCommand(DecreasePoint, true);
            PropertyDependencyMap.Add("StrengthPoints", new[] { "Strength", "CharacterPoints", "StrengthCost", "TotalPoint" });

            PropertyDependencyMap.Add("DexterityPoints", new[] { "Dexterity", "CharacterPoints", "DexterityCost", "TotalPoint" });
            PropertyDependencyMap.Add("IntelligencePoints", new[] { "Intelligence", "CharacterPoints", "IntelligenceCost", "TotalPoint" });
            PropertyDependencyMap.Add("HealthPoints", new[] { "Health", "CharacterPoints", "HealthCost", "TotalPoint" });
        }
        #region Strength
        public int Strength
        {
            get
            {
                return Character.Strength;
            }
        }
        public int StrengthCost
        {
            get
            {
                return 10 * StrengthPoints;
            }
        }
        public int StrengthPoints
        {
            get
            {
                return Character.StrengthPoints;
            }
            set
            {
                Character.StrengthPoints = value;
                NotifyPropertyChanged("StrengthPoints");
            }
        }
        #endregion

        public int Dexterity
        {
            get { return Character.Dexterity; }
        }
        public int DexterityCost
        {
            get { return 20 * DexterityPoints; }
        }
        public int DexterityPoints
        {
            get
            {
                return Character.DexterityPoints;
            }
            set
            {
                Character.DexterityPoints = value;
                NotifyPropertyChanged("DexterityPoints");
            }
        }
        public int Intelligence
        {
            get { return Character.Intelligence; }
        }
        public int IntelligenceCost
        {
            get { return 20 * IntelligencePoints; }
        }
        public int IntelligencePoints
        {
            get
            {
                return Character.IntelligencePoints;
            }
            set
            {
                Character.IntelligencePoints = value;
                NotifyPropertyChanged("IntelligencePoints");
            }
        }
        public int Health
        {
            get { return Character.Health; }
        }
        public int HealthCost
        {
            get { return 10 * HealthPoints; }
        }
        public int HealthPoints
        {
            get
            {
                return Character.HealthPoints;
            }
            set
            {
                Character.HealthPoints = value;
                NotifyPropertyChanged("HealthPoints");
            }
        }
        public int TotalPoint
        { get { return Character.CharacterPoints; } }
        private void IncreasePoint(object parameter)
        {
            string param = parameter.ToString();
            switch (param)
            {
                case "StrengthPoints":
                    StrengthPoints += 1;
                    break;
                case "DexterityPoints":
                    DexterityPoints += 1;
                    break;
                case "IntelligencePoints":
                    IntelligencePoints += 1;
                    break;
                case "HealthPoints":
                    HealthPoints += 1;
                    break;
            }
        }
        private void DecreasePoint(object parameter)
        {
            string param = parameter.ToString();
            switch (param)
            {
                case "StrengthPoints":
                    StrengthPoints -= 1;
                    break;
                case "DexterityPoints":
                    DexterityPoints -= 1;
                    break;
                case "IntelligencePoints":
                    IntelligencePoints -= 1;
                    break;
                case "HealthPoints":
                    HealthPoints -= 1;
                    break;
            }
        }
    }
}
