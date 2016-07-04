using Item_WPF.MVVM.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

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
