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
using Item_WPF.addin;

namespace Item_WPF
{
    /// <summary>
    /// Логика взаимодействия для Attach_N_R.xaml
    /// </summary>
    public partial class AttachNR : Window
    {
        byte[] _by;
        public AttachNR()
        {
            InitializeComponent();

            using (item1Entities context = new item1Entities())
            {
                context.Database.Connection.Open();
                ITEM itemLoad = (from z in context.ITEMs
                                 where z.uiIndex == Datachange.IdSel
                                 select z).First(),
                     itemUndo = (from z in context.ITEMs
                                 where z.uiIndex == Datachange.IdSel
                                 select z).First();
                Attachment attacmentLoad = (from p in context.Attachments
                                            where p.uiIndex == itemLoad.ubClassIndex
                                            select p).First(),
                       attachUndo = (from p in context.Attachments
                                     where p.uiIndex == itemLoad.ubClassIndex
                                     select p).First();
                this.Title = attacmentLoad.szAttName;
                // вкладка 1
                NameTextBox.Text = itemLoad.szItemName;
                LongnameTextBox.Text = itemLoad.szLongItemName;
                DescriptionTextBox.Text = itemLoad.szItemDesc;

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
                        ItemImage.Source = image;
                        _by = itemLoad.Item_Image;
                    }
                }
                // вкладк №2.

                TlCb.ItemsSource = context.TLs.ToList();
                TlCb.DisplayMemberPath = "name_TL";
                TlCb.SelectedValuePath = "Id_Tl";
                TlCb.SelectedValue = itemLoad.TL;

                TlTextBlock.Text = (from p in context.TLs
                                     where p.Id_Tl == itemLoad.TL
                                     select p.Description).First();

                LcCb.ItemsSource = context.LCs.ToList();
                LcCb.DisplayMemberPath = "Name_LC";
                LcCb.SelectedValuePath = "Id_LC";
                LcCb.SelectedValue = itemLoad.LC;

                LcTextBlock.Text = (from p in context.LCs
                                     where p.Id_LC == itemLoad.LC
                                     select p.Description).First();


                WeigthTb.Text = itemLoad.ubWeight.ToString();
                CostTb.Text = "$" + itemLoad.usPrice.ToString();
                BulkTb.Text = itemLoad.ItemSize.ToString();
                MinStTb.Text = itemLoad.minST.ToString();




                HtChB.IsChecked = itemLoad.HT;
                UtChB.IsChecked = itemLoad.UT;
                DamagebleChB.IsChecked = itemLoad.Damageable;
                RepairableChB.IsChecked = itemLoad.Repairable;
                WaterDamagebleChB.IsChecked = itemLoad.WaterDamages;
                MetalChB.IsChecked = itemLoad.Metal;
                ElectronicChB.IsChecked = itemLoad.Electronic;
                //3
                //main

                GAttTypeComboBox.ItemsSource = context.G_AttachClass.ToList();
                GAttTypeComboBox.DisplayMemberPath = "name_class";
                GAttTypeComboBox.SelectedValuePath = "id";
                GAttTypeComboBox.SelectedValue = attacmentLoad.G_AttachClass;

                GAttClassComboBox.ItemsSource = (from p in context.G_SubAttachClass
                                                  where p.AttachClass == attacmentLoad.G_AttachClass
                                                  orderby p.SubAttach_name
                                                  select p).ToList();
                GAttClassComboBox.DisplayMemberPath = "SubAttach_name";
                GAttClassComboBox.SelectedValuePath = "id";
                GAttClassComboBox.SelectedValue = attacmentLoad.G_SubAttachClass;

                AttSlotTextBox.Text = (from p in context.G_SubAttachClass
                                        where p.id == attacmentLoad.G_SubAttachClass
                                        select p.ATTACHMENTSLOT.szSlotName).First().ToString();

                int attSlot = (from p in context.G_SubAttachClass
                               where p.id == attacmentLoad.G_SubAttachClass
                               select p.ATTACHMENTSLOT.uiSlotIndex).First();


