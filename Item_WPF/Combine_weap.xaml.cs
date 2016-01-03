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

namespace Item_WPF
{
    /// <summary>
    /// Логика взаимодействия для Combine_weap.xaml
    /// </summary>
    public partial class Combine_weap : Window
    {
        public int IdItemWeaposn = 0;
        public int attachScope;
        private int mountScope;
        private int mountLaser;
        private int mountLight;
        private int mountBipod;
        private int mountSilenser;
        private int mountLauncher;
        private int mountStock;
        private int mountBayonet;
        private int mountMagazine;
        private int mountInternal;
        private int mountExternal;

        private string Damagee;

        CombineWeap CW = new CombineWeap();

        //private class Weapon_Item
        //{
        //    public ITEM item_s { get; set; }
        //    public WEAPON weapon_s { get; set; }
        //}

        private class ItemFromGrid
        {
            public ITEM item_s { get; set; }
            public WEAPON weapon_s { get; set; }

            public Attachment Scope_s { get; set; }

            public string Type { get; set; }
            public string Name { get; set; }
            public string TL { get; set; }
            public string Damage { get; set; }
            public string DefACC { get; set; }

            public string Rof { get; set; }
            public string range { get; set; }
            public string weigth { get; set; }
            public string Shots { get; set; }
            public string minST { get; set; }

            public string rcl { get; set; }
            public string cost { get; set; }
            public string LC { get; set; }
            public string Bulk { get; set; }
            public ItemFromGrid(ITEM itt, WEAPON weap)
            {
                Name = itt.szItemName;
                TL = itt.TL1.name_TL;

                if (weap.Arm_Division != 1) Damage = weap.Damage + " (" + Convert.ToDouble(weap.Arm_Division) + ") " + weap.TypeOfDamage.name;
                else Damage = weap.Damage + " " + weap.TypeOfDamage.name;

                DefACC = weap.DefACC.ToString();
                range = Convert.ToDouble(weap.Half_Range) + "/" + Convert.ToDouble(weap.FullRange);
                weigth = Convert.ToDouble(itt.ubWeight) + "/" + weap.Shots * Convert.ToDouble(weap.AMMO.WPS);
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
                minST = itt.minST.ToString();
                if (itt.TwoHanded) minST = itt.minST.ToString() + "†";
                //Bulk
                Bulk = itt.ItemSize;
                if (weap.Bulkfolded) Bulk = itt.ItemSize + "*";
                //RCL%cost%LC
                rcl = weap.Recoil.ToString();
                cost = "$" + Convert.ToDouble(itt.usPrice) + "/$" + weap.Shots * Convert.ToDouble(weap.AMMO.CPS);
                LC = itt.LC1.Name_LC;
                //Type
                Type = itt.ItemClass.name;
            }
            public ItemFromGrid(ITEM itt, Attachment att, string type)
            {
                Name = itt.szItemName;
                TL = itt.TL1.name_TL;
                Type = type;


                DefACC = att.AccAddmax.ToString();
                weigth = itt.ubWeight.ToString();
                //ROF
                Bulk = itt.ItemSize;
                cost = "$" + Convert.ToDouble(itt.usPrice);
                LC = itt.LC1.Name_LC;

            }
        }

