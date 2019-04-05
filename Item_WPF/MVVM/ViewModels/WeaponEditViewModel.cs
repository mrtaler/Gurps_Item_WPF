using System;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.Linq;
using System.Windows;

using GurpsDb;
using GurpsDb.BaseModel;
using GurpsDb.GurpsModel;

using Item_WPF.addin;
using Item_WPF.MVVM.View;

using Microsoft.Win32;

namespace Item_WPF.MVVM.ViewModels
{
    class WeaponEditViewModel : ViewModelBase
    {
        // , IDisposable
        protected Window Owner;

        private ContextGurpsModel _context;

        public int SelInd { get; set; }

        public ObservableCollection<Tl> TlCollection { get; set; }

        public ObservableCollection<Lc> LccCollection { get; set; }

        public ObservableCollection<GurpsClass> WeaponClasscCollection
        {
            get
            {
                return new ObservableCollection<GurpsClass>(this._context.GurpsClassDbSet);
            }
        }

        public int WeaponClassReed { get; set; }

        public ObservableCollection<ItemSubClass> WeaponTypescCollection
        {
            get
            {
                return new ObservableCollection<ItemSubClass>(this._context.ItemSubClassDbSet);
            }
        }

        public ObservableCollection<TypeOfDamage> TypeOfDamagesCollection { get; set; }

        // private ObservableCollection<AMMO> _AmmoscCollection;
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
                return this._attMount;
            }

