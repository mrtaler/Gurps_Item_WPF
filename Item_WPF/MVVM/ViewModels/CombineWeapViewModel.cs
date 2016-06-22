using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Item_WPF.MVVM.Models;
using Item_WPF.addin;
using Item_WPF.MVVM.View;
using System.Collections.ObjectModel;
using System.ComponentModel;

namespace Item_WPF.MVVM.ViewModels
{

    class CombineWeapViewModel : ViewModelBase
    {
        private item1Entities _context;
        private byte[] _Weapon_Item_Image;
        public byte[] Weapon_Item_Image
        {
            get
            {
                return _Weapon_Item_Image;
            }
            set
            {
                if (_Weapon_Item_Image != value)
                {
                    _Weapon_Item_Image = value;
                    NotifyPropertyChanged("Weapon_Item_Image");
                }
            }
        }
        public ItemToGridModel ItemToGrid { get; set; }
        public ObservableCollection<ItemToGridModel> ItemToGridColl { get; set; }
        public CombineWeapModel combineweap { get; set; }
        public ITEM AllItemToGridChangeWin { get; set; }
        public CombineWeapViewModel()
        {
            _context = new item1Entities();
            ItemToGridColl = new ObservableCollection<ItemToGridModel>();

            CSelectWeapon = new DelegateCommand(SelectWeapon);//work


            CScopeSelect = new ViewModelCommand(SelectScope, false);

            CLaserSelect = new ViewModelCommand(SelectLaser, false);
            CLightSelect = new ViewModelCommand(SelectLight, false);
            CBipodSelect = new ViewModelCommand(SelectBipod, false);
            CSilenserSelect = new ViewModelCommand(SelectSilenser, false);
            CLauncherSelect = new ViewModelCommand(SelectLauncher, false);
            CStockSelect = new ViewModelCommand(SelectStock, false);
            CBayonetSelect = new ViewModelCommand(SelectBayonet, false);
            CMagazineSelect = new ViewModelCommand(SelectMagazine, false);
            CInternalSelect = new ViewModelCommand(SelectInternal, false);
            CExternalSelect = new ViewModelCommand(SelectExternal, false);

            CAmmoSelect = new ViewModelCommand(AmmoSelect, false);
        }
        #region Command AmmoSelect
        private void AmmoSelect(object parameter)
        {
            AmmoView AmmoviewWinn = new AmmoView();
            AmmoViewModel AmmoviewMod = new AmmoViewModel(combineweap.idCalibre);
            AmmoviewWinn.DataContext = AmmoviewMod;
            AmmoviewWinn.ShowDialog();
        }
        public ViewModelCommand CAmmoSelect { get; set; }
        #endregion
        #region Command SelectWeapon
        private void SelectWeapon(object parameter)
        {
            ItemToGridColl.Clear();
            Weapon_Item_Image = null;

            SelectItemsView SIWvindow = new SelectItemsView();
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Gun", null, SIWvindow);

            SIWvindow.DataContext = _SIVM;
            SIWvindow.ShowDialog();
            if (_SIVM.SelectedItems != null)
            {

                
                AllItemToGridChangeWin = _SIVM.Items.FirstOrDefault(p => p.uiIndex == _SIVM.SelectedItems.ID);
                Weapon_Item_Image = AllItemToGridChangeWin.Item_Image;
                combineweap = new CombineWeapModel(AllItemToGridChangeWin);
                ItemToGrid = new ItemToGridModel(AllItemToGridChangeWin);

                ItemToGridColl.Add(ItemToGrid);
                _SIVM.Dispose();

                if (combineweap.IdScopeItem != null)
                    CScopeSelect.CanExecute = true;
                if (combineweap.IdLaserItem != null)
                    CLaserSelect.CanExecute = true;
                if (combineweap.IdLightItem != null)
                    CLightSelect.CanExecute = true;
                if (combineweap.IdBipodItem != null)
                    CBipodSelect.CanExecute = true;
                if (combineweap.IdSilenserItem != null)
                    CSilenserSelect.CanExecute = true;
                if (combineweap.IdLauncherItem != null)
                    CLauncherSelect.CanExecute = true;
                if (combineweap.IdStockItem != null)
                    CStockSelect.CanExecute = true;
                if (combineweap.IdBayonetItem != null)
                    CBayonetSelect.CanExecute = true;
                if (combineweap.IdMagazineItem != null)
                    CMagazineSelect.CanExecute = true;
                if (combineweap.IdInternalItem != null)
                    CInternalSelect.CanExecute = true;
                if (combineweap.IdExternalItem != null)
                    CExternalSelect.CanExecute = true;
                CAmmoSelect.CanExecute = true;
            }
        }
        public DelegateCommand CSelectWeapon { get; set; }
        #endregion
        #region Command SelectScope
        private void SelectScope(object parameter)
        {
            if (ItemToGridColl.FirstOrDefault(p => p.Type == "Scope") != null)
                ItemToGridColl.Remove(ItemToGridColl.First(p => p.Type == "Scope"));
            SelectItemsView SIWindow = new SelectItemsView();
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", combineweap.IdScopeItem, SIWindow);
            SIWindow.DataContext = _SIVM;
            SIWindow.ShowDialog();

            if (_SIVM.SelectedItems != null)
            {
                if (_SIVM.SelectedItems.ID != 0)
                {
                    AllItemToGridChangeWin = _context.ITEMs.First(p => p.uiIndex == _SIVM.SelectedItems.ID);
                    ItemToGrid = new ItemToGridModel(AllItemToGridChangeWin, "Scope");
                    ItemToGridColl.Add(ItemToGrid);
                    _SIVM.Dispose();
                }
            }
        }
        public ViewModelCommand CScopeSelect { get; set; }

