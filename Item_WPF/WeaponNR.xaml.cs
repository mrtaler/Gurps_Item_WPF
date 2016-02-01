using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Drawing;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.IO;
using System.Collections.ObjectModel;
using System.Globalization;
using System.Collections.Specialized;
using Item_WPF.addin;

namespace Item_WPF
{
    /// <summary>
    /// Логика взаимодействия для Weapon_N_R.xaml
    /// </summary>
    public partial class WeaponNr : Window
    {

        private item1Entities _context;
        private ObservableCollection<ITEM> ItemColl { get; set; }
        private ObservableCollection<WEAPON> WeaponColl { get; set; }


        ITEM ItemLoad { get; set; }

        WEAPON WeaponLoad { get; set; }

        //TL itemLoad { get; set; }
        //LC itemLoad { get; set; }

        byte[] _by;
        public WeaponNr()
        {
            InitializeComponent();
            _context = new item1Entities();
            // загрузка из контекста редактируемых таблиц
            ItemColl = new ObservableCollection<ITEM>(_context.ITEMs);
            WeaponColl = new ObservableCollection<WEAPON>(_context.WEAPONs);


            this.Loaded += new RoutedEventHandler(Page_Loaded);
        }

        void Page_Loaded(object sender, RoutedEventArgs e)
        {
            ItemLoad = (from z in ItemColl
                        where z.uiIndex == Datachange.IdSel
                        select z).First();
            MainGrid.DataContext = ItemLoad;

            WeaponLoad = (from p in _context.WEAPONs
                          where p.uiIndex == ItemLoad.ubClassIndex
                          select p).First();
            GeneralGrid.DataContext = ItemLoad;
            WeaponWin.DataContext = WeaponLoad;

            if (ItemLoad.Item_Image != null)
            {
                // MemoryStream stream = new MemoryStream(item.Item_Image);
                using (var ms = new MemoryStream(ItemLoad.Item_Image, 0, ItemLoad.Item_Image.Length))
                {
                    var image = new BitmapImage();
                    image.BeginInit();
                    image.CacheOption = BitmapCacheOption.OnLoad;
                    image.StreamSource = ms;
                    image.EndInit();
                    ItemImage.Source = image;
                    _by = ItemLoad.Item_Image;
                }
            }
            // вкладк №2.

            TlCb.ItemsSource = new ObservableCollection<TL>(_context.TLs);
            LcCb.ItemsSource = new ObservableCollection<LC>(_context.LCs);
            WeaponGridGeneral.DataContext = WeaponLoad;
            ItemsGridGeneral.DataContext = ItemLoad;
            //Type&Class

            ClassOfWeaponTb.ItemsSource = new ObservableCollection<WeaponClass>(_context.WeaponClasses);
            TypeOfClassWeapTb.ItemsSource = _context.WeaponTypes.Where(p => p.WeaponClass.id == WeaponLoad.ubWeaponClass).ToList();

            //Weapon

            WeaponMainGrid.DataContext = WeaponLoad;
            //DamageWeapon_grid.DataContext = weaponLoad;

            TypeOfDamageComboBox.ItemsSource = _context.TypeOfDamages.ToList();
            //range_grid.DataContext = weaponLoad;
            //shots_grid.DataContext = weaponLoad;

            //Shots

            if (WeaponLoad.WeaponType.name == "Shotgun")
            {
                ShrofTextBox.Visibility = Visibility.Visible;
                ShLabel20.Visibility = Visibility.Visible;
            }

            if (Convert.ToBoolean(CutOfShotsCheckBox.IsChecked))
            {
                Label20.Visibility = Visibility.Visible;
                CutOfShotsTextBox.Visibility = Visibility.Visible;
            }


            //Reload

            CAliberComboBox.ItemsSource = _context.AMMOes.ToList();


            List<AvailableAttachSlot> avSlot = (from p in _context.AvailableAttachSlots
                                                where p.rWeaponId == WeaponLoad.uiIndex
                                                select p).ToList();
            foreach (AvailableAttachSlot items in avSlot)
            {
                if (items.rATTACHMENTSLOT == 1)
                {
                    ScopeCheckBox.IsChecked = true;
                    ScopeComboBox.Visibility = Visibility.Visible;
                    ScopeComboBox.SelectedValue = items.rAttachmentmount;
                }
                if (items.rATTACHMENTSLOT == 2)
                {
                    LaserCheckBox.IsChecked = true;
                    LaserComboBox.Visibility = Visibility.Visible;
                    LaserComboBox.SelectedValue = items.rAttachmentmount;
                }
                if (items.rATTACHMENTSLOT == 3)
                {
                    LightCheckBox.IsChecked = true;
                    LightComboBox.Visibility = Visibility.Visible;
                    LightComboBox.SelectedValue = items.rAttachmentmount;
                }
                if (items.rATTACHMENTSLOT == 4)
                {
                    BipodCheckBox.IsChecked = true;
                    BipodComboBox.Visibility = Visibility.Visible;
                    BipodComboBox.SelectedValue = items.rAttachmentmount;
                }
                if (items.rATTACHMENTSLOT == 5)
                {
                    SilenserCheckBox.IsChecked = true;
                    SilenserComboBox.Visibility = Visibility.Visible;
                    SilenserComboBox.SelectedValue = items.rAttachmentmount;
                }
                if (items.rATTACHMENTSLOT == 6)
                {
                    LauncherCheckBox.IsChecked = true;
                    LauncherComboBox.Visibility = Visibility.Visible;
                    LauncherComboBox.SelectedValue = items.rAttachmentmount;
                }////////////////
                if (items.rATTACHMENTSLOT == 7)
                {
                    StockCheckBox.IsChecked = true;
                    StockComboBox.Visibility = Visibility.Visible;
                    StockComboBox.SelectedValue = items.rAttachmentmount;
                }
                if (items.rATTACHMENTSLOT == 8)
                {
                    BayonetCheckBox.IsChecked = true;
                    BayonetComboBox.Visibility = Visibility.Visible;
                    BayonetComboBox.SelectedValue = items.rAttachmentmount;
                }

                if (items.rATTACHMENTSLOT == 9)
                {
                    MagazineCheckBox.IsChecked = true;
                    MagazineComboBox.Visibility = Visibility.Visible;
                    MagazineComboBox.SelectedValue = items.rAttachmentmount;
                }
                if (items.rATTACHMENTSLOT == 10)
                {
                    InternalCheckBox.IsChecked = true;
                    InternalComboBox.Visibility = Visibility.Visible;
                    InternalComboBox.SelectedValue = items.rAttachmentmount;
                }
                if (items.rATTACHMENTSLOT == 11)
                {
                    ExternalCheckBox.IsChecked = true;
                    ExternalComboBox.Visibility = Visibility.Visible;
                    ExternalComboBox.SelectedValue = items.rAttachmentmount;
                }
            }
        }
        private void save_button_Click(object sender, RoutedEventArgs e)
        {
            ITEM itemSave = (from z in _context.ITEMs
                             where z.uiIndex == Datachange.IdSel
                             select z).First();
            WEAPON weaponSave = (from p in _context.WEAPONs
                                 where p.uiIndex == itemSave.ubClassIndex
                                 select p).First();


            //string dd = (Cost_TB.Text.Replace("$", "").Replace(datachange.separatorCh, datachange.separator));
            //itemSave.usPrice = Convert.ToDecimal(dd);

            itemSave.Item_Image = _by;

            //range
            //weaponSave.MinRange = Convert.ToDecimal(MinRange_textBox.Text.Replace(datachange.separatorCh, datachange.separator));
            //weaponSave.Half_Range = Convert.ToDecimal(HalfRange_textBox.Text.Replace(datachange.separatorCh, datachange.separator));
            //weaponSave.FullRange = Convert.ToDecimal(MaxRange_textBox.Text.Replace(datachange.separatorCh, datachange.separator));
            //shots


            //if (TypeOfClassWeap_TB.Text == "Shotgun")

            //    weaponSave.ROF_for_Sh = Convert.ToInt32(SHROF_textBox.Text);
            //else weaponSave.ROF_for_Sh = 0;

            //if (Convert.ToBoolean(CutOfShots_checkBox.IsChecked))

            //    weaponSave.CutOff_shotsCount = Convert.ToInt32(CutOfShots_textBox.Text);


            List<AvailableAttachSlot> avSlot = (from p in _context.AvailableAttachSlots
                                                where p.rWeaponId == weaponSave.uiIndex
                                                select p).ToList();

            foreach (var avs in avSlot)
            {
                _context.AvailableAttachSlots.Remove(avs);
            }

            if (Convert.ToBoolean(ScopeCheckBox.IsChecked))
            {
                AvailableAttachSlot avSc = new AvailableAttachSlot();
                avSc.rWeaponId = weaponSave.uiIndex;
                avSc.rATTACHMENTSLOT = 1;
                avSc.rAttachmentmount = Convert.ToInt32(ScopeComboBox.SelectedValue);
                _context.AvailableAttachSlots.Add(avSc);
            }
            if (Convert.ToBoolean(LaserCheckBox.IsChecked))
            {
                AvailableAttachSlot avSc = new AvailableAttachSlot();
                avSc.rWeaponId = weaponSave.uiIndex;
                avSc.rATTACHMENTSLOT = 2;
                avSc.rAttachmentmount = Convert.ToInt32(LaserComboBox.SelectedValue);
                _context.AvailableAttachSlots.Add(avSc);
            }
            if (Convert.ToBoolean(LightCheckBox.IsChecked))
            {
                AvailableAttachSlot avSc = new AvailableAttachSlot();
                avSc.rWeaponId = weaponSave.uiIndex;
                avSc.rATTACHMENTSLOT = 3;
                avSc.rAttachmentmount = Convert.ToInt32(LightComboBox.SelectedValue);
                _context.AvailableAttachSlots.Add(avSc);
            }

            if (Convert.ToBoolean(BipodCheckBox.IsChecked))
            {
                AvailableAttachSlot avSc = new AvailableAttachSlot();
                avSc.rWeaponId = weaponSave.uiIndex;
                avSc.rATTACHMENTSLOT = 4;
                avSc.rAttachmentmount = Convert.ToInt32(BipodComboBox.SelectedValue);
                _context.AvailableAttachSlots.Add(avSc);
            }
            if (Convert.ToBoolean(SilenserCheckBox.IsChecked))
            {
                AvailableAttachSlot avSc = new AvailableAttachSlot();
                avSc.rWeaponId = weaponSave.uiIndex;
                avSc.rATTACHMENTSLOT = 5;
                avSc.rAttachmentmount = Convert.ToInt32(SilenserComboBox.SelectedValue);
                _context.AvailableAttachSlots.Add(avSc);
            }
            if (Convert.ToBoolean(LauncherCheckBox.IsChecked))
            {
                AvailableAttachSlot avSc = new AvailableAttachSlot();
                avSc.rWeaponId = weaponSave.uiIndex;
                avSc.rATTACHMENTSLOT = 6;
                avSc.rAttachmentmount = Convert.ToInt32(LauncherComboBox.SelectedValue);
                _context.AvailableAttachSlots.Add(avSc);
            }

            if (Convert.ToBoolean(StockCheckBox.IsChecked))
            {
                AvailableAttachSlot avSc = new AvailableAttachSlot();
                avSc.rWeaponId = weaponSave.uiIndex;
                avSc.rATTACHMENTSLOT = 7;
                avSc.rAttachmentmount = Convert.ToInt32(StockComboBox.SelectedValue);
                _context.AvailableAttachSlots.Add(avSc);
            }
            if (Convert.ToBoolean(BayonetCheckBox.IsChecked))
            {
                AvailableAttachSlot avSc = new AvailableAttachSlot();
                avSc.rWeaponId = weaponSave.uiIndex;
                avSc.rATTACHMENTSLOT = 8;
                avSc.rAttachmentmount = Convert.ToInt32(BayonetComboBox.SelectedValue);
                _context.AvailableAttachSlots.Add(avSc);
            }
            if (Convert.ToBoolean(MagazineCheckBox.IsChecked))
            {
                AvailableAttachSlot avSc = new AvailableAttachSlot();
                avSc.rWeaponId = weaponSave.uiIndex;
                avSc.rATTACHMENTSLOT = 9;
                avSc.rAttachmentmount = Convert.ToInt32(MagazineComboBox.SelectedValue);
                _context.AvailableAttachSlots.Add(avSc);
            }

            if (Convert.ToBoolean(InternalCheckBox.IsChecked))
            {
                AvailableAttachSlot avSc = new AvailableAttachSlot();
                avSc.rWeaponId = weaponSave.uiIndex;
                avSc.rATTACHMENTSLOT = 10;
                avSc.rAttachmentmount = Convert.ToInt32(InternalComboBox.SelectedValue);
                _context.AvailableAttachSlots.Add(avSc);
            }
            if (Convert.ToBoolean(ExternalCheckBox.IsChecked))
            {
                AvailableAttachSlot avSc = new AvailableAttachSlot();
                avSc.rWeaponId = weaponSave.uiIndex;
                avSc.rATTACHMENTSLOT = 11;
                avSc.rAttachmentmount = Convert.ToInt32(ExternalComboBox.SelectedValue);
                _context.AvailableAttachSlots.Add(avSc);
            } //
            WeaponLoad.szWeaponName = ItemLoad.szItemName;
            _context.SaveChanges();


        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            ItemLoad.used = false;
            ItemLoad.dt = null;
            _context.SaveChanges();
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();
            dlg.InitialDirectory = "C:\\Users\\Derdan\\Dropbox\\Weapon";
            dlg.Filter = "Image files (*.jpg,*.png,*.bmp,*.gif)|*.jpg;*.png;*.bmp,*.gif|All Files (*.*)|*.*";
            dlg.ShowDialog();
            if (dlg.FileName != "")
            {
                ItemImage.Source = new BitmapImage(new Uri(dlg.FileName));
                _by = System.IO.File.ReadAllBytes(dlg.FileName);
            }
        }

