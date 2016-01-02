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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Item_WPF
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            dataGrid.ColumnWidth = DataGridLength.Auto;

            //DataGridTextColumn textColumn = new DataGridTextColumn();
            //textColumn.Header = "dice";
            //textColumn.IsReadOnly = true;
            //dataGrid.Columns.Add(textColumn);
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            all_Items allItems = new all_Items();
            allItems.Show();
        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            Combine_weap combine = new Combine_weap();
            combine.Show();

        }

        private void button2_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show(Dice.rollDie(6, 3).ToString());
        }
    }
}
