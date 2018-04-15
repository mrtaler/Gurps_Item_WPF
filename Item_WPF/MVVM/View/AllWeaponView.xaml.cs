using Item_WPF.MVVM.ViewModels;
using System.Windows;

namespace Item_WPF.MVVM.View
{
    /// <summary>
    /// Логика взаимодействия для AllWeaponView.xaml
    /// </summary>
    public partial class AllWeaponView : Window
    {
        public AllWeaponView()
        {
            AllWeaponViewModel allweaponviewmodel = new AllWeaponViewModel();
            this.DataContext = allweaponviewmodel;
            InitializeComponent();
        }
    }
}
