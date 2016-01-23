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

namespace Item_WPF
{
    /// <summary>
    /// Логика взаимодействия для Weapon_N_R.xaml
    /// </summary>
    public partial class Weapon_N_R : Window
    {

        private item1Entities context;
        private ObservableCollection<ITEM> item_coll { get; set; }
        private ObservableCollection<WEAPON> weapon_coll { get; set; }
     

        ITEM itemLoad { get; set; }

        WEAPON weaponLoad { get; set; }

        //TL itemLoad { get; set; }
        //LC itemLoad { get; set; }

        byte[] by;
        public Weapon_N_R()
        {
            InitializeComponent();
            context = new item1Entities();
            // загрузка из контекста редактируемых таблиц
            item_coll = new ObservableCollection<ITEM>(context.ITEMs);
            weapon_coll = new ObservableCollection<WEAPON>(context.WEAPONs);
          

            this.Loaded += new RoutedEventHandler(Page_Loaded);
        }
    
        void Page_Loaded(object sender, RoutedEventArgs e)
        {
            itemLoad = (from z in item_coll
                        where z.uiIndex == datachange.ID_sel
                        select z).First();
            Main_Grid.DataContext = itemLoad;

            weaponLoad = (from p in context.WEAPONs
                          where p.uiIndex == itemLoad.ubClassIndex
                          select p).First();
            General_Grid.DataContext = itemLoad;
            Weapon_win.DataContext = weaponLoad;
                
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
                    Item_image.Source = image;
                    by = itemLoad.Item_Image;
                }
            }
            // вкладк №2.

            TL_CB.ItemsSource = new ObservableCollection<TL>(context.TLs);
            LC_CB.ItemsSource = new ObservableCollection<LC>(context.LCs);
            WeaponGridGeneral.DataContext = weaponLoad;
            itemsGridGeneral.DataContext = itemLoad;
            //Type&Class

            ClassOfWeapon_TB.ItemsSource = new ObservableCollection<WeaponClass>(context.WeaponClasses); 
            TypeOfClassWeap_TB.ItemsSource = context.WeaponTypes.Where(p => p.WeaponClass.id == weaponLoad.ubWeaponClass).ToList();

            //Weapon

            WeaponMain_grid.DataContext = weaponLoad;
            //DamageWeapon_grid.DataContext = weaponLoad;

            TypeOfDamage_comboBox.ItemsSource = context.TypeOfDamages.ToList();
            //range_grid.DataContext = weaponLoad;
            //shots_grid.DataContext = weaponLoad;

            //Shots
            
            if (weaponLoad.WeaponType.name == "Shotgun")
            {
                SHROF_textBox.Visibility = Visibility.Visible;
                SH_label20.Visibility = Visibility.Visible;                
            }
            
            if (Convert.ToBoolean(CutOfShots_checkBox.IsChecked))
            {
                label20.Visibility = Visibility.Visible;
                CutOfShots_textBox.Visibility = Visibility.Visible;                
            }

               
            //Reload

            CAliber_comboBox.ItemsSource = context.AMMOes.ToList();


