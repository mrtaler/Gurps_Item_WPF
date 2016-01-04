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

namespace Item_WPF
{
    /// <summary>
    /// Логика взаимодействия для Weapon_N_R.xaml
    /// </summary>
    public partial class Weapon_N_R : Window
    {
        byte[] by;
        public Weapon_N_R()
        {
            InitializeComponent();
            // загрузка из контекста редактируемых таблиц
            using (item1Entities context = new item1Entities())
            {
                context.Database.Connection.Open();
                ITEM itemLoad = (from z in context.ITEMs
                                 where z.uiIndex == datachange.ID_sel
                                 select z).First(),
                     itemUndo = (from z in context.ITEMs
                                 where z.uiIndex == datachange.ID_sel
                                 select z).First();
                WEAPON weaponLoad = (from p in context.WEAPONs
                                     where p.uiIndex == itemLoad.ubClassIndex
                                     select p).First(),
                       weaponUndo = (from p in context.WEAPONs
                                     where p.uiIndex == itemLoad.ubClassIndex
                                     select p).First();
                this.Title = weaponLoad.szWeaponName;
                // вкладка 1
                Name_TB.Text = itemLoad.szItemName;
                LongName_TB.Text = itemLoad.szLongItemName;
                Description_TB.Text = itemLoad.szItemDesc;

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
                TL_CB.ItemsSource = context.TLs.ToList();
                TL_CB.DisplayMemberPath = "name_TL";
                TL_CB.SelectedValuePath = "Id_Tl";
                TL_CB.SelectedValue = itemLoad.TL;

                TL_textBlock.Text = (from p in context.TLs
                                     where p.Id_Tl == itemLoad.TL
                                     select p.Description).First();

                LC_CB.ItemsSource = context.LCs.ToList();
                LC_CB.DisplayMemberPath = "Name_LC";
                LC_CB.SelectedValuePath = "Id_LC";
                LC_CB.SelectedValue = itemLoad.LC;

                LC_textBlock.Text = (from p in context.LCs
                                     where p.Id_LC == itemLoad.LC
                                     select p.Description).First();


                Weigth_TB.Text = itemLoad.ubWeight.ToString();
                Cost_TB.Text = "$" + itemLoad.usPrice.ToString();
                Bulk_TB.Text = itemLoad.ItemSize.ToString();
                MinST_TB.Text = itemLoad.minST.ToString();

                HeavyWeapon_ChB.IsChecked = weaponLoad.HeavyWeapon;
                Mount_ChB.IsChecked = weaponLoad.Mount;
                TwoHanded_ChB.IsChecked = itemLoad.TwoHanded;
                HT_ChB.IsChecked = itemLoad.HT;
                UT_ChB.IsChecked = itemLoad.UT;
                NeedBat_ChB.IsChecked = itemLoad.NeedsBatteries;
                Damageble_ChB.IsChecked = itemLoad.Damageable;
                Repairable_ChB.IsChecked = itemLoad.Repairable;
                WaterDamageble_ChB.IsChecked = itemLoad.WaterDamages;
                Metal_ChB.IsChecked = itemLoad.Metal;
                Electronic_ChB.IsChecked = itemLoad.Electronic;
                BulkFold_checkBox.IsChecked = weaponLoad.Bulkfolded;
                //3


                //Type&Class
                ClassOfWeapon_TB.ItemsSource = context.WeaponClasses.ToList();
                ClassOfWeapon_TB.SelectedValuePath = "id";
                ClassOfWeapon_TB.DisplayMemberPath = "name";
                ClassOfWeapon_TB.SelectedValue = weaponLoad.ubWeaponClass;

                TypeOfClassWeap_TB.ItemsSource = (from p in context.WeaponTypes
                                                  where p.Class == weaponLoad.ubWeaponClass
                                                  select p).ToList();
                TypeOfClassWeap_TB.SelectedValuePath = "id";
                TypeOfClassWeap_TB.DisplayMemberPath = "name";
                TypeOfClassWeap_TB.SelectedValue = weaponLoad.ubWeaponType;


                //Weapon

                Damage_textBox.Text = weaponLoad.Damage;

                TypeOfDamage_comboBox.ItemsSource = context.TypeOfDamages.ToList();
                TypeOfDamage_comboBox.SelectedValuePath = "id";
                TypeOfDamage_comboBox.DisplayMemberPath = "name";
                TypeOfDamage_comboBox.SelectedValue = weaponLoad.ubTypeOfDamage;

                ArmDivizor_textBox.Text = weaponLoad.Arm_Division.ToString();
                Linked_textBox.Text = weaponLoad.Linked;
                FollowUp_textBox.Text = weaponLoad.Follow_Up;


                //range
                MinRange_textBox.Text = weaponLoad.MinRange.ToString();
                HalfRange_textBox.Text = weaponLoad.Half_Range.ToString();
                MaxRange_textBox.Text = weaponLoad.FullRange.ToString();
                //Shots
                ROF_textBox.Text = weaponLoad.ROF.ToString();
                if (weaponLoad.WeaponType.name == "Shotgun")
                {
                    SHROF_textBox.Visibility = Visibility.Visible;
                    SH_label20.Visibility = Visibility.Visible;
                    SHROF_textBox.Text = weaponLoad.ROF_for_Sh.ToString();
                }
                FullAuto_checkBox.IsChecked = weaponLoad.Full_auto;
                Add1inChambler_checkbox.IsChecked = weaponLoad.Add_in_Chamber;

                CutOfShots_checkBox.IsChecked = weaponLoad.CutOff_shots;
                if (Convert.ToBoolean(CutOfShots_checkBox.IsChecked))
                {
                    label20.Visibility = Visibility.Visible;
                    CutOfShots_textBox.Visibility = Visibility.Visible;
                    CutOfShots_textBox.Text = weaponLoad.CutOff_shotsCount.ToString();
                }
                //ACC
                DefAcc_textBox.Text = weaponLoad.DefACC.ToString();
                Recoil_textBox.Text = weaponLoad.Recoil.ToString();
                //Reload

                CAliber_comboBox.ItemsSource = context.AMMOes.ToList();
                CAliber_comboBox.SelectedValuePath = "id";
                CAliber_comboBox.DisplayMemberPath = "Caliber_name";
                CAliber_comboBox.SelectedValue = weaponLoad.ubCalibre;

                Shots_textBox.Text = weaponLoad.Shots.ToString();
                ReloadTime_textbox.Text = weaponLoad.Time_For_reload.ToString();
                SingleReload_checkBox.IsChecked = weaponLoad.single_reload;


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
               
                context.Database.Connection.Close();
            }

        }


