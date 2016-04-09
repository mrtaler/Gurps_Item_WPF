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
    class WeaponEditViewModel : ViewModelBase, IDisposable
    {
        protected Window Owner;
        private item1Entities _context;
        public int selInd { get; set; }
        public ObservableCollection<TL> TlCollection { get; set; }
        public ObservableCollection<LC> LccCollection { get; set; }
        public ObservableCollection<WeaponClass> WeaponClasscCollection { get; set; }
        public ObservableCollection<WeaponType> WeaponTypescCollection { get; set; }
        public ObservableCollection<TypeOfDamage> TypeOfDamagesCollection { get; set; }
        private ObservableCollection<AMMO> _AmmoscCollection;
        public ObservableCollection<AMMO> AmmoscCollection
        {
            get
            {
                return _AmmoscCollection;
                //return new ObservableCollection<AMMO>(_context.AMMOes);
            }
            set 
            {
                if (_AmmoscCollection != value)
                {
                    _AmmoscCollection = value;
                    NotifyPropertyChanged("AmmoscCollection");
                }
            }
        }
        public ObservableCollection<WeaponDamage> WeaponDamageColl { get; set; }
        private ITEM _ItemLoad;
        public ITEM ItemLoad
        {
            get
            {
                return _ItemLoad;
            }
            set
            {
                if (_ItemLoad != value)
                {
                    _ItemLoad = value;
                    NotifyPropertyChanged("ItemLoad");
                }
            }
        }
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
                    NotifyPropertyChanged("AttMount");
                }
            }
        }

        #region Constructor
        public WeaponEditViewModel(Window owner, ITEM itemselect)
        {
            Owner = owner;
            _context = new item1Entities();
            ItemLoad = _context.ITEMs.Find(itemselect.uiIndex);
            WeaponLoad = ItemLoad.WEAPON;

            AmmoscCollection = new ObservableCollection<AMMO>(_context.AMMOes);

            TlCollection = new ObservableCollection<TL>(_context.TLs);
            LccCollection = new ObservableCollection<LC>(_context.LCs);

            WeaponClasscCollection = new ObservableCollection<WeaponClass>(_context.WeaponClasses);
            WeaponTypescCollection = new ObservableCollection<WeaponType>(_context.WeaponTypes);
            TypeOfDamagesCollection = new ObservableCollection<TypeOfDamage>(_context.TypeOfDamages);

            WeaponDamageColl = new ObservableCollection<WeaponDamage>(_context.WeaponDamages.Where((p => p.idWeapon == WeaponLoad.uiIndex)));

            avSlot = new ObservableCollection<AvailableAttachSlot>(_context.AvailableAttachSlots.Where(p => p.rWeaponId == WeaponLoad.uiIndex));
            AttMount = new ObservableCollection<Attachmentmount>(_context.Attachmentmounts);


            #region Load Command
            Save = new DelegateCommand(SaveChanges); // соххранение контекста
            LoadImage = new DelegateCommand(LoadImageToForm); //загрузка картинки
            DellImage = new DelegateCommand(DellImageFromAll); //удаление картинки
            CExtendDamage = new DelegateCommand(ExtendDamage);
            AddMountslot1 = new DelegateCommand(AddMountslot1_Execute);
            CheckThreeCheckBox = new DelegateCommand(CheckThreeCheckBox_Execute); //
            CloseWindowC = new DelegateCommand(CloseWindow); //Закрытие окна

            CalliberWindowC = new DelegateCommand(CalliberWindow); //Caliber

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
        #region Command CalliberWindow
        public DelegateCommand CalliberWindowC { get; set; }
        private void CalliberWindow(object parameter)
        { 
            AmmoView AmmoViewWindow = new AmmoView();
            AmmoViewWindow.Owner = Owner;
            bool? result = AmmoViewWindow.ShowDialog();

            if (result.HasValue && (result == true))
            {
                AmmoscCollection = AmmoViewWindow.AVM.AmmoOk;
                //NotifyPropertyChanged("WeaponLoad.ubCalibre");
            }

        }
        #endregion

        #region Command CloseWindow
        public DelegateCommand CloseWindowC { get; set; }
        private void CloseWindow(object parameter)
        {

            Dispose();
            Owner.DialogResult = true;
            Owner.Close();
        }
        #endregion
        #region Command ExtendDamage
        public DelegateCommand CExtendDamage { get; set; }
        private void ExtendDamage(object parameter)
        {

            //if (!(Convert.ToBoolean(param)))
            //{

            //   WeaponDamageColl.FirstOrDefault(p => p.WeaponAttackType.name.Contains("Primary")).idTypeOfDamage1 = "";

            WeaponDamageColl.FirstOrDefault(p => p.WeaponAttackType.name == "Primary").idTypeOfDamage2 = null;

            WeaponDamageColl.FirstOrDefault(p => p.WeaponAttackType.name == "Primary").TypeOfDamage1 = null;

            WeaponDamageColl.FirstOrDefault(p => p.WeaponAttackType.name == "Primary").TypeOfDamage2 = null;

            //}
        }
        #endregion
        #region Command CheckThreeCheckBox
        public DelegateCommand CheckThreeCheckBox { get; set; }
        private void CheckThreeCheckBox_Execute(object parameter)
        {
            bool Param = (bool)parameter;
        }
        #endregion
        #region Command AddMountslot1
        public DelegateCommand AddMountslot1 { get; set; }
        private void AddMountslot1_Execute(object parameter)
        {
            int param = Convert.ToInt32(parameter);
            AttacmentMountView atmS = new AttacmentMountView();
            atmS.DataContext = new AttacmentMountViewModel(Convert.ToInt32(parameter)); ;
            atmS.ShowDialog();
            AttMount = new ObservableCollection<Attachmentmount>(_context.Attachmentmounts);
        }
        #endregion
        #region Command SaveChanges
        public DelegateCommand Save { get; set; }
        private void SaveChanges(object parameter)
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
        #endregion
        #region Command LoadImage
        public DelegateCommand LoadImage { get; set; }
        private void LoadImageToForm(object parameter)
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
        #endregion
        #region Command DellImageFromAll
        public DelegateCommand DellImage { get; set; }
        private void DellImageFromAll(object parameter)
        {
            ItemLoad.Item_Image = null;
        }
        #endregion
        #endregion


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