using Item_WPF.addin;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Item_WPF.MVVM.Serialize
{
    public class SerializeViewModel : ViewModelBase
    {
        #region Commands
        public ViewModelCommand LoadFileCommand { get; set; }
        public ViewModelCommand SerializeSkillCommand { get; set; }
        #endregion

        public string XMLSkillPatch { get; set; }
        public SerializeViewModel()
        {
            
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
            SkillSerializeible sklsrib = new SkillSerializeible(XMLSkillPatch, @"C:\Users\Derdan\Dropbox\_Wor\skill.txt");
        }
        #endregion
    }
}
