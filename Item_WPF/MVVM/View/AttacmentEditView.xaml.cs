using System;
using System.Windows;

using GurpsDb.GurpsModel;

using Item_WPF.MVVM.ViewModels;

namespace Item_WPF.MVVM.View
{
    using GurpsDb;

    /// <summary>
    /// Логика взаимодействия для AttacmentEditView.xaml
    /// </summary>
    public partial class AttacmentEditView : Window
    {
        private AttacmentEditViewModel _AttacmentEditViewModel;
        public AttacmentEditView(Attachment itSell, ContextGurpsModel context)
        {
            this.InitializeComponent();
            this._AttacmentEditViewModel = new AttacmentEditViewModel(this, itSell, context);
            this.DataContext = this._AttacmentEditViewModel;
        }

        protected override void OnClosed(EventArgs e)
        {
            this._AttacmentEditViewModel.Dispose();
            base.OnClosed(e);
        }

        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
