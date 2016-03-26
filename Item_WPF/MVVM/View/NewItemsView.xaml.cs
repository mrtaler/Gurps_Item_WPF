using Item_WPF.MVVM.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

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
