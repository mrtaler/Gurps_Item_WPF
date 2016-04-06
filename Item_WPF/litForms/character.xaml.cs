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
        private item1Entities _context;
        private ObservableCollection<CharacterDB> ChaOk { get; set; }
        public character()
        {
            InitializeComponent();

            _context = new item1Entities();
            ChaOk = new ObservableCollection<CharacterDB>(_context.CharacterDBs);
            DataGrid.ItemsSource = ChaOk;
        }

        private void New_button_Click(object sender, RoutedEventArgs e)
        {
            NewChar nwc =new NewChar();
            nwc.Show();
        }
    }
}
