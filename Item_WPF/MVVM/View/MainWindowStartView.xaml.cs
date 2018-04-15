using Item_WPF.MVVM.ViewModels;
using Microsoft.Windows.Controls.Ribbon;

namespace Item_WPF.MVVM.View
{
    /// <summary>
    /// Логика взаимодействия для MainWindowStartView.xaml
    /// </summary>
    public partial class MainWindowStartView : RibbonWindow
    {
        public MainWindowStartView()
        {
            DataContext = new MainWindowStartViewModel(this);
            InitializeComponent();
        }
    }
}