                MountTypeComboBox.ItemsSource = (from p in context.Attachmentmounts
                                                  where p.idAttacClass == attSlot
                                                  orderby p.name
                                                  select p).ToList();
                MountTypeComboBox.DisplayMemberPath = "name";
                MountTypeComboBox.SelectedValuePath = "id";
                MountTypeComboBox.SelectedValue = attacmentLoad.id_Attachmentmount;
                //


                List<G_AvAttachClass> addAttClass = (from p in context.G_AvAttachClass
                                                     where p.id_attach == attacmentLoad.uiIndex
                                                     select p).ToList();
                List<CheckBox> cheBox = new List<CheckBox>();
                cheBox.Add(this.Attach1CheckBox);
                cheBox.Add(this.Attach2CheckBox);
                cheBox.Add(this.Attach3CheckBox);

                List<GroupBox> grbox = new List<GroupBox>();
                grbox.Add(this.Att1GroupBox);
                grbox.Add(this.Att2GroupBox);
                grbox.Add(this.Att3GroupBox);

                List<ComboBox> AddAttClass = new List<ComboBox>();
                AddAttClass.Add(this.GAttType1ComboBox);
                AddAttClass.Add(this.GAttType2ComboBox);
                AddAttClass.Add(this.GAttType3ComboBox);

                List<ComboBox> addAttSubClass = new List<ComboBox>();
                addAttSubClass.Add(this.GAttClass1ComboBox);
                addAttSubClass.Add(this.GAttClass2ComboBox);
                addAttSubClass.Add(this.GAttClass3ComboBox);

                int count = 0;
                foreach (G_AvAttachClass items in addAttClass)
                {
                    cheBox[count].IsChecked = true;
                    grbox[count].Visibility = Visibility.Visible;

                    AddAttClass[count].ItemsSource = context.G_AttachClass.ToList();
                    AddAttClass[count].DisplayMemberPath = "name_class";
                    AddAttClass[count].SelectedValuePath = "id";
                    AddAttClass[count].SelectedValue = items.id_AttachClass;

                    addAttSubClass[count].ItemsSource = (from p in context.G_SubAttachClass
                                                         where p.AttachClass == items.id_AttachClass
                                                         select p).ToList();
                    addAttSubClass[count].DisplayMemberPath = "SubAttach_name";
                    addAttSubClass[count].SelectedValuePath = "id";
                    addAttSubClass[count].SelectedValue = items.id_GSubClass;

                    count += 1;
                }
                //3
                //laser_RF

                LaserRangefinderCheckBox.IsChecked = attacmentLoad.Laserrangefinder;

                //nigt vision
                InfravisionCheckBox.IsChecked = attacmentLoad.Infravision;
                NeedIlluminationCheckBox.IsChecked = attacmentLoad.NeedIRillumination;
                NigtVisionTextBox.Text = attacmentLoad.NightVision.ToString();

                //scope
                MaxMagTextBox.Text = attacmentLoad.ScopeMagMax.ToString();
                MinMagTextBox.Text = attacmentLoad.ScopeMagMin.ToString();
                AccAddMAxTextBox.Text = attacmentLoad.AccAddmax.ToString();
                FixCheckBox.IsChecked = attacmentLoad.Fix;
                
                //type
                TargetProgramCheckBox.IsChecked = attacmentLoad.Targetingprogram;
                CollimatorCheckBox.IsChecked = attacmentLoad.Collimator;
                BlockIronSightCheckBox.IsChecked = attacmentLoad.BlockIronSight;
                ReflexCheckBox.IsChecked = attacmentLoad.Reflex;
                ImpVisSightsCheckBox.IsChecked = attacmentLoad.ImpVisSights;
                
                //bat
                TritiumCheckBox.IsChecked = attacmentLoad.Tritium;
                NeedBatCheckBox.IsChecked = itemLoad.NeedsBatteries;
                SizeBatComboBox.Text = itemLoad.SizeBatteries;
                BatTimeWorkTextBox.Text = attacmentLoad.BatTimeWork.ToString();

                //light
                IrFilterCheckBox.IsChecked = attacmentLoad.IRFilter;
                LightRangeTextBox.Text = attacmentLoad.LightRange.ToString();
                IrFilterRangeTextBox.Text = attacmentLoad.IRLigRange.ToString();
                
