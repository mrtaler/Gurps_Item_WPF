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

    class CombineWeapViewModel : INotifyPropertyChanged
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
                    RaisePropertyChanged("Weapon_Item_Image");
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


            CScopeSelect = new ActionCommand(SelectScope) { IsExecutable = false };
            //     CScopeSelect.CanExecute(CExecute(true));
            // CLaserSelect = new DelegateCommand(SelectLaser) ;
            //CLightSelect = new DelegateCommand(SelectLight) { IsExecutable = false };
            //CBipodSelect = new DelegateCommand(SelectBipod) { IsExecutable = false };
            //CSilenserSelect = new DelegateCommand(SelectSilenser) { IsExecutable = false };
            //CLauncherSelect = new DelegateCommand(SelectLauncher) { IsExecutable = false };
            //CStockSelect = new DelegateCommand(SelectStock) { IsExecutable = false };
            //CBayonetSelect = new DelegateCommand(SelectBayonet) { IsExecutable = false };
            //CMagazineSelect = new DelegateCommand(SelectMagazine) { IsExecutable = false };
            //CInternalSelect = new DelegateCommand(SelectInternal) { IsExecutable = false };
            //CExternalSelect = new DelegateCommand(SelectExternal) { IsExecutable = false };

            // CSelectWeapon = new RelayCommand(SelectWeapon);
        }
        bool canCScopeSelectreturn
        {
            get
            {
                if (combineweap != null) return (combineweap.IdLaserItem != null);
                else return false;
            }
        }
        #region Command SelectWeapon
        private void SelectWeapon(object parameter)
        {
            ItemToGridColl.Clear();
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Gun", null);
            SelectItemsView SIW = new SelectItemsView();

            SIW.DataContext = _SIVM;
            SIW.ShowDialog();
            AllItemToGridChangeWin = _context.ITEMs.First(p => p.uiIndex == _SIVM.SelectedItems.ID);
            Weapon_Item_Image = AllItemToGridChangeWin.Item_Image;
            combineweap = new CombineWeapModel(AllItemToGridChangeWin);
            ItemToGrid = new ItemToGridModel(AllItemToGridChangeWin);

            ItemToGridColl.Add(ItemToGrid);
            _SIVM.Dispose();

            if (combineweap.IdScopeItem != null)
                CScopeSelect.IsExecutable = true;
            //
            //{
            //    CScopeSelect.CanExecute(CExecute(true));
            //}

            if (combineweap.IdLaserItem != null)
                CLaserSelect.CanExecute(true);
            if (combineweap.IdLightItem != null)
                CLightSelect.CanExecute(true);
            if (combineweap.IdBipodItem != null)
                CBipodSelect.CanExecute(true);
            if (combineweap.IdSilenserItem != null)
                CSilenserSelect.CanExecute(true);
            if (combineweap.IdLauncherItem != null)
                CLauncherSelect.CanExecute(true);
            if (combineweap.IdStockItem != null)
                CStockSelect.CanExecute(true);
            if (combineweap.IdBayonetItem != null)
                CBayonetSelect.CanExecute(true);
            if (combineweap.IdMagazineItem != null)
                CMagazineSelect.CanExecute(true);
            if (combineweap.IdInternalItem != null)
                CInternalSelect.CanExecute(true);
            if (combineweap.IdExternalItem != null)
                CExternalSelect.CanExecute(true);
        }
        public DelegateCommand CSelectWeapon { get; set; }
        #endregion
        #region Command SelectScope
        private void SelectScope(/*object parameter*/)
        {
            if (ItemToGridColl.FirstOrDefault(p => p.Type == "Scope") != null)
                ItemToGridColl.Remove(ItemToGridColl.First(p => p.Type == "Scope"));
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", combineweap.IdScopeItem);
            SelectItemsView SIW = new SelectItemsView();
            SIW.DataContext = _SIVM;
            SIW.ShowDialog();
            if (_SIVM.SelectedItems.ID != 0)
            {
                AllItemToGridChangeWin = _context.ITEMs.First(p => p.uiIndex == _SIVM.SelectedItems.ID);
                ItemToGrid = new ItemToGridModel(AllItemToGridChangeWin, "Scope");
                ItemToGridColl.Add(ItemToGrid);
                _SIVM.Dispose();
            }
        }



        public ActionCommand CScopeSelect { get; set; }

        //public DelegateCommand CScopeSelect { get; set; }

        #endregion
        #region Command SelectLaser
        private void SelectLaser(object parameter)
        {
            if (ItemToGridColl.FirstOrDefault(p => p.Type == "Laser") != null)
                ItemToGridColl.Remove(ItemToGridColl.First(p => p.Type == "Laser"));
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", combineweap.IdLaserItem);
            SelectItemsView SIW = new SelectItemsView();
            SIW.DataContext = _SIVM;
            SIW.ShowDialog();
            if (_SIVM.SelectedItems.ID != 0)
            {
                AllItemToGridChangeWin = _context.ITEMs.First(p => p.uiIndex == _SIVM.SelectedItems.ID);

                ItemToGrid = new ItemToGridModel(AllItemToGridChangeWin, "Laser");
                ItemToGridColl.Add(ItemToGrid);
                _SIVM.Dispose();
            }
        }
        public DelegateCommand CLaserSelect { get; set; }
        #endregion
        #region Command SelectLight
        private void SelectLight(object parameter)
        {
            if (ItemToGridColl.FirstOrDefault(p => p.Type == "Light") != null)
                ItemToGridColl.Remove(ItemToGridColl.First(p => p.Type == "Light"));
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", combineweap.IdLightItem);
            SelectItemsView SIW = new SelectItemsView();
            SIW.DataContext = _SIVM;
            SIW.ShowDialog();
            if (_SIVM.SelectedItems.ID != 0)
            {
                AllItemToGridChangeWin = _context.ITEMs.First(p => p.uiIndex == _SIVM.SelectedItems.ID);

                ItemToGrid = new ItemToGridModel(AllItemToGridChangeWin, "Light");
                ItemToGridColl.Add(ItemToGrid);
                _SIVM.Dispose();
            }

        }
        public DelegateCommand CLightSelect { get; set; }
        #endregion
        #region Command SelectBipod
        private void SelectBipod(object parameter)
        {
            if (ItemToGridColl.FirstOrDefault(p => p.Type == "Bipod") != null)
                ItemToGridColl.Remove(ItemToGridColl.First(p => p.Type == "Bipod"));
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", combineweap.IdBipodItem);
            SelectItemsView SIW = new SelectItemsView();
            SIW.DataContext = _SIVM;
            SIW.ShowDialog();
            if (_SIVM.SelectedItems.ID != 0)
            {
                AllItemToGridChangeWin = _context.ITEMs.First(p => p.uiIndex == _SIVM.SelectedItems.ID);

                ItemToGrid = new ItemToGridModel(AllItemToGridChangeWin, "Bipod");
                ItemToGridColl.Add(ItemToGrid);
                _SIVM.Dispose();
            }
        }
        public DelegateCommand CBipodSelect { get; set; }
        #endregion
        #region Command SelectSilenser
        private void SelectSilenser(object parameter)
        {
            if (ItemToGridColl.FirstOrDefault(p => p.Type == "Silenser") != null)
                ItemToGridColl.Remove(ItemToGridColl.First(p => p.Type == "Silenser"));
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", combineweap.IdSilenserItem);
            SelectItemsView SIW = new SelectItemsView();
            SIW.DataContext = _SIVM;
            SIW.ShowDialog();
            if (_SIVM.SelectedItems.ID != 0)
            {
                AllItemToGridChangeWin = _context.ITEMs.First(p => p.uiIndex == _SIVM.SelectedItems.ID);

                ItemToGrid = new ItemToGridModel(AllItemToGridChangeWin, "Silenser");
                ItemToGridColl.Add(ItemToGrid);
                _SIVM.Dispose();
            }
        }
        public DelegateCommand CSilenserSelect { get; set; }
        #endregion
        #region Command SelectLauncher
        private void SelectLauncher(object parameter)
        {
            if (ItemToGridColl.FirstOrDefault(p => p.Type == "Launcher") != null)
                ItemToGridColl.Remove(ItemToGridColl.First(p => p.Type == "Launcher"));
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", combineweap.IdLauncherItem);
            SelectItemsView SIW = new SelectItemsView();
            SIW.DataContext = _SIVM;
            SIW.ShowDialog();
            if (_SIVM.SelectedItems.ID != 0)
            {
                AllItemToGridChangeWin = _context.ITEMs.First(p => p.uiIndex == _SIVM.SelectedItems.ID);

                ItemToGrid = new ItemToGridModel(AllItemToGridChangeWin, "Launcher");
                ItemToGridColl.Add(ItemToGrid);
                _SIVM.Dispose();
            }
        }
        public DelegateCommand CLauncherSelect { get; set; }
        #endregion
        #region Command SelectStock
        private void SelectStock(object parameter)
        {
            if (ItemToGridColl.FirstOrDefault(p => p.Type == "Stock") != null)
                ItemToGridColl.Remove(ItemToGridColl.First(p => p.Type == "Stock"));
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", combineweap.IdStockItem);
            SelectItemsView SIW = new SelectItemsView();
            SIW.DataContext = _SIVM;
            SIW.ShowDialog();
            if (_SIVM.SelectedItems.ID != 0)
            {
                AllItemToGridChangeWin = _context.ITEMs.First(p => p.uiIndex == _SIVM.SelectedItems.ID);

                ItemToGrid = new ItemToGridModel(AllItemToGridChangeWin, "Stock");
                ItemToGridColl.Add(ItemToGrid);
                _SIVM.Dispose();
            }
        }
        public DelegateCommand CStockSelect { get; set; }
        #endregion
        #region Command SelectBayonet
        private void SelectBayonet(object parameter)
        {
            if (ItemToGridColl.FirstOrDefault(p => p.Type == "Bayonet") != null)
                ItemToGridColl.Remove(ItemToGridColl.First(p => p.Type == "Bayonet"));
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", combineweap.IdBayonetItem);
            SelectItemsView SIW = new SelectItemsView();
            SIW.DataContext = _SIVM;
            SIW.ShowDialog();
            if (_SIVM.SelectedItems.ID != 0)
            {
                AllItemToGridChangeWin = _context.ITEMs.First(p => p.uiIndex == _SIVM.SelectedItems.ID);

                ItemToGrid = new ItemToGridModel(AllItemToGridChangeWin, "Bayonet");
                ItemToGridColl.Add(ItemToGrid);
                _SIVM.Dispose();
            }
        }
        public DelegateCommand CBayonetSelect { get; set; }
        #endregion
        #region Command SelectMagazine
        private void SelectMagazine(object parameter)
        {
            if (ItemToGridColl.FirstOrDefault(p => p.Type == "Magazine") != null)
                ItemToGridColl.Remove(ItemToGridColl.First(p => p.Type == "Magazine"));
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", combineweap.IdMagazineItem);
            SelectItemsView SIW = new SelectItemsView();
            SIW.DataContext = _SIVM;
            SIW.ShowDialog();
            if (_SIVM.SelectedItems.ID != 0)
            {
                AllItemToGridChangeWin = _context.ITEMs.First(p => p.uiIndex == _SIVM.SelectedItems.ID);

                ItemToGrid = new ItemToGridModel(AllItemToGridChangeWin, "Magazine");
                ItemToGridColl.Add(ItemToGrid);
                _SIVM.Dispose();
            }

        }
        public DelegateCommand CMagazineSelect { get; set; }
        #endregion
        #region Command SelectInternal
        private void SelectInternal(object parameter)
        {
            if (ItemToGridColl.FirstOrDefault(p => p.Type == "Internal") != null)
                ItemToGridColl.Remove(ItemToGridColl.First(p => p.Type == "Internal"));
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", combineweap.IdInternalItem);
            SelectItemsView SIW = new SelectItemsView();
            SIW.DataContext = _SIVM;
            SIW.ShowDialog();
            if (_SIVM.SelectedItems.ID != 0)
            {
                AllItemToGridChangeWin = _context.ITEMs.First(p => p.uiIndex == _SIVM.SelectedItems.ID);

                ItemToGrid = new ItemToGridModel(AllItemToGridChangeWin, "Internal");
                ItemToGridColl.Add(ItemToGrid);
                _SIVM.Dispose();
            }
        }
        public DelegateCommand CInternalSelect { get; set; }
        #endregion
        #region Command SelectExternal
        private void SelectExternal(object parameter)
        {
            if (ItemToGridColl.FirstOrDefault(p => p.Type == "External") != null)
                ItemToGridColl.Remove(ItemToGridColl.First(p => p.Type == "External"));
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Attachment", combineweap.IdExternalItem);
            SelectItemsView SIW = new SelectItemsView();
            SIW.DataContext = _SIVM;
            SIW.ShowDialog();
            if (_SIVM.SelectedItems.ID != 0)
            {
                AllItemToGridChangeWin = _context.ITEMs.First(p => p.uiIndex == _SIVM.SelectedItems.ID);

                ItemToGrid = new ItemToGridModel(AllItemToGridChangeWin, "External");
                ItemToGridColl.Add(ItemToGrid);
                _SIVM.Dispose();
            }
        }
        public DelegateCommand CExternalSelect { get; set; }
        #endregion

        #region inter
        public event PropertyChangedEventHandler PropertyChanged;
        private void RaisePropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
        #endregion
    }
}

