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
            DataContext = new TextInputViewModel(text);
            InitializeComponent();
        }
        private void OkButtonClick(object sender, RoutedEventArgs e)
        {
            DialogResult = true;
        }

        private void CancelButtonClick(object sender, RoutedEventArgs e)
        {
            DialogResult = false;
        }

    }
}