        private void save_button_Click(object sender, RoutedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                context.Database.Connection.Open();
                ITEM itemSave = (from z in context.ITEMs
                                 where z.uiIndex == datachange.ID_sel
                                 select z).First();
                WEAPON weaponSave = (from p in context.WEAPONs
                                     where p.uiIndex == itemSave.ubClassIndex
                                     select p).First();

                itemSave.szItemName = Name_TB.Text;
                weaponSave.szWeaponName = Name_TB.Text;
                itemSave.szLongItemName = LongName_TB.Text;
                itemSave.szItemDesc = Description_TB.Text;
                itemSave.Item_Image = by;

                itemSave.TL = Convert.ToInt32(TL_CB.SelectedValue);
                itemSave.LC = Convert.ToInt32(LC_CB.SelectedValue);

                
                itemSave.ubWeight = Convert.ToDecimal(Weigth_TB.Text.Replace(datachange.separatorCh, datachange.separator));
                string dd = (Cost_TB.Text.Replace("$", "").Replace(datachange.separatorCh, datachange.separator));
                itemSave.usPrice = Convert.ToDecimal(dd);

                itemSave.ItemSize = Bulk_TB.Text;
                itemSave.minST = Convert.ToInt32(MinST_TB.Text);

                weaponSave.HeavyWeapon = Convert.ToBoolean(HeavyWeapon_ChB.IsChecked);
                weaponSave.Mount = Convert.ToBoolean(Mount_ChB.IsChecked);
                itemSave.TwoHanded = Convert.ToBoolean(TwoHanded_ChB.IsChecked);
                itemSave.HT = Convert.ToBoolean(HT_ChB.IsChecked);
                itemSave.UT = Convert.ToBoolean(UT_ChB.IsChecked);
                itemSave.NeedsBatteries = Convert.ToBoolean(NeedBat_ChB.IsChecked);
                itemSave.Damageable = Convert.ToBoolean(Damageble_ChB.IsChecked);
                itemSave.Repairable = Convert.ToBoolean(Repairable_ChB.IsChecked);
                itemSave.WaterDamages = Convert.ToBoolean(WaterDamageble_ChB.IsChecked);
                itemSave.Metal = Convert.ToBoolean(Metal_ChB.IsChecked);
                itemSave.Electronic = Convert.ToBoolean(Electronic_ChB.IsChecked);
                weaponSave.Bulkfolded = Convert.ToBoolean(BulkFold_checkBox.IsChecked);

                //3
                //type&class
                weaponSave.ubWeaponClass = Convert.ToInt32(ClassOfWeapon_TB.SelectedValue);
                weaponSave.ubWeaponType = Convert.ToInt32(TypeOfClassWeap_TB.SelectedValue);
                //Weapon Damage
                weaponSave.Damage = Damage_textBox.Text;
                weaponSave.ubTypeOfDamage = Convert.ToInt32(TypeOfDamage_comboBox.SelectedValue);
                weaponSave.Arm_Division = Convert.ToDecimal(ArmDivizor_textBox.Text.Replace(datachange.separatorCh, datachange.separator));
                weaponSave.Linked = Linked_textBox.Text;
                weaponSave.Follow_Up = FollowUp_textBox.Text;
                //range
                weaponSave.MinRange = Convert.ToDecimal(MinRange_textBox.Text.Replace(datachange.separatorCh, datachange.separator));
                weaponSave.Half_Range = Convert.ToDecimal(HalfRange_textBox.Text.Replace(datachange.separatorCh, datachange.separator));
                weaponSave.FullRange = Convert.ToDecimal(MaxRange_textBox.Text.Replace(datachange.separatorCh, datachange.separator));
                //shots

                weaponSave.ROF = Convert.ToInt32(ROF_textBox.Text);
                if (TypeOfClassWeap_TB.Text == "Shotgun")

                    weaponSave.ROF_for_Sh = Convert.ToInt32(SHROF_textBox.Text);
                else weaponSave.ROF_for_Sh = 0;

                weaponSave.Full_auto = Convert.ToBoolean(FullAuto_checkBox.IsChecked);
                weaponSave.Add_in_Chamber = Convert.ToBoolean(Add1inChambler_checkbox.IsChecked);

                weaponSave.CutOff_shots = Convert.ToBoolean(CutOfShots_checkBox.IsChecked);
                if (Convert.ToBoolean(CutOfShots_checkBox.IsChecked))

                    weaponSave.CutOff_shotsCount = Convert.ToInt32(CutOfShots_textBox.Text);
                //Acc
                weaponSave.DefACC = Convert.ToInt32(DefAcc_textBox.Text);
                weaponSave.Recoil = Convert.ToInt32(Recoil_textBox.Text);
                //reload
                weaponSave.ubCalibre = Convert.ToInt32(CAliber_comboBox.SelectedValue);

                weaponSave.Shots = Convert.ToInt32(Shots_textBox.Text);
                weaponSave.Time_For_reload = Convert.ToInt32(ReloadTime_textbox.Text);
                weaponSave.single_reload = Convert.ToBoolean(SingleReload_checkBox.IsChecked);


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
                context.SaveChanges();
                context.Database.Connection.Close();
            }
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                ITEM itemSave = (from z in context.ITEMs
                                 where z.uiIndex == datachange.ID_sel
                                 select z).First();
                itemSave.used = false;
                itemSave.dt = null;
                context.SaveChanges();
            }
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