/*   

    private void SelectWeapon_button_Click(object sender, RoutedEventArgs e)
        {
            if (IdItemWeaposn != 0)
            {
                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    //download weapon from items table and weapon;
                    ITEM itemLoad = (from z in context.ITEMs
                                     where z.uiIndex == WeaponCombine.IdWeaponItem
                                     select z).First();
                    WEAPON weaponLoad = (from p in context.WEAPONs
                                         where p.uiIndex == itemLoad.ubClassIndex
                                         select p).First();
                    context.Database.Connection.Close();
                    //inicialised combine weapon save table
                    _cw.IdWeapon = WeaponCombine.IdWeaponItem;


                    //Загрузка картинки основного оружия
                    if (itemLoad.Item_Image != null)
                    {
                        // MemoryStream stream = new MemoryStream(item.Item_Image);

                        using (var ms = new MemoryStream(itemLoad.Item_Image, 0, itemLoad.Item_Image.Length))
                        {
                            var image = new BitmapImage();
                            image.BeginInit();
                            image.CacheOption = BitmapCacheOption.OnLoad;
                            image.StreamSource = ms;
                            image.EndInit();
                            WeaponImage.Source = image;
                        }
                    }
                    else WeaponImage.Source = null;

                    ItemFromGrid weaponToGrid = new ItemFromGrid(itemLoad, weaponLoad);

                    ItemDataGrid.Items.Add(weaponToGrid);//

                    _damagee = weaponToGrid.Damage;

                    ItemDataGrid.ColumnWidth = DataGridLength.Auto;

                    
                }
            }
        }
        //1
        private void ScopeSelect_button_Click(object sender, RoutedEventArgs e)
        {
            SelectItems selectItems = new SelectItems("Attachment", 1, _mountScope);

            selectItems.Owner = this;
            selectItems.ShowDialog();

            if (IdItemWeaposn != 0)
            {
                List<ItemFromGrid> k = new List<ItemFromGrid>();
                foreach (ItemFromGrid item in ItemDataGrid.Items) { if (item.Type == "Scope") k.Add(item); }
                foreach (ItemFromGrid item in k) { ItemDataGrid.Items.Remove(item); }
                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    ITEM itemScope = (from p in context.ITEMs
                                      where p.uiIndex == WeaponCombine.IdScopeItem
                                      select p).First();
                    Attachment attScope = (from p in context.Attachments
                                           where p.uiIndex == itemScope.ubClassIndex
                                           select p).First();// передать этот экземпляр в другую форму.
                    _cw.ScopeSelect = WeaponCombine.IdScopeItem;
                    IdItemWeaposn = 0;
                    ItemFromGrid scopeEr = new ItemFromGrid(itemScope, attScope, "Scope");
                    ItemDataGrid.Items.Add(scopeEr);

                }
            }
        }
        private void LaserSelect_button_Click(object sender, RoutedEventArgs e)
        {
            SelectItems selectItems = new SelectItems("Attachment", 2, _mountLaser);

            selectItems.Owner = this;
            selectItems.ShowDialog();

            if (IdItemWeaposn != 0)
            {
                List<ItemFromGrid> k = new List<ItemFromGrid>();
                foreach (ItemFromGrid item in ItemDataGrid.Items) { if (item.Type == "Laser") k.Add(item); }
                foreach (ItemFromGrid item in k) { ItemDataGrid.Items.Remove(item); }

                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    ITEM itemLaser = (from p in context.ITEMs
                                      where p.uiIndex == WeaponCombine.IdLaserItem
                                      select p).First();
                    Attachment attLaser = (from p in context.Attachments
                                           where p.uiIndex == itemLaser.ubClassIndex
                                           select p).First();// передать этот экземпляр в другую форму.

                    context.Database.Connection.Close();
                    _cw.LaserSelect = WeaponCombine.IdLaserItem;
                    IdItemWeaposn = 0;

                    ItemFromGrid laserEr = new ItemFromGrid(itemLaser, attLaser, "Laser");
                    ItemDataGrid.Items.Add(laserEr);

                }
            }
        }

        private void LightSelect_button_Click(object sender, RoutedEventArgs e)
        {
            SelectItems selectItems = new SelectItems("Attachment", 3, _mountLight);
            selectItems.Owner = this;
            selectItems.ShowDialog();
            if (IdItemWeaposn != 0)
            {
                List<ItemFromGrid> k = new List<ItemFromGrid>();
                foreach (ItemFromGrid item in ItemDataGrid.Items) { if (item.Type == "Light") k.Add(item); }
                foreach (ItemFromGrid item in k) { ItemDataGrid.Items.Remove(item); }
                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    ITEM itemLight = (from p in context.ITEMs
                                      where p.uiIndex == WeaponCombine.IdLightItem
                                      select p).First();
                    Attachment attlight = (from p in context.Attachments
                                           where p.uiIndex == itemLight.ubClassIndex
                                           select p).First();// передать этот экземпляр в другую форму.
                    _cw.LightSelect = WeaponCombine.IdLightItem;
                    context.Database.Connection.Close();
                    IdItemWeaposn = 0;
                    ItemFromGrid lightEr = new ItemFromGrid(itemLight, attlight, "Light");
                    ItemDataGrid.Items.Add(lightEr);
                }
            }
        }

        private void BipodSelect_button_Click(object sender, RoutedEventArgs e)
        {
            SelectItems selectItems = new SelectItems("Attachment", 4, _mountBipod);
            selectItems.Owner = this;
            selectItems.ShowDialog();
            if (IdItemWeaposn != 0)
            {
                List<ItemFromGrid> k = new List<ItemFromGrid>();
                foreach (ItemFromGrid item in ItemDataGrid.Items) { if (item.Type == "Bipod") k.Add(item); }
                foreach (ItemFromGrid item in k) { ItemDataGrid.Items.Remove(item); }
                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    ITEM itemBipod = (from p in context.ITEMs
                                      where p.uiIndex == WeaponCombine.IdBipodItem
                                      select p).First();
                    Attachment attBipod = (from p in context.Attachments
                                           where p.uiIndex == itemBipod.ubClassIndex
                                           select p).First();// передать этот экземпляр в другую форму.
                    _cw.BipodSelect = WeaponCombine.IdBipodItem;
                    context.Database.Connection.Close();
                    IdItemWeaposn = 0;
                    ItemFromGrid bipodEr = new ItemFromGrid(itemBipod, attBipod, "Bipod");

                    ItemDataGrid.Items.Add(bipodEr);
                }
            }
        }

        private void SilenserSelect_button_Click(object sender, RoutedEventArgs e)
        {
            SelectItems selectItems = new SelectItems("Attachment", 5, _mountSilenser);

            selectItems.Owner = this;
            selectItems.ShowDialog();

            if (IdItemWeaposn != 0)
            {
                List<ItemFromGrid> k = new List<ItemFromGrid>();
                foreach (ItemFromGrid item in ItemDataGrid.Items) { if (item.Type == "Silenser") k.Add(item); }
                foreach (ItemFromGrid item in k) { ItemDataGrid.Items.Remove(item); }

                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    ITEM itemSilenser = (from p in context.ITEMs
                                         where p.uiIndex == WeaponCombine.IdSilenserItem
                                         select p).First();
                    Attachment attSilenser = (from p in context.Attachments
                                              where p.uiIndex == itemSilenser.ubClassIndex
                                              select p).First();// передать этот экземпляр в другую форму.

                    _cw.SilenserSelect = WeaponCombine.IdSilenserItem;
                    context.Database.Connection.Close();
                    IdItemWeaposn = 0;
                    ItemFromGrid silenserEr = new ItemFromGrid(itemSilenser, attSilenser, "Silenser");

                    ItemDataGrid.Items.Add(silenserEr);
                }
            }
        }

        private void LauncherSelect_button_Click(object sender, RoutedEventArgs e)
        {
            SelectItems selectItems = new SelectItems("Attachment", 6, _mountLauncher);

            selectItems.Owner = this;
            selectItems.ShowDialog();

            if (IdItemWeaposn != 0)
            {
                List<ItemFromGrid> k = new List<ItemFromGrid>();
                foreach (ItemFromGrid item in ItemDataGrid.Items) { if (item.Type == "Launcher") k.Add(item); }
                foreach (ItemFromGrid item in k) { ItemDataGrid.Items.Remove(item); }

                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    ITEM itemLauncher = (from p in context.ITEMs
                                         where p.uiIndex == WeaponCombine.IdLauncherItem
                                         select p).First();
                    Attachment attLauncher = (from p in context.Attachments
                                              where p.uiIndex == itemLauncher.ubClassIndex
                                              select p).First();// передать этот экземпляр в другую форму.
                    _cw.LauncherSelect = WeaponCombine.IdLauncherItem;
                    context.Database.Connection.Close();
                    IdItemWeaposn = 0;
                    ItemFromGrid launcherEr = new ItemFromGrid(itemLauncher, attLauncher, "Launcher");

                    ItemDataGrid.Items.Add(launcherEr);
                }
            }
        }

        private void StockSelect_button_Click(object sender, RoutedEventArgs e)
        {
            SelectItems selectItems = new SelectItems("Attachment", 7, _mountStock);

            selectItems.Owner = this;
            selectItems.ShowDialog();

            if (IdItemWeaposn != 0)
            {
                List<ItemFromGrid> k = new List<ItemFromGrid>();
                foreach (ItemFromGrid item in ItemDataGrid.Items) { if (item.Type == "Stock") k.Add(item); }
                foreach (ItemFromGrid item in k) { ItemDataGrid.Items.Remove(item); }

                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    ITEM itemStock = (from p in context.ITEMs
                                      where p.uiIndex == WeaponCombine.IdStockItem
                                      select p).First();
                    Attachment attStock = (from p in context.Attachments
                                           where p.uiIndex == itemStock.ubClassIndex
                                           select p).First();// передать этот экземпляр в другую форму.

                    _cw.StockSelect = WeaponCombine.IdStockItem;
                    context.Database.Connection.Close();
                    IdItemWeaposn = 0;
                    ItemFromGrid stockEr = new ItemFromGrid(itemStock, attStock, "Stock");

                    ItemDataGrid.Items.Add(stockEr);
                }
            }
        }

        private void BayonetSelect_button_Click(object sender, RoutedEventArgs e)
        {
            SelectItems selectItems = new SelectItems("Attachment", 8, _mountBayonet);

            selectItems.Owner = this;
            selectItems.ShowDialog();

            if (IdItemWeaposn != 0)
            {
                List<ItemFromGrid> k = new List<ItemFromGrid>();
                foreach (ItemFromGrid item in ItemDataGrid.Items) { if (item.Type == "Bayonet") k.Add(item); }
                foreach (ItemFromGrid item in k) { ItemDataGrid.Items.Remove(item); }

                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    ITEM itemBayonet = (from p in context.ITEMs
                                        where p.uiIndex == WeaponCombine.IdBayonetItem
                                        select p).First();
                    Attachment attBayonet = (from p in context.Attachments
                                             where p.uiIndex == itemBayonet.ubClassIndex
                                             select p).First();// передать этот экземпляр в другую форму.

                    _cw.BayonetSelect = WeaponCombine.IdBayonetItem;
                    IdItemWeaposn = 0;
                    ItemFromGrid bayonetEr = new ItemFromGrid(itemBayonet, attBayonet, "Bayonet");
                    ItemDataGrid.Items.Add(bayonetEr);
                }
            }
        }

        private void MagazineSelect_button_Click(object sender, RoutedEventArgs e)
        {
            SelectItems selectItems = new SelectItems("Attachment", 9, _mountMagazine);

            selectItems.Owner = this;
            selectItems.ShowDialog();

            if (IdItemWeaposn != 0)
            {
                List<ItemFromGrid> k = new List<ItemFromGrid>();
                foreach (ItemFromGrid item in ItemDataGrid.Items) { if (item.Type == "Magazine") k.Add(item); }
                foreach (ItemFromGrid item in k) { ItemDataGrid.Items.Remove(item); }

                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    ITEM itemMagazine = (from p in context.ITEMs
                                         where p.uiIndex == WeaponCombine.IdMagazineItem
                                         select p).First();
                    Attachment attMagazine = (from p in context.Attachments
                                              where p.uiIndex == itemMagazine.ubClassIndex
                                              select p).First();// передать этот экземпляр в другую форму.

                    _cw.MagazineSelect = WeaponCombine.IdMagazineItem;
                    context.Database.Connection.Close();
                    IdItemWeaposn = 0;
                    ItemFromGrid magazineEr = new ItemFromGrid(itemMagazine, attMagazine, "Magazine");

                    ItemDataGrid.Items.Add(magazineEr);
                }
            }
        }



        private void Saved_button_Click(object sender, RoutedEventArgs e)
        {
            SelectItems selectItems = new SelectItems(325);

            selectItems.Owner = this;
            selectItems.ShowDialog();
            //label.Content

        }

        private void Save_button_Click(object sender, RoutedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                if (WeaponCombine.IdWeaponItem != 0)
                {
                    context.CombineWeaps.Add(_cw);
                    context.SaveChanges();
                    Label.Content = _cw.id.ToString();
                    WeaponCombine.IdWeaponItem = 0;
                    _cw = new CombineWeap();
                }
                else MessageBox.Show("CW is NULL");
            }
        }



        private void Del_button_Click(object sender, RoutedEventArgs e)
        {

            var selectedCell = ItemDataGrid.SelectedCells[13];


            var cellContent = selectedCell.Column.GetCellContent(selectedCell.Item);

            MessageBox.Show((cellContent as TextBlock).Text);
            ItemDataGrid.Items.Remove(ItemDataGrid.SelectedItem);
        }

        private void Dice_button_Click(object sender, RoutedEventArgs e)
        {
            string[] ss;
            ss = _damagee.Split('d');
            if (ss.Length == 1) { Label1.Content = ss[0]; Label2.Content = ""; }
            else { Label1.Content = ss[0]; Label2.Content = ss[1]; }
            Label.Content = (Dice.RollDie(Convert.ToInt32(ss[0]), 6)).ToString();

        }
    }
*/
