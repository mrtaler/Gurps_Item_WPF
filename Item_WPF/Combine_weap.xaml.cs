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
        public int IdItemWeapon = 0;
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

        public int ScopeIndex = 0, LaserIndex = 0, LigtIndex = 0;

        public class ItemFromGrid
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


        private void button_Click(object sender, RoutedEventArgs e)
        {

        }

        private void LaserSelect_button_Click(object sender, RoutedEventArgs e)
        {
            Select_Items selectItems = new Select_Items("Attachment", 2, mountLaser);

            selectItems.Owner = this;
            selectItems.ShowDialog();

            if (IdItemWeapon != 0)
            {
                List<ItemFromGrid> k = new List<ItemFromGrid>();
                foreach (ItemFromGrid item in Item_dataGrid.Items)
                {
                    if (item.Type == "Laser") k.Add(item);
                }
                foreach (ItemFromGrid item in k)
                {
                    Item_dataGrid.Items.Remove(item);
                }

                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    ITEM itemLaser = (from p in context.ITEMs
                                      where p.uiIndex == IdItemWeapon
                                      select p).First();
                    Attachment attLaser = (from p in context.Attachments
                                           where p.uiIndex == itemLaser.ubClassIndex
                                           select p).First();// передать этот экземпляр в другую форму.
                    context.Database.Connection.Close();
                    IdItemWeapon = 0;
                    ItemFromGrid Laser_er = new ItemFromGrid();
                    Laser_er.Type = "Laser";

                    Item_dataGrid.Items.Remove(Laser_er);
                    Laser_er.item_s = itemLaser;
                    Laser_er.Scope_s = attLaser;

                    Laser_er.Name = itemLaser.szItemName;
                    Laser_er.TL = itemLaser.TL1.name_TL.ToString();
                    Laser_er.DefACC = attLaser.AccAddmax.ToString();

                    Laser_er.weigth = itemLaser.ubWeight.ToString();
                    //ROF
                    Laser_er.Bulk = itemLaser.ItemSize;
                    Laser_er.cost = "$" + Convert.ToDouble(itemLaser.usPrice);
                    Laser_er.LC = itemLaser.LC1.Name_LC;
                    Item_dataGrid.Items.Add(Laser_er);
                    LaserIndex = Item_dataGrid.Items.Count - 1;
                    //if (item.Item_Image != null)
                    //{
                    //    MemoryStream stream = new MemoryStream(item.Item_Image);
                    //    pictureBox_Scope.Image = Image.FromStream(stream);
                    //}

                }
            }

        }

        private void LightSelect_button_Click(object sender, RoutedEventArgs e)
        {
            Select_Items selectItems = new Select_Items("Attachment", 3, mountLight);
            selectItems.Owner = this;
            selectItems.ShowDialog();
            if (IdItemWeapon != 0)
            {
                List<ItemFromGrid> k = new List<ItemFromGrid>();
                foreach (ItemFromGrid item in Item_dataGrid.Items)
                {
                    if (item.Type == "Light") k.Add(item);
                }
                foreach (ItemFromGrid item in k)
                {
                    Item_dataGrid.Items.Remove(item);
                }
                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    ITEM itemLight = (from p in context.ITEMs
                                      where p.uiIndex == IdItemWeapon
                                      select p).First();
                    Attachment attlight = (from p in context.Attachments
                                           where p.uiIndex == itemLight.ubClassIndex
                                           select p).First();// передать этот экземпляр в другую форму.
                    context.Database.Connection.Close();
                    IdItemWeapon = 0;
                    ItemFromGrid Light_er = new ItemFromGrid();
                    Light_er.Type = "Light";

                    Light_er.item_s = itemLight;
                    Light_er.Scope_s = attlight;

                    Light_er.Name = itemLight.szItemName;
                    Light_er.TL = itemLight.TL1.name_TL.ToString();
                    Light_er.DefACC = attlight.AccAddmax.ToString();
                    Light_er.weigth = itemLight.ubWeight.ToString();
                    Light_er.Bulk = itemLight.ItemSize;
                    Light_er.cost = "$" + Convert.ToDouble(itemLight.usPrice);
                    Light_er.LC = itemLight.LC1.Name_LC;
                    Item_dataGrid.Items.Add(Light_er);
                    LigtIndex = Item_dataGrid.Items.Count - 1;

                    //if (item.Item_Image != null)
                    //{
                    //    MemoryStream stream = new MemoryStream(item.Item_Image);
                    //    pictureBox_Scope.Image = Image.FromStream(stream);
                    //}

                }
            }

        }

        private void BipodSelect_button_Click(object sender, RoutedEventArgs e)
        {
            Select_Items selectItems = new Select_Items("Attachment", 4, mountBipod);

            selectItems.Owner = this;
            selectItems.ShowDialog();

            if (IdItemWeapon != 0)
            {
                List<ItemFromGrid> k = new List<ItemFromGrid>();
                foreach (ItemFromGrid item in Item_dataGrid.Items)
                {
                    if (item.Type == "Bipod") k.Add(item);
                }
                foreach (ItemFromGrid item in k)
                {
                    Item_dataGrid.Items.Remove(item);
                }


                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    ITEM itemBipod = (from p in context.ITEMs
                                      where p.uiIndex == IdItemWeapon
                                      select p).First();
                    Attachment attBipod = (from p in context.Attachments
                                           where p.uiIndex == itemBipod.ubClassIndex
                                           select p).First();// передать этот экземпляр в другую форму.
                    context.Database.Connection.Close();
                    IdItemWeapon = 0;
                    ItemFromGrid Bipod_er = new ItemFromGrid();
                    Bipod_er.Type = "Bipod";
                    Bipod_er.item_s = itemBipod;
                    Bipod_er.Scope_s = attBipod;
                    Bipod_er.Name = itemBipod.szItemName;
                    Bipod_er.TL = itemBipod.TL1.name_TL.ToString();
                    Bipod_er.DefACC = attBipod.AccAddmax.ToString();
                    Bipod_er.weigth = itemBipod.ubWeight.ToString();
                    //ROF
                    Bipod_er.Bulk = itemBipod.ItemSize;
                    Bipod_er.cost = "$" + Convert.ToDouble(itemBipod.usPrice);
                    Bipod_er.LC = itemBipod.LC1.Name_LC;
                    Item_dataGrid.Items.Add(Bipod_er);


                    //if (item.Item_Image != null)
                    //{
                    //    MemoryStream stream = new MemoryStream(item.Item_Image);
                    //    pictureBox_Scope.Image = Image.FromStream(stream);
                    //}
                }
            }
        }

        private void SilenserSelect_button_Click(object sender, RoutedEventArgs e)
        {
            Select_Items selectItems = new Select_Items("Attachment", 5, mountSilenser);

            selectItems.Owner = this;
            selectItems.ShowDialog();

            if (IdItemWeapon != 0)
            {
                List<ItemFromGrid> k = new List<ItemFromGrid>();
                foreach (ItemFromGrid item in Item_dataGrid.Items)
                {
                    if (item.Type == "Silenser") k.Add(item);
                }
                foreach (ItemFromGrid item in k)
                {
                    Item_dataGrid.Items.Remove(item);
                }

                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    ITEM itemSilenser = (from p in context.ITEMs
                                         where p.uiIndex == IdItemWeapon
                                         select p).First();
                    Attachment attSilenser = (from p in context.Attachments
                                              where p.uiIndex == itemSilenser.ubClassIndex
                                              select p).First();// передать этот экземпляр в другую форму.
                    context.Database.Connection.Close();
                    IdItemWeapon = 0;
                    ItemFromGrid Silenser_er = new ItemFromGrid();
                    Silenser_er.Type = "Silenser";
                    Silenser_er.item_s = itemSilenser;
                    Silenser_er.Scope_s = attSilenser;
                    Silenser_er.Name = itemSilenser.szItemName;
                    Silenser_er.TL = itemSilenser.TL1.name_TL.ToString();
                    Silenser_er.DefACC = attSilenser.AccAddmax.ToString();
                    Silenser_er.weigth = itemSilenser.ubWeight.ToString();
                    //ROF
                    Silenser_er.Bulk = itemSilenser.ItemSize;
                    Silenser_er.cost = "$" + Convert.ToDouble(itemSilenser.usPrice);
                    Silenser_er.LC = itemSilenser.LC1.Name_LC;
                    Item_dataGrid.Items.Add(Silenser_er);

                    //if (item.Item_Image != null)
                    //{
                    //    MemoryStream stream = new MemoryStream(item.Item_Image);
                    //    pictureBox_Scope.Image = Image.FromStream(stream);
                    //}
                }
            }
        }

        private void LauncherSelect_button_Click(object sender, RoutedEventArgs e)
        {
            Select_Items selectItems = new Select_Items("Attachment", 6, mountLauncher);

            selectItems.Owner = this;
            selectItems.ShowDialog();

            if (IdItemWeapon != 0)
            {
                List<ItemFromGrid> k = new List<ItemFromGrid>();
                foreach (ItemFromGrid item in Item_dataGrid.Items)
                {
                    if (item.Type == "Launcher") k.Add(item);
                }
                foreach (ItemFromGrid item in k)
                {
                    Item_dataGrid.Items.Remove(item);
                }

                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    ITEM itemLauncher = (from p in context.ITEMs
                                         where p.uiIndex == IdItemWeapon
                                         select p).First();
                    Attachment attLauncher = (from p in context.Attachments
                                              where p.uiIndex == itemLauncher.ubClassIndex
                                              select p).First();// передать этот экземпляр в другую форму.
                    context.Database.Connection.Close();
                    IdItemWeapon = 0;
                    ItemFromGrid Launcher_er = new ItemFromGrid();
                    Launcher_er.Type = "Launcher";
                    Launcher_er.item_s = itemLauncher;
                    Launcher_er.Scope_s = attLauncher;
                    Launcher_er.Name = itemLauncher.szItemName;
                    Launcher_er.TL = itemLauncher.TL1.name_TL.ToString();
                    Launcher_er.DefACC = attLauncher.AccAddmax.ToString();
                    Launcher_er.weigth = itemLauncher.ubWeight.ToString();
                    //ROF
                    Launcher_er.Bulk = itemLauncher.ItemSize;
                    Launcher_er.cost = "$" + Convert.ToDouble(itemLauncher.usPrice);
                    Launcher_er.LC = itemLauncher.LC1.Name_LC;
                    Item_dataGrid.Items.Add(Launcher_er);

                    //if (item.Item_Image != null)
                    //{
                    //    MemoryStream stream = new MemoryStream(item.Item_Image);
                    //    pictureBox_Scope.Image = Image.FromStream(stream);
                    //}
                }
            }
        }

        private void StockSelect_button_Click(object sender, RoutedEventArgs e)
        {
            Select_Items selectItems = new Select_Items("Attachment", 7, mountStock);

            selectItems.Owner = this;
            selectItems.ShowDialog();

            if (IdItemWeapon != 0)
            {
                List<ItemFromGrid> k = new List<ItemFromGrid>();
                foreach (ItemFromGrid item in Item_dataGrid.Items)
                {
                    if (item.Type == "Stock") k.Add(item);
                }
                foreach (ItemFromGrid item in k)
                {
                    Item_dataGrid.Items.Remove(item);
                }

                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    ITEM itemStock = (from p in context.ITEMs
                                      where p.uiIndex == IdItemWeapon
                                      select p).First();
                    Attachment attStock = (from p in context.Attachments
                                           where p.uiIndex == itemStock.ubClassIndex
                                           select p).First();// передать этот экземпляр в другую форму.
                    context.Database.Connection.Close();
                    IdItemWeapon = 0;
                    ItemFromGrid Stock_er = new ItemFromGrid();
                    Stock_er.Type = "Stock";
                    Stock_er.item_s = itemStock;
                    Stock_er.Scope_s = attStock;
                    Stock_er.Name = itemStock.szItemName;
                    Stock_er.TL = itemStock.TL1.name_TL.ToString();
                    Stock_er.DefACC = attStock.AccAddmax.ToString();
                    Stock_er.weigth = itemStock.ubWeight.ToString();
                    //ROF
                    Stock_er.Bulk = itemStock.ItemSize;
                    Stock_er.cost = "$" + Convert.ToDouble(itemStock.usPrice);
                    Stock_er.LC = itemStock.LC1.Name_LC;
                    Item_dataGrid.Items.Add(Stock_er);

                    //if (item.Item_Image != null)
                    //{
                    //    MemoryStream stream = new MemoryStream(item.Item_Image);
                    //    pictureBox_Scope.Image = Image.FromStream(stream);
                    //}
                }
            }
        }

        private void BayonetSelect_button_Click(object sender, RoutedEventArgs e)
        {
            Select_Items selectItems = new Select_Items("Attachment", 8, mountBayonet);

            selectItems.Owner = this;
            selectItems.ShowDialog();

            if (IdItemWeapon != 0)
            {
                List<ItemFromGrid> k = new List<ItemFromGrid>();
                foreach (ItemFromGrid item in Item_dataGrid.Items)
                {
                    if (item.Type == "Bayonet") k.Add(item);
                }
                foreach (ItemFromGrid item in k)
                {
                    Item_dataGrid.Items.Remove(item);
                }

                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    ITEM itemBayonet = (from p in context.ITEMs
                                        where p.uiIndex == IdItemWeapon
                                        select p).First();
                    Attachment attBayonet = (from p in context.Attachments
                                             where p.uiIndex == itemBayonet.ubClassIndex
                                             select p).First();// передать этот экземпляр в другую форму.
                    context.Database.Connection.Close();
                    IdItemWeapon = 0;
                    ItemFromGrid Bayonet_er = new ItemFromGrid();
                    Bayonet_er.Type = "Bayonet";
                    Bayonet_er.item_s = itemBayonet;
                    Bayonet_er.Scope_s = attBayonet;
                    Bayonet_er.Name = itemBayonet.szItemName;
                    Bayonet_er.TL = itemBayonet.TL1.name_TL.ToString();
                    Bayonet_er.DefACC = attBayonet.AccAddmax.ToString();
                    Bayonet_er.weigth = itemBayonet.ubWeight.ToString();
                    //ROF
                    Bayonet_er.Bulk = itemBayonet.ItemSize;
                    Bayonet_er.cost = "$" + Convert.ToDouble(itemBayonet.usPrice);
                    Bayonet_er.LC = itemBayonet.LC1.Name_LC;
                    Item_dataGrid.Items.Add(Bayonet_er);

                    //if (item.Item_Image != null)
                    //{
                    //    MemoryStream stream = new MemoryStream(item.Item_Image);
                    //    pictureBox_Scope.Image = Image.FromStream(stream);
                    //}
                }
            }
        }

        private void MagazineSelect_button_Click(object sender, RoutedEventArgs e)
        {
            Select_Items selectItems = new Select_Items("Attachment", 9, mountMagazine);

            selectItems.Owner = this;
            selectItems.ShowDialog();

            if (IdItemWeapon != 0)
            {
                List<ItemFromGrid> k = new List<ItemFromGrid>();
                foreach (ItemFromGrid item in Item_dataGrid.Items)
                {
                    if (item.Type == "Magazine") k.Add(item);
                }
                foreach (ItemFromGrid item in k)
                {
                    Item_dataGrid.Items.Remove(item);
                }

                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    ITEM itemMagazine = (from p in context.ITEMs
                                         where p.uiIndex == IdItemWeapon
                                         select p).First();
                    Attachment attMagazine = (from p in context.Attachments
                                              where p.uiIndex == itemMagazine.ubClassIndex
                                              select p).First();// передать этот экземпляр в другую форму.
                    context.Database.Connection.Close();
                    IdItemWeapon = 0;
                    ItemFromGrid Magazine_er = new ItemFromGrid();
                    Magazine_er.Type = "Magazine";
                    Magazine_er.item_s = itemMagazine;
                    Magazine_er.Scope_s = attMagazine;
                    Magazine_er.Name = itemMagazine.szItemName;
                    Magazine_er.TL = itemMagazine.TL1.name_TL.ToString();
                    Magazine_er.DefACC = attMagazine.AccAddmax.ToString();
                    Magazine_er.weigth = itemMagazine.ubWeight.ToString();
                    //ROF
                    Magazine_er.Bulk = itemMagazine.ItemSize;
                    Magazine_er.cost = "$" + Convert.ToDouble(itemMagazine.usPrice);
                    Magazine_er.LC = itemMagazine.LC1.Name_LC;
                    Item_dataGrid.Items.Add(Magazine_er);

                    //if (item.Item_Image != null)
                    //{
                    //    MemoryStream stream = new MemoryStream(item.Item_Image);
                    //    pictureBox_Scope.Image = Image.FromStream(stream);
                    //}
                }
            }
        }



        private void SelectWeapon_button_Click(object sender, RoutedEventArgs e)
        {
            // new Select_Items(1, "gun").ShowDialog();

            Select_Items selectItems = new Select_Items(1, "gun");

            selectItems.Owner = this;
            selectItems.ShowDialog();
            Item_dataGrid.Items.Clear();
            using (item1Entities context = new item1Entities())
            {
                context.Database.Connection.Open();
                ITEM itemLoad = (from z in context.ITEMs
                                 where z.uiIndex == IdItemWeapon
                                 select z).First();
                WEAPON weaponLoad = (from p in context.WEAPONs
                                     where p.uiIndex == itemLoad.ubClassIndex
                                     select p).First();
                IdItemWeapon = 0;
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
                        //by = itemLoad.Item_Image;
                    }
                }
                else Weapon_image.Source = null;
                ItemFromGrid er = new ItemFromGrid();

                er.item_s = itemLoad;
                er.weapon_s = weaponLoad;

                er.Name = itemLoad.szItemName;
                er.TL = itemLoad.TL1.name_TL.ToString();
                if (weaponLoad.Arm_Division != 1) er.Damage = weaponLoad.Damage + " (" + Convert.ToDouble(weaponLoad.Arm_Division) + ") " + weaponLoad.TypeOfDamage.name;
                else er.Damage = weaponLoad.Damage + " " + weaponLoad.TypeOfDamage.name;
                er.DefACC = weaponLoad.DefACC.ToString();
                er.range = Convert.ToDouble(weaponLoad.Half_Range) + "/" + Convert.ToDouble(weaponLoad.FullRange);
                er.weigth = Convert.ToDouble(itemLoad.ubWeight) + "/" + weaponLoad.Shots * Convert.ToDouble(weaponLoad.AMMO.WPS);

                //ROF
                er.Rof = weaponLoad.ROF.ToString();
                if (weaponLoad.WeaponType.name == "Shotgun") er.Rof = weaponLoad.ROF.ToString() + "x" + weaponLoad.ROF_for_Sh.ToString();
                if (weaponLoad.Full_auto) er.Rof = weaponLoad.ROF.ToString() + "!";
                //if (weaponLoad.h//   HCR ROF

                //Shots
                er.Shots = weaponLoad.Shots.ToString();
                if (weaponLoad.Add_in_Chamber) er.Shots = weaponLoad.Shots.ToString() + "+1";
                if (weaponLoad.single_reload) er.Shots = weaponLoad.Shots.ToString() + "(" + weaponLoad.Time_For_reload + "i)";
                else er.Shots = weaponLoad.Shots.ToString() + "(" + weaponLoad.Time_For_reload + ")";

                er.minST = itemLoad.minST.ToString();
                if (itemLoad.TwoHanded) er.minST = itemLoad.minST.ToString() + "†";

                er.Bulk = itemLoad.ItemSize;
                if (weaponLoad.Bulkfolded) er.Bulk = itemLoad.ItemSize + "*";

                er.rcl = weaponLoad.Recoil.ToString();
                er.cost = "$" + Convert.ToDouble(itemLoad.usPrice) + "/$" + weaponLoad.Shots * Convert.ToDouble(weaponLoad.AMMO.CPS);
                er.LC = itemLoad.LC1.Name_LC;

                er.Type = "gun";

                Item_dataGrid.Items.Add(er);/////////////////////////////////////////////////////////////
                Item_dataGrid.ColumnWidth = DataGridLength.Auto;
                ScopeIndex = 0;
                LaserIndex = 0;
                LigtIndex = 0;

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

                List<AvailableAttachSlot> AvSlot = (from p in context.AvailableAttachSlots
                                                    where p.rWeaponId == weaponLoad.uiIndex
                                                    select p).ToList();
                foreach (AvailableAttachSlot items in AvSlot)
                {
                    if (items.rATTACHMENTSLOT == 1)
                    {
                        ScopeSelect_button.Visibility = Visibility.Visible;

                        mountScope = items.rAttachmentmount;

                        //comboBox_Scope.DataSource = (from p in context.Attachmentmounts
                        //                             where p.idAttacClass == items.ATTACHMENTSLOT.nasAttachmentClass
                        //                             select p).ToList();
                        //comboBox_Scope.ValueMember = "id";
                        //comboBox_Scope.DisplayMember = "name";
                        //comboBox_Scope.SelectedValue = items.rAttachmentmount;
                    }


                    if (items.rATTACHMENTSLOT == 2)
                    {
                        LaserSelect_button.Visibility = Visibility.Visible;
                        mountLaser = items.rAttachmentmount;
                        //    pictureBox_Laser.Visible = true;
                        //    //comboBox_Laser.DataSource = (from p in context.Attachmentmounts
                        //    //                             where p.idAttacClass == items.ATTACHMENTSLOT.nasAttachmentClass
                        //    //                             select p).ToList();
                        //    //comboBox_Laser.ValueMember = "id";
                        //    //comboBox_Laser.DisplayMember = "name";
                        //    //comboBox_Laser.SelectedValue = items.rAttachmentmount;
                    }

                    if (items.rATTACHMENTSLOT == 3)
                    {
                        //    pictureBox_Light.Visible = true;
                        LightSelect_button.Visibility = Visibility.Visible;
                        mountLight = items.rAttachmentmount;
                        //    //comboBox_Light.DataSource = (from p in context.Attachmentmounts
                        //    //                             where p.idAttacClass == items.ATTACHMENTSLOT.nasAttachmentClass
                        //    //                             select p).ToList();
                        //    //comboBox_Light.ValueMember = "id";
                        //    //comboBox_Light.DisplayMember = "name";
                        //    //comboBox_Light.SelectedValue = items.rAttachmentmount;
                    }

                    if (items.rATTACHMENTSLOT == 4)
                    {
                        //    pictureBox_Bipod.Visible = true;
                        mountBipod = items.rAttachmentmount;
                        BipodSelect_button.Visibility = Visibility.Visible;
                        //    //comboBox_Bipod.DataSource = (from p in context.Attachmentmounts
                        //    //                             where p.idAttacClass == items.ATTACHMENTSLOT.nasAttachmentClass
                        //    //                             select p).ToList();
                        //    //comboBox_Bipod.ValueMember = "id";
                        //    //comboBox_Bipod.DisplayMember = "name";
                        //    //comboBox_Bipod.SelectedValue = items.rAttachmentmount;
                    }

                    if (items.rATTACHMENTSLOT == 5)
                    {
                        mountSilenser = items.rAttachmentmount;
                        SilenserSelect_button.Visibility = Visibility.Visible;
                        //    pictureBox_Silenser.Visible = true;
                        //    mountSilenser = items.rAttachmentmount;
                        //    //comboBox_Silenser.DataSource = (from p in context.Attachmentmounts
                        //    //                                where p.idAttacClass == items.ATTACHMENTSLOT.nasAttachmentClass
                        //    //                                select p).ToList();
                        //    //comboBox_Silenser.ValueMember = "id";
                        //    //comboBox_Silenser.DisplayMember = "name";
                        //    //comboBox_Silenser.SelectedValue = items.rAttachmentmount;
                    }

                    if (items.rATTACHMENTSLOT == 6)
                    {
                        mountLauncher = items.rAttachmentmount;
                        LauncherSelect_button.Visibility = Visibility.Visible;
                        //    pictureBox_Launcher.Visible = true;
                        //    //comboBox_Launcher.DataSource = (from p in context.Attachmentmounts
                        //    //                                where p.idAttacClass == items.ATTACHMENTSLOT.nasAttachmentClass
                        //    //                                select p).ToList();
                        //    //comboBox_Launcher.ValueMember = "id";
                        //    //comboBox_Launcher.DisplayMember = "name";
                        //    //comboBox_Launcher.SelectedValue = items.rAttachmentmount;
                    }

                    if (items.rATTACHMENTSLOT == 7)
                    {
                        mountStock = items.rAttachmentmount;
                        StockSelect_button.Visibility = Visibility.Visible;
                        //    pictureBox_Stock.Visible = true;
                        //    //comboBox_Stock.DataSource = (from p in context.Attachmentmounts
                        //    //                             where p.idAttacClass == items.ATTACHMENTSLOT.nasAttachmentClass
                        //    //                             select p).ToList();
                        //    //comboBox_Stock.ValueMember = "id";
                        //    //comboBox_Stock.DisplayMember = "name";
                        //    //comboBox_Stock.SelectedValue = items.rAttachmentmount;
                    }

                    if (items.rATTACHMENTSLOT == 8)
                    {
                        mountBayonet = items.rAttachmentmount;
                        BayonetSelect_button.Visibility = Visibility.Visible;
                        //    pictureBox_Bayonet.Visible = true;
                        //    //comboBox_Bayonet.DataSource = (from p in context.Attachmentmounts
                        //    //                               where p.idAttacClass == items.ATTACHMENTSLOT.nasAttachmentClass
                        //    //                               select p).ToList();
                        //    //comboBox_Bayonet.ValueMember = "id";
                        //    //comboBox_Bayonet.DisplayMember = "name";
                        //    //comboBox_Bayonet.SelectedValue = items.rAttachmentmount;
                    }

                    if (items.rATTACHMENTSLOT == 9)
                    {
                        mountMagazine = items.rAttachmentmount;
                        MagazineSelect_button.Visibility = Visibility.Visible;
                        //    pictureBox_Magazine.Visible = true;
                        //    //comboBox_Magazine.DataSource = (from p in context.Attachmentmounts
                        //    //                                where p.idAttacClass == items.ATTACHMENTSLOT.nasAttachmentClass
                        //    //                                select p).ToList();
                        //    //comboBox_Magazine.ValueMember = "id";
                        //    //comboBox_Magazine.DisplayMember = "name";
                        //    //comboBox_Magazine.SelectedValue = items.rAttachmentmount;
                    }

                    if (items.rATTACHMENTSLOT == 10)
                    {
                        mountInternal = items.rAttachmentmount;
                        InternalSelect_button.Visibility = Visibility.Visible;
                        //    pictureBox_Internal.Visible = true;
                        //    //comboBox_Internal.DataSource = (from p in context.Attachmentmounts
                        //    //                                where p.idAttacClass == items.ATTACHMENTSLOT.nasAttachmentClass
                        //    //                                select p).ToList();
                        //    //comboBox_Internal.ValueMember = "id";
                        //    //comboBox_Internal.DisplayMember = "name";
                        //    //comboBox_Internal.SelectedValue = items.rAttachmentmount;
                    }

                    if (items.rATTACHMENTSLOT == 11)
                    {
                        mountExternal = items.rAttachmentmount;
                        ExternalSelect_button.Visibility = Visibility.Visible;
                        //    pictureBox_External.Visible = true;
                        //    //comboBox_External.DataSource = (from p in context.Attachmentmounts
                        //    //                                where p.idAttacClass == items.ATTACHMENTSLOT.nasAttachmentClass
                        //    //                                select p).ToList();
                        //    //comboBox_External.ValueMember = "id";
                        //    //comboBox_External.DisplayMember = "name";
                        //    //comboBox_External.SelectedValue = items.rAttachmentmount;
                    }
                }

            }
        }

        private void ScopeSelect_button_Click(object sender, RoutedEventArgs e)
        {
            Select_Items selectItems = new Select_Items("Attachment", 1, mountScope);

            selectItems.Owner = this;
            selectItems.ShowDialog();

            if (IdItemWeapon != 0)
            {
                List<ItemFromGrid> k = new List<ItemFromGrid>();
                foreach (ItemFromGrid item in Item_dataGrid.Items)
                {
                    if (item.Type == "Scope") k.Add(item);
                }
                foreach (ItemFromGrid item in k)
                {
                    Item_dataGrid.Items.Remove(item);
                }


                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    ITEM itemScope = (from p in context.ITEMs
                                      where p.uiIndex == IdItemWeapon
                                      select p).First();
                    Attachment attScope = (from p in context.Attachments
                                           where p.uiIndex == itemScope.ubClassIndex
                                           select p).First();// передать этот экземпляр в другую форму.
                    context.Database.Connection.Close();
                    IdItemWeapon = 0;
                    ItemFromGrid Scope_er = new ItemFromGrid();
                    Scope_er.Type = "Scope";
                    Scope_er.item_s = itemScope;
                    Scope_er.Scope_s = attScope;
                    Scope_er.Name = itemScope.szItemName;
                    Scope_er.TL = itemScope.TL1.name_TL.ToString();
                    Scope_er.DefACC = attScope.AccAddmax.ToString();
                    Scope_er.weigth = itemScope.ubWeight.ToString();
                    //ROF
                    Scope_er.Bulk = itemScope.ItemSize;
                    Scope_er.cost = "$" + Convert.ToDouble(itemScope.usPrice);
                    Scope_er.LC = itemScope.LC1.Name_LC;
                    Item_dataGrid.Items.Add(Scope_er);
                    ScopeIndex = Item_dataGrid.Items.Count - 1;

                    if (itemScope.Item_Image != null)
                    {
                        // MemoryStream stream = new MemoryStream(item.Item_Image);

                        using (var ms = new MemoryStream(itemScope.Item_Image, 0, itemScope.Item_Image.Length))
                        {
                            var image = new BitmapImage();
                            image.BeginInit();
                            image.CacheOption = BitmapCacheOption.OnLoad;
                            image.StreamSource = ms;
                            image.EndInit();
                            ScopeImage.Source = image;
                            //by = itemLoad.Item_Image;
                        }
                    }
                }
            }
        }

        private void Del_button_Click(object sender, RoutedEventArgs e)
        {

            var selectedCell = Item_dataGrid.SelectedCells[13];


            var cellContent = selectedCell.Column.GetCellContent(selectedCell.Item);

            MessageBox.Show((cellContent as TextBlock).Text);
            if ((cellContent as TextBlock).Text == "Scope") ScopeIndex = 0;
            else if ((cellContent as TextBlock).Text == "Laser") LaserIndex = 0;
            else if ((cellContent as TextBlock).Text == "Light") LigtIndex = 0;


            Item_dataGrid.Items.Remove(Item_dataGrid.SelectedItem);
        }
    }
}