        private void TL_CB_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (TL_CB.SelectedValue != null)
            {
                int VAl = Convert.ToInt32(TL_CB.SelectedValue);
                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    TL_textBlock.Text = (from p in context.TLs
                                         where p.Id_Tl == VAl
                                         select p.Description).First();
                    context.Database.Connection.Close();
                }
            }
        }

        private void LC_CB_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (LC_CB.SelectedValue != null)
            {
                int VAl = Convert.ToInt32(LC_CB.SelectedValue);
                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    LC_textBlock.Text = (from p in context.LCs
                                         where p.Id_LC == VAl
                                         select p.Description).First();
                    context.Database.Connection.Close();
                }
            }
        }

        private void ClassOfWeapon_TB_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                context.Database.Connection.Open();
                int xx = Convert.ToInt32(ClassOfWeapon_TB.SelectedValue);
                TypeOfClassWeap_TB.ItemsSource = (from p in context.WeaponTypes
                                                  where p.WeaponClass.id == xx
                                                  select p).ToList();
                TypeOfClassWeap_TB.SelectedValuePath = "id";
                TypeOfClassWeap_TB.DisplayMemberPath = "name";

                context.Database.Connection.Close();
            }
            TypeOfClassWeap_TB.SelectedIndex = 0;
            TypeOfClassWeap_TB.UpdateLayout();
        }

        private void TypeOfClassWeap_TB_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                int aa = Convert.ToInt32(TypeOfClassWeap_TB.SelectedValue);
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
    }
}
