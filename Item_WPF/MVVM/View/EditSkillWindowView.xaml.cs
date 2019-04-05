using System.Windows;

namespace Item_WPF.MVVM.View
{
    /// <summary>
    /// Логика взаимодействия для EditSkillWindowView.xaml
    /// </summary>
    public partial class EditSkillWindowView : Window
    {
        public EditSkillWindowView()
        {
            this.InitializeComponent();
        }

        private void OkButtonClick(object sender, RoutedEventArgs e)
        {
            this.DialogResult = true;
            this.Close();
        }

        private void CancelButtonClick(object sender, RoutedEventArgs e)
        {
            this.DialogResult = false;
            this.Close();
        }
    }
}
