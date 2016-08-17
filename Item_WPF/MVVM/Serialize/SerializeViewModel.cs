using Item_WPF.addin;
using Item_WPF.ItemEntityModel;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace Item_WPF.MVVM.Serialize
{
    public class SerializeViewModel : ViewModelBase
    {
      private  ItemEntityModel.item1Entities _context;
        #region Commands
        public ViewModelCommand LoadFileCommand { get; set; }
        public ViewModelCommand SerializeSkillCommand { get; set; }
        #endregion

        public string XMLSkillPatch { get; set; }
        public SerializeViewModel()
        {
            _context = new ItemEntityModel.item1Entities();
            LoadFileCommand = new ViewModelCommand(LoadFile, true);
            SerializeSkillCommand = new ViewModelCommand(SerializeSkill,false);
        }
        #region Command 

        private void LoadFile(object parameter)
        {
            string str = (parameter as string);
            if (str == "skl")
            {
                string filter = "GCS Skill files (*." + str + ")| *." + str + "| All Files(*.*) | *.* ";
                OpenFileDialog dlg = new OpenFileDialog();
                dlg.InitialDirectory = @"E:\Win8\Desktop\gcs-4.0.2-windows-32\Library\Skills";
                dlg.Filter = filter;
                dlg.ShowDialog();
                if (dlg.FileName != "")
                {
                    XMLSkillPatch = dlg.FileName;
                    NotifyPropertyChanged("XMLSkillPatch");
                    SerializeSkillCommand.CanExecute = true;
                }
                else
                {
                    XMLSkillPatch = null;
                    NotifyPropertyChanged("XMLSkillPatch");
                    SerializeSkillCommand.CanExecute = true;
                }
            }
        }
        private void SerializeSkill(object parameter)
        {
            int InsertInToGurpsSkillCategory = 0;
            ObservableCollection<GurpsSkillCategory> GSCColl = new ObservableCollection<GurpsSkillCategory>(_context.GurpsSkillCategories);
           
            //   Category CAt = new Category(XMLSkillPatch, @"C:\Users\Derdan\Dropbox\_Wor\Category.txt");
            Category CAt = new Category(XMLSkillPatch, @"d:\Category.txt");
            foreach (var item in CAt.ResultOrder)
            {
                var qe = _context.GurpsSkillCategories.FirstOrDefault(p => p.NamelCategory.Contains(item));
                if (qe==null)
                {
                    GurpsSkillCategory Gm = new GurpsSkillCategory();

                    Gm.NamelCategory = item;
                    GSCColl.Add(Gm);
                    _context.GurpsSkillCategories.Add(Gm);
                    InsertInToGurpsSkillCategory += 1;
                }
            }
            _context.SaveChanges();
            MessageBox.Show(InsertInToGurpsSkillCategory.ToString());
            
            // SkillSerializeible sklsrib = new SkillSerializeible(XMLSkillPatch, @"C:\Users\Derdan\Dropbox\_Wor\skill.txt");
            SkillSerializeible sklsrib = new SkillSerializeible(XMLSkillPatch, @"d:\skill.txt");

            

        }
        #endregion
    }
}
