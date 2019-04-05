using System.Windows;

using Item_WPF.MVVM.ViewModels;

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
            this._CombineWeapViewModel = new CombineWeapViewModel();
            this.DataContext = this._CombineWeapViewModel;
            this.InitializeComponent();
        }
    }
}
