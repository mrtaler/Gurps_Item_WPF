using Item_WPF.addin;


namespace Item_WPF.MVVM.ViewModels
{
    class EditPrimaryStatsViewModel : ViewModelBase
    {
        public ItemEntityModel.CharacterDB Character { get; set; }

        public EditPrimaryStatsViewModel() : this(new ItemEntityModel.CharacterDB())
        {
        }

        public EditPrimaryStatsViewModel(ItemEntityModel.CharacterDB character)
        {
            Character = character;
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
    }
}
