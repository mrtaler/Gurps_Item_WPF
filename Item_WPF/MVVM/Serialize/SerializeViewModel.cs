using System.Linq;
using Item_WPF.addin;
using Microsoft.Win32;
using System.Windows;
using GurpsDb.BaseModel;
using GurpsDb.GurpsModel;
using GurpsDb.XML;

namespace Item_WPF.MVVM.Serialize
{
    public class SerializeViewModel : ViewModelBase
    {
        private ContextGurpsModel context;
        #region Commands

        public ViewModelCommand LoadFileCommand { get; set; }
        public ViewModelCommand SerializeSkillCommand { get; set; }

        #endregion
       public string XmlSkillPatch { get; set; }
        public SerializeViewModel()
        {
            context = new ContextGurpsModel();
            LoadFileCommand = new ViewModelCommand(LoadFile);
            SerializeSkillCommand = new ViewModelCommand(SerializeSkill, false);
        }

        #region Command 

        private void LoadFile(object parameter)
        {
            string str = (parameter as string);
            if (str == "skl")
            {
                string filter = "GCS Skill files (*." + str + ")| *." + str + "| All Files(*.*) | *.* ";
                OpenFileDialog dlg = new OpenFileDialog();
                //  dlg.InitialDirectory = @"E:\Win8\Desktop\gcs-4.0.2-windows-32\Library\Skills";
                dlg.InitialDirectory = @"C:\Users\Taler\Documents\GitHub\Gurps_Item_WPF\Item_WPF\GCS\Library\Skills";
                dlg.Filter = filter;
                dlg.ShowDialog();
                if (dlg.FileName != "")
                {
                    XmlSkillPatch = dlg.FileName;
                    NotifyPropertyChanged("XmlSkillPatch");
                    SerializeSkillCommand.CanExecute = true;
                }
                else
                {
                    XmlSkillPatch = null;
                    NotifyPropertyChanged("XmlSkillPatch");
                    SerializeSkillCommand.CanExecute = true;
                }
            }
        }

        /// <summary>
        /// Skill serialis from string collection
        /// </summary>
        /// <param name="parameter">NameGurpsCaltegoruCollection</param>
        private void SerializeSkill(object parameter)
        {
            int insertInToGurpsSkillCategory = 0;
            // ObservableCollection<GurpsSkillCategory> GSCColl = new ObservableCollection<GurpsSkillCategory>(_context.GurpsSkillCategories);
            //   Category CAt = new Category(XmlSkillPatch, @"C:\Users\Derdan\Dropbox\_Wor\Category.txt");
            Category cAt = new Category(XmlSkillPatch, @"d:\Category.txt");
            foreach (var item in cAt.GurpsCategoryColleList)
            {
                var qe = context.GurpsCategoryDbSet.FirstOrDefault(p => p.NameCategory.Contains(item.NameCategory));
                if (qe == null)
                {
                    //GSCColl.Add(gm);
                    context.GurpsCategoryDbSet.Add(item);
                    insertInToGurpsSkillCategory += 1;
                }
            }
            // 
            context.SaveChanges();
            MessageBox.Show(insertInToGurpsSkillCategory.ToString());
            // SkillSerializeible sklsrib = new SkillSerializeible(XmlSkillPatch, @"C:\Users\Derdan\Dropbox\_Wor\skill.txt");
            SkillSerializeible sklsrib = new SkillSerializeible(XmlSkillPatch, @"d:\skill.txt");

            #endregion
        }
    }
}