            set
            {
                if (this._attMount != value)
                {
                    this._attMount = value;
                    this.NotifyPropertyChanged("AttMount");
                }
            }
        }

        #region Constructor

        public WeaponEditViewModel(Window owner, Weapon itemselect, ContextGurpsModel context)
        {
            this.Owner = owner;
            this._context = context;
            this.WeaponLoad = itemselect;

            this.CalibersCollection = new ObservableCollection<Caliber>(this._context.CaliberDbSet);

            this.TlCollection = new ObservableCollection<Tl>(this._context.TlDbSet);
            this.LccCollection = new ObservableCollection<Lc>(this._context.LcDbSet);

            this.WeaponClassReed = this.WeaponLoad.ItemSubClass.GurpsClass.Id;

            this.TypeOfDamagesCollection = new ObservableCollection<TypeOfDamage>(this._context.TypeOfDamageDbSet);

            this.WeaponDamageColl = new ObservableCollection<WeaponDamage>(
                this._context.WeaponDamageDbSet.Where((p => p.IdWeapon == this.WeaponLoad.UiIndex)));

            this.avSlot = new ObservableCollection<AvailableAttachSlot>(
                this._context.AvailableAttachSlotDbSet.Where(p => p.RItemId == this.WeaponLoad.UiIndex));
            this.AttMount = new ObservableCollection<AttachmentMount>(this._context.AttachmentMountDbSet);

            this.ScopeComboBox = new ObservableCollection<AttachmentMount>(
                this._context.AttachmentMountDbSet.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Scope")));
            this.LaserComboBox = new ObservableCollection<AttachmentMount>(
                this._context.AttachmentMountDbSet.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Laser")));
            this.LightComboBox = new ObservableCollection<AttachmentMount>(
                this._context.AttachmentMountDbSet.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Light")));
            this.BipodComboBox = new ObservableCollection<AttachmentMount>(
                this._context.AttachmentMountDbSet.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Bipod")));
            this.SilenserComboBox = new ObservableCollection<AttachmentMount>(
                this._context.AttachmentMountDbSet.Where(
                    p => p.AttachmentSlot.AttachmentSlotName.Contains("Silenser")));
            this.LauncherComboBox = new ObservableCollection<AttachmentMount>(
                this._context.AttachmentMountDbSet.Where(
                    p => p.AttachmentSlot.AttachmentSlotName.Contains("Launcher")));
            this.StockComboBox = new ObservableCollection<AttachmentMount>(
                this._context.AttachmentMountDbSet.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Stock")));
            this.BayonetComboBox = new ObservableCollection<AttachmentMount>(
                this._context.AttachmentMountDbSet.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Bayonet")));
            this.MagazineComboBox = new ObservableCollection<AttachmentMount>(
                this._context.AttachmentMountDbSet.Where(
                    p => p.AttachmentSlot.AttachmentSlotName.Contains("Magazine")));
            this.InternalComboBox = new ObservableCollection<AttachmentMount>(
                this._context.AttachmentMountDbSet.Where(
                    p => p.AttachmentSlot.AttachmentSlotName.Contains("Internal")));
            this.ExternalComboBox = new ObservableCollection<AttachmentMount>(
                this._context.AttachmentMountDbSet.Where(
                    p => p.AttachmentSlot.AttachmentSlotName.Contains("External")));

            this.Save = new ViewModelCommand(this.SaveChanges); // сохранение контекста
            this.LoadImage = new ViewModelCommand(this.LoadImageToForm); // загрузка картинки
            this.DellImage = new ViewModelCommand(this.DellImageFromAll); // удаление картинки
            this.CExtendDamage = new ViewModelCommand(this.ExtendDamage);
            this.AddMountslot1 = new ViewModelCommand(this.AddMountslot1_Execute);
            this.CloseWindowC = new ViewModelCommand(this.CloseWindow); // Закрытие окна
            this.CalliberWindowC = new ViewModelCommand(this.CalliberWindow); // Caliber

            // AddMountslot1 = new ActionCommand(AddMountslot1_Execute) { IsExecutable = true };
            #region Event

            this.avSlot.CollectionChanged += new NotifyCollectionChangedEventHandler(this._avSlot_CollectionChanged);
            this.WeaponDamageColl.CollectionChanged +=
                new NotifyCollectionChangedEventHandler(this._WeaponDamageColl_CollectionChanged);

            // AttMount.CollectionChanged += new NotifyCollectionChangedEventHandler(_Avv_att_slot_OK_CollectionChanged);
            #endregion
        }

        #endregion

        #region Command

        #region Command CalliberWindow

        public ViewModelCommand CalliberWindowC { get; set; }

        private void CalliberWindow(object parameter)
        {
            CaliberView AmmoViewWindow = new CaliberView();
            AmmoViewWindow.Owner = this.Owner;
            bool? result = AmmoViewWindow.ShowDialog();

            if (result.HasValue && (result == true))
            {
                this.CalibersCollection = AmmoViewWindow.Avm.CaliberOk;

                // NotifyPropertyChanged("ubCalibre");
                this.NotifyPropertyChanged("CalibersCollection");
            }
        }

        #endregion

        #region Command CloseWindow

        public ViewModelCommand CloseWindowC { get; set; }

        private void CloseWindow(object parameter)
        {
            // Dispose();
            this.Owner.DialogResult = true;
            this.Owner.Close();
        }

        #endregion

        #region Command ExtendDamage

        public ViewModelCommand CExtendDamage { get; set; }

        private void ExtendDamage(object parameter)
        {
            // if (!(Convert.ToBoolean(param)))
            // {

            // WeaponDamageColl.FirstOrDefault(p => p.WeaponAttackType.name.Contains("Primary")).idTypeOfDamage1 = "";
            this.WeaponDamageColl.FirstOrDefault(p => p.WeaponAttackType.Name == "Primary").TypeOfDamage1 = null;
            this.WeaponDamageColl.FirstOrDefault(p => p.WeaponAttackType.Name == "Primary").TypeOfDamage1Text = null;
            this.WeaponDamageColl.FirstOrDefault(p => p.WeaponAttackType.Name == "Primary").TypeOfDamage2Text = null;

            // }
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
            AddMountslotWindow.Owner = this.Owner;

            bool? result = AddMountslotWindow.ShowDialog();

            if (result.HasValue && (result == true))
            {
                this.AttMount = AddMountslotWindow._AttacWiew.AvvAttSlotOk;
            }

            if ((parameter as string) == "Scope")
            {
                this.ScopeComboBox = new ObservableCollection<AttachmentMount>(
                    this.AttMount.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Scope")));
                this.NotifyPropertyChanged("ScopeComboBox");
            }
            else if ((parameter as string) == "Laser")
            {
                this.LaserComboBox = new ObservableCollection<AttachmentMount>(
                    this.AttMount.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Laser")));
                this.NotifyPropertyChanged("LaserComboBox");
            }
            else if ((parameter as string) == "Light")
            {
                this.LightComboBox = new ObservableCollection<AttachmentMount>(
                    this.AttMount.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Light")));
                this.NotifyPropertyChanged("LightComboBox");
            }
            else if ((parameter as string) == "Bipod")
            {
                this.BipodComboBox = new ObservableCollection<AttachmentMount>(
                    this.AttMount.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Bipod")));
                this.NotifyPropertyChanged("BipodComboBox");
            }
            else if ((parameter as string) == "Silenser")
            {
                this.SilenserComboBox = new ObservableCollection<AttachmentMount>(
                    this.AttMount.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Silenser")));
                this.NotifyPropertyChanged("SilenserComboBox");
            }
            else if ((parameter as string) == "Launcher")
            {
                this.LauncherComboBox = new ObservableCollection<AttachmentMount>(
                    this.AttMount.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Launcher")));
                this.NotifyPropertyChanged("LauncherComboBox");
            }
            else if ((parameter as string) == "Stock")
            {
                this.StockComboBox = new ObservableCollection<AttachmentMount>(
                    this.AttMount.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Stock")));
                this.NotifyPropertyChanged("StockComboBox");
            }
            else if ((parameter as string) == "Bayonet")
            {
                this.BayonetComboBox = new ObservableCollection<AttachmentMount>(
                    this.AttMount.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Bayonet")));
                this.NotifyPropertyChanged("BayonetComboBox");
            }
            else if ((parameter as string) == "Magazine")
            {
                this.MagazineComboBox = new ObservableCollection<AttachmentMount>(
                    this.AttMount.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Magazine")));
                this.NotifyPropertyChanged("MagazineComboBox");
            }
            else if ((parameter as string) == "Internal")
            {
                this.InternalComboBox = new ObservableCollection<AttachmentMount>(
                    this.AttMount.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("Internal")));
                this.NotifyPropertyChanged("InternalComboBox");
            }
            else if ((parameter as string) == "External")
            {
                this.ExternalComboBox = new ObservableCollection<AttachmentMount>(
                    this.AttMount.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains("External")));
                this.NotifyPropertyChanged("ExternalComboBox");
            }
        }

        #endregion

        #region Command SaveChanges

        public ViewModelCommand Save { get; set; }

        private void SaveChanges(object parameter)
        {
            var Nwe = (from p in this._context.ItemSubClassDbSet
                       where p.Id == this.WeaponLoad.UsItemClass
                       select p.NameSub).First();
            if (Nwe != "Shotgun") this.WeaponLoad.RofForSh = 0;
            if (!this.WeaponLoad.CutOffShots) this.WeaponLoad.CutOffShotsCount = 0;
            if (!this.WeaponLoad.Hcrof) this.WeaponLoad.HcrofValue = 0;
            this._context.SaveChanges();
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
            if (dlg.FileName != string.Empty)
            {
                // ImageBitmapSourse = new BitmapImage(new Uri(dlg.FileName));
                this.WeaponLoad.ItemImage = System.IO.File.ReadAllBytes(dlg.FileName);
            }
        }

        #endregion

        #region Command DellImageFromAll

        public ViewModelCommand DellImage { get; set; }

        private void DellImageFromAll(object parameter)
        {
            this.WeaponLoad.ItemImage = null;
        }

        #endregion

        #endregion

        // public void Dispose()
        // {
        // _context?.Dispose();
        // }
        private void _WeaponDamageColl_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (WeaponDamage item in e.OldItems)
                {
                    this._context.WeaponDamageDbSet.Remove(item);
                }

                // SaveChanges();
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (WeaponDamage item in e.NewItems)
                {
                    this._context.WeaponDamageDbSet.Add(item);
                }
            }
        }

        private void _avSlot_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (AvailableAttachSlot item in e.OldItems)
                {
                    this._context.AvailableAttachSlotDbSet.Remove(item);
                }

                // SaveChanges();
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (AvailableAttachSlot item in e.NewItems)
                {
                    this._context.AvailableAttachSlotDbSet.Add(item);
                }
            }
        }
    }
}
//Свойство является частью данных ключа объекта, поэтому его нельзя изменить

//http://losev-al.blogspot.com.by/2013/09/view-mvvm.html