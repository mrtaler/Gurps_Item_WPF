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

namespace Item_WPF
{
    /// <summary>
    /// Логика взаимодействия для new_char.xaml
    /// </summary>
    /// 
    public partial class new_char : Window
    {
        private item1Entities context;
        private Character cha { get; set; }
        public new_char()
        {
            InitializeComponent();
            context = new item1Entities();
            cha = new Character();
            main1_grid.DataContext = cha;
        }

        private void Save_button_Click(object sender, RoutedEventArgs e)
        {
            context.Characters.Add(cha);
            context.SaveChanges();
        }
    }
}
