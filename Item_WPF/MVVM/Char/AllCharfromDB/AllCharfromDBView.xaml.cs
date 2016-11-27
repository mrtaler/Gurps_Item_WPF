using Item_WPF.ItemEntityModel;
using Item_WPF.MVVM.AllCharfromDB;
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
    /// Логика взаимодействия для AllCharfromDBView.xaml
    /// </summary>
    public partial class AllCharfromDBView : Window
    {
        public AllCharfromDBView(item1Entities context)
        {
            DataContext = new AllCharFromDbViewModel(context);
            InitializeComponent();
        }
        private void button_Click(object sender, RoutedEventArgs e)
        {
            DialogResult = true;
        }
        private void button1_Click(object sender, RoutedEventArgs e)
        {
            DialogResult = false;
        }
    }
}
