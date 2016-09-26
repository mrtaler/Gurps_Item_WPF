using System.Windows;
using Item_WPF.ItemEntityModel;

namespace Item_WPF.MVVM.AddSkilltoChar
{
    /// <summary>
    /// Логика взаимодействия для AddSkilltoCharView.xaml
    /// </summary>
    public partial class AddSkilltoCharView : Window
    {
        public AddSkilltoCharView()
        {
            InitializeComponent();
        }

        public AddSkilltoCharView(CharacterDB Char)
     //       :base()
        {
            DataContext=new AddSkilltoCharViewModel(Char);
            InitializeComponent();
        }
    }
}
