using System;
using System.Collections.ObjectModel;
using System.ComponentModel;

using GurpsDb;
using GurpsDb.GurpsModel;

using Item_WPF.addin;

using Microsoft.Win32;

namespace Item_WPF.MVVM.ViewModels
{
    using System.Data.Entity.Migrations;
    using System.Windows;

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

        public ObservableCollection<AttachmentMount> AttMount { get; set; }
        public AttacmentEditViewModel(Window owner, Attachment itemselect, ContextGurpsModel context)
        {
            this._context = context;
            this.ItemLoad = itemselect;
            this.AttachLoad = itemselect;

            this.AttachSlot = new ObservableCollection<AvailableAttachSlot>(this._context.AvailableAttachSlotDbSet);
            this.TlCollection = new ObservableCollection<Tl>(this._context.TlDbSet);
            this.LccCollection = new ObservableCollection<Lc>(this._context.LcDbSet);
            this.AttachClassColl = new ObservableCollection<GAttachClass>(this._context.GAttachClassDbSet);
            this.SubAttachClassColl = new ObservableCollection<GSubAttachClass>(this._context.GSubAttachClassDbSet);
            this.LaserColorEfColl = new ObservableCollection<LaserColorEf>(this._context.LaserColorEfDbSet);
            this.AttMount = new ObservableCollection<AttachmentMount>(this._context.AttachmentMountDbSet);
            this.BatteryColl = new ObservableCollection<Battery>(this._context.BatteryDbSet);

            this.Save = new ViewModelCommand(this.SaveChanges);
            this.LoadImage = new ViewModelCommand(this.LoadImageToForm);
            this.DellImage = new ViewModelCommand(this.DellImageFromAll);
            
        }

        #region Description Command
        private void SaveChanges(object parameter)
        {
            this.AttachLoad.WorksOnBat = "false";
           
            this._context.AttachmentDbSet.AddOrUpdate(this.AttachLoad);

            this._context.SaveChanges();
        }

        private void LoadImageToForm(object parameter)
        {
            OpenFileDialog dlg = new OpenFileDialog();
            dlg.InitialDirectory = "C:\\Users\\Derdan\\Dropbox\\Weapon";
            dlg.Filter = "Image files (*.jpg,*.png,*.bmp,*.gif)|*.jpg;*.png;*.bmp,*.gif|All Files (*.*)|*.*";
            dlg.ShowDialog();
            if (!string.Equals(dlg.FileName, string.Empty, StringComparison.InvariantCulture))
            {
                this.ItemLoad.ItemImage = System.IO.File.ReadAllBytes(dlg.FileName);
            }
        }

        private void DellImageFromAll(object parameter)
        {
            this.ItemLoad.ItemImage = null;
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
            this._context?.Dispose();
        }

        public event PropertyChangedEventHandler PropertyChanged;
        private void RaisePropertyChanged(string propertyName)
        {
            this.PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        #endregion
    }
}
