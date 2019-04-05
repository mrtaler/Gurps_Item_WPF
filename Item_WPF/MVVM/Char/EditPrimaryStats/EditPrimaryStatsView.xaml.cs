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
            this.DataContext = new EditPrimaryStatsViewModel();
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
