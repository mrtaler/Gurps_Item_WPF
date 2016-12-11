using Item_WPF.addin;
using Microsoft.Win32;
using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using GurpsDb.GurpsModel;

namespace Item_WPF.MVVM.ViewModels
{
    class AttacmentEditViewModel : INotifyPropertyChanged, IDisposable
    {
        private ContextGurpsModel _context;
        public Item ItemLoad { get; set; }
        public Attachment AttachLoad { get; set; }
        public ObservableCollection<Tl> TlCollection { get; set; }
        public ObservableCollection<Lc> LccCollection { get; set; }
        public string Qt { get; set; }
        public ObservableCollection<AvailableAttachSlot> AttachSlot { get; set; }
        public ObservableCollection<GAttachClass> AttachClassColl { get; set; }
        public ObservableCollection<GSubAttachClass> SubAttachClassColl { get; set; }
        public ObservableCollection<Battery> BatteryColl { get; set; }
        public ObservableCollection<LaserColorEf> LaserColorEfColl { get; set; }

        public ObservableCollection<Attachmentmount> AttMount { get; set; }
        public AttacmentEditViewModel(Item itemselect)
        {
            _context = new ContextGurpsModel();
            ItemLoad = _context.ItemDbSet.Find(itemselect.UiIndex);

            AttachLoad = ItemLoad.Attachment;
            AttachSlot = new ObservableCollection<AvailableAttachSlot>(_context.AvailableAttachSlotDbSet);
            TlCollection = new ObservableCollection<Tl>(_context.TlDbSet);
            LccCollection = new ObservableCollection<Lc>(_context.LcDbSet);
            AttachClassColl = new ObservableCollection<GAttachClass>(_context.GAttachClassDbSet);
            SubAttachClassColl = new ObservableCollection<GSubAttachClass>(_context.GSubAttachClassDbSet);
            LaserColorEfColl = new ObservableCollection<LaserColorEf>(_context.LaserColorEfDbSet);
            AttMount = new ObservableCollection<Attachmentmount>(_context.AttachmentmountDbSet);
            BatteryColl = new ObservableCollection<Battery>(_context.BatteryDbSet);

            #region Commands
            Save = new ViewModelCommand(SaveChanges);
            LoadImage = new ViewModelCommand(LoadImageToForm);
            DellImage = new ViewModelCommand(DellImageFromAll);
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
                ItemLoad.ItemImage = System.IO.File.ReadAllBytes(dlg.FileName);
            }
        }
        private void DellImageFromAll(object parameter)
        {
            ItemLoad.ItemImage = null;
        }
        #endregion

        #region Declaration Command
        public ViewModelCommand Save { get; set; }
        public ViewModelCommand LoadImage { get; set; }
        public ViewModelCommand DellImage { get; set; }
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
