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
            this.InitializeComponent();
            this.DataContext = new AllGurpsSkillViewModel();
        }
    }
}
