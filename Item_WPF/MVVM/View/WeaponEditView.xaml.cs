using System;
using System.Windows;
using System.Windows.Controls;

using GurpsDb;
using GurpsDb.GurpsModel;

using Item_WPF.MVVM.ViewModels;

namespace Item_WPF.MVVM.View
{
    /// <summary>
    /// Логика взаимодействия для WeaponEditView.xaml
    /// </summary>
    public partial class WeaponEditView : Window
    {
        private WeaponEditViewModel _weaponEditView;
        public WeaponEditView(Weapon itSell, ContextGurpsModel context)
        {
            this.InitializeComponent();
            this._weaponEditView = new WeaponEditViewModel(this, itSell, context);
            this.DataContext = this._weaponEditView;
        }

        protected override void OnClosed(EventArgs e)
        {
            // _weaponEditView.Dispose();
            base.OnClosed(e);
        }

        private void CloseButton_Click(object sender, RoutedEventArgs e)
        {
            // _weaponEditView.Dispose();
            this.DialogResult = true;
            this.Close();
        }

        private void ClassOfWeaponTb_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            this.TypeOfClassWeapTb.Items.Refresh();
        }
    }
}
