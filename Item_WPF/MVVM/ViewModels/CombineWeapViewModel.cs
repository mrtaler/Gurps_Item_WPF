using System.Collections.ObjectModel;
using System.Linq;

using GurpsDb;
using GurpsDb.BaseModel;
using GurpsDb.GurpsModel;

using Item_WPF.addin;
using Item_WPF.MVVM.Models;
using Item_WPF.MVVM.View;

namespace Item_WPF.MVVM.ViewModels
{

    class CombineWeapViewModel : ViewModelBase
    {
        private ContextGurpsModel _context;
        private byte[] _Weapon_Item_Image;
        public byte[] Weapon_Item_Image
        {
            get
            {
                return this._Weapon_Item_Image;
            }

            set
            {
                if (this._Weapon_Item_Image != value)
                {
                    this._Weapon_Item_Image = value;
                    this.NotifyPropertyChanged("Weapon_Item_Image");
                }
            }
        }
        public ItemToGridModel ItemToGrid { get; set; }
        public ObservableCollection<ItemToGridModel> ItemToGridColl { get; set; }
        public CombineWeapModel combineweap { get; set; }
        public Attachment AllItemToGridChangeWin { get; set; }
        public Weapon weapTotable { get; set; }
        public CombineWeapViewModel()
        {
            this._context = new ContextGurpsModel();
            this.ItemToGridColl = new ObservableCollection<ItemToGridModel>();

            this.CSelectWeapon = new ViewModelCommand(this.SelectWeapon);// work

            this.CScopeSelect = new ViewModelCommand(this.SelectScope, false);

            this.CLaserSelect = new ViewModelCommand(this.SelectLaser, false);
            this.CLightSelect = new ViewModelCommand(this.SelectLight, false);
            this.CBipodSelect = new ViewModelCommand(this.SelectBipod, false);
            this.CSilenserSelect = new ViewModelCommand(this.SelectSilenser, false);
            this.CLauncherSelect = new ViewModelCommand(this.SelectLauncher, false);
            this.CStockSelect = new ViewModelCommand(this.SelectStock, false);
            this.CBayonetSelect = new ViewModelCommand(this.SelectBayonet, false);
            this.CMagazineSelect = new ViewModelCommand(this.SelectMagazine, false);
            this.CInternalSelect = new ViewModelCommand(this.SelectInternal, false);
            this.CExternalSelect = new ViewModelCommand(this.SelectExternal, false);

            this.CAmmoSelect = new ViewModelCommand(this.AmmoSelect, false);
        }

        #region Command AmmoSelect
        private void AmmoSelect(object parameter)
        {
            AmmoView AmmoviewWinn = new AmmoView();
            AmmoViewModel AmmoviewMod = new AmmoViewModel(this.combineweap.IdCalibre);
            AmmoviewWinn.DataContext = AmmoviewMod;
            AmmoviewWinn.ShowDialog();
        }

        public ViewModelCommand CAmmoSelect { get; set; }
        #endregion
        #region Command SelectWeapon
        private void SelectWeapon(object parameter)
        {
            this.ItemToGridColl.Clear();
            this._context = new ContextGurpsModel();
            this.Weapon_Item_Image = null;

            SelectItemsView SIWvindow = new SelectItemsView();
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Weapon", null, SIWvindow);

            SIWvindow.DataContext = _SIVM;
            SIWvindow.ShowDialog();
            if (_SIVM.SelectedItems != null)
            {
                this.weapTotable = this._context.WeaponDbSet.
                    FirstOrDefault(p => p.UiIndex == _SIVM.SelectedItems.Id);

                this.Weapon_Item_Image = this.AllItemToGridChangeWin?.ItemImage;
                this.combineweap = new CombineWeapModel(/*AllItemToGridChangeWin*/
                    this.weapTotable);
                this.ItemToGrid = new ItemToGridModel(this.weapTotable);

                this.ItemToGridColl.Add(this.ItemToGrid);
                _SIVM.Dispose();

                if (this.combineweap.IdScopeItem != null) this.CScopeSelect.CanExecute = true;
                if (this.combineweap.IdLaserItem != null) this.CLaserSelect.CanExecute = true;
                if (this.combineweap.IdLightItem != null) this.CLightSelect.CanExecute = true;
                if (this.combineweap.IdBipodItem != null) this.CBipodSelect.CanExecute = true;
                if (this.combineweap.IdSilenserItem != null) this.CSilenserSelect.CanExecute = true;
                if (this.combineweap.IdLauncherItem != null) this.CLauncherSelect.CanExecute = true;
                if (this.combineweap.IdStockItem != null) this.CStockSelect.CanExecute = true;
                if (this.combineweap.IdBayonetItem != null) this.CBayonetSelect.CanExecute = true;
                if (this.combineweap.IdMagazineItem != null) this.CMagazineSelect.CanExecute = true;
                if (this.combineweap.IdInternalItem != null) this.CInternalSelect.CanExecute = true;
                if (this.combineweap.IdExternalItem != null) this.CExternalSelect.CanExecute = true;
                this.CAmmoSelect.CanExecute = true;
            }
        }

