using Item_WPF.addin;
using Item_WPF.MVVM.Models;

namespace Item_WPF.MVVM.ViewModels
{
    class EditPrimaryStatsViewModel : ViewModelBase
    {
        public CharacterDB Character { get; set; }

        public EditPrimaryStatsViewModel() : this(new CharacterDB())
        {
        }

        public EditPrimaryStatsViewModel(CharacterDB character)
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
