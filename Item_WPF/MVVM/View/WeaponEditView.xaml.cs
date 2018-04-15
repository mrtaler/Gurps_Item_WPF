using System;
using System.Windows;
using System.Windows.Controls;
using Item_WPF.MVVM.ViewModels;
using GurpsDb.GurpsModel;

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
            InitializeComponent();
            _weaponEditView = new WeaponEditViewModel(this, itSell, context);
            DataContext = _weaponEditView;
        }
        protected override void OnClosed(EventArgs e)
        {
            // _weaponEditView.Dispose();
            base.OnClosed(e);
        }
        private void CloseButton_Click(object sender, RoutedEventArgs e)
        {
            //_weaponEditView.Dispose();
            DialogResult = true;
            this.Close();
        }

        private void ClassOfWeaponTb_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            TypeOfClassWeapTb.Items.Refresh();
        }
    }
}
