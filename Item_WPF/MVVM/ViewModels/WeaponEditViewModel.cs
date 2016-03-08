using Item_WPF.addin;
using Item_WPF.MVVM.View;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using System.Windows.Media.Imaging;

namespace Item_WPF.MVVM.ViewModels
{
    class WeaponEditViewModel : INotifyPropertyChanged, IDisposable
    {

        private item1Entities _context;
        public ObservableCollection<TL> TlCollection { get; set; }
        public ObservableCollection<LC> LccCollection { get; set; }
        public ObservableCollection<WeaponClass> WeaponClasscCollection { get; set; }
        public ObservableCollection<WeaponType> WeaponTypescCollection { get; set; }
        public ObservableCollection<TypeOfDamage> TypeOfDamagesCollection { get; set; }
        public ObservableCollection<AMMO> AmmoscCollection { get; set; }
        public ITEM ItemLoad { get; set; }
        public WEAPON WeaponLoad { get; set; }
        public ObservableCollection<AvailableAttachSlot> avSlot { get; set; }
        
        private ObservableCollection<Attachmentmount> _attMount;
        public ObservableCollection<Attachmentmount> AttMount
        {
            get
            {
                return _attMount;
            }
            set
            {
                if (_attMount != value)
                {
                    _attMount = value;
                    RaisePropertyChanged("AttMount");
                }
            }
        }
        public ObservableCollection<Attachmentmount> AttMountScope { get; set; }

        public ICommand AddMountslot1 { get; set; }


        #region Constructor
        public WeaponEditViewModel(int itemselect)
        {
            _context = new item1Entities();

            ItemLoad = (from z in _context.ITEMs
                        where z.uiIndex == itemselect
                        select z).First();

            var it = _context.ITEMs.First(p => p.uiIndex == itemselect);

            WeaponLoad = (from p in _context.WEAPONs
                          where p.uiIndex == ItemLoad.ubClassIndex
                          select p).First();

            TlCollection = new ObservableCollection<TL>(_context.TLs);
            LccCollection = new ObservableCollection<LC>(_context.LCs);

            WeaponClasscCollection = new ObservableCollection<WeaponClass>(_context.WeaponClasses);
            WeaponTypescCollection = new ObservableCollection<WeaponType>(_context.WeaponTypes);
            TypeOfDamagesCollection = new ObservableCollection<TypeOfDamage>(_context.TypeOfDamages);

            avSlot = new ObservableCollection<AvailableAttachSlot>(_context.AvailableAttachSlots.Where(p => p.rWeaponId == WeaponLoad.uiIndex));
            AttMount = new ObservableCollection<Attachmentmount>(_context.Attachmentmounts);

            AmmoscCollection = new ObservableCollection<AMMO>(_context.AMMOes);

            #region Obcommand
            Save = new ActionCommand(SaveChanges) { IsExecutable = true };
            LoadImage = new ActionCommand(LoadImageToForm) { IsExecutable = true };
            DellImage = new ActionCommand(DellImageFromAll) { IsExecutable = true };

            Refresh = new ActionCommand(Refreshnew) { IsExecutable = true };

            AddMountslot1 = new RelayCommand(AddMountslot1_Execute);
            //AddMountslot1 = new ActionCommand(AddMountslot1_Execute) { IsExecutable = true };
            #endregion

            #region Event
            avSlot.CollectionChanged += new NotifyCollectionChangedEventHandler(_avSlot_CollectionChanged);
            //  AttMount.CollectionChanged += new NotifyCollectionChangedEventHandler(_Avv_att_slot_OK_CollectionChanged);
            #endregion

        }
        #endregion
        #region Command

        private void Refreshnew()
        {
            //_context = new item1Entities();
            //AttMount = new ObservableCollection<Attachmentmount>(_context.Attachmentmounts);
        }

        private void AddMountslot1_Execute(object parameter)
        {
            int param = Convert.ToInt32(parameter);
            //Combine_weap main = this.Owner as Combine_weap;
            AttacmentMountView atmS = new AttacmentMountView();
            atmS.DataContext = new AttacmentMountViewModel(Convert.ToInt32(parameter)); ;
            atmS.ShowDialog();
            //using (item1Entities Conn = new item1Entities())
            //{
            AttMount.Clear();
            AttMount = new ObservableCollection<Attachmentmount>(_context.Attachmentmounts);
            
            //}
            //= new ObservableCollection<Attachmentmount>(context.Attachmentmounts);

        }
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
                //  ImageBitmapSourse = new BitmapImage(new Uri(dlg.FileName));
                ItemLoad.Item_Image = System.IO.File.ReadAllBytes(dlg.FileName);
            }
        }

        private void DellImageFromAll()
        {
            ItemLoad.Item_Image = null;
        }
        #endregion

        public ActionCommand Save { get; set; }
        public ActionCommand AddMountslot { get; set; }
        public ActionCommand LoadImage { get; set; }
        public ActionCommand DellImage { get; set; }
        public ActionCommand Refresh { get; set; }
        
        public event PropertyChangedEventHandler PropertyChanged;
        private void RaisePropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
        public void Dispose()
        {
            _context?.Dispose();
        }
        private void _avSlot_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (AvailableAttachSlot item in e.OldItems)
                {
                    _context.AvailableAttachSlots.Remove(item);
                }
              //  SaveChanges();
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (AvailableAttachSlot item in e.NewItems)
                {
                    _context.AvailableAttachSlots.Add(item);
                }
            }
        }
        private void _Avv_att_slot_OK_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (AvailableAttachSlot item in e.OldItems)
                {
                    _context.AvailableAttachSlots.Remove(item);
                }
                //   SaveChanges();
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (AvailableAttachSlot item in e.NewItems)
                {
                    _context.AvailableAttachSlots.Add(item);
                }
            }
        }
    }
}
//Свойство является частью данных ключа объекта, поэтому его нельзя изменить

//http://losev-al.blogspot.com.by/2013/09/view-mvvm.html