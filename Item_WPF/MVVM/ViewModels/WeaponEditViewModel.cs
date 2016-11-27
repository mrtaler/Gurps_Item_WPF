using Item_WPF.addin;
using Item_WPF.ItemEntityModel;
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
        public ObservableCollection<GurpsClass> WeaponClasscCollection
        {
            get
            {
                return new ObservableCollection<GurpsClass>(_context.GurpsClasses);
            }
        }
        public int WeaponClassReed { get; set; }
        public ObservableCollection<ItemSubClass> WeaponTypescCollection
        {
            get
            {
                return new ObservableCollection<ItemSubClass>(_context.ItemSubClasses);
            }
        }
        public ObservableCollection<TypeOfDamage> TypeOfDamagesCollection { get; set; }
        //private ObservableCollection<AMMO> _AmmoscCollection;
        public ObservableCollection<Caliber> CalibersCollection { get; set; }
        public ObservableCollection<Attachmentmount> ScopeComboBox { get; set; }
        public ObservableCollection<Attachmentmount> LaserComboBox { get; set; }
        public ObservableCollection<Attachmentmount> LightComboBox { get; set; }
        public ObservableCollection<Attachmentmount> BipodComboBox { get; set; }
        public ObservableCollection<Attachmentmount> SilenserComboBox { get; set; }
        public ObservableCollection<Attachmentmount> LauncherComboBox { get; set; }
        public ObservableCollection<Attachmentmount> StockComboBox { get; set; }
        public ObservableCollection<Attachmentmount> BayonetComboBox { get; set; }
        public ObservableCollection<Attachmentmount> MagazineComboBox { get; set; }
        public ObservableCollection<Attachmentmount> InternalComboBox { get; set; }
        public ObservableCollection<Attachmentmount> ExternalComboBox { get; set; }

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

            

             CalibersCollection = new ObservableCollection<Caliber>(_context.Calibers);

            TlCollection = new ObservableCollection<TL>(_context.TLs);
            LccCollection = new ObservableCollection<LC>(_context.LCs);

            WeaponClassReed = ItemLoad.ItemSubClass.GurpsClass.id;

            TypeOfDamagesCollection = new ObservableCollection<TypeOfDamage>(_context.TypeOfDamages);

            WeaponDamageColl = new ObservableCollection<WeaponDamage>(_context.WeaponDamages.Where((p => p.idWeapon == WeaponLoad.uiIndex)));

            avSlot = new ObservableCollection<AvailableAttachSlot>(_context.AvailableAttachSlots.Where(p => p.rItemId == WeaponLoad.uiIndex));
            AttMount = new ObservableCollection<Attachmentmount>(_context.Attachmentmounts);

            ScopeComboBox = new ObservableCollection<Attachmentmount>(_context.Attachmentmounts.Where(p => p.ATTACHMENTSLOT.szSlotName.Contains("Scope")));
            LaserComboBox = new ObservableCollection<Attachmentmount>(_context.Attachmentmounts.Where(p => p.ATTACHMENTSLOT.szSlotName.Contains("Laser")));
            LightComboBox = new ObservableCollection<Attachmentmount>(_context.Attachmentmounts.Where(p => p.ATTACHMENTSLOT.szSlotName.Contains("Light")));
            BipodComboBox = new ObservableCollection<Attachmentmount>(_context.Attachmentmounts.Where(p => p.ATTACHMENTSLOT.szSlotName.Contains("Bipod")));
            SilenserComboBox = new ObservableCollection<Attachmentmount>(_context.Attachmentmounts.Where(p => p.ATTACHMENTSLOT.szSlotName.Contains("Silenser")));
            LauncherComboBox = new ObservableCollection<Attachmentmount>(_context.Attachmentmounts.Where(p => p.ATTACHMENTSLOT.szSlotName.Contains("Launcher")));
            StockComboBox = new ObservableCollection<Attachmentmount>(_context.Attachmentmounts.Where(p => p.ATTACHMENTSLOT.szSlotName.Contains("Stock")));
            BayonetComboBox = new ObservableCollection<Attachmentmount>(_context.Attachmentmounts.Where(p => p.ATTACHMENTSLOT.szSlotName.Contains("Bayonet")));
            MagazineComboBox = new ObservableCollection<Attachmentmount>(_context.Attachmentmounts.Where(p => p.ATTACHMENTSLOT.szSlotName.Contains("Magazine")));
            InternalComboBox = new ObservableCollection<Attachmentmount>(_context.Attachmentmounts.Where(p => p.ATTACHMENTSLOT.szSlotName.Contains("Internal")));
            ExternalComboBox = new ObservableCollection<Attachmentmount>(_context.Attachmentmounts.Where(p => p.ATTACHMENTSLOT.szSlotName.Contains("External")));


            #region Load Command
            Save =                  new ViewModelCommand(SaveChanges);       // сохранение контекста
            LoadImage =             new ViewModelCommand(LoadImageToForm);   //загрузка картинки
            DellImage =             new ViewModelCommand(DellImageFromAll);  //удаление картинки
            CExtendDamage =         new ViewModelCommand(ExtendDamage);
            AddMountslot1 =         new ViewModelCommand(AddMountslot1_Execute);
            CheckThreeCheckBox =    new ViewModelCommand(CheckThreeCheckBox_Execute); //
            CloseWindowC =          new ViewModelCommand(CloseWindow);       //Закрытие окна
            CalliberWindowC =       new ViewModelCommand(CalliberWindow);    //Caliber

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
        public ViewModelCommand CalliberWindowC { get; set; }
        private void CalliberWindow(object parameter)
        {
            CaliberView AmmoViewWindow = new CaliberView();
            AmmoViewWindow.Owner = Owner;
            bool? result = AmmoViewWindow.ShowDialog();

            if (result.HasValue && (result == true))
            {
                CalibersCollection = AmmoViewWindow.AVM.CaliberOk;
                //NotifyPropertyChanged("ubCalibre");
                NotifyPropertyChanged("CalibersCollection");
            }

        }
        #endregion

        #region Command CloseWindow
        public ViewModelCommand CloseWindowC { get; set; }
        private void CloseWindow(object parameter)
        {

            Dispose();
            Owner.DialogResult = true;
            Owner.Close();
        }
        #endregion
        #region Command ExtendDamage
        public ViewModelCommand CExtendDamage { get; set; }
        private void ExtendDamage(object parameter)
        {

            //if (!(Convert.ToBoolean(param)))
            //{

            //   WeaponDamageColl.FirstOrDefault(p => p.WeaponAttackType.name.Contains("Primary")).idTypeOfDamage1 = "";

            WeaponDamageColl.FirstOrDefault(p => p.WeaponAttackType.name == "Primary").idTypeOfDamage2 = null;

            WeaponDamageColl.FirstOrDefault(p => p.WeaponAttackType.name == "Primary").TypeOfDamage1text = null;

            WeaponDamageColl.FirstOrDefault(p => p.WeaponAttackType.name == "Primary").TypeOfDamage2text = null;

            //}
        }
        #endregion
        #region Command CheckThreeCheckBox
        public ViewModelCommand CheckThreeCheckBox { get; set; }
        private void CheckThreeCheckBox_Execute(object parameter)
        {
            bool Param = (bool)parameter;
        }
        #endregion
        #region Command AddMountslot1
        public ViewModelCommand AddMountslot1 { get; set; }
        private void AddMountslot1_Execute(object parameter)
        {
            AttacmentMountView AddMountslotWindow = new AttacmentMountView(parameter);
            AddMountslotWindow.Owner = Owner;

            bool? result = AddMountslotWindow.ShowDialog();

            if (result.HasValue && (result == true))
            {
                AttMount = AddMountslotWindow._AttacWiew.avvAttSlotOk;
            }

            if ((parameter as string) == "Scope")
            {
                ScopeComboBox = new ObservableCollection<Attachmentmount>(AttMount.Where(p => p.ATTACHMENTSLOT.szSlotName.Contains("Scope")));
                NotifyPropertyChanged("ScopeComboBox");
            }
            else if ((parameter as string) == "Laser")
            {
                LaserComboBox = new ObservableCollection<Attachmentmount>(AttMount.Where(p => p.ATTACHMENTSLOT.szSlotName.Contains("Laser")));
                NotifyPropertyChanged("LaserComboBox");
            }
            else if ((parameter as string) == "Light")
            {
                LightComboBox = new ObservableCollection<Attachmentmount>(AttMount.Where(p => p.ATTACHMENTSLOT.szSlotName.Contains("Light")));
                NotifyPropertyChanged("LightComboBox");
            }
            else if ((parameter as string) == "Bipod")
            {
                BipodComboBox = new ObservableCollection<Attachmentmount>(AttMount.Where(p => p.ATTACHMENTSLOT.szSlotName.Contains("Bipod")));
                NotifyPropertyChanged("BipodComboBox");
            }
            else if ((parameter as string) == "Silenser")
            {
                SilenserComboBox = new ObservableCollection<Attachmentmount>(AttMount.Where(p => p.ATTACHMENTSLOT.szSlotName.Contains("Silenser")));
                NotifyPropertyChanged("SilenserComboBox");
            }
            else if ((parameter as string) == "Launcher")
            {
                LauncherComboBox = new ObservableCollection<Attachmentmount>(AttMount.Where(p => p.ATTACHMENTSLOT.szSlotName.Contains("Launcher")));
                NotifyPropertyChanged("LauncherComboBox");
            }
            else if ((parameter as string) == "Stock")
            {
                StockComboBox = new ObservableCollection<Attachmentmount>(AttMount.Where(p => p.ATTACHMENTSLOT.szSlotName.Contains("Stock")));
                NotifyPropertyChanged("StockComboBox");
            }
            else if ((parameter as string) == "Bayonet")
            {
                BayonetComboBox = new ObservableCollection<Attachmentmount>(AttMount.Where(p => p.ATTACHMENTSLOT.szSlotName.Contains("Bayonet")));
                NotifyPropertyChanged("BayonetComboBox");
            }
            else if ((parameter as string) == "Magazine")
            {
                MagazineComboBox = new ObservableCollection<Attachmentmount>(AttMount.Where(p => p.ATTACHMENTSLOT.szSlotName.Contains("Magazine")));
                NotifyPropertyChanged("MagazineComboBox");
            }
            else if ((parameter as string) == "Internal")
            {
                InternalComboBox = new ObservableCollection<Attachmentmount>(AttMount.Where(p => p.ATTACHMENTSLOT.szSlotName.Contains("Internal")));
                NotifyPropertyChanged("InternalComboBox");
            }
            else if ((parameter as string) == "External")
            {
                ExternalComboBox = new ObservableCollection<Attachmentmount>(AttMount.Where(p => p.ATTACHMENTSLOT.szSlotName.Contains("External")));
                NotifyPropertyChanged("ExternalComboBox");
            }
        }
        #endregion
        #region Command SaveChanges
        public ViewModelCommand Save { get; set; }
        private void SaveChanges(object parameter)
        {
            var Nwe = (from p in _context.ItemSubClasses
                       where p.id == ItemLoad.usItemClass
                       select p.NameSub).First();
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
        public ViewModelCommand LoadImage { get; set; }
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
        public ViewModelCommand DellImage { get; set; }
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

    }
}
//Свойство является частью данных ключа объекта, поэтому его нельзя изменить

//http://losev-al.blogspot.com.by/2013/09/view-mvvm.html