            List<AvailableAttachSlot> AvSlot = (from p in context.AvailableAttachSlots
                                                where p.rWeaponId == weaponLoad.uiIndex
                                                select p).ToList();
            foreach (AvailableAttachSlot items in AvSlot)
            {
                if (items.rATTACHMENTSLOT == 1)
                {
                    Scope_checkBox.IsChecked = true;
                    Scope_comboBox.Visibility = Visibility.Visible;
                    Scope_comboBox.SelectedValue = items.rAttachmentmount;
                }
                if (items.rATTACHMENTSLOT == 2)
                {
                    Laser_checkBox.IsChecked = true;
                    Laser_comboBox.Visibility = Visibility.Visible;
                    Laser_comboBox.SelectedValue = items.rAttachmentmount;
                }
                if (items.rATTACHMENTSLOT == 3)
                {
                    Light_checkBox.IsChecked = true;
                    Light_comboBox.Visibility = Visibility.Visible;
                    Light_comboBox.SelectedValue = items.rAttachmentmount;
                }
                if (items.rATTACHMENTSLOT == 4)
                {
                    Bipod_checkBox.IsChecked = true;
                    Bipod_comboBox.Visibility = Visibility.Visible;
                    Bipod_comboBox.SelectedValue = items.rAttachmentmount;
                }
                if (items.rATTACHMENTSLOT == 5)
                {
                    Silenser_checkBox.IsChecked = true;
                    Silenser_comboBox.Visibility = Visibility.Visible;
                    Silenser_comboBox.SelectedValue = items.rAttachmentmount;
                }
                if (items.rATTACHMENTSLOT == 6)
                {
                    Launcher_checkBox.IsChecked = true;
                    Launcher_comboBox.Visibility = Visibility.Visible;
                    Launcher_comboBox.SelectedValue = items.rAttachmentmount;
                }////////////////
                if (items.rATTACHMENTSLOT == 7)
                {
                    Stock_checkBox.IsChecked = true;
                    Stock_comboBox.Visibility = Visibility.Visible;
                    Stock_comboBox.SelectedValue = items.rAttachmentmount;
                }
                if (items.rATTACHMENTSLOT == 8)
                {
                    Bayonet_checkBox.IsChecked = true;
                    Bayonet_comboBox.Visibility = Visibility.Visible;
                    Bayonet_comboBox.SelectedValue = items.rAttachmentmount;
                }

                if (items.rATTACHMENTSLOT == 9)
                {
                    Magazine_checkBox.IsChecked = true;
                    Magazine_comboBox.Visibility = Visibility.Visible;
                    Magazine_comboBox.SelectedValue = items.rAttachmentmount;
                }
                if (items.rATTACHMENTSLOT == 10)
                {
                    Internal_checkBox.IsChecked = true;
                    Internal_comboBox.Visibility = Visibility.Visible;
                    Internal_comboBox.SelectedValue = items.rAttachmentmount;
                }
                if (items.rATTACHMENTSLOT == 11)
                {
                    External_checkBox.IsChecked = true;
                    External_comboBox.Visibility = Visibility.Visible;
                    External_comboBox.SelectedValue = items.rAttachmentmount;
                }
            }
        }
        private void save_button_Click(object sender, RoutedEventArgs e)
        {
            ITEM itemSave = (from z in context.ITEMs
                             where z.uiIndex == datachange.ID_sel
                             select z).First();
            WEAPON weaponSave = (from p in context.WEAPONs
                                 where p.uiIndex == itemSave.ubClassIndex
                                 select p).First();


            //string dd = (Cost_TB.Text.Replace("$", "").Replace(datachange.separatorCh, datachange.separator));
            //itemSave.usPrice = Convert.ToDecimal(dd);

            itemSave.Item_Image = by;

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


            List<AvailableAttachSlot> AvSlot = (from p in context.AvailableAttachSlots
                                                where p.rWeaponId == weaponSave.uiIndex
                                                select p).ToList();

            foreach (var AVS in AvSlot)
            {
                context.AvailableAttachSlots.Remove(AVS);
            }

            if (Convert.ToBoolean(Scope_checkBox.IsChecked))
            {
                AvailableAttachSlot AVSc = new AvailableAttachSlot();
                AVSc.rWeaponId = weaponSave.uiIndex;
                AVSc.rATTACHMENTSLOT = 1;
                AVSc.rAttachmentmount = Convert.ToInt32(Scope_comboBox.SelectedValue);
                context.AvailableAttachSlots.Add(AVSc);
            }
            if (Convert.ToBoolean(Laser_checkBox.IsChecked))
            {
                AvailableAttachSlot AVSc = new AvailableAttachSlot();
                AVSc.rWeaponId = weaponSave.uiIndex;
                AVSc.rATTACHMENTSLOT = 2;
                AVSc.rAttachmentmount = Convert.ToInt32(Laser_comboBox.SelectedValue);
                context.AvailableAttachSlots.Add(AVSc);
            }
            if (Convert.ToBoolean(Light_checkBox.IsChecked))
            {
                AvailableAttachSlot AVSc = new AvailableAttachSlot();
                AVSc.rWeaponId = weaponSave.uiIndex;
                AVSc.rATTACHMENTSLOT = 3;
                AVSc.rAttachmentmount = Convert.ToInt32(Light_comboBox.SelectedValue);
                context.AvailableAttachSlots.Add(AVSc);
            }

            if (Convert.ToBoolean(Bipod_checkBox.IsChecked))
            {
                AvailableAttachSlot AVSc = new AvailableAttachSlot();
                AVSc.rWeaponId = weaponSave.uiIndex;
                AVSc.rATTACHMENTSLOT = 4;
                AVSc.rAttachmentmount = Convert.ToInt32(Bipod_comboBox.SelectedValue);
                context.AvailableAttachSlots.Add(AVSc);
            }
            if (Convert.ToBoolean(Silenser_checkBox.IsChecked))
            {
                AvailableAttachSlot AVSc = new AvailableAttachSlot();
                AVSc.rWeaponId = weaponSave.uiIndex;
                AVSc.rATTACHMENTSLOT = 5;
                AVSc.rAttachmentmount = Convert.ToInt32(Silenser_comboBox.SelectedValue);
                context.AvailableAttachSlots.Add(AVSc);
            }
            if (Convert.ToBoolean(Launcher_checkBox.IsChecked))
            {
                AvailableAttachSlot AVSc = new AvailableAttachSlot();
                AVSc.rWeaponId = weaponSave.uiIndex;
                AVSc.rATTACHMENTSLOT = 6;
                AVSc.rAttachmentmount = Convert.ToInt32(Launcher_comboBox.SelectedValue);
                context.AvailableAttachSlots.Add(AVSc);
            }

            if (Convert.ToBoolean(Stock_checkBox.IsChecked))
            {
                AvailableAttachSlot AVSc = new AvailableAttachSlot();
                AVSc.rWeaponId = weaponSave.uiIndex;
                AVSc.rATTACHMENTSLOT = 7;
                AVSc.rAttachmentmount = Convert.ToInt32(Stock_comboBox.SelectedValue);
                context.AvailableAttachSlots.Add(AVSc);
            }
            if (Convert.ToBoolean(Bayonet_checkBox.IsChecked))
            {
                AvailableAttachSlot AVSc = new AvailableAttachSlot();
                AVSc.rWeaponId = weaponSave.uiIndex;
                AVSc.rATTACHMENTSLOT = 8;
                AVSc.rAttachmentmount = Convert.ToInt32(Bayonet_comboBox.SelectedValue);
                context.AvailableAttachSlots.Add(AVSc);
            }
            if (Convert.ToBoolean(Magazine_checkBox.IsChecked))
            {
                AvailableAttachSlot AVSc = new AvailableAttachSlot();
                AVSc.rWeaponId = weaponSave.uiIndex;
                AVSc.rATTACHMENTSLOT = 9;
                AVSc.rAttachmentmount = Convert.ToInt32(Magazine_comboBox.SelectedValue);
                context.AvailableAttachSlots.Add(AVSc);
            }

            if (Convert.ToBoolean(Internal_checkBox.IsChecked))
            {
                AvailableAttachSlot AVSc = new AvailableAttachSlot();
                AVSc.rWeaponId = weaponSave.uiIndex;
                AVSc.rATTACHMENTSLOT = 10;
                AVSc.rAttachmentmount = Convert.ToInt32(Internal_comboBox.SelectedValue);
                context.AvailableAttachSlots.Add(AVSc);
            }
            if (Convert.ToBoolean(External_checkBox.IsChecked))
            {
                AvailableAttachSlot AVSc = new AvailableAttachSlot();
                AVSc.rWeaponId = weaponSave.uiIndex;
                AVSc.rATTACHMENTSLOT = 11;
                AVSc.rAttachmentmount = Convert.ToInt32(External_comboBox.SelectedValue);
                context.AvailableAttachSlots.Add(AVSc);
            } //
            weaponLoad.szWeaponName = itemLoad.szItemName;
            context.SaveChanges();


        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            itemLoad.used = false;
            itemLoad.dt = null;
            context.SaveChanges();
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();
            dlg.InitialDirectory = "C:\\Users\\Derdan\\Dropbox\\Weapon";
            dlg.Filter = "Image files (*.jpg,*.png,*.bmp,*.gif)|*.jpg;*.png;*.bmp,*.gif|All Files (*.*)|*.*";
            dlg.ShowDialog();
            if (dlg.FileName != "")
            {
                Item_image.Source = new BitmapImage(new Uri(dlg.FileName));
                by = System.IO.File.ReadAllBytes(dlg.FileName);
            }
        }

        private void DeleteImage_button_Click(object sender, RoutedEventArgs e)
        {
            by = null;
            Item_image.Source = null;
            Item_image.UpdateLayout();
        }

        private void ClassOfWeapon_TB_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {           
            int ClassWeaponSelected = Convert.ToInt32(ClassOfWeapon_TB.SelectedValue);
           // TypeOfClassWeap_TB.ItemsSource = weapon_type_coll.Where(p => p.WeaponClass.id == ClassWeaponSelected);
            if (ClassWeaponSelected != 0)
            {
                TypeOfClassWeap_TB.ItemsSource = context.WeaponTypes.Where(p => p.WeaponClass.id == ClassWeaponSelected).ToList();
                TypeOfClassWeap_TB.Items.Refresh();
                TypeOfClassWeap_TB.SelectedIndex = 0;
            }           
        }

        private void TypeOfClassWeap_TB_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            int aa = Convert.ToInt32(TypeOfClassWeap_TB.SelectedValue);
            if (aa != 0)
            {
                string xx = (from p in context.WeaponTypes
                             where p.id == aa
                             select p.name).First().ToString();
                if (xx == "Shotgun")
                {
                    SHROF_textBox.Visibility = Visibility.Visible;
                    SHROF_textBox.Text = "0";
                    SH_label20.Visibility = Visibility.Visible;
                }
                else
                {
                    SHROF_textBox.Visibility = Visibility.Hidden;
                    SH_label20.Visibility = Visibility.Hidden;
                }
            }
        }

        private void CutOfShots_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            //if (Convert.ToBoolean(CutOfShots_checkBox.IsChecked))
            //{

            label20.Visibility = Visibility.Visible;
            FullAuto_checkBox.IsChecked = false;
            CutOfShots_textBox.Visibility = Visibility.Visible;
            CutOfShots_textBox.Text = "0";

        }

        private void CutOfShots_checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            label20.Visibility = Visibility.Hidden;
            CutOfShots_textBox.Visibility = Visibility.Hidden;
        }
        private void FullAuto_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            if (Convert.ToBoolean(FullAuto_checkBox.IsChecked)) CutOfShots_checkBox.IsChecked = false;
        }

        private void Scope_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                Scope_comboBox.ItemsSource = (from p in context.Attachmentmounts
                                              where p.idAttacClass == 1
                                              orderby p.name
                                              select p).ToList();
                Scope_comboBox.SelectedValuePath = "id";
                Scope_comboBox.DisplayMemberPath = "name";
                Scope_comboBox.Visibility = Visibility.Visible;
            }
        }

        private void Scope_checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            Scope_comboBox.Visibility = Visibility.Hidden;
        }

        private void Laser_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                Laser_comboBox.ItemsSource = (from p in context.Attachmentmounts
                                              where p.idAttacClass == 2
                                              orderby p.name
                                              select p).ToList();
                Laser_comboBox.SelectedValuePath = "id";
                Laser_comboBox.DisplayMemberPath = "name";
                Laser_comboBox.Visibility = Visibility.Visible;
            }

        }

        private void Laser_checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            Laser_comboBox.Visibility = Visibility.Hidden;
        }

        private void Light_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                Light_comboBox.ItemsSource = (from p in context.Attachmentmounts
                                              where p.idAttacClass == 3
                                              orderby p.name
                                              select p).ToList();
                Light_comboBox.SelectedValuePath = "id";
                Light_comboBox.DisplayMemberPath = "name";
                Light_comboBox.Visibility = Visibility.Visible;
            }
        }

        private void Light_checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            Light_comboBox.Visibility = Visibility.Hidden;
        }

        private void Bipod_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                Bipod_comboBox.ItemsSource = (from p in context.Attachmentmounts
                                              where p.idAttacClass == 4
                                              orderby p.name
                                              select p).ToList();
                Bipod_comboBox.SelectedValuePath = "id";
                Bipod_comboBox.DisplayMemberPath = "name";
                Bipod_comboBox.Visibility = Visibility.Visible;
            }
        }

        private void Bipod_checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            Bipod_comboBox.Visibility = Visibility.Hidden;
        }

        private void Silenser_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                Silenser_comboBox.ItemsSource = (from p in context.Attachmentmounts
                                                 where p.idAttacClass == 5
                                                 orderby p.name
                                                 select p).ToList();
                Silenser_comboBox.SelectedValuePath = "id";
                Silenser_comboBox.DisplayMemberPath = "name";
                Silenser_comboBox.Visibility = Visibility.Visible;
            }
        }

        private void Silenser_checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            Silenser_comboBox.Visibility = Visibility.Hidden;
        }

        private void Launcher_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                Launcher_comboBox.ItemsSource = (from p in context.Attachmentmounts
                                                 where p.idAttacClass == 6
                                                 orderby p.name
                                                 select p).ToList();
                Launcher_comboBox.SelectedValuePath = "id";
                Launcher_comboBox.DisplayMemberPath = "name";
                Launcher_comboBox.Visibility = Visibility.Visible;
            }
        }

        private void Launcher_checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            Launcher_comboBox.Visibility = Visibility.Hidden;
        }

        private void Stock_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                Stock_comboBox.ItemsSource = (from p in context.Attachmentmounts
                                              where p.idAttacClass == 7
                                              orderby p.name
                                              select p).ToList();
                Stock_comboBox.SelectedValuePath = "id";
                Stock_comboBox.DisplayMemberPath = "name";
                Stock_comboBox.Visibility = Visibility.Visible;
            }
        }

        private void Stock_checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            Stock_comboBox.Visibility = Visibility.Hidden;
        }

        private void Bayonet_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                Bayonet_comboBox.ItemsSource = (from p in context.Attachmentmounts
                                                where p.idAttacClass == 8
                                                orderby p.name
                                                select p).ToList();
                Bayonet_comboBox.SelectedValuePath = "id";
                Bayonet_comboBox.DisplayMemberPath = "name";
                Bayonet_comboBox.Visibility = Visibility.Visible;
            }
        }

        private void Bayonet_checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            Bayonet_comboBox.Visibility = Visibility.Hidden;
        }

        private void Magazine_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                Magazine_comboBox.ItemsSource = (from p in context.Attachmentmounts
                                                 where p.idAttacClass == 9
                                                 orderby p.name
                                                 select p).ToList();
                Magazine_comboBox.SelectedValuePath = "id";
                Magazine_comboBox.DisplayMemberPath = "name";
                Magazine_comboBox.Visibility = Visibility.Visible;
            }
        }

        private void Magazine_checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            Magazine_comboBox.Visibility = Visibility.Hidden;
        }

        private void Internal_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                Internal_comboBox.ItemsSource = (from p in context.Attachmentmounts
                                                 where p.idAttacClass == 10
                                                 orderby p.name
                                                 select p).ToList();
                Internal_comboBox.SelectedValuePath = "id";
                Internal_comboBox.DisplayMemberPath = "name";
                Internal_comboBox.Visibility = Visibility.Visible;
            }
        }

        private void Internal_checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            Internal_comboBox.Visibility = Visibility.Hidden;
        }

        private void External_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                External_comboBox.ItemsSource = (from p in context.Attachmentmounts
                                                 where p.idAttacClass == 11
                                                 orderby p.name
                                                 select p).ToList();
                External_comboBox.SelectedValuePath = "id";
                External_comboBox.DisplayMemberPath = "name";
                External_comboBox.Visibility = Visibility.Visible;
            }
        }

        private void External_checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            External_comboBox.Visibility = Visibility.Hidden;
        }

        private void cancel_button_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void TypeOfDamage_comboBox_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                Edit_content_in_simple_Table ECinST = new Edit_content_in_simple_Table();
                ECinST.ShowDialog();
                using (item1Entities context = new item1Entities())
                {
                    TypeOfDamage_comboBox.ItemsSource = context.TypeOfDamages.ToList();                    
                }


                //MessageBox.Show("Текст сообщения", "Заголовок сообщения");
                //ComboBox c = (sender as ComboBox);
                //c.Items.Add(c.Text);
            }
        }

        private void CAliber_comboBox_KeyDown(object sender, KeyEventArgs e)
        {

            caliber Calibber = new caliber();
            Calibber.ShowDialog();
            using (item1Entities context = new item1Entities())
            {
                CAliber_comboBox.ItemsSource = context.AMMOes.ToList();
                CAliber_comboBox.SelectedValuePath = "id";
                CAliber_comboBox.DisplayMemberPath = "Caliber_name";
                CAliber_comboBox.SelectedValue = CAliber_comboBox.Items.Count;
            }
        }

        private void Name_TB_TextChanged(object sender, TextChangedEventArgs e)
        {
            weaponLoad.szWeaponName = itemLoad.szItemName;
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
