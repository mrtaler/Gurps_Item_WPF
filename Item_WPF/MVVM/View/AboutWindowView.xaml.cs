using System.Windows;

using Item_WPF.MVVM.ViewModels;

namespace Item_WPF.MVVM.View
{
    /// <summary>
    /// Логика взаимодействия для AboutWindowView.xaml
    /// </summary>
    public partial class AboutWindowView : Window
    {
        public AboutWindowView()
        {
            this.DataContext = new AboutViewModel();
            this.InitializeComponent();
        }

        private void CloseButtonClick(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
