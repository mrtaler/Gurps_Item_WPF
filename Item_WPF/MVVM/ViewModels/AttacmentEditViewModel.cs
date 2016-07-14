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
        public ObservableCollection<AvailableAttachSlot> AttachSlot { get; set; }
        public ObservableCollection<G_AttachClass> AttachClassColl { get; set; }
        public ObservableCollection<G_SubAttachClass> SubAttachClassColl { get; set; }
        public ObservableCollection<Battery> BatteryColl { get; set; }
        public ObservableCollection<LaserColorEf> LaserColorEfColl { get; set; }

        public ObservableCollection<Attachmentmount> AttMount { get; set; }
        public AttacmentEditViewModel(ITEM itemselect)
        {
            _context = new item1Entities();
            ItemLoad = _context.ITEMs.Find(itemselect.uiIndex);
                       
            AttachLoad = ItemLoad.Attachment;
            AttachSlot = new ObservableCollection<AvailableAttachSlot>(_context.AvailableAttachSlots);
            TlCollection = new ObservableCollection<TL>(_context.TLs);
            LccCollection = new ObservableCollection<LC>(_context.LCs);

            

            AttachClassColl = new ObservableCollection<G_AttachClass>(_context.G_AttachClass);
            SubAttachClassColl = new ObservableCollection<G_SubAttachClass>(_context.G_SubAttachClass);

            LaserColorEfColl = new ObservableCollection<LaserColorEf>(_context.LaserColorEfs);

            AttMount = new ObservableCollection<Attachmentmount>(_context.Attachmentmounts);
            BatteryColl = new ObservableCollection<Battery>(_context.Batteries);

            #region Commands
            Save = new DelegateCommand(SaveChanges);
            LoadImage = new DelegateCommand(LoadImageToForm) ;
            DellImage = new DelegateCommand(DellImageFromAll);
            #endregion
        }

        #region Description Command
        private void SaveChanges(object parameter)
        {
            _context.SaveChanges();
        }
        private void LoadImageToForm(object parameter)
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
        private void DellImageFromAll(object parameter)
        {
            ItemLoad.Item_Image = null;
        }
        #endregion

        #region Declaration Command
        public DelegateCommand Save { get; set; }
        public DelegateCommand LoadImage { get; set; }
        public DelegateCommand DellImage { get; set; }
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
