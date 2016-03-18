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
using Item_WPF.addin;
using Item_WPF.MVVM.View;

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

            DataGrid.ColumnWidth = DataGridLength.Auto;

            //DataGridTextColumn textColumn = new DataGridTextColumn();
            //textColumn.Header = "dice";
            //textColumn.IsReadOnly = true;
            //dataGrid.Columns.Add(textColumn);
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            all_ItemsView allItems = new all_ItemsView();
            //allItems.DataContext=all
            allItems.Show();

        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            Combine_weap combine = new Combine_weap();
            combine.Show();

        }

        private void button2_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show(Dice.RollDie(6, 3).ToString());
        }

        private void Char_button_Click(object sender, RoutedEventArgs e)
        {
            character cha = new character();
            cha.Show();
        }

        private void button3_Click(object sender, RoutedEventArgs e)
        {
            AttacmentEditView avView =new AttacmentEditView(1);
            avView.Show();
        }
    }
}
