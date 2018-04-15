using Item_WPF.MVVM.AllCharfromDB;
using System.Windows;

namespace Item_WPF.MVVM.View
{
    /// <summary>
    /// Логика взаимодействия для AllCharfromDBView.xaml
    /// </summary>
    public partial class AllCharfromDBView : Window
    {
        public AllCharfromDBView(GurpsDb.GurpsModel.ContextGurpsModel context)
        {
            DataContext = new AllCharFromDbViewModel(context);
            InitializeComponent();
        }
        private void button_Click(object sender, RoutedEventArgs e)
        {
            DialogResult = true;
        }
        private void button1_Click(object sender, RoutedEventArgs e)
        {
            DialogResult = false;
        }
    }
}
