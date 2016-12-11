using Item_WPF.MVVM.ViewModels;
using System.Windows;

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
            InitializeComponent();
            DCon = new BoxItemChangeViewModel(Param);
            this.DataContext = DCon;
        }
    }
}
