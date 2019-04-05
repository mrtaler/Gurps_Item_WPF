using System.Windows;

using GurpsDb;

using Item_WPF.MVVM.AllCharfromDB;

namespace Item_WPF.MVVM.View
{
    /// <summary>
    /// Логика взаимодействия для AllCharfromDBView.xaml
    /// </summary>
    public partial class AllCharfromDBView : Window
    {
        public AllCharfromDBView(ContextGurpsModel context)
        {
            this.DataContext = new AllCharFromDbViewModel(context);
            this.InitializeComponent();
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = true;
        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = false;
        }
    }
}
