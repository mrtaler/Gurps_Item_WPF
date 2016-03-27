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
        public ObservableCollection<WeaponDamage> WeaponDamageColl { get; set; }
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

        #region Constructor
        public WeaponEditViewModel(ITEM itemselect)
        {
            _context = new item1Entities();
            ItemLoad = itemselect;
            WeaponLoad = ItemLoad.WEAPON;
                       
            TlCollection = new ObservableCollection<TL>(_context.TLs);
            LccCollection = new ObservableCollection<LC>(_context.LCs);

            WeaponClasscCollection = new ObservableCollection<WeaponClass>(_context.WeaponClasses);
            WeaponTypescCollection = new ObservableCollection<WeaponType>(_context.WeaponTypes);
            TypeOfDamagesCollection = new ObservableCollection<TypeOfDamage>(_context.TypeOfDamages);


            WeaponDamageColl = new ObservableCollection<WeaponDamage>(_context.WeaponDamages.Where((p => p.idWeapon == WeaponLoad.uiIndex)));       
           // WeaponDamageColl = new ObservableCollection<WeaponDamage>(WeaponLoad.WeaponDamages.Where((p => p.idWeapon == WeaponLoad.uiIndex)));

            avSlot = new ObservableCollection<AvailableAttachSlot>(_context.AvailableAttachSlots.Where(p => p.rWeaponId == WeaponLoad.uiIndex));
            AttMount = new ObservableCollection<Attachmentmount>(_context.Attachmentmounts);

            AmmoscCollection = new ObservableCollection<AMMO>(_context.AMMOes);

            #region Obcommand
            Save = new ActionCommand(SaveChanges) { IsExecutable = true };
            LoadImage = new ActionCommand(LoadImageToForm) { IsExecutable = true };
            DellImage = new ActionCommand(DellImageFromAll) { IsExecutable = true };

            CExtendDamage = new RelayCommand(ExtendDamage);

            AddMountslot1 = new RelayCommand(AddMountslot1_Execute);
            CheckThreeCheckBox = new RelayCommand(CheckThreeCheckBox_Execute);

            //AddMountslot1 = new ActionCommand(AddMountslot1_Execute) { IsExecutable = true };
            #endregion

            #region Event
            avSlot.CollectionChanged += new NotifyCollectionChangedEventHandler(_avSlot_CollectionChanged);
            WeaponDamageColl.CollectionChanged += new NotifyCollectionChangedEventHandler(_WeaponDamageColl_CollectionChanged);
            //  AttMount.CollectionChanged += new NotifyCollectionChangedEventHandler(_Avv_att_slot_OK_CollectionChanged);
            #endregion

        }
        #endregion
        #region Command
        #region Command ExtendDamage
        public ICommand CExtendDamage { get; set; }
        private void ExtendDamage(object param)
        {

            //if (!(Convert.ToBoolean(param)))
            //{

            //   WeaponDamageColl.FirstOrDefault(p => p.WeaponAttackType.name.Contains("Primary")).idTypeOfDamage1 = "";

            WeaponDamageColl.FirstOrDefault(p => p.WeaponAttackType.name=="Primary").idTypeOfDamage2 =null;

            WeaponDamageColl.FirstOrDefault(p => p.WeaponAttackType.name=="Primary").TypeOfDamage1 = null;

            WeaponDamageColl.FirstOrDefault(p => p.WeaponAttackType.name=="Primary").TypeOfDamage2 = null;            

            //}
        }
        #endregion

        private void CheckThreeCheckBox_Execute(object parameter)
        {
            bool Param = (bool)parameter;
        }

        private void AddMountslot1_Execute(object parameter)
        {
            int param = Convert.ToInt32(parameter);
            AttacmentMountView atmS = new AttacmentMountView();
            atmS.DataContext = new AttacmentMountViewModel(Convert.ToInt32(parameter)); ;
            atmS.ShowDialog();
            AttMount = new ObservableCollection<Attachmentmount>(_context.Attachmentmounts);
        }
        private void SaveChanges()
        {
            var Nwe = (from p in _context.WeaponTypes
                       where p.id == WeaponLoad.ubWeaponType
                       select p.name).First();
            if (Nwe != "Shotgun")
                WeaponLoad.ROF_for_Sh = 0;
            if (!WeaponLoad.CutOff_shots)
                WeaponLoad.CutOff_shotsCount = 0;
            if (!WeaponLoad.HCROF)
                WeaponLoad.HCROFValue = 0;
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
        public ICommand CheckThreeCheckBox { get; set; }
        public ICommand AddMountslot1 { get; set; }
        public ActionCommand Save { get; set; }

        public ActionCommand AddMountslot { get; set; }
        public ActionCommand LoadImage { get; set; }
        public ActionCommand DellImage { get; set; }
        

        public event PropertyChangedEventHandler PropertyChanged;
        private void RaisePropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
        public void Dispose()
        {
            _context?.Dispose();
        }

        private void _WeaponDamageColl_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (WeaponDamage item in e.OldItems)
                {
                    _context.WeaponDamages.Remove(item);
                }
                //  SaveChanges();
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (WeaponDamage item in e.NewItems)
                {
                    _context.WeaponDamages.Add(item);
                }
            }
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
        //private void _Avv_att_slot_OK_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        //{
        //    if (e.Action == NotifyCollectionChangedAction.Remove)
        //    {
        //        foreach (AvailableAttachSlot item in e.OldItems)
        //        {
        //            _context.AvailableAttachSlots.Remove(item);
        //        }
        //        //   SaveChanges();
        //    }
        //    else if (e.Action == NotifyCollectionChangedAction.Add)
        //    {
        //        foreach (AvailableAttachSlot item in e.NewItems)
        //        {
        //            _context.AvailableAttachSlots.Add(item);
        //        }
        //    }
        //}
    }
}
//Свойство является частью данных ключа объекта, поэтому его нельзя изменить

//http://losev-al.blogspot.com.by/2013/09/view-mvvm.html