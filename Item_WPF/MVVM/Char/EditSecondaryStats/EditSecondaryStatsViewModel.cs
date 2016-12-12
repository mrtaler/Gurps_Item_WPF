using GurpsDb.GurpsModel;
using Item_WPF.addin;

namespace Item_WPF.MVVM.EditSecondaryStats
{
    class EditSecondaryStatsViewModel : ViewModelBase
    {
        public CharacterDb Character { get; set; }
        public ViewModelCommand IncreasePointCommand { get; set; }
        public ViewModelCommand DecreasePointCommand { get; set; }
        public EditSecondaryStatsViewModel() : this(new CharacterDb())
        {
        }
        public EditSecondaryStatsViewModel(CharacterDb character)
        {
            Character = character;
            IncreasePointCommand = new ViewModelCommand(IncreasePoint, true);
            DecreasePointCommand = new ViewModelCommand(DecreasePoint, true);


            PropertyDependencyMap.Add("MaxHPPoints", new[] { "HPPoints", "HPPointsCost" });
            PropertyDependencyMap.Add("MaxFPPoints", new[] { "FPPoints", "FPPointsCost" });
            PropertyDependencyMap.Add("WillpowerPoints", new[] { "Willpower", "WillpowerCost" });
            PropertyDependencyMap.Add("PerceptionPoints", new[] { "Perception", "PerceptionCost" });
            PropertyDependencyMap.Add("BasicSpeedPoints", new[] { "BasicSpeed", "BasicSpeedCost", "BasicMovePoints" });
            PropertyDependencyMap.Add("BasicMovePoints", new[] { "BasicMove", "BasicMoveCost" });
        }

        #region HPPoints
        public int HPPoints => Character.MaxHP;
        public int HPPointsCost => Character.MaxHPCost;
        public int MaxHPPoints
        {
            get
            {
                return Character.MaxHPPoints;
            }
            set
            {
                Character.MaxHPPoints = value;
                NotifyPropertyChanged("MaxHPPoints");
            }
        }
        #endregion
        #region FPPoints
        public int FPPoints => Character.MaxFP;
        public int FPPointsCost => Character.MaxFPCost;
        public int MaxFPPoints
        {
            get
            {
                return Character.MaxFPPoints;
            }
            set
            {
                Character.MaxFPPoints = value;
                NotifyPropertyChanged("MaxFPPoints");
            }
        }
        #endregion
        #region Willpower
        public int Willpower => Character.Willpower;
        public int WillpowerCost => Character.WillpowerCost;
        public int WillpowerPoints
        {
            get
            {
                return Character.WillpowerPoints;
            }
            set
            {
                Character.WillpowerPoints = value;
                NotifyPropertyChanged("WillpowerPoints");
            }
        }
        #endregion
        #region Perception
        public int Perception => Character.Perception;
        public int PerceptionCost => Character.PerceptionCost;
        public int PerceptionPoints
        {
            get
            {
                return Character.PerceptionPoints;
            }
            set
            {
                Character.PerceptionPoints = value;
                NotifyPropertyChanged("PerceptionPoints");
            }
        }
        #endregion
        #region BasicSpeedPoints
        public decimal BasicSpeed => Character.BasicSpeed;
        public float BasicSpeedCost => Character.BasicSpeedCost;
        public decimal BasicSpeedPoints
        {
            get
            {
                return Character.BasicSpeedPoints;
            }
            set
            {
                Character.BasicSpeedPoints = value;
                NotifyPropertyChanged("BasicSpeedPoints");
            }
        }
        #endregion
        #region BasicMove
        public float BasicMove => Character.BasicMove;
        public float BasicMoveCost => Character.BasicMoveCost;
        public int BasicMovePoints
        {
            get
            {
                return Character.BasicMovePoints;
            }
            set
            {
                Character.BasicMovePoints = value;
                NotifyPropertyChanged("BasicMovePoints");
            }
        }
        #endregion

        private void IncreasePoint(object parameter)
        {
            string param = parameter.ToString();
            switch (param)
            {
                case "MaxHPPoints":
                    MaxHPPoints += 1;
                    break;
                case "MaxFPPoints":
                    MaxFPPoints += 1;
                    break;
                case "WillpowerPoints":
                    WillpowerPoints += 1;
                    break;
                case "PerceptionPoints":
                    PerceptionPoints += 1;
                    break;
                case "BasicSpeedPoints":
                    BasicSpeedPoints += 0.25M;
                    break;
                case "BasicMovePoints":
                    BasicMovePoints += 1;
                    break;
            }
        }
        private void DecreasePoint(object parameter)
        {
            string param = parameter.ToString();
            switch (param)
            {
                case "MaxHPPoints":
                    MaxHPPoints -= 1;
                    break;
                case "MaxFPPoints":
                    MaxFPPoints -= 1;
                    break;
                case "WillpowerPoints":
                    WillpowerPoints -= 1;
                    break;
                case "PerceptionPoints":
                    PerceptionPoints -= 1;
                    break;
                case "BasicSpeedPoints":
                    BasicSpeedPoints -= 0.25M;
                    break;
                case "BasicMovePoints":
                    BasicMovePoints -= 1;
                    break;
            }
        }
    }
}
