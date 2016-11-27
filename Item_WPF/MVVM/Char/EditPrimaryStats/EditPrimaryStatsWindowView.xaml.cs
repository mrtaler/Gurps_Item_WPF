using System.Windows;

namespace Item_WPF.MVVM.EditPrimaryStats
{
    /// <summary>
    /// Логика взаимодействия для EditPrimaryStatsWindowView.xaml
    /// </summary>
    public partial class EditPrimaryStatsWindowView : Window
    {
        public EditPrimaryStatsWindowView()
        {
            DataContext = new EditPrimaryStatsViewModel();
            InitializeComponent();
        }

        private void OkButtonClick(object sender, RoutedEventArgs e)
        {
            DialogResult = true;
        }

        private void CancelButtonClick(object sender, RoutedEventArgs e)
        {
            DialogResult = false;
        }
    }
}
