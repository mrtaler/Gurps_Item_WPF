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
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            all_ItemsView allItems = new all_ItemsView();
            allItems.Show();

        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            CombineWeapView combine = new CombineWeapView();
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
            item1Entities _context = new item1Entities();
            AttacmentEditView avView =new AttacmentEditView(_context.ITEMs.First(p=>p.uiIndex==1));
            avView.Show();
        }
    }
}
