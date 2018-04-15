using System.Windows;

namespace Item_WPF.MVVM.GurpsSkill_m
{
    /// <summary>
    /// Логика взаимодействия для AllGurpsSkillView.xaml
    /// </summary>
    public partial class AllGurpsSkillView : Window
    {
        public AllGurpsSkillView()
        {
            InitializeComponent();
            DataContext = new AllGurpsSkillViewModel();
        }
    }
}
