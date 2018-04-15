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
            InitializeComponent();
        }
        public AttacmentMountView(object parameter)
        {
            _AttacWiew = new AttacmentMountViewModel((string)parameter);
            DataContext = _AttacWiew;
            InitializeComponent();
        }

        private void Canselbutton_OnClick(object sender, RoutedEventArgs e)
        {
            DialogResult = true;
            this.Close();
        }

    }
}