                //laser 
                LaserRangeTextBox.Text = attacmentLoad.LaserRange.ToString();
                LaserRangeEffTextBox.Text = attacmentLoad.laserColorEf.ToString();
               

            }
        }

        private void Attach_win_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                ITEM itemSave = (from z in context.ITEMs
                                 where z.uiIndex == Datachange.IdSel
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

        private void Save_button_Click(object sender, RoutedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                context.Database.Connection.Open();
                ITEM itemSave = (from z in context.ITEMs
                                 where z.uiIndex == Datachange.IdSel
                                 select z).First();
                Attachment attacmentSave = (from p in context.Attachments
                                            where p.uiIndex == itemSave.ubClassIndex
                                            select p).First();
                //1
                itemSave.szItemName = NameTextBox.Text;
                attacmentSave.szAttName = NameTextBox.Text;
                itemSave.szLongItemName = LongnameTextBox.Text;
                itemSave.szItemDesc = DescriptionTextBox.Text;
                itemSave.Item_Image = _by;
                //2
                itemSave.TL = Convert.ToInt32(TlCb.SelectedValue);
                itemSave.LC = Convert.ToInt32(LcCb.SelectedValue);

                itemSave.ubWeight = Convert.ToDecimal(WeigthTb.Text.Replace(Datachange.SeparatorCh, Datachange.Separator));
                string dd = (CostTb.Text.Replace("$", "")).Replace(Datachange.SeparatorCh, Datachange.Separator); 
                itemSave.usPrice = Convert.ToDecimal(dd);

                itemSave.ItemSize = BulkTb.Text;
                itemSave.minST = Convert.ToInt32(MinStTb.Text);



                itemSave.HT = Convert.ToBoolean(HtChB.IsChecked);
                itemSave.UT = Convert.ToBoolean(UtChB.IsChecked);
                itemSave.Damageable = Convert.ToBoolean(DamagebleChB.IsChecked);
                itemSave.Repairable = Convert.ToBoolean(RepairableChB.IsChecked);
                itemSave.WaterDamages = Convert.ToBoolean(WaterDamagebleChB.IsChecked);
                itemSave.Metal = Convert.ToBoolean(MetalChB.IsChecked);
                itemSave.Electronic = Convert.ToBoolean(ElectronicChB.IsChecked);

                //3

                attacmentSave.G_AttachClass = Convert.ToInt32(GAttTypeComboBox.SelectedValue);
                attacmentSave.G_SubAttachClass = Convert.ToInt32(GAttClassComboBox.SelectedValue);
                attacmentSave.id_Attachmentmount = Convert.ToInt32(MountTypeComboBox.SelectedValue);


                List<G_AvAttachClass> addAttClass = (from p in context.G_AvAttachClass
                                                     where p.id_attach == attacmentSave.uiIndex
                                                     select p).ToList();
                foreach (G_AvAttachClass items in addAttClass)
                {
                    context.G_AvAttachClass.Remove(items);
                }

                if (Convert.ToBoolean(Attach1CheckBox.IsChecked))
                {
                    G_AvAttachClass gavattclass = new G_AvAttachClass();
                    gavattclass.id_attach = attacmentSave.uiIndex;
                    gavattclass.id_AttachClass = Convert.ToInt32(GAttType1ComboBox.SelectedValue);
                    gavattclass.id_GSubClass = Convert.ToInt32(GAttClass1ComboBox.SelectedValue);
                    context.G_AvAttachClass.Add(gavattclass);
                }

                if (Convert.ToBoolean(Attach2CheckBox.IsChecked))
                {
                    G_AvAttachClass gavattclass = new G_AvAttachClass();
                    gavattclass.id_attach = attacmentSave.uiIndex;
                    gavattclass.id_AttachClass = Convert.ToInt32(GAttType2ComboBox.SelectedValue);
                    gavattclass.id_GSubClass = Convert.ToInt32(GAttClass2ComboBox.SelectedValue);
                    context.G_AvAttachClass.Add(gavattclass);
                }

                if (Convert.ToBoolean(Attach3CheckBox.IsChecked))
                {
                    G_AvAttachClass gavattclass = new G_AvAttachClass();
                    gavattclass.id_attach = attacmentSave.uiIndex;
                    gavattclass.id_AttachClass = Convert.ToInt32(GAttType3ComboBox.SelectedValue);
                    gavattclass.id_GSubClass = Convert.ToInt32(GAttClass3ComboBox.SelectedValue);
                    context.G_AvAttachClass.Add(gavattclass);
                }
                //3
                //laser_RF                    
                attacmentSave.Laserrangefinder = Convert.ToBoolean(LaserRangefinderCheckBox.IsChecked);
                if (Convert.ToBoolean(LaserRangefinderCheckBox.IsChecked))
                {

                    attacmentSave.LaserRFrange = Convert.ToInt32(LaserLrRangeTextBox.Text);
                    attacmentSave.LaserRFAcc = Convert.ToInt32(LaserLrAccTextBox.Text);
                }
                //nigt vision
                attacmentSave.Infravision = Convert.ToBoolean(InfravisionCheckBox.IsChecked);
                attacmentSave.NeedIRillumination = Convert.ToBoolean(NeedIlluminationCheckBox.IsChecked);
                if (NigtVisionTextBox.Text != "")
                    attacmentSave.NightVision = Convert.ToInt32(NigtVisionTextBox.Text);




                //scope
                if (MaxMagTextBox.Text != "") attacmentSave.ScopeMagMax = Convert.ToInt32(MaxMagTextBox.Text);
                if (MinMagTextBox.Text != "") attacmentSave.ScopeMagMin = Convert.ToInt32(MinMagTextBox.Text);
                if (AccAddMAxTextBox.Text != "") attacmentSave.AccAddmax = Convert.ToInt32(AccAddMAxTextBox.Text);
                attacmentSave.Fix = Convert.ToBoolean(FixCheckBox.IsChecked);
                ////type

                attacmentSave.Targetingprogram = Convert.ToBoolean(TargetProgramCheckBox.IsChecked);
                attacmentSave.Collimator = Convert.ToBoolean(CollimatorCheckBox.IsChecked);
                attacmentSave.BlockIronSight = Convert.ToBoolean(BlockIronSightCheckBox.IsChecked);
                attacmentSave.Reflex = Convert.ToBoolean(ReflexCheckBox.IsChecked);
                attacmentSave.ImpVisSights = Convert.ToBoolean(ImpVisSightsCheckBox.IsChecked);

                //bat
                attacmentSave.Tritium = Convert.ToBoolean(TritiumCheckBox.IsChecked);
                itemSave.NeedsBatteries = Convert.ToBoolean(NeedBatCheckBox.IsChecked);

                if (Convert.ToBoolean(NeedBatCheckBox.IsChecked))
                {
                    if (SizeBatComboBox.SelectedItem != null)
                        itemSave.SizeBatteries = SizeBatComboBox.SelectedItem.ToString();
                }
                if (BatTimeWorkTextBox.Text != "")
                    attacmentSave.BatTimeWork = Convert.ToInt32(BatTimeWorkTextBox.Text);
                //laser
                if (LaserRangeTextBox.Text != "") attacmentSave.LaserRange = Convert.ToInt32(LaserRangeTextBox.Text);
                if (LaserRangeEffTextBox.Text != "") attacmentSave.laserColorEf = Convert.ToDecimal(LaserRangeEffTextBox.Text.Replace(Datachange.SeparatorCh, Datachange.Separator));
                if (LaserColorComboBox.SelectedItem != null) attacmentSave.LaserColor = LaserColorComboBox.SelectedValue.ToString();

                context.SaveChanges();
                context.Database.Connection.Close();
            }
        }

        private void TL_CB_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (TlCb.SelectedValue != null)
            {
                int vAl = Convert.ToInt32(TlCb.SelectedValue);
                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    TlTextBlock.Text = (from p in context.TLs
                                         where p.Id_Tl == vAl
                                         select p.Description).First();
                    context.Database.Connection.Close();
                }
            }
        }

        private void LC_CB_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (LcCb.SelectedValue != null)
            {
                int vAl = Convert.ToInt32(LcCb.SelectedValue);
                using (item1Entities context = new item1Entities())
                {
                    context.Database.Connection.Open();
                    LcTextBlock.Text = (from p in context.LCs
                                         where p.Id_LC == vAl
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
                int xx = Convert.ToInt32(GAttTypeComboBox.SelectedValue);
                List<G_SubAttachClass> gSubAttachClass = (from p in context.G_SubAttachClass
                                                          where p.G_AttachClass.id == xx
                                                          orderby p.SubAttach_name
                                                          select p).ToList();
                GAttClassComboBox.ItemsSource = gSubAttachClass;
                GAttClassComboBox.DisplayMemberPath = "SubAttach_name";
                GAttClassComboBox.SelectedValuePath = "id";
                //  GAttClass_comboBox.SelectedIndex = 0;
                context.Database.Connection.Close();
            }
        }

        private void GAttClass_comboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (GAttClassComboBox.SelectedValue != null)
            {
                int selVal = Convert.ToInt32(GAttClassComboBox.SelectedValue);
                using (item1Entities context = new item1Entities())
                {
                    AttSlotTextBox.Text = (from p in context.G_SubAttachClass
                                            where p.id == selVal

                                            select p.ATTACHMENTSLOT.szSlotName).First().ToString();

                    int attSlot = (from p in context.G_SubAttachClass
                                   where p.id == selVal
                                   select p.ATTACHMENTSLOT.uiSlotIndex).First();
                    MountTypeComboBox.ItemsSource = (from p in context.Attachmentmounts
                                                      where p.idAttacClass == attSlot
                                                      orderby p.name
                                                      select p).ToList();
                    MountTypeComboBox.DisplayMemberPath = "name";
                    MountTypeComboBox.SelectedValuePath = "id";
                }
            }
        }

        private void Attach1_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            Att1GroupBox.Visibility = Visibility.Visible;
            using (item1Entities context = new item1Entities())
            {
                GAttType1ComboBox.ItemsSource = context.G_AttachClass.ToList();
                GAttType1ComboBox.DisplayMemberPath = "name_class";
                GAttType1ComboBox.SelectedValuePath = "id";

                GAttType1ComboBox.SelectedIndex = 0;

            }
        }

        private void GAttType1_comboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                context.Database.Connection.Open();
                int xx = Convert.ToInt32(GAttType1ComboBox.SelectedValue);
                List<G_SubAttachClass> gSubAttachClass = (from p in context.G_SubAttachClass
                                                          where p.G_AttachClass.id == xx
                                                          orderby p.SubAttach_name
                                                          select p).ToList();
                GAttClass1ComboBox.ItemsSource = gSubAttachClass;
                GAttClass1ComboBox.DisplayMemberPath = "SubAttach_name";
                GAttClass1ComboBox.SelectedValuePath = "id";
                GAttClass1ComboBox.SelectedIndex = 0;
                context.Database.Connection.Close();
            }


        }

        private void GAttType2_comboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                context.Database.Connection.Open();
                int xx = Convert.ToInt32(GAttType2ComboBox.SelectedValue);
                List<G_SubAttachClass> gSubAttachClass = (from p in context.G_SubAttachClass
                                                          where p.G_AttachClass.id == xx
                                                          orderby p.SubAttach_name
                                                          select p).ToList();
                GAttClass2ComboBox.ItemsSource = gSubAttachClass;
                GAttClass2ComboBox.DisplayMemberPath = "SubAttach_name";
                GAttClass2ComboBox.SelectedValuePath = "id";
                GAttClass2ComboBox.SelectedIndex = 0;
                context.Database.Connection.Close();
            }
        }

        private void GAttType3_comboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                context.Database.Connection.Open();
                int xx = Convert.ToInt32(GAttType3ComboBox.SelectedValue);
                List<G_SubAttachClass> gSubAttachClass = (from p in context.G_SubAttachClass
                                                          where p.G_AttachClass.id == xx
                                                          orderby p.SubAttach_name
                                                          select p).ToList();
                GAttClass3ComboBox.ItemsSource = gSubAttachClass;
                GAttClass3ComboBox.DisplayMemberPath = "SubAttach_name";
                GAttClass3ComboBox.SelectedValuePath = "id";
                GAttClass3ComboBox.SelectedIndex = 0;
                context.Database.Connection.Close();
            }
        }

        private void Attach1_checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            Att1GroupBox.Visibility = Visibility.Hidden;

        }

        private void Attach2_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            Att2GroupBox.Visibility = Visibility.Visible;
            using (item1Entities context = new item1Entities())
            {
                GAttType2ComboBox.ItemsSource = context.G_AttachClass.ToList();
                GAttType2ComboBox.DisplayMemberPath = "name_class";
                GAttType2ComboBox.SelectedValuePath = "id";
                GAttType2ComboBox.SelectedIndex = 0;
            }
        }

        private void Attach2_checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            Att2GroupBox.Visibility = Visibility.Hidden;

        }

        private void Attach3_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            Att3GroupBox.Visibility = Visibility.Visible;
            using (item1Entities context = new item1Entities())
            {
                GAttType3ComboBox.ItemsSource = context.G_AttachClass.ToList();
                GAttType3ComboBox.DisplayMemberPath = "name_class";
                GAttType3ComboBox.SelectedValuePath = "id";
                GAttType3ComboBox.SelectedIndex = 0;
            }
        }

        private void Attach3_checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            Att2GroupBox.Visibility = Visibility.Hidden;

        }

        private void LaserRangefinder_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                context.Database.Connection.Open();
                ITEM itemLoad = (from z in context.ITEMs
                                 where z.uiIndex == Datachange.IdSel
                                 select z).First();
                Attachment attacmentLoad = (from p in context.Attachments
                                            where p.uiIndex == itemLoad.ubClassIndex
                                            select p).First();
                LaserLrRangeTextBox.Text = attacmentLoad.LaserRFrange.ToString();
                LaserLrAccTextBox.Text = attacmentLoad.LaserRFAcc.ToString();
            }
        }

        private void LaserRangefinder_checkBox_Unchecked(object sender, RoutedEventArgs e)
        {
            LaserLrRangeTextBox.Text = "0";
            LaserLrAccTextBox.Text = "0";
        }

        private void SizeBat_comboBox_Initialized(object sender, EventArgs e)
        {
            SizeBatComboBox.Items.Add("T");
            SizeBatComboBox.Items.Add("XS");
            SizeBatComboBox.Items.Add("M");
            SizeBatComboBox.Items.Add("L");
            SizeBatComboBox.Items.Add("VL");

        }

        private void Tritium_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            NeedBatCheckBox.IsChecked = false;
            //NeedBat_ChB.IsChecked = false;
            SizeBatComboBox.Visibility = Visibility.Hidden;

        }

        private void NeedBat_checkBox_Checked(object sender, RoutedEventArgs e)
        {
            TritiumCheckBox.IsChecked = false;
            //NeedBat_ChB.IsChecked = true;
            SizeBatComboBox.Visibility = Visibility.Visible;
            SizeBatComboBox.SelectedIndex = 0;
        }

        private void Laser_Color_comboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            switch (LaserColorComboBox.Text)
            {

                case "Red":
                    LaserRangeEffTextBox.Text = "0,33";
                    break;
                case "Orange":
                    LaserRangeEffTextBox.Text = "0,50";
                    break;
                case "Green":
                    LaserRangeEffTextBox.Text = "2,00";
                    break;
                case "Infrared":
                    LaserRangeEffTextBox.Text = "1,00";
                    break;
            }
        }

        private void Laser_Color_comboBox_Initialized(object sender, EventArgs e)
        {
            using (item1Entities context = new item1Entities())
            {
                context.Database.Connection.Open();
                ITEM itemLoad = (from z in context.ITEMs
                                 where z.uiIndex == Datachange.IdSel
                                 select z).First();
                Attachment attacmentLoad = (from p in context.Attachments
                                            where p.uiIndex == itemLoad.ubClassIndex
                                            select p).First();


                LaserColorComboBox.ItemsSource = context.Batteries.ToList();

                LaserColorComboBox.DisplayMemberPath = "SmolName";
                LaserColorComboBox.SelectedValuePath = "id";
       

                if (attacmentLoad.LaserColor != null) LaserColorComboBox.SelectedIndex = 0;
                else LaserColorComboBox.SelectedValue = Convert.ToInt32(attacmentLoad.LaserColor);

            }
        }

        private void Laser_Color_comboBox_Loaded(object sender, RoutedEventArgs e)
        {

           
        }
    }
}

