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
    /// Логика взаимодействия для AttacmentEditView.xaml
    /// </summary>
    public partial class AttacmentEditView : Window
    {
        private AttacmentEditViewModel _AttacmentEditViewModel;
        public AttacmentEditView(int itSell)
        {
            InitializeComponent();
            _AttacmentEditViewModel = new AttacmentEditViewModel(itSell);
            DataContext = _AttacmentEditViewModel;
        }
        protected override void OnClosed(EventArgs e)
        {
            _AttacmentEditViewModel.Dispose();
            base.OnClosed(e);
        }

        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