        public Combine_weap()
        {
            InitializeComponent();

            ScopeSelect_button.Visibility = Visibility.Hidden;      //1
            LaserSelect_button.Visibility = Visibility.Hidden;
            LightSelect_button.Visibility = Visibility.Hidden;
            BipodSelect_button.Visibility = Visibility.Hidden;
            SilenserSelect_button.Visibility = Visibility.Hidden;
            LauncherSelect_button.Visibility = Visibility.Hidden;
            StockSelect_button.Visibility = Visibility.Hidden;
            BayonetSelect_button.Visibility = Visibility.Hidden;
            MagazineSelect_button.Visibility = Visibility.Hidden;
            InternalSelect_button.Visibility = Visibility.Hidden;
            ExternalSelect_button.Visibility = Visibility.Hidden;

            Item_dataGrid.ColumnWidth = DataGridLength.Auto;

            DataGridTextColumn textColumn = new DataGridTextColumn();
            textColumn.Header = "Name";
            textColumn.Binding = new Binding("Name");
            textColumn.IsReadOnly = true;
            Item_dataGrid.Columns.Add(textColumn);

            DataGridTextColumn textColumn1 = new DataGridTextColumn();
            textColumn1.Header = "TL";
            textColumn1.IsReadOnly = true;
            textColumn1.Binding = new Binding("TL");
            Item_dataGrid.Columns.Add(textColumn1);

            DataGridTextColumn textColumn2 = new DataGridTextColumn();
            textColumn2.Header = "Damage";
            textColumn2.IsReadOnly = true;
            textColumn2.Binding = new Binding("Damage");
            Item_dataGrid.Columns.Add(textColumn2);

            DataGridTextColumn textColumn3 = new DataGridTextColumn();
            textColumn3.Header = "Acc";
            textColumn3.IsReadOnly = true;
            textColumn3.Binding = new Binding("DefACC");
            Item_dataGrid.Columns.Add(textColumn3);

            DataGridTextColumn textColumn4 = new DataGridTextColumn();
            textColumn4.Header = "Range";
            textColumn4.IsReadOnly = true;
            textColumn4.Binding = new Binding("range");
            Item_dataGrid.Columns.Add(textColumn4);

            DataGridTextColumn textColumn5 = new DataGridTextColumn();
            textColumn5.Header = "weigth";
            textColumn5.IsReadOnly = true;
            textColumn5.Binding = new Binding("weigth");
            Item_dataGrid.Columns.Add(textColumn5);

            DataGridTextColumn textColumn6 = new DataGridTextColumn();
            textColumn6.Header = "Rof";
            textColumn6.IsReadOnly = true;
            textColumn6.Binding = new Binding("Rof");
            Item_dataGrid.Columns.Add(textColumn6);

            DataGridTextColumn textColumn7 = new DataGridTextColumn();
            textColumn7.Header = "Shots";
            textColumn7.IsReadOnly = true;
            textColumn7.Binding = new Binding("Shots");
            Item_dataGrid.Columns.Add(textColumn7);

            DataGridTextColumn textColumn8 = new DataGridTextColumn();
            textColumn8.Header = "minST";
            textColumn8.IsReadOnly = true;
            textColumn8.Binding = new Binding("minST");
            Item_dataGrid.Columns.Add(textColumn8);

            DataGridTextColumn textColumn9 = new DataGridTextColumn();
            textColumn9.Header = "rcl";
            textColumn9.IsReadOnly = true;
            textColumn9.Binding = new Binding("rcl");
            Item_dataGrid.Columns.Add(textColumn9);

            DataGridTextColumn textColumn12 = new DataGridTextColumn();
            textColumn12.Header = "Bulk";
            textColumn12.IsReadOnly = true;
            textColumn12.Binding = new Binding("Bulk");
            Item_dataGrid.Columns.Add(textColumn12);

            DataGridTextColumn textColumn10 = new DataGridTextColumn();
            textColumn10.Header = "cost";
            textColumn10.IsReadOnly = true;
            textColumn10.Binding = new Binding("cost");
            Item_dataGrid.Columns.Add(textColumn10);

            DataGridTextColumn textColumn11 = new DataGridTextColumn();
            textColumn11.Header = "LC";
            textColumn11.IsReadOnly = true;
            textColumn11.Binding = new Binding("LC");
            Item_dataGrid.Columns.Add(textColumn11);

            DataGridTextColumn textColumn13 = new DataGridTextColumn();
            textColumn13.Header = "Type";
            textColumn13.IsReadOnly = true;
            textColumn13.Binding = new Binding("Type");
            Item_dataGrid.Columns.Add(textColumn13);
        }

