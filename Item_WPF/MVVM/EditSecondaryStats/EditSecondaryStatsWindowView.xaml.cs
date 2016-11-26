using System.Windows;

namespace Item_WPF.MVVM.EditSecondaryStats
{
    /// <summary>
    /// Логика взаимодействия для EditSecondaryStatsWindowView.xaml
    /// </summary>
    public partial class EditSecondaryStatsWindowView : Window
    {
        public EditSecondaryStatsWindowView()
        {
            DataContext = new EditSecondaryStatsViewModel();
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