        private void DeleteImage_button_Click(object sender, RoutedEventArgs e)
        {
            _by = null;
            ItemImage.Source = null;
            ItemImage.UpdateLayout();
        }

        private void ClassOfWeapon_TB_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            int classWeaponSelected = Convert.ToInt32(ClassOfWeaponTb.SelectedValue);
            // TypeOfClassWeap_TB.ItemsSource = weapon_type_coll.Where(p => p.WeaponClass.id == ClassWeaponSelected);
            if (classWeaponSelected != 0)
            {
                TypeOfClassWeapTb.ItemsSource = _context.WeaponTypes.Where(p => p.WeaponClass.id == classWeaponSelected).ToList();
                TypeOfClassWeapTb.Items.Refresh();
                TypeOfClassWeapTb.SelectedIndex = 0;
            }
        }

        private void TypeOfClassWeap_TB_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            int aa = Convert.ToInt32(TypeOfClassWeapTb.SelectedValue);
            if (aa != 0)
            {
                string xx = (from p in _context.WeaponTypes
                             where p.id == aa
                             select p.name).First().ToString();
                if (xx == "Shotgun")
                {
                    ShrofTextBox.Visibility = Visibility.Visible;
                    ShrofTextBox.Text = "0";
                    ShLabel20.Visibility = Visibility.Visible;
                }
                else
                {
                    ShrofTextBox.Visibility = Visibility.Hidden;
                    ShLabel20.Visibility = Visibility.Hidden;
                }
            }
        }

        private void CutOfShots_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            //if (Convert.ToBoolean(CutOfShots_checkBox.IsChecked))
            //{

            Label20.Visibility = Visibility.Visible;
            FullAutoCheckBox.IsChecked = false;
            CutOfShotsTextBox.Visibility = Visibility.Visible;
            CutOfShotsTextBox.Text = "0";

        }

        private void CutOfShots_checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            Label20.Visibility = Visibility.Hidden;
            CutOfShotsTextBox.Visibility = Visibility.Hidden;
        }
        private void FullAuto_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            if (Convert.ToBoolean(FullAutoCheckBox.IsChecked)) CutOfShotsCheckBox.IsChecked = false;
        }

        private void Scope_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                ScopeComboBox.ItemsSource = (from p in context.Attachmentmounts
                                              where p.idAttacClass == 1
                                              orderby p.name
                                              select p).ToList();
                ScopeComboBox.SelectedValuePath = "id";
                ScopeComboBox.DisplayMemberPath = "name";
                ScopeComboBox.Visibility = Visibility.Visible;
            }
        }

        private void Scope_checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            ScopeComboBox.Visibility = Visibility.Hidden;
        }

        private void Laser_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                LaserComboBox.ItemsSource = (from p in context.Attachmentmounts
                                              where p.idAttacClass == 2
                                              orderby p.name
                                              select p).ToList();
                LaserComboBox.SelectedValuePath = "id";
                LaserComboBox.DisplayMemberPath = "name";
                LaserComboBox.Visibility = Visibility.Visible;
            }

        }

        private void Laser_checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            LaserComboBox.Visibility = Visibility.Hidden;
        }

        private void Light_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                LightComboBox.ItemsSource = (from p in context.Attachmentmounts
                                              where p.idAttacClass == 3
                                              orderby p.name
                                              select p).ToList();
                LightComboBox.SelectedValuePath = "id";
                LightComboBox.DisplayMemberPath = "name";
                LightComboBox.Visibility = Visibility.Visible;
            }
        }

        private void Light_checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            LightComboBox.Visibility = Visibility.Hidden;
        }

        private void Bipod_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                BipodComboBox.ItemsSource = (from p in context.Attachmentmounts
                                              where p.idAttacClass == 4
                                              orderby p.name
                                              select p).ToList();
                BipodComboBox.SelectedValuePath = "id";
                BipodComboBox.DisplayMemberPath = "name";
                BipodComboBox.Visibility = Visibility.Visible;
            }
        }

        private void Bipod_checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            BipodComboBox.Visibility = Visibility.Hidden;
        }

        private void Silenser_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                SilenserComboBox.ItemsSource = (from p in context.Attachmentmounts
                                                 where p.idAttacClass == 5
                                                 orderby p.name
                                                 select p).ToList();
                SilenserComboBox.SelectedValuePath = "id";
                SilenserComboBox.DisplayMemberPath = "name";
                SilenserComboBox.Visibility = Visibility.Visible;
            }
        }

        private void Silenser_checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            SilenserComboBox.Visibility = Visibility.Hidden;
        }

        private void Launcher_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                LauncherComboBox.ItemsSource = (from p in context.Attachmentmounts
                                                 where p.idAttacClass == 6
                                                 orderby p.name
                                                 select p).ToList();
                LauncherComboBox.SelectedValuePath = "id";
                LauncherComboBox.DisplayMemberPath = "name";
                LauncherComboBox.Visibility = Visibility.Visible;
            }
        }

        private void Launcher_checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            LauncherComboBox.Visibility = Visibility.Hidden;
        }

        private void Stock_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                StockComboBox.ItemsSource = (from p in context.Attachmentmounts
                                              where p.idAttacClass == 7
                                              orderby p.name
                                              select p).ToList();
                StockComboBox.SelectedValuePath = "id";
                StockComboBox.DisplayMemberPath = "name";
                StockComboBox.Visibility = Visibility.Visible;
            }
        }

        private void Stock_checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            StockComboBox.Visibility = Visibility.Hidden;
        }

        private void Bayonet_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                BayonetComboBox.ItemsSource = (from p in context.Attachmentmounts
                                                where p.idAttacClass == 8
                                                orderby p.name
                                                select p).ToList();
                BayonetComboBox.SelectedValuePath = "id";
                BayonetComboBox.DisplayMemberPath = "name";
                BayonetComboBox.Visibility = Visibility.Visible;
            }
        }

        private void Bayonet_checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            BayonetComboBox.Visibility = Visibility.Hidden;
        }

        private void Magazine_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                MagazineComboBox.ItemsSource = (from p in context.Attachmentmounts
                                                 where p.idAttacClass == 9
                                                 orderby p.name
                                                 select p).ToList();
                MagazineComboBox.SelectedValuePath = "id";
                MagazineComboBox.DisplayMemberPath = "name";
                MagazineComboBox.Visibility = Visibility.Visible;
            }
        }

        private void Magazine_checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            MagazineComboBox.Visibility = Visibility.Hidden;
        }

        private void Internal_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                InternalComboBox.ItemsSource = (from p in context.Attachmentmounts
                                                 where p.idAttacClass == 10
                                                 orderby p.name
                                                 select p).ToList();
                InternalComboBox.SelectedValuePath = "id";
                InternalComboBox.DisplayMemberPath = "name";
                InternalComboBox.Visibility = Visibility.Visible;
            }
        }

        private void Internal_checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            InternalComboBox.Visibility = Visibility.Hidden;
        }

        private void External_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                ExternalComboBox.ItemsSource = (from p in context.Attachmentmounts
                                                 where p.idAttacClass == 11
                                                 orderby p.name
                                                 select p).ToList();
                ExternalComboBox.SelectedValuePath = "id";
                ExternalComboBox.DisplayMemberPath = "name";
                ExternalComboBox.Visibility = Visibility.Visible;
            }
        }

        private void External_checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            ExternalComboBox.Visibility = Visibility.Hidden;
        }

        private void cancel_button_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void TypeOfDamage_comboBox_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                EditContentInSimpleTable eCinSt = new EditContentInSimpleTable();
                eCinSt.ShowDialog();
                using (item1Entities context = new item1Entities())
                {
                    TypeOfDamageComboBox.ItemsSource = context.TypeOfDamages.ToList();
                }


                //MessageBox.Show("Текст сообщения", "Заголовок сообщения");
                //ComboBox c = (sender as ComboBox);
                //c.Items.Add(c.Text);
            }
        }

        private void CAliber_comboBox_KeyDown(object sender, KeyEventArgs e)
        {

            Caliber calibber = new Caliber();
            calibber.ShowDialog();
            using (item1Entities context = new item1Entities())
            {
                CAliberComboBox.ItemsSource = context.AMMOes.ToList();
                CAliberComboBox.SelectedValuePath = "id";
                CAliberComboBox.DisplayMemberPath = "Caliber_name";
                CAliberComboBox.SelectedValue = CAliberComboBox.Items.Count;
            }
        }

        private void Name_TB_TextChanged(object sender, TextChangedEventArgs e)
        {
            WeaponLoad.szWeaponName = ItemLoad.szItemName;
        }

        private void Scope_comboBox_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                AttacmentMount atmS = new AttacmentMount(1);
                atmS.ShowDialog();
                using (item1Entities context = new item1Entities())
                {
                    ScopeComboBox.ItemsSource = (from p in context.Attachmentmounts
                                                  where p.idAttacClass == 1
                                                  orderby p.name
                                                  select p).ToList();
                    ScopeComboBox.SelectedValuePath = "id";
                    ScopeComboBox.DisplayMemberPath = "name";
                    ScopeComboBox.SelectedValue = ScopeComboBox.Items.Count;
                }

            }
        }

        private void Laser_comboBox_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                AttacmentMount atmS = new AttacmentMount(2);
                atmS.ShowDialog();
                using (item1Entities context = new item1Entities())
                {
                    LaserComboBox.ItemsSource = (from p in context.Attachmentmounts
                                                  where p.idAttacClass == 2
                                                  orderby p.name
                                                  select p).ToList();
                    LaserComboBox.SelectedValuePath = "id";
                    LaserComboBox.DisplayMemberPath = "name";
                    LaserComboBox.SelectedValue = LaserComboBox.Items.Count;
                }
            }
        }

        private void Light_comboBox_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                AttacmentMount atmS = new AttacmentMount(3);
                atmS.ShowDialog();
                using (item1Entities context = new item1Entities())
                {
                    LightComboBox.ItemsSource = (from p in context.Attachmentmounts
                                                  where p.idAttacClass == 3
                                                  orderby p.name
                                                  select p).ToList();
                    LightComboBox.SelectedValuePath = "id";
                    LightComboBox.DisplayMemberPath = "name";
                    LightComboBox.SelectedValue = LightComboBox.Items.Count;
                }
            }
        }

        private void Bipod_comboBox_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                AttacmentMount atmS = new AttacmentMount(4);
                atmS.ShowDialog();
                using (item1Entities context = new item1Entities())
                {
                    BipodComboBox.ItemsSource = (from p in context.Attachmentmounts
                                                  where p.idAttacClass == 4
                                                  orderby p.name
                                                  select p).ToList();
                    BipodComboBox.SelectedValuePath = "id";
                    BipodComboBox.DisplayMemberPath = "name";
                    BipodComboBox.SelectedValue = BipodComboBox.Items.Count;
                }
            }
        }

        private void Silenser_comboBox_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                AttacmentMount atmS = new AttacmentMount(5);
                atmS.ShowDialog();
                using (item1Entities context = new item1Entities())
                {
                    SilenserComboBox.ItemsSource = (from p in context.Attachmentmounts
                                                  where p.idAttacClass == 5
                                                  orderby p.name
                                                  select p).ToList();
                    SilenserComboBox.SelectedValuePath = "id";
                    SilenserComboBox.DisplayMemberPath = "name";
                    SilenserComboBox.SelectedValue = SilenserComboBox.Items.Count;
                }
            }
        }

        private void Launcher_comboBox_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                AttacmentMount atmS = new AttacmentMount(6);
                atmS.ShowDialog();
                using (item1Entities context = new item1Entities())
                {
                    LauncherComboBox.ItemsSource = (from p in context.Attachmentmounts
                                                     where p.idAttacClass == 6
                                                     orderby p.name
                                                     select p).ToList();
                    LauncherComboBox.SelectedValuePath = "id";
                    LauncherComboBox.DisplayMemberPath = "name";
                    LauncherComboBox.SelectedValue = LauncherComboBox.Items.Count;
                }
            }
        }

        private void Stock_comboBox_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                AttacmentMount atmS = new AttacmentMount(7);
                atmS.ShowDialog();
                using (item1Entities context = new item1Entities())
                {
                    StockComboBox.ItemsSource = (from p in context.Attachmentmounts
                                                     where p.idAttacClass == 7
                                                     orderby p.name
                                                     select p).ToList();
                    StockComboBox.SelectedValuePath = "id";
                    StockComboBox.DisplayMemberPath = "name";
                    StockComboBox.SelectedValue = StockComboBox.Items.Count;
                }
            }
        }

        private void Bayonet_comboBox_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                AttacmentMount atmS = new AttacmentMount(8);
                atmS.ShowDialog();
                using (item1Entities context = new item1Entities())
                {
                    BayonetComboBox.ItemsSource = (from p in context.Attachmentmounts
                                                  where p.idAttacClass == 8
                                                  orderby p.name
                                                  select p).ToList();
                    BayonetComboBox.SelectedValuePath = "id";
                    BayonetComboBox.DisplayMemberPath = "name";
                    BayonetComboBox.SelectedValue = BayonetComboBox.Items.Count;
                }
            }
        }

        private void Magazine_comboBox_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                AttacmentMount atmS = new AttacmentMount(9);
                atmS.ShowDialog();
                using (item1Entities context = new item1Entities())
                {
                    MagazineComboBox.ItemsSource = (from p in context.Attachmentmounts
                                                    where p.idAttacClass == 9
                                                    orderby p.name
                                                    select p).ToList();
                    MagazineComboBox.SelectedValuePath = "id";
                    MagazineComboBox.DisplayMemberPath = "name";
                    MagazineComboBox.SelectedValue = MagazineComboBox.Items.Count;
                }
            }
        }

        private void Internal_comboBox_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                AttacmentMount atmS = new AttacmentMount(10);
                atmS.ShowDialog();
                using (item1Entities context = new item1Entities())
                {
                    InternalComboBox.ItemsSource = (from p in context.Attachmentmounts
                                                     where p.idAttacClass == 10
                                                     orderby p.name
                                                     select p).ToList();
                    InternalComboBox.SelectedValuePath = "id";
                    InternalComboBox.DisplayMemberPath = "name";
                    InternalComboBox.SelectedIndex = InternalComboBox.Items.Count-1;
                }
            }
        }

        private void External_comboBox_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                AttacmentMount atmS = new AttacmentMount(11);
                atmS.ShowDialog();
                using (item1Entities context = new item1Entities())
                {
                    ExternalComboBox.ItemsSource = (from p in context.Attachmentmounts
                                                     where p.idAttacClass == 11
                                                     orderby p.name
                                                     select p).ToList();
                    ExternalComboBox.SelectedValuePath = "id";
                    ExternalComboBox.DisplayMemberPath = "name";
                    ExternalComboBox.SelectedIndex = ExternalComboBox.Items.Count - 1;
                }
            }
        }
    }
}

//событие для комбобокса для динамического получения выделенных данных
/*
private void ComboBox_Selected(object sender, RoutedEventArgs e)
{
    ComboBox comboBox = (ComboBox)sender;
    ComboBoxItem selectedItem = (ComboBoxItem)comboBox.SelectedItem;
    MessageBox.Show(selectedItem.Content.ToString());
}*/
