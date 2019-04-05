using GurpsDb.BaseModel;
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
            this.Character = character;
            this.IncreasePointCommand = new ViewModelCommand(this.IncreasePoint, true);
            this.DecreasePointCommand = new ViewModelCommand(this.DecreasePoint, true);

            this.PropertyDependencyMap.Add("MaxHPPoints", new[] { "HPPoints", "HPPointsCost" });
            this.PropertyDependencyMap.Add("MaxFPPoints", new[] { "FPPoints", "FPPointsCost" });
            this.PropertyDependencyMap.Add("WillpowerPoints", new[] { "Willpower", "WillpowerCost" });
            this.PropertyDependencyMap.Add("PerceptionPoints", new[] { "Perception", "PerceptionCost" });
            this.PropertyDependencyMap.Add("BasicSpeedPoints", new[] { "BasicSpeed", "BasicSpeedCost", "BasicMovePoints" });
            this.PropertyDependencyMap.Add("BasicMovePoints", new[] { "BasicMove", "BasicMoveCost" });
        }

        #region HPPoints
        public int HPPoints => this.Character.MaxHP;
        public int HPPointsCost => this.Character.MaxHPCost;
        public int MaxHPPoints
        {
            get
            {
                return this.Character.MaxHPPoints;
            }

            set
            {
                this.Character.MaxHPPoints = value;
                this.NotifyPropertyChanged("MaxHPPoints");
            }
        }
        #endregion
        #region FPPoints
        public int FPPoints => this.Character.MaxFP;
        public int FPPointsCost => this.Character.MaxFPCost;
        public int MaxFPPoints
        {
            get
            {
                return this.Character.MaxFPPoints;
            }

            set
            {
                this.Character.MaxFPPoints = value;
                this.NotifyPropertyChanged("MaxFPPoints");
            }
        }
        #endregion
        #region Willpower
        public int Willpower => this.Character.Willpower;
        public int WillpowerCost => this.Character.WillpowerCost;
        public int WillpowerPoints
        {
            get
            {
                return this.Character.WillpowerPoints;
            }

            set
            {
                this.Character.WillpowerPoints = value;
                this.NotifyPropertyChanged("WillpowerPoints");
            }
        }
        #endregion
        #region Perception
        public int Perception => this.Character.Perception;
        public int PerceptionCost => this.Character.PerceptionCost;
        public int PerceptionPoints
        {
            get
            {
                return this.Character.PerceptionPoints;
            }

            set
            {
                this.Character.PerceptionPoints = value;
                this.NotifyPropertyChanged("PerceptionPoints");
            }
        }
        #endregion
        #region BasicSpeedPoints
        public decimal BasicSpeed => this.Character.BasicSpeed;
        public float BasicSpeedCost => this.Character.BasicSpeedCost;
        public decimal BasicSpeedPoints
        {
            get
            {
                return this.Character.BasicSpeedPoints;
            }

            set
            {
                this.Character.BasicSpeedPoints = value;
                this.NotifyPropertyChanged("BasicSpeedPoints");
            }
        }
        #endregion
        #region BasicMove
        public float BasicMove => this.Character.BasicMove;
        public float BasicMoveCost => this.Character.BasicMoveCost;
        public int BasicMovePoints
        {
            get
            {
                return this.Character.BasicMovePoints;
            }

            set
            {
                this.Character.BasicMovePoints = value;
                this.NotifyPropertyChanged("BasicMovePoints");
            }
        }
        #endregion

        private void IncreasePoint(object parameter)
        {
            string param = parameter.ToString();
            switch (param)
            {
                case "MaxHPPoints":
                    this.MaxHPPoints += 1;
                    break;
                case "MaxFPPoints":
                    this.MaxFPPoints += 1;
                    break;
                case "WillpowerPoints":
                    this.WillpowerPoints += 1;
                    break;
                case "PerceptionPoints":
                    this.PerceptionPoints += 1;
                    break;
                case "BasicSpeedPoints":
                    this.BasicSpeedPoints += 0.25M;
                    break;
                case "BasicMovePoints":
                    this.BasicMovePoints += 1;
                    break;
            }
        }

        private void DecreasePoint(object parameter)
        {
            string param = parameter.ToString();
            switch (param)
            {
                case "MaxHPPoints":
                    this.MaxHPPoints -= 1;
                    break;
                case "MaxFPPoints":
                    this.MaxFPPoints -= 1;
                    break;
                case "WillpowerPoints":
                    this.WillpowerPoints -= 1;
                    break;
                case "PerceptionPoints":
                    this.PerceptionPoints -= 1;
                    break;
                case "BasicSpeedPoints":
                    this.BasicSpeedPoints -= 0.25M;
                    break;
                case "BasicMovePoints":
                    this.BasicMovePoints -= 1;
                    break;
            }
        }
    }
}
