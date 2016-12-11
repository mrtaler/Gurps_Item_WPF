using Item_WPF.MVVM.ViewModels;
using System.Windows;

namespace Item_WPF.MVVM.View
{
    /// <summary>
    /// Логика взаимодействия для all_ItemsView.xaml
    /// </summary>
    public partial class all_ItemsView : Window
    {
        public all_ItemsViewModel _allItemsViewModel;
        public all_ItemsView(object parametr)
        {
            _allItemsViewModel = new all_ItemsViewModel(this, parametr);
            DataContext = _allItemsViewModel;
            InitializeComponent();
        }

        private void Close_Click(object sender, RoutedEventArgs e)
        {
            DialogResult = true;
            this.Close();
        }
    }
}
