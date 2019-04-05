using System.Windows;

using Item_WPF.MVVM.ViewModels;

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
            this._newItemsViewModel = new NewItemsViewModel();
            this.DataContext = this._newItemsViewModel;
            this.InitializeComponent();
        }

        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            this._newItemsViewModel.Dispose();
            this.Close();
        }
    }
}
