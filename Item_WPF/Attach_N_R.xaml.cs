using Microsoft.Win32;
using System;
using System.Collections.Generic;
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
    /// Логика взаимодействия для Attach_N_R.xaml
    /// </summary>
    public partial class Attach_N_R : Window
    {
        byte[] by;
        public Attach_N_R()
        {
            InitializeComponent();

            using (item1Entities context = new item1Entities())
            {
                context.Database.Connection.Open();
                ITEM itemLoad = (from z in context.ITEMs
                                 where z.uiIndex == datachange.ID_sel
                                 select z).First(),
                     itemUndo = (from z in context.ITEMs
                                 where z.uiIndex == datachange.ID_sel
                                 select z).First();
                Attachment attacmentLoad = (from p in context.Attachments
                                            where p.uiIndex == itemLoad.ubClassIndex
                                            select p).First(),
                       AttachUndo = (from p in context.Attachments
                                     where p.uiIndex == itemLoad.ubClassIndex
                                     select p).First();
                this.Title = attacmentLoad.szAttName;
                // вкладка 1
                Name_textBox.Text = itemLoad.szItemName;
                Longname_textBox.Text = itemLoad.szLongItemName;
                Description_textBox.Text = itemLoad.szItemDesc;

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




                HT_ChB.IsChecked = itemLoad.HT;
                UT_ChB.IsChecked = itemLoad.UT;
                Damageble_ChB.IsChecked = itemLoad.Damageable;
                Repairable_ChB.IsChecked = itemLoad.Repairable;
                WaterDamageble_ChB.IsChecked = itemLoad.WaterDamages;
                Metal_ChB.IsChecked = itemLoad.Metal;
                Electronic_ChB.IsChecked = itemLoad.Electronic;
                //3
                //main

                GAttType_comboBox.ItemsSource = context.G_AttachClass.ToList();
                GAttType_comboBox.DisplayMemberPath = "name_class";
                GAttType_comboBox.SelectedValuePath = "id";
                GAttType_comboBox.SelectedValue = attacmentLoad.G_AttachClass;

                GAttClass_comboBox.ItemsSource = (from p in context.G_SubAttachClass
                                                  where p.AttachClass == attacmentLoad.G_AttachClass
                                                  orderby p.SubAttach_name
                                                  select p).ToList();
                GAttClass_comboBox.DisplayMemberPath = "SubAttach_name";
                GAttClass_comboBox.SelectedValuePath = "id";
                GAttClass_comboBox.SelectedValue = attacmentLoad.G_SubAttachClass;

                attSlot_textBox.Text = (from p in context.G_SubAttachClass
                                        where p.id == attacmentLoad.G_SubAttachClass
                                        select p.ATTACHMENTSLOT.szSlotName).First().ToString();

                int attSlot = (from p in context.G_SubAttachClass
                               where p.id == attacmentLoad.G_SubAttachClass
                               select p.ATTACHMENTSLOT.uiSlotIndex).First();


                MountType_comboBox.ItemsSource = (from p in context.Attachmentmounts
                                                  where p.idAttacClass == attSlot
                                                  orderby p.name
                                                  select p).ToList();
                MountType_comboBox.DisplayMemberPath = "name";
                MountType_comboBox.SelectedValuePath = "id";
                MountType_comboBox.SelectedValue = attacmentLoad.id_Attachmentmount;
                //


                List<G_AvAttachClass> addAttClass = (from p in context.G_AvAttachClass
                                                     where p.id_attach == attacmentLoad.uiIndex
                                                     select p).ToList();
                List<CheckBox> cheBox = new List<CheckBox>();
                cheBox.Add(this.Attach1_checkBox);
                cheBox.Add(this.Attach2_checkBox);
                cheBox.Add(this.Attach3_checkBox);

                List<GroupBox> grbox = new List<GroupBox>();
                grbox.Add(this.Att1_groupBox);
                grbox.Add(this.Att2_groupBox);
                grbox.Add(this.Att3_groupBox);

                List<ComboBox> AddAttClass = new List<ComboBox>();
                AddAttClass.Add(this.GAttType1_comboBox);
                AddAttClass.Add(this.GAttType2_comboBox);
                AddAttClass.Add(this.GAttType3_comboBox);

                List<ComboBox> AddAttSubClass = new List<ComboBox>();
                AddAttSubClass.Add(this.GAttClass1_comboBox);
                AddAttSubClass.Add(this.GAttClass2_comboBox);
                AddAttSubClass.Add(this.GAttClass3_comboBox);

                int count = 0;
                foreach (G_AvAttachClass items in addAttClass)
                {
                    cheBox[count].IsChecked = true;
                    grbox[count].Visibility = Visibility.Visible;

                    AddAttClass[count].ItemsSource = context.G_AttachClass.ToList();
                    AddAttClass[count].DisplayMemberPath = "name_class";
                    AddAttClass[count].SelectedValuePath = "id";
                    AddAttClass[count].SelectedValue = items.id_AttachClass;

                    AddAttSubClass[count].ItemsSource = (from p in context.G_SubAttachClass
                                                         where p.AttachClass == items.id_AttachClass
                                                         select p).ToList();
                    AddAttSubClass[count].DisplayMemberPath = "SubAttach_name";
                    AddAttSubClass[count].SelectedValuePath = "id";
                    AddAttSubClass[count].SelectedValue = items.id_GSubClass;

                    count += 1;
                }
                //3
                //laser_RF

                LaserRangefinder_checkBox.IsChecked = attacmentLoad.Laserrangefinder;

                //nigt vision
                Infravision_checkBox.IsChecked = attacmentLoad.Infravision;
                NeedIllumination_checkBox.IsChecked = attacmentLoad.NeedIRillumination;
                NigtVision_textBox.Text = attacmentLoad.NightVision.ToString();

                //scope
                MaxMag_textBox.Text = attacmentLoad.ScopeMagMax.ToString();
                MinMag_textBox.Text = attacmentLoad.ScopeMagMin.ToString();
                AccAddMAx_textBox.Text = attacmentLoad.AccAddmax.ToString();
                Fix_checkBox.IsChecked = attacmentLoad.Fix;
                
                //type
                TargetProgram_checkBox.IsChecked = attacmentLoad.Targetingprogram;
                Collimator_checkBox.IsChecked = attacmentLoad.Collimator;
                BlockIronSight_checkBox.IsChecked = attacmentLoad.BlockIronSight;
                Reflex_checkBox.IsChecked = attacmentLoad.Reflex;
                ImpVisSights_checkBox.IsChecked = attacmentLoad.ImpVisSights;
                
                //bat
                Tritium_checkBox.IsChecked = attacmentLoad.Tritium;
                NeedBat_checkBox.IsChecked = itemLoad.NeedsBatteries;
                SizeBat_comboBox.Text = itemLoad.SizeBatteries;
                BatTimeWork_textBox.Text = attacmentLoad.BatTimeWork.ToString();

                //light
                IRFilter_checkBox.IsChecked = attacmentLoad.IRFilter;
                LightRange_textBox.Text = attacmentLoad.LightRange.ToString();
                IRFilterRange_textBox.Text = attacmentLoad.IRLigRange.ToString();
                
                //laser 
                LaserRange_textBox.Text = attacmentLoad.LaserRange.ToString();
                LaserRangeEff_textBox.Text = attacmentLoad.laserColorEf.ToString();
               

            }
        }

        private void Attach_win_Closing(object sender, System.ComponentModel.CancelEventArgs e)
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

        private void Cancel_button_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void LoadImage_button_Click(object sender, RoutedEventArgs e)
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

        private void Save_button_Click(object sender, RoutedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                context.Database.Connection.Open();
                ITEM itemSave = (from z in context.ITEMs
                                 where z.uiIndex == datachange.ID_sel
                                 select z).First();
                Attachment attacmentSave = (from p in context.Attachments
                                            where p.uiIndex == itemSave.ubClassIndex
                                            select p).First();
                //1
                itemSave.szItemName = Name_textBox.Text;
                attacmentSave.szAttName = Name_textBox.Text;
                itemSave.szLongItemName = Longname_textBox.Text;
                itemSave.szItemDesc = Description_textBox.Text;
                itemSave.Item_Image = by;
                //2
                itemSave.TL = Convert.ToInt32(TL_CB.SelectedValue);
                itemSave.LC = Convert.ToInt32(LC_CB.SelectedValue);

                itemSave.ubWeight = Convert.ToDecimal(Weigth_TB.Text);
                string dd = Cost_TB.Text.Replace("$", "");
                itemSave.usPrice = Convert.ToDecimal(dd);

                itemSave.ItemSize = Bulk_TB.Text;
                itemSave.minST = Convert.ToInt32(MinST_TB.Text);



                itemSave.HT = Convert.ToBoolean(HT_ChB.IsChecked);
                itemSave.UT = Convert.ToBoolean(UT_ChB.IsChecked);
                itemSave.Damageable = Convert.ToBoolean(Damageble_ChB.IsChecked);
                itemSave.Repairable = Convert.ToBoolean(Repairable_ChB.IsChecked);
                itemSave.WaterDamages = Convert.ToBoolean(WaterDamageble_ChB.IsChecked);
                itemSave.Metal = Convert.ToBoolean(Metal_ChB.IsChecked);
                itemSave.Electronic = Convert.ToBoolean(Electronic_ChB.IsChecked);

                //3

                attacmentSave.G_AttachClass = Convert.ToInt32(GAttType_comboBox.SelectedValue);
                attacmentSave.G_SubAttachClass = Convert.ToInt32(GAttClass_comboBox.SelectedValue);
                attacmentSave.id_Attachmentmount = Convert.ToInt32(MountType_comboBox.SelectedValue);


                List<G_AvAttachClass> addAttClass = (from p in context.G_AvAttachClass
                                                     where p.id_attach == attacmentSave.uiIndex
                                                     select p).ToList();
                foreach (G_AvAttachClass items in addAttClass)
                {
                    context.G_AvAttachClass.Remove(items);
                }

                if (Convert.ToBoolean(Attach1_checkBox.IsChecked))
                {
                    G_AvAttachClass gavattclass = new G_AvAttachClass();
                    gavattclass.id_attach = attacmentSave.uiIndex;
                    gavattclass.id_AttachClass = Convert.ToInt32(GAttType1_comboBox.SelectedValue);
                    gavattclass.id_GSubClass = Convert.ToInt32(GAttClass1_comboBox.SelectedValue);
                    context.G_AvAttachClass.Add(gavattclass);
                }

                if (Convert.ToBoolean(Attach2_checkBox.IsChecked))
                {
                    G_AvAttachClass gavattclass = new G_AvAttachClass();
                    gavattclass.id_attach = attacmentSave.uiIndex;
                    gavattclass.id_AttachClass = Convert.ToInt32(GAttType2_comboBox.SelectedValue);
                    gavattclass.id_GSubClass = Convert.ToInt32(GAttClass2_comboBox.SelectedValue);
                    context.G_AvAttachClass.Add(gavattclass);
                }

                if (Convert.ToBoolean(Attach3_checkBox.IsChecked))
                {
                    G_AvAttachClass gavattclass = new G_AvAttachClass();
                    gavattclass.id_attach = attacmentSave.uiIndex;
                    gavattclass.id_AttachClass = Convert.ToInt32(GAttType3_comboBox.SelectedValue);
                    gavattclass.id_GSubClass = Convert.ToInt32(GAttClass3_comboBox.SelectedValue);
                    context.G_AvAttachClass.Add(gavattclass);
                }
                //3
                //laser_RF                    
                attacmentSave.Laserrangefinder = Convert.ToBoolean(LaserRangefinder_checkBox.IsChecked);
                if (Convert.ToBoolean(LaserRangefinder_checkBox.IsChecked))
                {

                    attacmentSave.LaserRFrange = Convert.ToInt32(LaserLRRange_textBox.Text);
                    attacmentSave.LaserRFAcc = Convert.ToInt32(LaserLRAcc_textBox.Text);
                }
                //nigt vision
                attacmentSave.Infravision = Convert.ToBoolean(Infravision_checkBox.IsChecked);
                attacmentSave.NeedIRillumination = Convert.ToBoolean(NeedIllumination_checkBox.IsChecked);
                if (NigtVision_textBox.Text != "")
                    attacmentSave.NightVision = Convert.ToInt32(NigtVision_textBox.Text);




                //scope
                if (MaxMag_textBox.Text != "") attacmentSave.ScopeMagMax = Convert.ToInt32(MaxMag_textBox.Text);
                if (MinMag_textBox.Text != "") attacmentSave.ScopeMagMin = Convert.ToInt32(MinMag_textBox.Text);
                if (AccAddMAx_textBox.Text != "") attacmentSave.AccAddmax = Convert.ToInt32(AccAddMAx_textBox.Text);
                attacmentSave.Fix = Convert.ToBoolean(Fix_checkBox.IsChecked);
                ////type

                attacmentSave.Targetingprogram = Convert.ToBoolean(TargetProgram_checkBox.IsChecked);
                attacmentSave.Collimator = Convert.ToBoolean(Collimator_checkBox.IsChecked);
                attacmentSave.BlockIronSight = Convert.ToBoolean(BlockIronSight_checkBox.IsChecked);
                attacmentSave.Reflex = Convert.ToBoolean(Reflex_checkBox.IsChecked);
                attacmentSave.ImpVisSights = Convert.ToBoolean(ImpVisSights_checkBox.IsChecked);

                //bat
                attacmentSave.Tritium = Convert.ToBoolean(Tritium_checkBox.IsChecked);
                itemSave.NeedsBatteries = Convert.ToBoolean(NeedBat_checkBox.IsChecked);

                if (Convert.ToBoolean(NeedBat_checkBox.IsChecked))
                {
                    if (SizeBat_comboBox.SelectedItem != null)
                        itemSave.SizeBatteries = SizeBat_comboBox.SelectedItem.ToString();
                }
                if (BatTimeWork_textBox.Text != "")
                    attacmentSave.BatTimeWork = Convert.ToInt32(BatTimeWork_textBox.Text);
                //laser
                if (LaserRange_textBox.Text != "") attacmentSave.LaserRange = Convert.ToInt32(LaserRange_textBox.Text);
                if (LaserRangeEff_textBox.Text != "") attacmentSave.laserColorEf = Convert.ToDecimal(LaserRangeEff_textBox.Text);
                if (Laser_Color_comboBox.SelectedItem != null) attacmentSave.LaserColor = Laser_Color_comboBox.SelectedValue.ToString();

                context.SaveChanges();
                context.Database.Connection.Close();
            }
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

        private void GAttType_comboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                context.Database.Connection.Open();
                int xx = Convert.ToInt32(GAttType_comboBox.SelectedValue);
                List<G_SubAttachClass> gSubAttachClass = (from p in context.G_SubAttachClass
                                                          where p.G_AttachClass.id == xx
                                                          orderby p.SubAttach_name
                                                          select p).ToList();
                GAttClass_comboBox.ItemsSource = gSubAttachClass;
                GAttClass_comboBox.DisplayMemberPath = "SubAttach_name";
                GAttClass_comboBox.SelectedValuePath = "id";
                //  GAttClass_comboBox.SelectedIndex = 0;
                context.Database.Connection.Close();
            }
        }

        private void GAttClass_comboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (GAttClass_comboBox.SelectedValue != null)
            {
                int selVal = Convert.ToInt32(GAttClass_comboBox.SelectedValue);
                using (item1Entities context = new item1Entities())
                {
                    attSlot_textBox.Text = (from p in context.G_SubAttachClass
                                            where p.id == selVal

                                            select p.ATTACHMENTSLOT.szSlotName).First().ToString();

                    int attSlot = (from p in context.G_SubAttachClass
                                   where p.id == selVal
                                   select p.ATTACHMENTSLOT.uiSlotIndex).First();
                    MountType_comboBox.ItemsSource = (from p in context.Attachmentmounts
                                                      where p.idAttacClass == attSlot
                                                      orderby p.name
                                                      select p).ToList();
                    MountType_comboBox.DisplayMemberPath = "name";
                    MountType_comboBox.SelectedValuePath = "id";
                }
            }
        }

        private void Attach1_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            Att1_groupBox.Visibility = Visibility.Visible;
            using (item1Entities context = new item1Entities())
            {
                GAttType1_comboBox.ItemsSource = context.G_AttachClass.ToList();
                GAttType1_comboBox.DisplayMemberPath = "name_class";
                GAttType1_comboBox.SelectedValuePath = "id";

                GAttType1_comboBox.SelectedIndex = 0;

            }
        }

        private void GAttType1_comboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                context.Database.Connection.Open();
                int xx = Convert.ToInt32(GAttType1_comboBox.SelectedValue);
                List<G_SubAttachClass> gSubAttachClass = (from p in context.G_SubAttachClass
                                                          where p.G_AttachClass.id == xx
                                                          orderby p.SubAttach_name
                                                          select p).ToList();
                GAttClass1_comboBox.ItemsSource = gSubAttachClass;
                GAttClass1_comboBox.DisplayMemberPath = "SubAttach_name";
                GAttClass1_comboBox.SelectedValuePath = "id";
                GAttClass1_comboBox.SelectedIndex = 0;
                context.Database.Connection.Close();
            }


        }

        private void GAttType2_comboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                context.Database.Connection.Open();
                int xx = Convert.ToInt32(GAttType2_comboBox.SelectedValue);
                List<G_SubAttachClass> gSubAttachClass = (from p in context.G_SubAttachClass
                                                          where p.G_AttachClass.id == xx
                                                          orderby p.SubAttach_name
                                                          select p).ToList();
                GAttClass2_comboBox.ItemsSource = gSubAttachClass;
                GAttClass2_comboBox.DisplayMemberPath = "SubAttach_name";
                GAttClass2_comboBox.SelectedValuePath = "id";
                GAttClass2_comboBox.SelectedIndex = 0;
                context.Database.Connection.Close();
            }
        }

        private void GAttType3_comboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                context.Database.Connection.Open();
                int xx = Convert.ToInt32(GAttType3_comboBox.SelectedValue);
                List<G_SubAttachClass> gSubAttachClass = (from p in context.G_SubAttachClass
                                                          where p.G_AttachClass.id == xx
                                                          orderby p.SubAttach_name
                                                          select p).ToList();
                GAttClass3_comboBox.ItemsSource = gSubAttachClass;
                GAttClass3_comboBox.DisplayMemberPath = "SubAttach_name";
                GAttClass3_comboBox.SelectedValuePath = "id";
                GAttClass3_comboBox.SelectedIndex = 0;
                context.Database.Connection.Close();
            }
        }

        private void Attach1_checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            Att1_groupBox.Visibility = Visibility.Hidden;

        }

        private void Attach2_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            Att2_groupBox.Visibility = Visibility.Visible;
            using (item1Entities context = new item1Entities())
            {
                GAttType2_comboBox.ItemsSource = context.G_AttachClass.ToList();
                GAttType2_comboBox.DisplayMemberPath = "name_class";
                GAttType2_comboBox.SelectedValuePath = "id";
                GAttType2_comboBox.SelectedIndex = 0;
            }
        }

        private void Attach2_checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            Att2_groupBox.Visibility = Visibility.Hidden;

        }

        private void Attach3_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            Att3_groupBox.Visibility = Visibility.Visible;
            using (item1Entities context = new item1Entities())
            {
                GAttType3_comboBox.ItemsSource = context.G_AttachClass.ToList();
                GAttType3_comboBox.DisplayMemberPath = "name_class";
                GAttType3_comboBox.SelectedValuePath = "id";
                GAttType3_comboBox.SelectedIndex = 0;
            }
        }

        private void Attach3_checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            Att2_groupBox.Visibility = Visibility.Hidden;

        }

        private void LaserRangefinder_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                context.Database.Connection.Open();
                ITEM itemLoad = (from z in context.ITEMs
                                 where z.uiIndex == datachange.ID_sel
                                 select z).First();
                Attachment attacmentLoad = (from p in context.Attachments
                                            where p.uiIndex == itemLoad.ubClassIndex
                                            select p).First();
                LaserLRRange_textBox.Text = attacmentLoad.LaserRFrange.ToString();
                LaserLRAcc_textBox.Text = attacmentLoad.LaserRFAcc.ToString();
            }
        }

        private void LaserRangefinder_checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            LaserLRRange_textBox.Text = "0";
            LaserLRAcc_textBox.Text = "0";
        }

        private void SizeBat_comboBox_Initialized(object sender, EventArgs e)
        {
            SizeBat_comboBox.Items.Add("T");
            SizeBat_comboBox.Items.Add("XS");
            SizeBat_comboBox.Items.Add("M");
            SizeBat_comboBox.Items.Add("L");
            SizeBat_comboBox.Items.Add("VL");

        }

        private void Tritium_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            NeedBat_checkBox.IsChecked = false;
            //NeedBat_ChB.IsChecked = false;
            SizeBat_comboBox.Visibility = Visibility.Hidden;

        }

        private void NeedBat_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            Tritium_checkBox.IsChecked = false;
            //NeedBat_ChB.IsChecked = true;
            SizeBat_comboBox.Visibility = Visibility.Visible;
            SizeBat_comboBox.SelectedIndex = 0;
        }

        private void Laser_Color_comboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            switch (Laser_Color_comboBox.Text)
            {

                case "Red":
                    LaserRangeEff_textBox.Text = "0,33";
                    break;
                case "Orange":
                    LaserRangeEff_textBox.Text = "0,50";
                    break;
                case "Green":
                    LaserRangeEff_textBox.Text = "2,00";
                    break;
                case "Infrared":
                    LaserRangeEff_textBox.Text = "1,00";
                    break;
            }
        }

        private void Laser_Color_comboBox_Initialized(object sender, EventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                context.Database.Connection.Open();
                ITEM itemLoad = (from z in context.ITEMs
                                 where z.uiIndex == datachange.ID_sel
                                 select z).First();
                Attachment attacmentLoad = (from p in context.Attachments
                                            where p.uiIndex == itemLoad.ubClassIndex
                                            select p).First();


                Laser_Color_comboBox.ItemsSource = context.Batteries.ToList();

                Laser_Color_comboBox.DisplayMemberPath = "SmolName";
                Laser_Color_comboBox.SelectedValuePath = "id";
       

                if (attacmentLoad.LaserColor != null) Laser_Color_comboBox.SelectedIndex = 0;
                else Laser_Color_comboBox.SelectedValue = Convert.ToInt32(attacmentLoad.LaserColor);

            }
        }

        private void Laser_Color_comboBox_Loaded(object sender, RoutedEventArgs e)
        {

           
        }
    }
}

