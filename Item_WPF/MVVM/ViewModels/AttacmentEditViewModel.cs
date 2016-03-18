using Item_WPF.addin;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Item_WPF.MVVM.ViewModels
{
    class AttacmentEditViewModel : INotifyPropertyChanged, IDisposable
    {
        private item1Entities _context;
        public ITEM ItemLoad { get; set; }
        public Attachment AttachLoad { get; set; }
        public ObservableCollection<TL> TlCollection { get; set; }
        public ObservableCollection<LC> LccCollection { get; set; }
        public string QT { get; set; }
        public ObservableCollection<G_AttachClass> AttachClassColl { get; set; }
        public ObservableCollection<G_SubAttachClass> SubAttachClassColl { get; set; }
        public ObservableCollection<Battery> BatteryColl { get; set; }
        public ObservableCollection<laserColorEf> LaserColorEfColl { get; set; }

        public ObservableCollection<Attachmentmount> AttMount { get; set; }
        public AttacmentEditViewModel(int itemselect)
        {
            _context = new item1Entities();
            ItemLoad = _context.ITEMs.First(p => p.uiIndex == itemselect);
            AttachLoad = _context.Attachments.First(p => p.uiIndex == ItemLoad.ubClassIndex);

            TlCollection = new ObservableCollection<TL>(_context.TLs);
            LccCollection = new ObservableCollection<LC>(_context.LCs);

            AttachClassColl = new ObservableCollection<G_AttachClass>(_context.G_AttachClass);
            SubAttachClassColl = new ObservableCollection<G_SubAttachClass>(_context.G_SubAttachClass);

            LaserColorEfColl = new ObservableCollection<laserColorEf>(_context.laserColorEfs);

            AttMount = new ObservableCollection<Attachmentmount>(_context.Attachmentmounts);
            BatteryColl = new ObservableCollection<Battery>(_context.Batteries);

            #region Commands
            Save = new ActionCommand(SaveChanges) { IsExecutable = true };
            LoadImage = new ActionCommand(LoadImageToForm) { IsExecutable = true };
            DellImage = new ActionCommand(DellImageFromAll) { IsExecutable = true };
            #endregion
        }

        #region Description Command
        private void SaveChanges()
        {
            _context.SaveChanges();
        }
        private void LoadImageToForm()
        {
            OpenFileDialog dlg = new OpenFileDialog();
            dlg.InitialDirectory = "C:\\Users\\Derdan\\Dropbox\\Weapon";
            dlg.Filter = "Image files (*.jpg,*.png,*.bmp,*.gif)|*.jpg;*.png;*.bmp,*.gif|All Files (*.*)|*.*";
            dlg.ShowDialog();
            if (dlg.FileName != "")
            {
                ItemLoad.Item_Image = System.IO.File.ReadAllBytes(dlg.FileName);
            }
        }
        private void DellImageFromAll()
        {
            ItemLoad.Item_Image = null;
        }
        #endregion

        #region Declaration Command
        public ActionCommand Save { get; set; }
        public ActionCommand LoadImage { get; set; }
        public ActionCommand DellImage { get; set; }
        #endregion

        #region Реализация интерфейса
        public void Dispose()
        {
            _context?.Dispose();
        }
        public event PropertyChangedEventHandler PropertyChanged;
        private void RaisePropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
        #endregion
    }
}
