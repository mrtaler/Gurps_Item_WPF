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
            Avm = new CaliberViewModel();
            DataContext = Avm;
            InitializeComponent();

        }

        private void Closebutton_OnClick(object sender, RoutedEventArgs e)
        {
            Avm.Dispose();
            DialogResult = true;
            Close();
        }

        //private void AmmoView_OnClosed(object sender, EventArgs e)
        //{
        //    Avm.Dispose();
        //}
    }
}
