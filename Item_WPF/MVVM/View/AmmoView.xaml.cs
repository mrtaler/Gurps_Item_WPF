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
            AmmoVM = new AmmoViewModel();
            DataContext = AmmoVM;
            InitializeComponent();

        }

        private void Closebutton_OnClick(object sender, RoutedEventArgs e)
        {
            AmmoVM.Dispose();
            DialogResult = true;
            this.Close();
        }

        private void AmmoView_OnClosed(object sender, EventArgs e)
        {
            AmmoVM.Dispose();
        }
    }
}
