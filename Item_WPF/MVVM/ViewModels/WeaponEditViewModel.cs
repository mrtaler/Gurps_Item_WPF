using Item_WPF.addin;
using Item_WPF.MVVM.View;
using Microsoft.Win32;
using System;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.Linq;
using System.Windows;
using GurpsDb;
using GurpsDb.GurpsModel;
using GurpsDb.BaseModel;

namespace Item_WPF.MVVM.ViewModels
{
    class WeaponEditViewModel : ViewModelBase//, IDisposable
    {
        protected Window Owner;
        private ContextGurpsModel _context;
        public int SelInd { get; set; }
        public ObservableCollection<Tl> TlCollection { get; set; }
        public ObservableCollection<Lc> LccCollection { get; set; }
        public ObservableCollection<GurpsClass> WeaponClasscCollection
        {
            get
            {
                return new ObservableCollection<GurpsClass>(_context.GurpsClassDbSet);
            }
        }
        public int WeaponClassReed { get; set; }
        public ObservableCollection<ItemSubClass> WeaponTypescCollection
        {
            get
            {
                return new ObservableCollection<ItemSubClass>(_context.ItemSubClassDbSet);
            }
        }
        public ObservableCollection<TypeOfDamage> TypeOfDamagesCollection { get; set; }
        //private ObservableCollection<AMMO> _AmmoscCollection;
        public ObservableCollection<Caliber> CalibersCollection { get; set; }
        public ObservableCollection<AttachmentMount> ScopeComboBox { get; set; }
        public ObservableCollection<AttachmentMount> LaserComboBox { get; set; }
        public ObservableCollection<AttachmentMount> LightComboBox { get; set; }
        public ObservableCollection<AttachmentMount> BipodComboBox { get; set; }
        public ObservableCollection<AttachmentMount> SilenserComboBox { get; set; }
        public ObservableCollection<AttachmentMount> LauncherComboBox { get; set; }
        public ObservableCollection<AttachmentMount> StockComboBox { get; set; }
        public ObservableCollection<AttachmentMount> BayonetComboBox { get; set; }
        public ObservableCollection<AttachmentMount> MagazineComboBox { get; set; }
        public ObservableCollection<AttachmentMount> InternalComboBox { get; set; }
        public ObservableCollection<AttachmentMount> ExternalComboBox { get; set; }

        public ObservableCollection<WeaponDamage> WeaponDamageColl { get; set; }
        /*   private Item _ItemLoad;
           public Item ItemLoad
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
           }*/
        public Weapon WeaponLoad { get; set; }
        public ObservableCollection<AvailableAttachSlot> avSlot { get; set; }

