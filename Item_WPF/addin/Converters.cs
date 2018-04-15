using System;
using System.Linq;
using System.Globalization;
using System.Collections.ObjectModel;
using System.Windows;
using System.Windows.Media;
using GurpsDb.GurpsModel;

namespace Item_WPF.addin
{
    #region dataContextConverter
    class DatacontextTupeFromClass : MultiConvertorBase<DatacontextTupeFromClass>
    {
        public override object Convert(object[] values,
                              Type targetType,
                              object parameter,
                              CultureInfo culture)
        {
            // I added this because I kept getting DependecyProperty.UnsetValue 
            // Passed in as the program initializes

            ObservableCollection<ItemSubClass> weaponTypescCollection = (ObservableCollection<ItemSubClass>)values[0];
            int findClass = (int)values[1];
            ObservableCollection<ItemSubClass> ret = new ObservableCollection<ItemSubClass>(
                       weaponTypescCollection.
                           Where(p => p.IdGurpsSubClass == findClass));

            return ret;
        }
    }
    #endregion
    #region Converter int to Visible and check  AvailableAttachPointConvert
    class AvailableAttachPointConvert : MultiConvertorBase<AvailableAttachPointConvert>
    {
        public ObservableCollection<AvailableAttachSlot> ASlot { set; private get; }
        public int? IdWeapon { set; private get; }
        public override object Convert(object[] values,
                      Type targetType,
                      object parameter,
                      CultureInfo culture)
        {
            ASlot = values[0] as ObservableCollection<AvailableAttachSlot>;
            IdWeapon = values[1] as int?;
            int check = 0;
            if (ASlot != null && ASlot.Count != 0)
            {
                int findslotPoint = System.Convert.ToInt32(parameter);
                check = (from p in ASlot
                         where p.RAttachmentslot == findslotPoint
                         select p.RAttachmentmount).FirstOrDefault();
            }
            if (check != 0) return true;
            else return false;
        }

