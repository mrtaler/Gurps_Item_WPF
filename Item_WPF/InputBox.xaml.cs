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
using Item_WPF.addin;

namespace Item_WPF
{
    /// <summary>
    /// Логика взаимодействия для InputBox.xaml
    /// </summary>
    public partial class InputBox : Window
    {
        public InputBox()
        {
            InitializeComponent();
        }
        public InputBox(string title, string promtText)
        {
            InitializeComponent();
            Label01.Content = title;
            TextBox.Text = promtText;
        }

        private void buttonOK_Click(object sender, RoutedEventArgs e)
        {
            Datachange.Pass = TextBox.Text;
            this.Close();
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            Datachange.Pass ="ZERO";
            this.Close();
        }
    }
}
