using System.Windows;

namespace Item_WPF.MVVM.View
{
    /// <summary>
    /// Логика взаимодействия для InputBoxView.xaml
    /// </summary>
    public partial class InputBoxView : Window
    {

        public InputBoxView()
        {
            InitializeComponent();


        }

        private void ButtonOk_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
