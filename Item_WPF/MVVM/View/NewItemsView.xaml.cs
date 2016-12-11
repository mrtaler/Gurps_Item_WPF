using Item_WPF.MVVM.ViewModels;
using System.Windows;

namespace Item_WPF.MVVM.View
{
    /// <summary>
    /// Логика взаимодействия для NewItemsView.xaml
    /// </summary>
    public partial class NewItemsView : Window
    {
        private NewItemsViewModel _newItemsViewModel;
        public NewItemsView()
        {
            _newItemsViewModel = new NewItemsViewModel();
            DataContext = _newItemsViewModel;
            InitializeComponent();
        }

        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            _newItemsViewModel.Dispose();
            this.Close();
        }
    }
}