        public override object[] ConvertBack(object value,
                                    Type[] targetTypes,
                                    object parameter,
                                    CultureInfo culture)
        {
            if ((bool)value)
            {
                ASlot.Add(new AvailableAttachSlot()
                {
                    RItemId = System.Convert.ToInt32(IdWeapon),
                    RAttachmentslot = System.Convert.ToInt32(parameter),
                    RAttachmentmount = System.Convert.ToInt32(parameter)
                });
            }
            else
            {
                int find = System.Convert.ToInt32(parameter);
                var avs = (from p in ASlot
                           where p.RAttachmentslot == find
                           select p).First();
                ASlot?.Remove(avs);
            }
            //you know that your first binding is slider 1 value ans second binding is slider 2 value
            //so create a 2 item object []
            object[] ret = new object[2];
            ret[0] = ASlot;
            ret[1] = IdWeapon;
            return ret;
        }
    }
    #endregion
    #region SlotConvert_datacontext
    class AvailableSlotMountConverter : MultiConvertorBase<AvailableSlotMountConverter>
    {
        public override object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            if ((bool)values[1])
            {
                ObservableCollection<AttachmentMount> avAttMount = (ObservableCollection<AttachmentMount>)values[0];
                return avAttMount;
            }
            else return null;
        }
    }
    #endregion
    #region MountToAttachPointConvert
    class MountToAttachPointConvert : MultiConvertorBase<MountToAttachPointConvert>
    {
        public ObservableCollection<AvailableAttachSlot> ASlot { set; private get; }
        public int? IdWeapon { set; private get; }
        public override object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            ASlot = values[0] as ObservableCollection<AvailableAttachSlot>;
            IdWeapon = values[1] as int?;
            int findslotPoint = System.Convert.ToInt32(parameter);
            int MountSlot = (from p in ASlot
                             where p.RAttachmentslot == findslotPoint
                             select p.RAttachmentmount).FirstOrDefault();
            //if (MountSlot != 0)
            return MountSlot;
            //else return 0;
        }
        public override object[] ConvertBack(object value, Type[] targetType, object parameter, CultureInfo culture)
        {
            int findslotPoint = System.Convert.ToInt32(parameter);
            int selVal = System.Convert.ToInt32(value);
            AvailableAttachSlot ase = ASlot.FirstOrDefault(p =>
                p.RAttachmentslot == findslotPoint);
            if (ase != null)
            {
                //ASlot.Remove(ase);
                ase.RAttachmentmount = selVal;
                //ASlot.Add(ase);
            }
            object[] ret = new object[2];
            ret[0] = ASlot;
            ret[1] = IdWeapon;
            return ret;
        }
    }
    #endregion
    #region converter 2to text
    class textBoxtotwoSource : MultiConvertorBase<textBoxtotwoSource>
    {
        public override object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            return values[0] as string;
        }
        public override object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
        {
            string S1 = value as string;


            object[] ret = new object[2];
            ret[0] = S1;
            ret[1] = S1;
            return ret;
        }
    }
    #endregion
    #region Convert Shotgun to vis
    public class Shotguntovis : ConvertorBase<Shotguntovis>
    {
        public override object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            ItemSubClass WT = value as ItemSubClass;
            if (WT != null && WT.NameSub == "Shotgun")
                return Visibility.Visible;
            else return Visibility.Hidden;
        }
    }
    #endregion
    #region SelfVizToNull notttttttttttttttttttt
    public class SelfVizToNull : MultiConvertorBase<SelfVizToNull>
    {
        private Visibility VisNull { set; get; }
        public override object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            VisNull = (Visibility)values[1];
            if (VisNull == Visibility.Visible)
                return values[0].ToString();
            else return "0";
        }
        public override object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
        {
            object[] ret = new object[2];
            ret[0] = System.Convert.ToInt32(value);
            ret[1] = Visibility.Visible;
            return ret;
        }
    }
    #endregion
    #region dataContextConverter
    class DatacontextAttachClass : MultiConvertorBase<DatacontextAttachClass>
    {
        public override object Convert(object[] values,
                              Type targetType,
                              object parameter,
                              CultureInfo culture)
        {
            ObservableCollection<GSubAttachClass> SubAttachClassCollection = (ObservableCollection<GSubAttachClass>)values[0];
            int findClass = (int)values[1];
            return new ObservableCollection<GSubAttachClass>(
                SubAttachClassCollection.
                Where(p => p.AttachClass == findClass));
        }
    }
    #endregion
    #region AttachSlotText
    class AttachSlotText : MultiConvertorBase<AttachSlotText>
    {
        public override object Convert(object[] values,
                              Type targetType,
                              object parameter,
                              CultureInfo culture)
        {
            ObservableCollection<GSubAttachClass> SubAttachClassCollection = (ObservableCollection<GSubAttachClass>)values[0];
            int findClass = (int)values[1];

            string QT = (from p in SubAttachClassCollection
                         where p.Id == findClass
                         select p.Attachmentslot1.AttachmentSlotName).First().ToString();
            return QT;
        }
    }
    #endregion
    #region MountTypeColl
    class MountTypeColl : MultiConvertorBase<MountTypeColl>
    {
        public override object Convert(object[] values,
                              Type targetType,
                              object parameter,
                              CultureInfo culture)
        {
            ObservableCollection<AttachmentMount> MountForColl = (ObservableCollection<AttachmentMount>)values[1];
            int findClass = (int)values[0];
            ObservableCollection<GSubAttachClass> G_SubAttachClass = (ObservableCollection<GSubAttachClass>)values[2];

            int attSlot = (from p in G_SubAttachClass
                           where p.Id == findClass
                           select p.Attachmentslot1.Id).First();
            return new ObservableCollection<AttachmentMount>(MountForColl.Where(p => p.IdAttacClass == attSlot));

        }
    }
    #endregion
    /*#region Converter for all items
    public class AllItemsSort : MultiConvertorBase<AllItemsSort>
    {
        public override object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            ObservableCollection<Item> ItemsForSort = values[0] as ObservableCollection<Item>;
            int? Class_for_Sort = values[1] as int?;
            if (Class_for_Sort == null || Class_for_Sort == 1)
                return ItemsForSort;
            else return new ObservableCollection<Item>(ItemsForSort.Where(p => p.usItemClass == Class_for_Sort));
        }
    }
    #endregion
     <DataGrid.ItemsSource>
                <MultiBinding Converter="{addin:AllItemsSort}">
                    <Binding Path="Items" />
                    <Binding ElementName="ItemClassForSort" Path="SelectedValue" />
                </MultiBinding>
     </DataGrid.ItemsSource> 
    
    */
    #region Converter for Weapondamage
    public class Weapondamage : ConvertorBase<Weapondamage>
    {
        public ObservableCollection<WeaponDamage> weaponDamCollConvert { set; private get; }
        public override object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            weaponDamCollConvert = value as ObservableCollection<WeaponDamage>;

            if ((parameter as string) == "Damage")
                return weaponDamCollConvert.FirstOrDefault(p => p.WeaponAttackType.Name.Contains("Primary")).Damage;

            else if ((parameter as string) == "AD")
            {
                if (weaponDamCollConvert.FirstOrDefault(p => p.WeaponAttackType.Name.Contains("Primary")).ArmorDivision == 1)
                    return "";
                else return System.Convert.ToString(weaponDamCollConvert.FirstOrDefault(p => p.WeaponAttackType.Name.Contains("Primary")).ArmorDivision, culture);
            }

            else if ((parameter as string) == "ToD")
                return weaponDamCollConvert.FirstOrDefault(p => p.WeaponAttackType.Name.Contains("Primary")).TypeOfDamage.Id;
            else if ((parameter as string) == "ToD2")
                return weaponDamCollConvert.FirstOrDefault(p => p.WeaponAttackType.Name.Contains("Primary")).TypeOfDamage1?.Id;
            else if ((parameter as string) == "TD1")
                return weaponDamCollConvert.FirstOrDefault(p => p.WeaponAttackType.Name.Contains("Primary")).TypeOfDamage1Text;
            else if ((parameter as string) == "TD2")
                return weaponDamCollConvert.FirstOrDefault(p => p.WeaponAttackType.Name.Contains("Primary")).TypeOfDamage2Text;
            else return null;
        }
        public override object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if ((parameter as string) == "Damage")
                weaponDamCollConvert.FirstOrDefault(p => p.WeaponAttackType.Name.Contains("Primary")).Damage = value as string;
            else if ((parameter as string) == "AD")
            {
                char AY = CultureInfo.CurrentCulture.NumberFormat.CurrencyDecimalSeparator[0];

                if (AY == '.')
                    weaponDamCollConvert.FirstOrDefault(p => p.WeaponAttackType.Name.Contains("Primary")).ArmorDivision = System.Convert.ToDecimal((value as string).Replace(',', AY));
                else weaponDamCollConvert.FirstOrDefault(p => p.WeaponAttackType.Name.Contains("Primary")).ArmorDivision = System.Convert.ToDecimal((value as string).Replace('.', AY));
            }
            else if ((parameter as string) == "ToD")
                weaponDamCollConvert.FirstOrDefault(p => p.WeaponAttackType.Name.Contains("Primary")).TypeOfDamage.Id = System.Convert.ToInt32(value);
            else if ((parameter as string) == "ToD2")
                weaponDamCollConvert.FirstOrDefault(p => p.WeaponAttackType.Name.Contains("Primary")).TypeOfDamage1.Id = System.Convert.ToInt32(value);
            else if ((parameter as string) == "TD1")
                weaponDamCollConvert.FirstOrDefault(p => p.WeaponAttackType.Name.Contains("Primary")).TypeOfDamage1Text = value as string;
            else if ((parameter as string) == "TD2")
                weaponDamCollConvert.FirstOrDefault(p => p.WeaponAttackType.Name.Contains("Primary")).TypeOfDamage2Text = value as string;
            return weaponDamCollConvert;
        }
    }
    #endregion

    #region converter  fo FollowUp
    public class FollowUpLinkedOnOffConverter : ConvertorBase<FollowUpLinkedOnOffConverter>
    {
        public ObservableCollection<WeaponDamage> weaponDamCollConvert { set; private get; }
        public override object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            weaponDamCollConvert = value as ObservableCollection<WeaponDamage>;
            if ((parameter as string) == "Follow-up" && weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 2) != null)
            {
                return true;
            }
            else if ((parameter as string) == "Linked" && weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 3) != null)
            {
                return true;
            }
            else return false;
        }
        public override object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {

            if ((parameter as string) == "Follow-up")
            {
                if (System.Convert.ToBoolean(value))
                {
                    WeaponDamage FollowupDamage = new WeaponDamage()
                    {
                        IdWeapon = weaponDamCollConvert.FirstOrDefault(p => p.WeaponAttackType.Name.Contains("Primary")).IdWeapon,
                        IdWeaponAttackType = 2
                    };
                    weaponDamCollConvert.Add(FollowupDamage);
                }
                else if (!System.Convert.ToBoolean(value))
                {
                    weaponDamCollConvert.Remove(weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 2));
                }
            }
            else if ((parameter as string) == "Linked")
            {
                if (System.Convert.ToBoolean(value))
                {
                    WeaponAttackType wat = new WeaponAttackType();
                    WeaponDamage LinkedDamage = new WeaponDamage()
                    {
                        IdWeapon = weaponDamCollConvert.FirstOrDefault(p => p.WeaponAttackType.Name.Contains("Primary")).IdWeapon,
                        IdWeaponAttackType = 3
                    };
                    weaponDamCollConvert.Add(LinkedDamage);
                }
                else if (!System.Convert.ToBoolean(value))
                {
                    weaponDamCollConvert.Remove(weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 3));
                }
            }
            return weaponDamCollConvert;
        }
    }
    #endregion
    #region Converter for FollowUpdamage
    public class FollowUpdamage : ConvertorBase<FollowUpdamage>
    {
        public ObservableCollection<WeaponDamage> weaponDamCollConvert { set; private get; }
        public override object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            weaponDamCollConvert = value as ObservableCollection<WeaponDamage>;
            bool FollowUpdamageVar = false;
            if (weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 2) != null)
                FollowUpdamageVar = true;
            if ((parameter as string) == "Damage" && FollowUpdamageVar)
            {
                return weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 2).Damage;
            }
            else if ((parameter as string) == "AD" && FollowUpdamageVar)
            {
                if (weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 2).ArmorDivision == 1)
                    return "";
                else return weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 2).ArmorDivision;
            }
            else if ((parameter as string) == "ToD" && FollowUpdamageVar)
                return weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 2).TypeOfDamage.Id;
            else if ((parameter as string) == "ToD2" && FollowUpdamageVar)
                return weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 2).TypeOfDamage1.Id;
            else if ((parameter as string) == "TD1" && FollowUpdamageVar)
                return weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 2).TypeOfDamage1Text;
            else if ((parameter as string) == "TD2" && FollowUpdamageVar)
                return weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 2).TypeOfDamage2Text;
            else return null;
        }
        public override object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if ((parameter as string) == "Damage")
                weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 2).Damage = value as string;
            else if ((parameter as string) == "AD")
            {
                if (CultureInfo.CurrentCulture.NumberFormat.CurrencyDecimalSeparator[0] == '.')
                    weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 2).ArmorDivision = System.Convert.ToDecimal((value as string).Replace(',', CultureInfo.CurrentCulture.NumberFormat.CurrencyDecimalSeparator[0]));
                else weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 2).ArmorDivision = System.Convert.ToDecimal((value as string).Replace('.', CultureInfo.CurrentCulture.NumberFormat.CurrencyDecimalSeparator[0]));
            }
            else if ((parameter as string) == "ToD")
                weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 2).TypeOfDamage.Id = System.Convert.ToInt32(value);
            else if ((parameter as string) == "ToD2")
                weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 2).TypeOfDamage1.Id = System.Convert.ToInt32(value);
            else if ((parameter as string) == "TD1")
                weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 2).TypeOfDamage1Text = value as string;
            else if ((parameter as string) == "TD2")
                weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 2).TypeOfDamage2Text = value as string;
            return weaponDamCollConvert;
        }
    }
    #endregion
    #region Converter for Linkedamage
    public class Linkedamage : ConvertorBase<Linkedamage>
    {
        public ObservableCollection<WeaponDamage> weaponDamCollConvert { set; private get; }
        public override object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            weaponDamCollConvert = value as ObservableCollection<WeaponDamage>;
            bool LinkedDamageVar = false;
            if (weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 3) != null)
                LinkedDamageVar = true;
            if ((parameter as string) == "Damage" && LinkedDamageVar)
                return weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 3).Damage;
            else if ((parameter as string) == "AD" && LinkedDamageVar)
            {
                if (weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 3).ArmorDivision == 1)
                    return "";
                else return weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 3).ArmorDivision;
            }
            else if ((parameter as string) == "ToD" && LinkedDamageVar)
                return weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 3).TypeOfDamage.Id;
            else if ((parameter as string) == "ToD2" && LinkedDamageVar)
                return weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 3).TypeOfDamage1.Id;
            else if ((parameter as string) == "TD1" && LinkedDamageVar)
                return weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 3).TypeOfDamage1Text;
            else if ((parameter as string) == "TD2" && LinkedDamageVar)
                return weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 3).TypeOfDamage2Text;
            else return null;
        }
        public override object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if ((parameter as string) == "Damage")
                weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 3).Damage = value as string;
            else if ((parameter as string) == "AD")
            {
                if (CultureInfo.CurrentCulture.NumberFormat.CurrencyDecimalSeparator[0] == '.')
                    weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 3).ArmorDivision = System.Convert.ToDecimal((value as string).Replace(',', CultureInfo.CurrentCulture.NumberFormat.CurrencyDecimalSeparator[0]));
                else weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 3).ArmorDivision = System.Convert.ToDecimal((value as string).Replace('.', CultureInfo.CurrentCulture.NumberFormat.CurrencyDecimalSeparator[0]));
            }
            else if ((parameter as string) == "ToD")
                weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 3).TypeOfDamage.Id = System.Convert.ToInt32(value);
            else if ((parameter as string) == "ToD2")
                weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 3).TypeOfDamage1.Id = System.Convert.ToInt32(value);
            else if ((parameter as string) == "TD1")
                weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 3).TypeOfDamage1Text = value as string;
            else if ((parameter as string) == "TD2")
                weaponDamCollConvert.FirstOrDefault(p => p.IdWeaponAttackType == 3).TypeOfDamage2Text = value as string;
            return weaponDamCollConvert;
        }
    }
    #endregion
    #region gridrowcolr
    class gridrowcolrConverter : ConvertorBase<gridrowcolrConverter>
    {
        public override object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            // Все проверки для краткости выкинул
            return (string)value == "Weapon" ?
                new SolidColorBrush(Colors.LightGreen)
                : new SolidColorBrush(Colors.White);
        }
    }
    #endregion    
    #region AnyboxNameConvertFrom treview notttttttttttttttttttt
    public class AnyboxNameConvertFromtreview : MultiConvertorBase<AnyboxNameConvertFromtreview>
    {
        public ObservableCollection<BoxItem> BoxItemForIDboxname { get; set; }
        public override object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            //int IDBOXNAME = System.Convert.ToInt32(values[1]);
            BoxItemForIDboxname = values[0] as ObservableCollection<BoxItem>;
            return BoxItemForIDboxname;//.Where(p => p.AnyBoxNameType.IsSelected == true);
        }
    }
    #endregion
    #region WeigthInBox converter
    public class WeigthInBoxconverter : MultiConvertorBase<WeigthInBoxconverter>
    {
        public override object Convert(object[] values,
                                  Type targetType,
                                  object parameter,
                                  CultureInfo culture)
        {
            int IDBOXNAME = System.Convert.ToInt32(values[1]);
            ObservableCollection<BoxItem> BoxItemForIDboxname = (values[0] as ObservableCollection<BoxItem>);
            decimal w = 0;
            foreach (var item in BoxItemForIDboxname.Where(p => p.BoxName == IDBOXNAME))
            {
                if ((parameter as string) == "w")
                    w += item.Item.UbWeight * item.CountItems;
                else w += item.Item.UsPrice * item.CountItems;
            }
            return w.ToString();
        }
    }
    #endregion
    #region MountToAttachPointConvert
    class MountAttachmentPointConvert : MultiConvertorBase<MountAttachmentPointConvert>
    {
        public ObservableCollection<AvailableAttachSlot> ASlot { set; private get; }
        public int? IdItem { set; private get; }
        public override object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            ASlot = values[0] as ObservableCollection<AvailableAttachSlot>;
            IdItem = values[1] as int?;
            int findslotPoint = System.Convert.ToInt32(parameter);
            if (ASlot.FirstOrDefault(p => p.RItemId == IdItem) != null)
            {
                return ASlot.FirstOrDefault(p => p.RItemId == IdItem && p.RAttachmentslot == findslotPoint).RAttachmentmount;
            }
            else return 1;
            //(from p in ASlot
            // where p.rATTACHMENTSLOT == findslotPoint
            // select p.rAttachmentmount).FirstOrDefault();
            //if (MountSlot != 0)

            //else return 0;
        }
        public override object[] ConvertBack(object value, Type[] targetType, object parameter, CultureInfo culture)
        {
            int findslotPoint = System.Convert.ToInt32(parameter);
            int selVal = System.Convert.ToInt32(value);
            AvailableAttachSlot ase = ASlot.FirstOrDefault(p =>
            p.RItemId == IdItem && p.RAttachmentslot == findslotPoint);
            if (ase != null)
            {
                //ASlot.Remove(ase);
                ase.RAttachmentmount = selVal;
                //ASlot.Add(ase);
            }
            object[] ret = new object[2];
            ret[0] = ASlot;
            ret[1] = IdItem;
            return ret;
        }
    }
    #endregion
}
//http://dev.net.ua/blogs/andriydanilchenko/archive/2011/08/14/binding-and-multibinding-converters.aspx

//https://habrahabr.ru/post/141107/