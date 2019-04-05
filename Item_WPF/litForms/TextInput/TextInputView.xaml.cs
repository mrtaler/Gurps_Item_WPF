using System.Windows;

namespace Item_WPF.litForms.TextInput
{
    /// <summary>
    /// Логика взаимодействия для TextInput.xaml
    /// </summary>
    public partial class TextInputView : Window
    {
        public TextInputView(string text)
        {
            this.DataContext = new TextInputViewModel(text);
            this.InitializeComponent();
        }

        private void OkButtonClick(object sender, RoutedEventArgs e)
        {
            this.DialogResult = true;
        }

        private void CancelButtonClick(object sender, RoutedEventArgs e)
        {
            this.DialogResult = false;
        }

    }
}
