using System.Windows;
using Item_WPF.MVVM.ViewModels;

namespace Item_WPF.MVVM.View
{
    /// <summary>
    /// Логика взаимодействия для DamageTypeView.xaml
    /// </summary>
    public partial class DamageTypeView : Window
    {
        public DamageTypeView()
        {
            this.InitializeComponent();
            this.DataContext = new DamageTypeViewModel();
        }

        private void Close_button_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
