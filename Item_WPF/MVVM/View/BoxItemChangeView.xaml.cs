using System.Windows;

using Item_WPF.MVVM.ViewModels;

namespace Item_WPF.MVVM.View
{
    /// <summary>
    /// Логика взаимодействия для BoxItemChangeView.xaml
    /// </summary>
    public partial class BoxItemChangeView : Window
    {
        public BoxItemChangeViewModel DCon { get; set; }
        public BoxItemChangeView(object Param)
        {
            this.InitializeComponent();
            this.DCon = new BoxItemChangeViewModel(Param);
            this.DataContext = this.DCon;
        }
    }
}
