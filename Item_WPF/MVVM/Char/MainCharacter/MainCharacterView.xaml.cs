using System.Windows;
using Item_WPF.MVVM.Char.MainCharacter;
using Microsoft.Windows.Controls.Ribbon;


namespace Item_WPF.MVVM.View
{
    /// <summary>
    /// Логика взаимодействия для MainCharacterView.xaml
    /// </summary>
    public partial class MainCharacterView : RibbonWindow
    {
        public MainCharacterView()
        {
            DataContext = new MainCharacterViewModel(this);
            InitializeComponent();
        }

        private void QuitClick(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }
}