        private void SelectWeapon_button_Click(object sender, RoutedEventArgs e)
        {
            ScopeSelect_button.Visibility = Visibility.Hidden;      //1
            LaserSelect_button.Visibility = Visibility.Hidden;
            LightSelect_button.Visibility = Visibility.Hidden;
            BipodSelect_button.Visibility = Visibility.Hidden;
            SilenserSelect_button.Visibility = Visibility.Hidden;
            LauncherSelect_button.Visibility = Visibility.Hidden;
            StockSelect_button.Visibility = Visibility.Hidden;
            BayonetSelect_button.Visibility = Visibility.Hidden;
            MagazineSelect_button.Visibility = Visibility.Hidden;
            InternalSelect_button.Visibility = Visibility.Hidden;
            ExternalSelect_button.Visibility = Visibility.Hidden;

            WeaponCombine.WeapCombNull();

            Select_Items selectItems = new Select_Items(1, "gun");

            selectItems.Owner = this;
            selectItems.ShowDialog();
            Item_dataGrid.Items.Clear();


            if (IdItemWeaposn != 0)
            {
                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    //download weapon from items table and weapon;
                    ITEM itemLoad = (from z in context.ITEMs
                                     where z.uiIndex == WeaponCombine.Id_WeaponItem
                                     select z).First();
                    WEAPON weaponLoad = (from p in context.WEAPONs
                                         where p.uiIndex == itemLoad.ubClassIndex
                                         select p).First();
                    context.Database.Connection.Close();
                    //inicialised combine weapon save table
                    CW.IdWeapon = WeaponCombine.Id_WeaponItem;


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
                            Weapon_image.Source = image;
                        }
                    }
                    else Weapon_image.Source = null;

                    ItemFromGrid Weapon_to_Grid = new ItemFromGrid(itemLoad, weaponLoad);

                    Item_dataGrid.Items.Add(Weapon_to_Grid);//

                    Damagee = Weapon_to_Grid.Damage;

                    Item_dataGrid.ColumnWidth = DataGridLength.Auto;

