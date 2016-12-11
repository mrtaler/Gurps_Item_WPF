using Item_WPF.MVVM.ViewModels;
using System.Windows;

namespace Item_WPF.MVVM.View
{
    /// <summary>
    /// Логика взаимодействия для NewBoxView.xaml
    /// </summary>
    public partial class NewBoxView : Window
    {
        public NewBoxView()
        {
            InitializeComponent();
            DataContext = new NewBoxViewModel();
        }
    }
}
