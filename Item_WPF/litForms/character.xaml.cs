using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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

namespace Item_WPF
{
    /// <summary>
    /// Логика взаимодействия для character.xaml
    /// </summary>
    public partial class character : Window


    {
        private item1Entities context;
        private ObservableCollection<Character> Cha_OK { get; set; }
        public character()
        {
            InitializeComponent();

            context = new item1Entities();
            Cha_OK = new ObservableCollection<Character>(context.Characters);
            dataGrid.ItemsSource = Cha_OK;
        }

        private void New_button_Click(object sender, RoutedEventArgs e)
        {
            new_char nwc =new new_char();
            nwc.Show();
        }
    }
}