                    List<AvailableAttachSlot> AvSlot = (from p in context.AvailableAttachSlots
                                                        where p.rWeaponId == weaponLoad.uiIndex
                                                        select p).ToList();
                    foreach (AvailableAttachSlot items in AvSlot)
                    {
                        if (items.rATTACHMENTSLOT == 1)
                        {
                            ScopeSelect_button.Visibility = Visibility.Visible;
                            mountScope = items.rAttachmentmount;
                        }
                        if (items.rATTACHMENTSLOT == 2)
                        {
                            LaserSelect_button.Visibility = Visibility.Visible;
                            mountLaser = items.rAttachmentmount;
                        }
                        if (items.rATTACHMENTSLOT == 3)
                        {
                            LightSelect_button.Visibility = Visibility.Visible;
                            mountLight = items.rAttachmentmount;
                        }
                        if (items.rATTACHMENTSLOT == 4)
                        {
                            mountBipod = items.rAttachmentmount;
                            BipodSelect_button.Visibility = Visibility.Visible;
                        }
                        if (items.rATTACHMENTSLOT == 5)
                        {
                            mountSilenser = items.rAttachmentmount;
                            SilenserSelect_button.Visibility = Visibility.Visible;
                        }
                        if (items.rATTACHMENTSLOT == 6)
                        {
                            mountLauncher = items.rAttachmentmount;
                            LauncherSelect_button.Visibility = Visibility.Visible;
                        }
                        if (items.rATTACHMENTSLOT == 7)
                        {
                            mountStock = items.rAttachmentmount;
                            StockSelect_button.Visibility = Visibility.Visible;
                        }
                        if (items.rATTACHMENTSLOT == 8)
                        {
                            mountBayonet = items.rAttachmentmount;
                            BayonetSelect_button.Visibility = Visibility.Visible;
                        }
                        if (items.rATTACHMENTSLOT == 9)
                        {
                            mountMagazine = items.rAttachmentmount;
                            MagazineSelect_button.Visibility = Visibility.Visible;
                        }
                        if (items.rATTACHMENTSLOT == 10)
                        {
                            mountInternal = items.rAttachmentmount;
                            InternalSelect_button.Visibility = Visibility.Visible;
                        }
                        if (items.rATTACHMENTSLOT == 11)
                        {
                            mountExternal = items.rAttachmentmount;
                            ExternalSelect_button.Visibility = Visibility.Visible;
                        }
                    }
                }
            }
        }
        //1
        private void ScopeSelect_button_Click(object sender, RoutedEventArgs e)
        {
            Select_Items selectItems = new Select_Items("Attachment", 1, mountScope);

            selectItems.Owner = this;
            selectItems.ShowDialog();

            if (IdItemWeaposn != 0)
            {
                List<ItemFromGrid> k = new List<ItemFromGrid>();
                foreach (ItemFromGrid item in Item_dataGrid.Items) { if (item.Type == "Scope") k.Add(item); }
                foreach (ItemFromGrid item in k) { Item_dataGrid.Items.Remove(item); }
                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    ITEM itemScope = (from p in context.ITEMs
                                      where p.uiIndex == WeaponCombine.Id_ScopeItem
                                      select p).First();
                    Attachment attScope = (from p in context.Attachments
                                           where p.uiIndex == itemScope.ubClassIndex
                                           select p).First();// передать этот экземпляр в другую форму.
                    CW.ScopeSelect = WeaponCombine.Id_ScopeItem;
                    IdItemWeaposn = 0;
                    ItemFromGrid Scope_er = new ItemFromGrid(itemScope, attScope, "Scope");
                    Item_dataGrid.Items.Add(Scope_er);

                }
            }
        }
        private void LaserSelect_button_Click(object sender, RoutedEventArgs e)
        {
            Select_Items selectItems = new Select_Items("Attachment", 2, mountLaser);

            selectItems.Owner = this;
            selectItems.ShowDialog();

            if (IdItemWeaposn != 0)
            {
                List<ItemFromGrid> k = new List<ItemFromGrid>();
                foreach (ItemFromGrid item in Item_dataGrid.Items) { if (item.Type == "Laser") k.Add(item); }
                foreach (ItemFromGrid item in k) { Item_dataGrid.Items.Remove(item); }

                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    ITEM itemLaser = (from p in context.ITEMs
                                      where p.uiIndex == WeaponCombine.Id_LaserItem
                                      select p).First();
                    Attachment attLaser = (from p in context.Attachments
                                           where p.uiIndex == itemLaser.ubClassIndex
                                           select p).First();// передать этот экземпляр в другую форму.

                    context.Database.Connection.Close();
                    CW.LaserSelect = WeaponCombine.Id_LaserItem;
                    IdItemWeaposn = 0;

                    ItemFromGrid Laser_er = new ItemFromGrid(itemLaser, attLaser, "Laser");
                    Item_dataGrid.Items.Add(Laser_er);

                }
            }
        }

        private void LightSelect_button_Click(object sender, RoutedEventArgs e)
        {
            Select_Items selectItems = new Select_Items("Attachment", 3, mountLight);
            selectItems.Owner = this;
            selectItems.ShowDialog();
            if (IdItemWeaposn != 0)
            {
                List<ItemFromGrid> k = new List<ItemFromGrid>();
                foreach (ItemFromGrid item in Item_dataGrid.Items) { if (item.Type == "Light") k.Add(item); }
                foreach (ItemFromGrid item in k) { Item_dataGrid.Items.Remove(item); }
                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    ITEM itemLight = (from p in context.ITEMs
                                      where p.uiIndex == WeaponCombine.Id_LightItem
                                      select p).First();
                    Attachment attlight = (from p in context.Attachments
                                           where p.uiIndex == itemLight.ubClassIndex
                                           select p).First();// передать этот экземпляр в другую форму.
                    CW.LightSelect = WeaponCombine.Id_LightItem;
                    context.Database.Connection.Close();
                    IdItemWeaposn = 0;
                    ItemFromGrid Light_er = new ItemFromGrid(itemLight, attlight, "Light");

                    Item_dataGrid.Items.Add(Light_er);


                }
            }

        }

        private void BipodSelect_button_Click(object sender, RoutedEventArgs e)
        {
            Select_Items selectItems = new Select_Items("Attachment", 4, mountBipod);
            selectItems.Owner = this;
            selectItems.ShowDialog();
            if (IdItemWeaposn != 0)
            {
                List<ItemFromGrid> k = new List<ItemFromGrid>();
                foreach (ItemFromGrid item in Item_dataGrid.Items) { if (item.Type == "Bipod") k.Add(item); }
                foreach (ItemFromGrid item in k) { Item_dataGrid.Items.Remove(item); }
                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    ITEM itemBipod = (from p in context.ITEMs
                                      where p.uiIndex == WeaponCombine.Id_BipodItem
                                      select p).First();
                    Attachment attBipod = (from p in context.Attachments
                                           where p.uiIndex == itemBipod.ubClassIndex
                                           select p).First();// передать этот экземпляр в другую форму.
                    CW.BipodSelect = WeaponCombine.Id_BipodItem;
                    context.Database.Connection.Close();
                    IdItemWeaposn = 0;
                    ItemFromGrid Bipod_er = new ItemFromGrid(itemBipod, attBipod, "Bipod");

                    Item_dataGrid.Items.Add(Bipod_er);
                }
            }
        }

        private void SilenserSelect_button_Click(object sender, RoutedEventArgs e)
        {
            Select_Items selectItems = new Select_Items("Attachment", 5, mountSilenser);

            selectItems.Owner = this;
            selectItems.ShowDialog();

            if (IdItemWeaposn != 0)
            {
                List<ItemFromGrid> k = new List<ItemFromGrid>();
                foreach (ItemFromGrid item in Item_dataGrid.Items) { if (item.Type == "Silenser") k.Add(item); }
                foreach (ItemFromGrid item in k) { Item_dataGrid.Items.Remove(item); }

                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    ITEM itemSilenser = (from p in context.ITEMs
                                         where p.uiIndex == WeaponCombine.Id_SilenserItem
                                         select p).First();
                    Attachment attSilenser = (from p in context.Attachments
                                              where p.uiIndex == itemSilenser.ubClassIndex
                                              select p).First();// передать этот экземпляр в другую форму.

                    CW.SilenserSelect = WeaponCombine.Id_SilenserItem;
                    context.Database.Connection.Close();
                    IdItemWeaposn = 0;
                    ItemFromGrid Silenser_er = new ItemFromGrid(itemSilenser, attSilenser, "Silenser");

                    Item_dataGrid.Items.Add(Silenser_er);
                }
            }
        }

        private void LauncherSelect_button_Click(object sender, RoutedEventArgs e)
        {
            Select_Items selectItems = new Select_Items("Attachment", 6, mountLauncher);

            selectItems.Owner = this;
            selectItems.ShowDialog();

            if (IdItemWeaposn != 0)
            {
                List<ItemFromGrid> k = new List<ItemFromGrid>();
                foreach (ItemFromGrid item in Item_dataGrid.Items) { if (item.Type == "Launcher") k.Add(item); }
                foreach (ItemFromGrid item in k) { Item_dataGrid.Items.Remove(item); }

                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    ITEM itemLauncher = (from p in context.ITEMs
                                         where p.uiIndex == WeaponCombine.Id_LauncherItem
                                         select p).First();
                    Attachment attLauncher = (from p in context.Attachments
                                              where p.uiIndex == itemLauncher.ubClassIndex
                                              select p).First();// передать этот экземпляр в другую форму.
                    CW.LauncherSelect = WeaponCombine.Id_LauncherItem;
                    context.Database.Connection.Close();
                    IdItemWeaposn = 0;
                    ItemFromGrid Launcher_er = new ItemFromGrid(itemLauncher, attLauncher, "Launcher");

                    Item_dataGrid.Items.Add(Launcher_er);
                }
            }
        }

        private void StockSelect_button_Click(object sender, RoutedEventArgs e)
        {
            Select_Items selectItems = new Select_Items("Attachment", 7, mountStock);

            selectItems.Owner = this;
            selectItems.ShowDialog();

            if (IdItemWeaposn != 0)
            {
                List<ItemFromGrid> k = new List<ItemFromGrid>();
                foreach (ItemFromGrid item in Item_dataGrid.Items) { if (item.Type == "Stock") k.Add(item); }
                foreach (ItemFromGrid item in k) { Item_dataGrid.Items.Remove(item); }

                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    ITEM itemStock = (from p in context.ITEMs
                                      where p.uiIndex == WeaponCombine.Id_StockItem
                                      select p).First();
                    Attachment attStock = (from p in context.Attachments
                                           where p.uiIndex == itemStock.ubClassIndex
                                           select p).First();// передать этот экземпляр в другую форму.

                    CW.StockSelect = WeaponCombine.Id_StockItem;
                    context.Database.Connection.Close();
                    IdItemWeaposn = 0;
                    ItemFromGrid Stock_er = new ItemFromGrid(itemStock, attStock, "Stock");

                    Item_dataGrid.Items.Add(Stock_er);
                }
            }
        }

        private void BayonetSelect_button_Click(object sender, RoutedEventArgs e)
        {
            Select_Items selectItems = new Select_Items("Attachment", 8, mountBayonet);

            selectItems.Owner = this;
            selectItems.ShowDialog();

            if (IdItemWeaposn != 0)
            {
                List<ItemFromGrid> k = new List<ItemFromGrid>();
                foreach (ItemFromGrid item in Item_dataGrid.Items) { if (item.Type == "Bayonet") k.Add(item); }
                foreach (ItemFromGrid item in k) { Item_dataGrid.Items.Remove(item); }

                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    ITEM itemBayonet = (from p in context.ITEMs
                                        where p.uiIndex == WeaponCombine.Id_BayonetItem
                                        select p).First();
                    Attachment attBayonet = (from p in context.Attachments
                                             where p.uiIndex == itemBayonet.ubClassIndex
                                             select p).First();// передать этот экземпляр в другую форму.

                    CW.BayonetSelect = WeaponCombine.Id_BayonetItem;
                    IdItemWeaposn = 0;
                    ItemFromGrid Bayonet_er = new ItemFromGrid(itemBayonet, attBayonet, "Bayonet");
                    Item_dataGrid.Items.Add(Bayonet_er);
                }
            }
        }

        private void MagazineSelect_button_Click(object sender, RoutedEventArgs e)
        {
            Select_Items selectItems = new Select_Items("Attachment", 9, mountMagazine);

            selectItems.Owner = this;
            selectItems.ShowDialog();

            if (IdItemWeaposn != 0)
            {
                List<ItemFromGrid> k = new List<ItemFromGrid>();
                foreach (ItemFromGrid item in Item_dataGrid.Items) { if (item.Type == "Magazine") k.Add(item); }
                foreach (ItemFromGrid item in k) { Item_dataGrid.Items.Remove(item); }

                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    ITEM itemMagazine = (from p in context.ITEMs
                                         where p.uiIndex == WeaponCombine.Id_MagazineItem
                                         select p).First();
                    Attachment attMagazine = (from p in context.Attachments
                                              where p.uiIndex == itemMagazine.ubClassIndex
                                              select p).First();// передать этот экземпляр в другую форму.

                    CW.MagazineSelect = WeaponCombine.Id_MagazineItem;
                    context.Database.Connection.Close();
                    IdItemWeaposn = 0;
                    ItemFromGrid Magazine_er = new ItemFromGrid(itemMagazine, attMagazine, "Magazine");

                    Item_dataGrid.Items.Add(Magazine_er);
                }
            }
        }



        private void Saved_button_Click(object sender, RoutedEventArgs e)
        {
            Select_Items selectItems = new Select_Items(325);

            selectItems.Owner = this;
            selectItems.ShowDialog();
            //label.Content

        }

        private void Save_button_Click(object sender, RoutedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                if (WeaponCombine.Id_WeaponItem != 0)
                {
                    context.CombineWeaps.Add(CW);
                    context.SaveChanges();
                    label.Content = CW.id.ToString();
                    WeaponCombine.Id_WeaponItem = 0;
                    CW = new CombineWeap();
                }
                else MessageBox.Show("CW is NULL");
            }
        }



        private void Del_button_Click(object sender, RoutedEventArgs e)
        {

            var selectedCell = Item_dataGrid.SelectedCells[13];


            var cellContent = selectedCell.Column.GetCellContent(selectedCell.Item);

            MessageBox.Show((cellContent as TextBlock).Text);
            Item_dataGrid.Items.Remove(Item_dataGrid.SelectedItem);
        }

        private void Dice_button_Click(object sender, RoutedEventArgs e)
        {
            string[] ss;
            ss = Damagee.Split('d');
            if (ss.Length == 1) { label1.Content = ss[0]; label2.Content = ""; }
            else { label1.Content = ss[0]; label2.Content = ss[1]; }
            label.Content=(Dice.rollDie(Convert.ToInt32(ss[0]),6)).ToString();

        }
    }
}

