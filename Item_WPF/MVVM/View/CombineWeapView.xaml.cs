using Item_WPF.MVVM.ViewModels;
using System.Windows;

namespace Item_WPF.MVVM.View
{
    /// <summary>
    /// Логика взаимодействия для CombineWeapView.xaml
    /// </summary>
    public partial class CombineWeapView : Window
    {
        private CombineWeapViewModel _CombineWeapViewModel;
        public CombineWeapView()
        {
            _CombineWeapViewModel = new CombineWeapViewModel();
            DataContext = _CombineWeapViewModel;
            InitializeComponent();
        }
    }
}
