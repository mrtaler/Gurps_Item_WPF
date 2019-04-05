using System.Windows;
using Item_WPF.MVVM.ViewModels;

namespace Item_WPF.MVVM.View
{
    /// <summary>
    /// Логика взаимодействия для AttacmentMountView.xaml
    /// </summary>
    public partial class AttacmentMountView : Window
    {
        public AttacmentMountViewModel _AttacWiew { get; set; }
        public AttacmentMountView()
        {
            this.InitializeComponent();
        }

        public AttacmentMountView(object parameter)
        {
            this._AttacWiew = new AttacmentMountViewModel((string)parameter);
            this.DataContext = this._AttacWiew;
            this.InitializeComponent();
        }

        private void Canselbutton_OnClick(object sender, RoutedEventArgs e)
        {
            this.DialogResult = true;
            this.Close();
        }

    }
}