        public ViewModelCommand CSelectWeapon { get; set; }
        #endregion
        #region Command SelectScope
        private void SelectScope(object parameter)
        {
            if (this.ItemToGridColl.FirstOrDefault(p => p.Type == "Scope") != null) this.ItemToGridColl.Remove(this.ItemToGridColl.First(p => p.Type == "Scope"));
            SelectItemsView SIWindow = new SelectItemsView();
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", this.combineweap.IdScopeItem, SIWindow);
            SIWindow.DataContext = _SIVM;
            SIWindow.ShowDialog();

            if (_SIVM.SelectedItems != null)
            {
                if (_SIVM.SelectedItems.Id != 0)
                {
                    this.AllItemToGridChangeWin = this._context.AttachmentDbSet.First(p => p.UiIndex == _SIVM.SelectedItems.Id);
                    this.ItemToGrid = new ItemToGridModel(this.AllItemToGridChangeWin, "Scope");
                    this.ItemToGridColl.Add(this.ItemToGrid);
                    _SIVM.Dispose();
                }
            }
        }

        public ViewModelCommand CScopeSelect { get; set; }

        // public DelegateCommand CScopeSelect { get; set; }
        #endregion
        #region Command SelectLaser
        private void SelectLaser()
        {
            if (this.ItemToGridColl.FirstOrDefault(p => p.Type == "Laser") != null) this.ItemToGridColl.Remove(this.ItemToGridColl.First(p => p.Type == "Laser"));

            SelectItemsView SIWindow = new SelectItemsView();
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", this.combineweap.IdLaserItem, SIWindow);
            SIWindow.DataContext = _SIVM;
            SIWindow.ShowDialog();
            if (_SIVM.SelectedItems != null)
            {
                if (_SIVM.SelectedItems.Id != 0)
                {
                    this.AllItemToGridChangeWin = this._context.AttachmentDbSet.First(p => p.UiIndex == _SIVM.SelectedItems.Id);

                    this.ItemToGrid = new ItemToGridModel(this.AllItemToGridChangeWin, "Laser");
                    this.ItemToGridColl.Add(this.ItemToGrid);
                    _SIVM.Dispose();
                }
            }
        }

        public ViewModelCommand CLaserSelect { get; set; }
        #endregion
        #region Command SelectLight
        private void SelectLight()
        {
            if (this.ItemToGridColl.FirstOrDefault(p => p.Type == "Light") != null) this.ItemToGridColl.Remove(this.ItemToGridColl.First(p => p.Type == "Light"));
            SelectItemsView SIWindow = new SelectItemsView();
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", this.combineweap.IdLightItem, SIWindow);

            SIWindow.DataContext = _SIVM;
            SIWindow.ShowDialog();
            if (_SIVM.SelectedItems != null)
            {
                if (_SIVM.SelectedItems.Id != 0)
                {
                    this.AllItemToGridChangeWin = this._context.AttachmentDbSet.First(p => p.UiIndex == _SIVM.SelectedItems.Id);

                    this.ItemToGrid = new ItemToGridModel(this.AllItemToGridChangeWin, "Light");
                    this.ItemToGridColl.Add(this.ItemToGrid);
                    _SIVM.Dispose();
                }
            }

        }

