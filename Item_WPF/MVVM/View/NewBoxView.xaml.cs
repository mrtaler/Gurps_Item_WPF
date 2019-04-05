using System.Windows;

using Item_WPF.MVVM.ViewModels;

namespace Item_WPF.MVVM.View
{
    /// <summary>
    /// Логика взаимодействия для NewBoxView.xaml
    /// </summary>
    public partial class NewBoxView : Window
    {
        public NewBoxView()
        {
            this.InitializeComponent();
            this.DataContext = new NewBoxViewModel();
        }
    }
}
