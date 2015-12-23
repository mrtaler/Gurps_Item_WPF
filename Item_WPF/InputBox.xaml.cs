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
    /// Логика взаимодействия для InputBox.xaml
    /// </summary>
    public partial class InputBox : Window
    {
        public InputBox()
        {
            InitializeComponent();
        }
        public InputBox(string Title, string PromtText)
        {
            InitializeComponent();
            label01.Content = Title;
            textBox.Text = PromtText;
        }

        private void buttonOK_Click(object sender, RoutedEventArgs e)
        {
            datachange.Pass = textBox.Text;
            this.Close();
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            datachange.Pass ="ZERO";
            this.Close();
        }
    }
}