        //public DelegateCommand CScopeSelect { get; set; }

        #endregion
        #region Command SelectLaser
        private void SelectLaser()
        {
            if (ItemToGridColl.FirstOrDefault(p => p.Type == "Laser") != null)
                ItemToGridColl.Remove(ItemToGridColl.First(p => p.Type == "Laser"));

            SelectItemsView SIWindow = new SelectItemsView();
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", combineweap.IdLaserItem, SIWindow);
            SIWindow.DataContext = _SIVM;
            SIWindow.ShowDialog();
            if (_SIVM.SelectedItems != null)
            {
                if (_SIVM.SelectedItems.ID != 0)
                {
                    AllItemToGridChangeWin = _context.ITEMs.First(p => p.uiIndex == _SIVM.SelectedItems.ID);

                    ItemToGrid = new ItemToGridModel(AllItemToGridChangeWin, "Laser");
                    ItemToGridColl.Add(ItemToGrid);
                    _SIVM.Dispose();
                }
            }
        }
        public ViewModelCommand CLaserSelect { get; set; }
        #endregion
        #region Command SelectLight
        private void SelectLight()
        {
            if (ItemToGridColl.FirstOrDefault(p => p.Type == "Light") != null)
                ItemToGridColl.Remove(ItemToGridColl.First(p => p.Type == "Light"));
            SelectItemsView SIWindow = new SelectItemsView();
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", combineweap.IdLightItem, SIWindow);

            SIWindow.DataContext = _SIVM;
            SIWindow.ShowDialog();
            if (_SIVM.SelectedItems != null)
            {
                if (_SIVM.SelectedItems.ID != 0)
                {
                    AllItemToGridChangeWin = _context.ITEMs.First(p => p.uiIndex == _SIVM.SelectedItems.ID);

                    ItemToGrid = new ItemToGridModel(AllItemToGridChangeWin, "Light");
                    ItemToGridColl.Add(ItemToGrid);
                    _SIVM.Dispose();
                }
            }

        }
        public ViewModelCommand CLightSelect { get; set; }
        #endregion
        #region Command SelectBipod
        private void SelectBipod()
        {
            if (ItemToGridColl.FirstOrDefault(p => p.Type == "Bipod") != null)
                ItemToGridColl.Remove(ItemToGridColl.First(p => p.Type == "Bipod"));
            SelectItemsView SIWindow = new SelectItemsView();
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", combineweap.IdBipodItem, SIWindow);

            SIWindow.DataContext = _SIVM;
            SIWindow.ShowDialog();
            if (_SIVM.SelectedItems != null)
            {
                if (_SIVM.SelectedItems.ID != 0)
                {
                    AllItemToGridChangeWin = _context.ITEMs.First(p => p.uiIndex == _SIVM.SelectedItems.ID);

                    ItemToGrid = new ItemToGridModel(AllItemToGridChangeWin, "Bipod");
                    ItemToGridColl.Add(ItemToGrid);
                    _SIVM.Dispose();
                }
            }
        }
        public ViewModelCommand CBipodSelect { get; set; }
        #endregion
        #region Command SelectSilenser
        private void SelectSilenser()
        {
            if (ItemToGridColl.FirstOrDefault(p => p.Type == "Silenser") != null)
                ItemToGridColl.Remove(ItemToGridColl.First(p => p.Type == "Silenser"));
            SelectItemsView SIWindow = new SelectItemsView();
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", combineweap.IdSilenserItem, SIWindow);

            SIWindow.DataContext = _SIVM;
            SIWindow.ShowDialog();
            if (_SIVM.SelectedItems != null)
            {
                if (_SIVM.SelectedItems.ID != 0)
                {
                    AllItemToGridChangeWin = _context.ITEMs.First(p => p.uiIndex == _SIVM.SelectedItems.ID);

                    ItemToGrid = new ItemToGridModel(AllItemToGridChangeWin, "Silenser");
                    ItemToGridColl.Add(ItemToGrid);
                    _SIVM.Dispose();
                }
            }
        }
        public ViewModelCommand CSilenserSelect { get; set; }
        #endregion
        #region Command SelectLauncher
        private void SelectLauncher()
        {
            if (ItemToGridColl.FirstOrDefault(p => p.Type == "Launcher") != null)
                ItemToGridColl.Remove(ItemToGridColl.First(p => p.Type == "Launcher"));
            SelectItemsView SIWindow = new SelectItemsView();
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", combineweap.IdLauncherItem, SIWindow);
            SIWindow.DataContext = _SIVM;
            SIWindow.ShowDialog();
            if (_SIVM.SelectedItems != null)
            {
                if (_SIVM.SelectedItems.ID != 0)
                {
                    AllItemToGridChangeWin = _context.ITEMs.First(p => p.uiIndex == _SIVM.SelectedItems.ID);

                    ItemToGrid = new ItemToGridModel(AllItemToGridChangeWin, "Launcher");
                    ItemToGridColl.Add(ItemToGrid);
                    _SIVM.Dispose();
                }
            }
        }
        public ViewModelCommand CLauncherSelect { get; set; }
        #endregion
        #region Command SelectStock
        private void SelectStock()
        {
            if (ItemToGridColl.FirstOrDefault(p => p.Type == "Stock") != null)
                ItemToGridColl.Remove(ItemToGridColl.First(p => p.Type == "Stock"));
            SelectItemsView SIWindow = new SelectItemsView();
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", combineweap.IdStockItem, SIWindow);

            SIWindow.DataContext = _SIVM;
            SIWindow.ShowDialog();
            if (_SIVM.SelectedItems != null)
            {
                if (_SIVM.SelectedItems.ID != 0)
                {
                    AllItemToGridChangeWin = _context.ITEMs.First(p => p.uiIndex == _SIVM.SelectedItems.ID);

                    ItemToGrid = new ItemToGridModel(AllItemToGridChangeWin, "Stock");
                    ItemToGridColl.Add(ItemToGrid);
                    _SIVM.Dispose();
                }
            }
        }
        public ViewModelCommand CStockSelect { get; set; }
        #endregion
        #region Command SelectBayonet
        private void SelectBayonet()
        {
            if (ItemToGridColl.FirstOrDefault(p => p.Type == "Bayonet") != null)
                ItemToGridColl.Remove(ItemToGridColl.First(p => p.Type == "Bayonet"));
            SelectItemsView SIWindow = new SelectItemsView();

            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", combineweap.IdBayonetItem, SIWindow);

            SIWindow.DataContext = _SIVM;
            SIWindow.ShowDialog();
            if (_SIVM.SelectedItems != null)
            {
                if (_SIVM.SelectedItems.ID != 0)
                {
                    AllItemToGridChangeWin = _context.ITEMs.First(p => p.uiIndex == _SIVM.SelectedItems.ID);

                    ItemToGrid = new ItemToGridModel(AllItemToGridChangeWin, "Bayonet");
                    ItemToGridColl.Add(ItemToGrid);
                    _SIVM.Dispose();
                }
            } }
        public ViewModelCommand CBayonetSelect { get; set; }
        #endregion
        #region Command SelectMagazine
        private void SelectMagazine()
        {
            if (ItemToGridColl.FirstOrDefault(p => p.Type == "Magazine") != null)
                ItemToGridColl.Remove(ItemToGridColl.First(p => p.Type == "Magazine"));
            SelectItemsView SIWindow = new SelectItemsView();
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", combineweap.IdMagazineItem, SIWindow);

            SIWindow.DataContext = _SIVM;
            SIWindow.ShowDialog();
            if (_SIVM.SelectedItems != null)
            {
                if (_SIVM.SelectedItems.ID != 0)
                {
                    AllItemToGridChangeWin = _context.ITEMs.First(p => p.uiIndex == _SIVM.SelectedItems.ID);

                    ItemToGrid = new ItemToGridModel(AllItemToGridChangeWin, "Magazine");
                    ItemToGridColl.Add(ItemToGrid);
                    _SIVM.Dispose();
                }
            }

        }
        public ViewModelCommand CMagazineSelect { get; set; }
        #endregion
        #region Command SelectInternal
        private void SelectInternal()
        {
            if (ItemToGridColl.FirstOrDefault(p => p.Type == "Internal") != null)
                ItemToGridColl.Remove(ItemToGridColl.First(p => p.Type == "Internal"));
            SelectItemsView SIWindow = new SelectItemsView();
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", combineweap.IdInternalItem, SIWindow);

            SIWindow.DataContext = _SIVM;
            SIWindow.ShowDialog();
            if (_SIVM.SelectedItems != null)
            {
                if (_SIVM.SelectedItems.ID != 0)
                {
                    AllItemToGridChangeWin = _context.ITEMs.First(p => p.uiIndex == _SIVM.SelectedItems.ID);

                    ItemToGrid = new ItemToGridModel(AllItemToGridChangeWin, "Internal");
                    ItemToGridColl.Add(ItemToGrid);
                    _SIVM.Dispose();
                }
            }
        }
        public ViewModelCommand CInternalSelect { get; set; }
        #endregion
        #region Command SelectExternal
        private void SelectExternal()
        {
            if (ItemToGridColl.FirstOrDefault(p => p.Type == "External") != null)
                ItemToGridColl.Remove(ItemToGridColl.First(p => p.Type == "External"));
            SelectItemsView SIWindow = new SelectItemsView();
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", combineweap.IdExternalItem, SIWindow);

            SIWindow.DataContext = _SIVM;
            SIWindow.ShowDialog();
            if (_SIVM.SelectedItems != null)
            {
                if (_SIVM.SelectedItems.ID != 0)
                {
                    AllItemToGridChangeWin = _context.ITEMs.First(p => p.uiIndex == _SIVM.SelectedItems.ID);

                    ItemToGrid = new ItemToGridModel(AllItemToGridChangeWin, "External");
                    ItemToGridColl.Add(ItemToGrid);
                    _SIVM.Dispose();
                }
            } }
        public ViewModelCommand CExternalSelect { get; set; }
        #endregion
    }
}
 

   
