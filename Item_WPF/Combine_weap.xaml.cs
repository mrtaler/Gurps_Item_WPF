using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using Item_WPF.addin;

namespace Item_WPF
{
    /// <summary>
    /// Логика взаимодействия для Combine_weap.xaml
    /// </summary>
    public partial class Combine_weap : Window
    {
        public int IdItemWeaposn = 0;
        public int AttachScope;
        private int _mountScope;
        private int _mountLaser;
        private int _mountLight;
        private int _mountBipod;
        private int _mountSilenser;
        private int _mountLauncher;
        private int _mountStock;
        private int _mountBayonet;
        private int _mountMagazine;
        private int _mountInternal;
        private int _mountExternal;

        private string _damagee;

        CombineWeap _cw = new CombineWeap();

        //private class Weapon_Item
        //{
        //    public ITEM item_s { get; set; }
        //    public WEAPON weapon_s { get; set; }
        //}

        private class ItemFromGrid
        {
            public ITEM ItemS { get; set; }
            public WEAPON WeaponS { get; set; }

            public Attachment ScopeS { get; set; }

            public string Type { get; set; }
            public string Name { get; set; }
            public string Tl { get; set; }
            public string Damage { get; set; }
            public string DefAcc { get; set; }

            public string Rof { get; set; }
            public string Range { get; set; }
            public string Weigth { get; set; }
            public string Shots { get; set; }
            public string MinSt { get; set; }

            public string Rcl { get; set; }
            public string Cost { get; set; }
            public string Lc { get; set; }
            public string Bulk { get; set; }
            public ItemFromGrid(ITEM itt, WEAPON weap)
            {
                Name = itt.szItemName;
                Tl = itt.TL1.name_TL;

                if (weap.Arm_Division != 1) Damage = weap.Damage + " (" + Convert.ToDouble(weap.Arm_Division) + ") " + weap.TypeOfDamage.name;
                else Damage = weap.Damage + " " + weap.TypeOfDamage.name;

                DefAcc = weap.DefACC.ToString();
                Range = Convert.ToDouble(weap.Half_Range) + "/" + Convert.ToDouble(weap.FullRange);
                Weigth = Convert.ToDouble(itt.ubWeight) + "/" + weap.Shots * Convert.ToDouble(weap.AMMO.WPS);
                //ROF
                Rof = weap.ROF.ToString();
                if (weap.WeaponType.name == "Shotgun") Rof = weap.ROF.ToString() + "x" + weap.ROF_for_Sh.ToString();
                if (weap.Full_auto) Rof = weap.ROF.ToString() + "!";
                //if (weaponLoad.h//   HCR ROF

                //Shots
                Shots = weap.Shots.ToString();
                if (weap.Add_in_Chamber) Shots = weap.Shots.ToString() + "+1";
                if (weap.single_reload) Shots = weap.Shots.ToString() + "(" + weap.Time_For_reload + "i)";
                else Shots = Shots.ToString() + "(" + weap.Time_For_reload + ")";
                //st
                MinSt = itt.minST.ToString();
                if (itt.TwoHanded) MinSt = itt.minST.ToString() + "†";
                //Bulk
                Bulk = itt.ItemSize;
                if (weap.Bulkfolded) Bulk = itt.ItemSize + "*";
                //RCL%cost%LC
                Rcl = weap.Recoil.ToString();
                Cost = "$" + Convert.ToDouble(itt.usPrice) + "/$" + weap.Shots * Convert.ToDouble(weap.AMMO.CPS);
                Lc = itt.LC1.Name_LC;
                //Type
                Type = itt.ItemClass.name;
            }
            public ItemFromGrid(ITEM itt, Attachment att, string type)
            {
                Name = itt.szItemName;
                Tl = itt.TL1.name_TL;
                Type = type;


                DefAcc = att.AccAddmax.ToString();
                Weigth = itt.ubWeight.ToString();
                //ROF
                Bulk = itt.ItemSize;
                Cost = "$" + Convert.ToDouble(itt.usPrice);
                Lc = itt.LC1.Name_LC;

            }
        }