        private ObservableCollection<AttachmentMount> _attMount;
        public ObservableCollection<AttachmentMount> AttMount
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
        public WeaponEditViewModel(Window owner, Weapon itemselect, ContextGurpsModel context)
        {
            Owner = owner;
            _context = context;
            WeaponLoad = itemselect;



            CalibersCollection = new ObservableCollection<Caliber>(_context.CaliberDbSet);

            TlCollection = new ObservableCollection<Tl>(_context.TlDbSet);
            LccCollection = new ObservableCollection<Lc>(_context.LcDbSet);

            WeaponClassReed = WeaponLoad.ItemSubClass.GurpsClass.Id;

            TypeOfDamagesCollection = new ObservableCollection<TypeOfDamage>(_context.TypeOfDamageDbSet);

            WeaponDamageColl = new ObservableCollection<WeaponDamage>(_context.WeaponDamageDbSet.Where((p => p.IdWeapon == WeaponLoad.UiIndex)));

            avSlot = new ObservableCollection<AvailableAttachSlot>(_context.AvailableAttachSlotDbSet.Where(p => p.RItemId == WeaponLoad.UiIndex));
            AttMount = new ObservableCollection<AttachmentMount>(_context.AttachmentMountDbSet);

            ScopeComboBox = new ObservableCollection<AttachmentMount>(_context.AttachmentMountDbSet.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Scope")));
            LaserComboBox = new ObservableCollection<AttachmentMount>(_context.AttachmentMountDbSet.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Laser")));
            LightComboBox = new ObservableCollection<AttachmentMount>(_context.AttachmentMountDbSet.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Light")));
            BipodComboBox = new ObservableCollection<AttachmentMount>(_context.AttachmentMountDbSet.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Bipod")));
            SilenserComboBox = new ObservableCollection<AttachmentMount>(_context.AttachmentMountDbSet.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Silenser")));
            LauncherComboBox = new ObservableCollection<AttachmentMount>(_context.AttachmentMountDbSet.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Launcher")));
            StockComboBox = new ObservableCollection<AttachmentMount>(_context.AttachmentMountDbSet.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Stock")));
            BayonetComboBox = new ObservableCollection<AttachmentMount>(_context.AttachmentMountDbSet.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Bayonet")));
            MagazineComboBox = new ObservableCollection<AttachmentMount>(_context.AttachmentMountDbSet.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Magazine")));
            InternalComboBox = new ObservableCollection<AttachmentMount>(_context.AttachmentMountDbSet.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Internal")));
            ExternalComboBox = new ObservableCollection<AttachmentMount>(_context.AttachmentMountDbSet.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("External")));

            #region Load Command
            Save = new ViewModelCommand(SaveChanges);       // сохранение контекста
            LoadImage = new ViewModelCommand(LoadImageToForm);   //загрузка картинки
            DellImage = new ViewModelCommand(DellImageFromAll);  //удаление картинки
            CExtendDamage = new ViewModelCommand(ExtendDamage);
            AddMountslot1 = new ViewModelCommand(AddMountslot1_Execute);
            CheckThreeCheckBox = new ViewModelCommand(CheckThreeCheckBox_Execute); //
            CloseWindowC = new ViewModelCommand(CloseWindow);       //Закрытие окна
            CalliberWindowC = new ViewModelCommand(CalliberWindow);    //Caliber

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
                CalibersCollection = AmmoViewWindow.Avm.CaliberOk;
                //NotifyPropertyChanged("ubCalibre");
                NotifyPropertyChanged("CalibersCollection");
            }

        }
        #endregion

        #region Command CloseWindow
        public ViewModelCommand CloseWindowC { get; set; }
        private void CloseWindow(object parameter)
        {

            // Dispose();
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
            WeaponDamageColl.FirstOrDefault(p => p.WeaponAttackType.Name == "Primary").TypeOfDamage1 = null;
            WeaponDamageColl.FirstOrDefault(p => p.WeaponAttackType.Name == "Primary").TypeOfDamage1Text = null;
            WeaponDamageColl.FirstOrDefault(p => p.WeaponAttackType.Name == "Primary").TypeOfDamage2Text = null;

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
                AttMount = AddMountslotWindow._AttacWiew.AvvAttSlotOk;
            }

            if ((parameter as string) == "Scope")
            {
                ScopeComboBox = new ObservableCollection<AttachmentMount>(AttMount.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Scope")));
                NotifyPropertyChanged("ScopeComboBox");
            }
            else if ((parameter as string) == "Laser")
            {
                LaserComboBox = new ObservableCollection<AttachmentMount>(AttMount.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Laser")));
                NotifyPropertyChanged("LaserComboBox");
            }
            else if ((parameter as string) == "Light")
            {
                LightComboBox = new ObservableCollection<AttachmentMount>(AttMount.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Light")));
                NotifyPropertyChanged("LightComboBox");
            }
            else if ((parameter as string) == "Bipod")
            {
                BipodComboBox = new ObservableCollection<AttachmentMount>(AttMount.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Bipod")));
                NotifyPropertyChanged("BipodComboBox");
            }
            else if ((parameter as string) == "Silenser")
            {
                SilenserComboBox = new ObservableCollection<AttachmentMount>(AttMount.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Silenser")));
                NotifyPropertyChanged("SilenserComboBox");
            }
            else if ((parameter as string) == "Launcher")
            {
                LauncherComboBox = new ObservableCollection<AttachmentMount>(AttMount.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Launcher")));
                NotifyPropertyChanged("LauncherComboBox");
            }
            else if ((parameter as string) == "Stock")
            {
                StockComboBox = new ObservableCollection<AttachmentMount>(AttMount.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Stock")));
                NotifyPropertyChanged("StockComboBox");
            }
            else if ((parameter as string) == "Bayonet")
            {
                BayonetComboBox = new ObservableCollection<AttachmentMount>(AttMount.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Bayonet")));
                NotifyPropertyChanged("BayonetComboBox");
            }
            else if ((parameter as string) == "Magazine")
            {
                MagazineComboBox = new ObservableCollection<AttachmentMount>(AttMount.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Magazine")));
                NotifyPropertyChanged("MagazineComboBox");
            }
            else if ((parameter as string) == "Internal")
            {
                InternalComboBox = new ObservableCollection<AttachmentMount>(AttMount.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Internal")));
                NotifyPropertyChanged("InternalComboBox");
            }
            else if ((parameter as string) == "External")
            {
                ExternalComboBox = new ObservableCollection<AttachmentMount>(AttMount.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("External")));
                NotifyPropertyChanged("ExternalComboBox");
            }
        }
        #endregion
        #region Command SaveChanges
        public ViewModelCommand Save { get; set; }
        private void SaveChanges(object parameter)
        {
            var Nwe = (from p in _context.ItemSubClassDbSet
                       where p.Id == WeaponLoad.UsItemClass
                       select p.NameSub).First();
            if (Nwe != "Shotgun")
                WeaponLoad.RofForSh = 0;
            if (!WeaponLoad.CutOffShots)
                WeaponLoad.CutOffShotsCount = 0;
            if (!WeaponLoad.Hcrof)
                WeaponLoad.HcrofValue = 0;
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
                WeaponLoad.ItemImage = System.IO.File.ReadAllBytes(dlg.FileName);
            }
        }
        #endregion
        #region Command DellImageFromAll
        public ViewModelCommand DellImage { get; set; }
        private void DellImageFromAll(object parameter)
        {
            WeaponLoad.ItemImage = null;
        }
        #endregion
        #endregion


        //public void Dispose()
        //{
        //    _context?.Dispose();
        //}

        private void _WeaponDamageColl_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (WeaponDamage item in e.OldItems)
                {
                    _context.WeaponDamageDbSet.Remove(item);
                }
                //  SaveChanges();
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (WeaponDamage item in e.NewItems)
                {
                    _context.WeaponDamageDbSet.Add(item);
                }
            }
        }
        private void _avSlot_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (AvailableAttachSlot item in e.OldItems)
                {
                    _context.AvailableAttachSlotDbSet.Remove(item);
                }
                //  SaveChanges();
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (AvailableAttachSlot item in e.NewItems)
                {
                    _context.AvailableAttachSlotDbSet.Add(item);
                }
            }
        }

    }
}
//Свойство является частью данных ключа объекта, поэтому его нельзя изменить

//http://losev-al.blogspot.com.by/2013/09/view-mvvm.html