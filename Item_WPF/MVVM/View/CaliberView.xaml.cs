using System.Windows;
using Item_WPF.MVVM.ViewModels;

namespace Item_WPF.MVVM.View
{
    /// <summary>
    /// Логика взаимодействия для AmmoView.xaml
    /// </summary>
    public partial class CaliberView : Window
    {
        public CaliberViewModel Avm { get; set; }
        public CaliberView()
        {
            this.Avm = new CaliberViewModel();
            this.DataContext = this.Avm;
            this.InitializeComponent();

        }

        private void Closebutton_OnClick(object sender, RoutedEventArgs e)
        {
            this.Avm.Dispose();
            this.DialogResult = true;
            this.Close();
        }

        // private void AmmoView_OnClosed(object sender, EventArgs e)
        // {
        // Avm.Dispose();
        // }
    }
}