        public ViewModelCommand CLightSelect { get; set; }
        #endregion
        #region Command SelectBipod
        private void SelectBipod()
        {
            if (this.ItemToGridColl.FirstOrDefault(p => p.Type == "Bipod") != null) this.ItemToGridColl.Remove(this.ItemToGridColl.First(p => p.Type == "Bipod"));
            SelectItemsView SIWindow = new SelectItemsView();
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", this.combineweap.IdBipodItem, SIWindow);

            SIWindow.DataContext = _SIVM;
            SIWindow.ShowDialog();
            if (_SIVM.SelectedItems != null)
            {
                if (_SIVM.SelectedItems.Id != 0)
                {
                    this.AllItemToGridChangeWin = this._context.AttachmentDbSet.First(p => p.UiIndex == _SIVM.SelectedItems.Id);

                    this.ItemToGrid = new ItemToGridModel(this.AllItemToGridChangeWin, "Bipod");
                    this.ItemToGridColl.Add(this.ItemToGrid);
                    _SIVM.Dispose();
                }
            }
        }

        public ViewModelCommand CBipodSelect { get; set; }
        #endregion
        #region Command SelectSilenser
        private void SelectSilenser()
        {
            if (this.ItemToGridColl.FirstOrDefault(p => p.Type == "Silenser") != null) this.ItemToGridColl.Remove(this.ItemToGridColl.First(p => p.Type == "Silenser"));
            SelectItemsView SIWindow = new SelectItemsView();
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", this.combineweap.IdSilenserItem, SIWindow);

            SIWindow.DataContext = _SIVM;
            SIWindow.ShowDialog();
            if (_SIVM.SelectedItems != null)
            {
                if (_SIVM.SelectedItems.Id != 0)
                {
                    this.AllItemToGridChangeWin = this._context.AttachmentDbSet.First(p => p.UiIndex == _SIVM.SelectedItems.Id);

                    this.ItemToGrid = new ItemToGridModel(this.AllItemToGridChangeWin, "Silenser");
                    this.ItemToGridColl.Add(this.ItemToGrid);
                    _SIVM.Dispose();
                }
            }
        }

        public ViewModelCommand CSilenserSelect { get; set; }
        #endregion
        #region Command SelectLauncher
        private void SelectLauncher()
        {
            if (this.ItemToGridColl.FirstOrDefault(p => p.Type == "Launcher") != null) this.ItemToGridColl.Remove(this.ItemToGridColl.First(p => p.Type == "Launcher"));
            SelectItemsView SIWindow = new SelectItemsView();
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", this.combineweap.IdLauncherItem, SIWindow);
            SIWindow.DataContext = _SIVM;
            SIWindow.ShowDialog();
            if (_SIVM.SelectedItems != null)
            {
                if (_SIVM.SelectedItems.Id != 0)
                {
                    this.AllItemToGridChangeWin = this._context.AttachmentDbSet.First(p => p.UiIndex == _SIVM.SelectedItems.Id);

                    this.ItemToGrid = new ItemToGridModel(this.AllItemToGridChangeWin, "Launcher");
                    this.ItemToGridColl.Add(this.ItemToGrid);
                    _SIVM.Dispose();
                }
            }
        }

        public ViewModelCommand CLauncherSelect { get; set; }
        #endregion
        #region Command SelectStock
        private void SelectStock()
        {
            if (this.ItemToGridColl.FirstOrDefault(p => p.Type == "Stock") != null) this.ItemToGridColl.Remove(this.ItemToGridColl.First(p => p.Type == "Stock"));
            SelectItemsView SIWindow = new SelectItemsView();
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", this.combineweap.IdStockItem, SIWindow);

            SIWindow.DataContext = _SIVM;
            SIWindow.ShowDialog();
            if (_SIVM.SelectedItems != null)
            {
                if (_SIVM.SelectedItems.Id != 0)
                {
                    this.AllItemToGridChangeWin = this._context.AttachmentDbSet.First(p => p.UiIndex == _SIVM.SelectedItems.Id);

                    this.ItemToGrid = new ItemToGridModel(this.AllItemToGridChangeWin, "Stock");
                    this.ItemToGridColl.Add(this.ItemToGrid);
                    _SIVM.Dispose();
                }
            }
        }

