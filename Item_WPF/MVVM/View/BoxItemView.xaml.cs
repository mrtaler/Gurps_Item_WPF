using System.Windows;

using Item_WPF.MVVM.ViewModels;

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
            this.InitializeComponent();
            this.BoxItemContext = new BoxItemViewModel(parameter);
            this.DataContext = this.BoxItemContext;
        }
    }
}
