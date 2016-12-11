using Item_WPF.MVVM.ViewModels;
using System;
using System.Windows;
using GurpsDb.GurpsModel;

namespace Item_WPF.MVVM.View
{
    /// <summary>
    /// Логика взаимодействия для AttacmentEditView.xaml
    /// </summary>
    public partial class AttacmentEditView : Window
    {
        private AttacmentEditViewModel _AttacmentEditViewModel;
        public AttacmentEditView(Item itSell)
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
