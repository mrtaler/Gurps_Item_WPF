using System.Windows;
using Microsoft.Windows.Controls.Ribbon;
using Item_WPF.MVVM.ViewModels;


namespace Item_WPF.MVVM.View
{
    /// <summary>
    /// Логика взаимодействия для MainCharacterView.xaml
    /// </summary>
    public partial class MainCharacterView:RibbonWindow
    {
        public MainCharacterView()
        {
            DataContext = new MainCharacterViewModel(this);
        }

        private void QuitClick(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }
}
