using Item_WPF.MVVM.ViewModels;
using System.Windows;

namespace Item_WPF.MVVM.View
{
    /// <summary>
    /// Логика взаимодействия для BoxItemView.xaml
    /// </summary>
    public partial class BoxItemView : Window
    {
        public BoxItemViewModel BoxItemContext { get; set; }
        public BoxItemView(object parameter)
        {
            InitializeComponent();
            BoxItemContext = new BoxItemViewModel(parameter);
            DataContext = BoxItemContext;
        }
    }
}