        public Combine_weap()
        {
            InitializeComponent();

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

            ItemDataGrid.ColumnWidth = DataGridLength.Auto;

            DataGridTextColumn textColumn = new DataGridTextColumn();
            textColumn.Header = "Name";
            textColumn.Binding = new Binding("Name");
            textColumn.IsReadOnly = true;
            ItemDataGrid.Columns.Add(textColumn);

            DataGridTextColumn textColumn1 = new DataGridTextColumn();
            textColumn1.Header = "TL";
            textColumn1.IsReadOnly = true;
            textColumn1.Binding = new Binding("TL");
            ItemDataGrid.Columns.Add(textColumn1);

            DataGridTextColumn textColumn2 = new DataGridTextColumn();
            textColumn2.Header = "Damage";
            textColumn2.IsReadOnly = true;
            textColumn2.Binding = new Binding("Damage");
            ItemDataGrid.Columns.Add(textColumn2);

            DataGridTextColumn textColumn3 = new DataGridTextColumn();
            textColumn3.Header = "Acc";
            textColumn3.IsReadOnly = true;
            textColumn3.Binding = new Binding("DefACC");
            ItemDataGrid.Columns.Add(textColumn3);

            DataGridTextColumn textColumn4 = new DataGridTextColumn();
            textColumn4.Header = "Range";
            textColumn4.IsReadOnly = true;
            textColumn4.Binding = new Binding("range");
            ItemDataGrid.Columns.Add(textColumn4);

            DataGridTextColumn textColumn5 = new DataGridTextColumn();
            textColumn5.Header = "weigth";
            textColumn5.IsReadOnly = true;
            textColumn5.Binding = new Binding("weigth");
            ItemDataGrid.Columns.Add(textColumn5);

            DataGridTextColumn textColumn6 = new DataGridTextColumn();
            textColumn6.Header = "Rof";
            textColumn6.IsReadOnly = true;
            textColumn6.Binding = new Binding("Rof");
            ItemDataGrid.Columns.Add(textColumn6);

            DataGridTextColumn textColumn7 = new DataGridTextColumn();
            textColumn7.Header = "Shots";
            textColumn7.IsReadOnly = true;
            textColumn7.Binding = new Binding("Shots");
            ItemDataGrid.Columns.Add(textColumn7);

            DataGridTextColumn textColumn8 = new DataGridTextColumn();
            textColumn8.Header = "minST";
            textColumn8.IsReadOnly = true;
            textColumn8.Binding = new Binding("minST");
            ItemDataGrid.Columns.Add(textColumn8);

            DataGridTextColumn textColumn9 = new DataGridTextColumn();
            textColumn9.Header = "rcl";
            textColumn9.IsReadOnly = true;
            textColumn9.Binding = new Binding("rcl");
            ItemDataGrid.Columns.Add(textColumn9);

            DataGridTextColumn textColumn12 = new DataGridTextColumn();
            textColumn12.Header = "Bulk";
            textColumn12.IsReadOnly = true;
            textColumn12.Binding = new Binding("Bulk");
            ItemDataGrid.Columns.Add(textColumn12);

            DataGridTextColumn textColumn10 = new DataGridTextColumn();
            textColumn10.Header = "cost";
            textColumn10.IsReadOnly = true;
            textColumn10.Binding = new Binding("cost");
            ItemDataGrid.Columns.Add(textColumn10);

            DataGridTextColumn textColumn11 = new DataGridTextColumn();
            textColumn11.Header = "LC";
            textColumn11.IsReadOnly = true;
            textColumn11.Binding = new Binding("LC");
            ItemDataGrid.Columns.Add(textColumn11);

            DataGridTextColumn textColumn13 = new DataGridTextColumn();
            textColumn13.Header = "Type";
            textColumn13.IsReadOnly = true;
            textColumn13.Binding = new Binding("Type");
            ItemDataGrid.Columns.Add(textColumn13);
        }

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
            Label.Content=(Dice.RollDie(Convert.ToInt32(ss[0]),6)).ToString();

        }
    }
}

