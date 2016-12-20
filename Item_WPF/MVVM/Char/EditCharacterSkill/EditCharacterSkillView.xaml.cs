using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using GurpsDb.GurpsModel;

namespace Item_WPF.MVVM.Char.EditCharacterSkill
{
    /// <summary>
    /// Логика взаимодействия для EditCharacterSkillView.xaml
    /// </summary>
    public partial class EditCharacterSkillView : Window
    {
        public EditCharacterSkillView(CharSkill param)
        {
            DataContext=new EditCharacterSkillViewModel(param);
            InitializeComponent();
        }
    }
}
