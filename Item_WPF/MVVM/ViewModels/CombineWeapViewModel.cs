using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Item_WPF.MVVM.Models;
using Item_WPF.addin;
using Item_WPF.MVVM.View;

namespace Item_WPF.MVVM.ViewModels
{

    class CombineWeapViewModel
    {

        public ItemToGridModel ItemToGrid;
        public CombineWeapModel CombineWeap;
        public CombineWeapViewModel()
        {
           CSelectWeapon = new ActionCommand(SelectWeapon) { IsExecutable = true };
           // CSelectWeapon = new RelayCommand(SelectWeapon);
        }
        #region Command Refrekshnew
        private void SelectWeapon()
        {
            SelectItemsViewModel _SIVM = new SelectItemsViewModel("Gun");
            SelectItemsView SIW = new SelectItemsView();
            SIW.DataContext= _SIVM;
            SIW.ShowDialog();
            ItemToGrid = new ItemToGridModel(new ITEM );
        }
        public ActionCommand CSelectWeapon { get; set; }
        #endregion
    }
}
/*   

    private void SelectWeapon_button_Click(object sender, RoutedEventArgs e)
        {
            ScopeSelectButton.Visibility = Visibility.Hidden;      //1
            LaserSelectButton.Visibility = Visibility.Hidden;
            LightSelectButton.Visibility = Visibility.Hidden;
            BipodSelectButton.Visibility = Visibility.Hidden;
            SilenserSelectButton.Visibility = Visibility.Hidden;
            LauncherSelectButton.Visibility = Visibility.Hidden;
            StockSelectButton.Visibility = Visibility.Hidden;
            BayonetSelectButton.Visibility = Visibility.Hidden;
            MagazineSelectButton.Visibility = Visibility.Hidden;
            InternalSelectButton.Visibility = Visibility.Hidden;
            ExternalSelectButton.Visibility = Visibility.Hidden;

            WeaponCombine.WeapCombNull();

            SelectItems selectItems = new SelectItems(1, "gun");

            selectItems.Owner = this;
            selectItems.ShowDialog();
            ItemDataGrid.Items.Clear();


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

                    List<AvailableAttachSlot> avSlot = (from p in context.AvailableAttachSlots
                                                        where p.rWeaponId == weaponLoad.uiIndex
                                                        select p).ToList();
                    foreach (AvailableAttachSlot items in avSlot)
                    {
                        if (items.rATTACHMENTSLOT == 1)
                        {
                            ScopeSelectButton.Visibility = Visibility.Visible;
                            _mountScope = items.rAttachmentmount;
                        }
                        if (items.rATTACHMENTSLOT == 2)
                        {
                            LaserSelectButton.Visibility = Visibility.Visible;
                            _mountLaser = items.rAttachmentmount;
                        }
                        if (items.rATTACHMENTSLOT == 3)
                        {
                            LightSelectButton.Visibility = Visibility.Visible;
                            _mountLight = items.rAttachmentmount;
                        }
                        if (items.rATTACHMENTSLOT == 4)
                        {
                            _mountBipod = items.rAttachmentmount;
                            BipodSelectButton.Visibility = Visibility.Visible;
                        }
                        if (items.rATTACHMENTSLOT == 5)
                        {
                            _mountSilenser = items.rAttachmentmount;
                            SilenserSelectButton.Visibility = Visibility.Visible;
                        }
                        if (items.rATTACHMENTSLOT == 6)
                        {
                            _mountLauncher = items.rAttachmentmount;
                            LauncherSelectButton.Visibility = Visibility.Visible;
                        }
                        if (items.rATTACHMENTSLOT == 7)
                        {
                            _mountStock = items.rAttachmentmount;
                            StockSelectButton.Visibility = Visibility.Visible;
                        }
                        if (items.rATTACHMENTSLOT == 8)
                        {
                            _mountBayonet = items.rAttachmentmount;
                            BayonetSelectButton.Visibility = Visibility.Visible;
                        }
                        if (items.rATTACHMENTSLOT == 9)
                        {
                            _mountMagazine = items.rAttachmentmount;
                            MagazineSelectButton.Visibility = Visibility.Visible;
                        }
                        if (items.rATTACHMENTSLOT == 10)
                        {
                            _mountInternal = items.rAttachmentmount;
                            InternalSelectButton.Visibility = Visibility.Visible;
                        }
                        if (items.rATTACHMENTSLOT == 11)
                        {
                            _mountExternal = items.rAttachmentmount;
                            ExternalSelectButton.Visibility = Visibility.Visible;
                        }
                    }
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