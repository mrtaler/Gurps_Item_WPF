using System.Windows;

namespace Item_WPF.MVVM.View
{
    /// <summary>
    /// Логика взаимодействия для EditItemWindowView.xaml
    /// </summary>
    public partial class EditItemWindowView : Window
    {
        public EditItemWindowView()
        {
            InitializeComponent();
        }
        private void OkButtonClick(object sender, RoutedEventArgs e)
        {
            DialogResult = true;
            Close();
        }

        private void CancelButtonClick(object sender, RoutedEventArgs e)
        {
            DialogResult = false;
            Close();
        }
    }
}
