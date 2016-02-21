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
using Item_WPF.MVVM.ViewModels;

namespace Item_WPF.MVVM.View
{
    /// <summary>
    /// Логика взаимодействия для AttacmentMountView.xaml
    /// </summary>
    public partial class AttacmentMountView : Window
    {
        public AttacmentMountView()
        {
            InitializeComponent();
        }

        private void Canselbutton_OnClick(object sender, RoutedEventArgs e)
        {
          this.Close(); 
        }

    }
}