        public ViewModelCommand CStockSelect { get; set; }
        #endregion
        #region Command SelectBayonet
        private void SelectBayonet()
        {
            if (this.ItemToGridColl.FirstOrDefault(p => p.Type == "Bayonet") != null) this.ItemToGridColl.Remove(this.ItemToGridColl.First(p => p.Type == "Bayonet"));
            SelectItemsView SIWindow = new SelectItemsView();

            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", this.combineweap.IdBayonetItem, SIWindow);

            SIWindow.DataContext = _SIVM;
            SIWindow.ShowDialog();
            if (_SIVM.SelectedItems != null)
            {
                if (_SIVM.SelectedItems.Id != 0)
                {
                    this.AllItemToGridChangeWin = this._context.AttachmentDbSet.First(p => p.UiIndex == _SIVM.SelectedItems.Id);

                    this.ItemToGrid = new ItemToGridModel(this.AllItemToGridChangeWin, "Bayonet");
                    this.ItemToGridColl.Add(this.ItemToGrid);
                    _SIVM.Dispose();
                }
            }
        }

        public ViewModelCommand CBayonetSelect { get; set; }
        #endregion
        #region Command SelectMagazine
        private void SelectMagazine()
        {
            if (this.ItemToGridColl.FirstOrDefault(p => p.Type == "Magazine") != null) this.ItemToGridColl.Remove(this.ItemToGridColl.First(p => p.Type == "Magazine"));
            SelectItemsView SIWindow = new SelectItemsView();
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", this.combineweap.IdMagazineItem, SIWindow);

            SIWindow.DataContext = _SIVM;
            SIWindow.ShowDialog();
            if (_SIVM.SelectedItems != null)
            {
                if (_SIVM.SelectedItems.Id != 0)
                {
                    this.AllItemToGridChangeWin = this._context.AttachmentDbSet.First(p => p.UiIndex == _SIVM.SelectedItems.Id);

                    this.ItemToGrid = new ItemToGridModel(this.AllItemToGridChangeWin, "Magazine");
                    this.ItemToGridColl.Add(this.ItemToGrid);
                    _SIVM.Dispose();
                }
            }

        }

        public ViewModelCommand CMagazineSelect { get; set; }
        #endregion
        #region Command SelectInternal
        private void SelectInternal()
        {
            if (this.ItemToGridColl.FirstOrDefault(p => p.Type == "Internal") != null) this.ItemToGridColl.Remove(this.ItemToGridColl.First(p => p.Type == "Internal"));
            SelectItemsView SIWindow = new SelectItemsView();
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", this.combineweap.IdInternalItem, SIWindow);

            SIWindow.DataContext = _SIVM;
            SIWindow.ShowDialog();
            if (_SIVM.SelectedItems != null)
            {
                if (_SIVM.SelectedItems.Id != 0)
                {
                    this.AllItemToGridChangeWin = this._context.AttachmentDbSet.First(p => p.UiIndex == _SIVM.SelectedItems.Id);

                    this.ItemToGrid = new ItemToGridModel(this.AllItemToGridChangeWin, "Internal");
                    this.ItemToGridColl.Add(this.ItemToGrid);
                    _SIVM.Dispose();
                }
            }
        }

        public ViewModelCommand CInternalSelect { get; set; }
        #endregion
        #region Command SelectExternal
        private void SelectExternal()
        {
            if (this.ItemToGridColl.FirstOrDefault(p => p.Type == "External") != null) this.ItemToGridColl.Remove(this.ItemToGridColl.First(p => p.Type == "External"));
            SelectItemsView SIWindow = new SelectItemsView();
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", this.combineweap.IdExternalItem, SIWindow);

            SIWindow.DataContext = _SIVM;
            SIWindow.ShowDialog();
            if (_SIVM.SelectedItems != null)
            {
                if (_SIVM.SelectedItems.Id != 0)
                {
                    this.AllItemToGridChangeWin = this._context.AttachmentDbSet.First(p => p.UiIndex == _SIVM.SelectedItems.Id);

                    this.ItemToGrid = new ItemToGridModel(this.AllItemToGridChangeWin, "External");
                    this.ItemToGridColl.Add(this.ItemToGrid);
                    _SIVM.Dispose();
                }
            }
        }

        public ViewModelCommand CExternalSelect { get; set; }
        #endregion
    }
}



