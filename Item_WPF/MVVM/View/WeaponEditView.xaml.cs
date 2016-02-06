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
    /// Логика взаимодействия для WeaponEditView.xaml
    /// </summary>
    public partial class WeaponEditView : Window
    {
        public WeaponEditView(int itSell)
        {
            InitializeComponent();
            DataContext= new WeaponEditViewModel(itSell);
        }

        private void CloseButton_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void ClassOfWeaponTb_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            TypeOfClassWeapTb.Items.Refresh();
        }
    }
}
