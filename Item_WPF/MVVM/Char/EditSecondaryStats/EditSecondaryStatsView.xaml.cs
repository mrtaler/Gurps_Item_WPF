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
            this.DataContext = new EditSecondaryStatsViewModel();
            this.InitializeComponent();
        }

        private void OkButtonClick(object sender, RoutedEventArgs e)
        {
            this.DialogResult = true;
        }

        private void CancelButtonClick(object sender, RoutedEventArgs e)
        {
            this.DialogResult = false;
        }
    }
}
