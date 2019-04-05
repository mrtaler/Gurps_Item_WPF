using System;
using System.Windows;
using Item_WPF.MVVM.ViewModels;

namespace Item_WPF.MVVM.View
{
    /// <summary>
    /// Логика взаимодействия для AmmoView.xaml
    /// </summary>
    public partial class AmmoView : Window
    {
        public AmmoViewModel AmmoVM { get; set; }
        public AmmoView()
        {
            this.AmmoVM = new AmmoViewModel();
            this.DataContext = this.AmmoVM;
            this.InitializeComponent();

        }

        private void Closebutton_OnClick(object sender, RoutedEventArgs e)
        {
            this.AmmoVM.Dispose();
            this.DialogResult = true;
            this.Close();
        }

        private void AmmoView_OnClosed(object sender, EventArgs e)
        {
            this.AmmoVM.Dispose();
        }
    }
}
