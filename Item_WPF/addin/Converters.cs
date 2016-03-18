using System;
using System.Linq;
using System.Windows.Data;
using System.Windows.Media.Imaging;
using System.Globalization;
using System.Collections.ObjectModel;
using System.Windows;

namespace Item_WPF.addin
{
    #region image converter
    public class ImageConverter : ConvertorBase<ImageConverter>
    {
        public override object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            byte[] bytes = (byte[])value;

            if (bytes != null)
            {
                using (System.IO.MemoryStream ms = new System.IO.MemoryStream(bytes, 0, bytes.Length))
                {
                    BitmapImage image = new BitmapImage();
                    image.BeginInit();
                    image.CacheOption = BitmapCacheOption.OnLoad;
                    image.StreamSource = ms;
                    image.EndInit();
                    return image;
                }
            }
            else return null;
        }

        public override object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            BitmapSource image = (BitmapSource)value;
            if (image != null) return System.IO.File.ReadAllBytes(image.ToString());
            else return null;
        }
    }
    #endregion
    #region deciminal converter
    public class DeciminalConverterString : ConvertorBase<DeciminalConverterString>
    {
        public override object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            string str = parameter as string;
            return System.Convert.ToString(value, culture) + str;
        }

        public override object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            string convertValue = (string)value;
            string str = parameter as string;
            if (str != null) convertValue = convertValue.Replace(str, "");

            convertValue = convertValue.Replace(" ", "");
            char separator = CultureInfo.CurrentCulture.NumberFormat.CurrencyDecimalSeparator[0];
            if (separator == '.')
                return System.Convert.ToDecimal(convertValue.Replace(',', separator));
            else return System.Convert.ToDecimal(convertValue.Replace('.', separator));
        }
    }
    public class CostDeciminalConverter : ConvertorBase<CostDeciminalConverter>
    {
        public override object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return System.Convert.ToString(value, culture) + "$";
        }

        public override object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            string convertValue = (string)value;
            convertValue = convertValue.Replace("$", "");
            char separator = CultureInfo.CurrentCulture.NumberFormat.CurrencyDecimalSeparator[0];
            if (separator == '.')
                return System.Convert.ToDecimal(convertValue.Replace(',', separator));
            else return System.Convert.ToDecimal(convertValue.Replace('.', separator));
        }
    }
    #endregion
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

            ObservableCollection<WeaponType> weaponTypescCollection = (ObservableCollection<WeaponType>)values[0];
            int findClass = (int)values[1];
            return new ObservableCollection<WeaponType>(
                       weaponTypescCollection.
                           Where(p => p.WeaponClass.id == findClass));
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
                         where p.rATTACHMENTSLOT == findslotPoint
                         select p.rAttachmentmount).FirstOrDefault();
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
                    rWeaponId = System.Convert.ToInt32(IdWeapon),
                    rATTACHMENTSLOT = System.Convert.ToInt32(parameter),
                    rAttachmentmount = System.Convert.ToInt32(parameter)
                });
            }
            else
            {
                int find = System.Convert.ToInt32(parameter);
                var avs = (from p in ASlot
                           where p.rATTACHMENTSLOT == find
                           select p).First();
                if (ASlot != null) ASlot.Remove(avs);
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
                ObservableCollection<Attachmentmount> avAttMount = (ObservableCollection<Attachmentmount>)values[0];
                int findslotPoint = System.Convert.ToInt32(parameter);
                return avAttMount.Where(p => p.idAttacClass == findslotPoint);
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
                             where p.rATTACHMENTSLOT == findslotPoint
                             select p.rAttachmentmount).FirstOrDefault();
            //if (MountSlot != 0)
            return MountSlot;
            //else return 0;
        }
        public override object[] ConvertBack(object value, Type[] targetType, object parameter, CultureInfo culture)
        {
            int findslotPoint = System.Convert.ToInt32(parameter);
            int selVal = System.Convert.ToInt32(value);
            AvailableAttachSlot ase = ASlot.FirstOrDefault(p =>
                p.rATTACHMENTSLOT == findslotPoint);
            if (ase != null)
            {
                //ASlot.Remove(ase);
                ase.rAttachmentmount = selVal;
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
            WeaponType WT = value as WeaponType;
            if (WT != null && WT.name == "Shotgun")
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
            ObservableCollection<G_SubAttachClass> SubAttachClassCollection = (ObservableCollection<G_SubAttachClass>)values[0];
            int findClass = (int)values[1];
            return new ObservableCollection<G_SubAttachClass>(
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
            ObservableCollection<G_SubAttachClass> SubAttachClassCollection = (ObservableCollection<G_SubAttachClass>)values[0];
            int findClass = (int)values[1];

           string QT = (from p in SubAttachClassCollection
                  where p.id == findClass
                  select p.ATTACHMENTSLOT1.szSlotName).First().ToString();
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
            ObservableCollection<Attachmentmount> MountForColl = (ObservableCollection<Attachmentmount>)values[1];
            int findClass = (int)values[0];
            ObservableCollection<G_SubAttachClass> G_SubAttachClass = (ObservableCollection<G_SubAttachClass>)values[2];
            
            int attSlot = (from p in G_SubAttachClass
                           where p.id == findClass
                           select p.ATTACHMENTSLOT1.uiSlotIndex).First();
                           
            return new ObservableCollection<Attachmentmount>(MountForColl.Where(p => p.idAttacClass == attSlot));
           
        }
    }
    #endregion

    /*#region Converter for all items
    public class AllItemsSort : MultiConvertorBase<AllItemsSort>
    {
        public override object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            ObservableCollection<ITEM> ItemsForSort = values[0] as ObservableCollection<ITEM>;
            int? Class_for_Sort = values[1] as int?;
            if (Class_for_Sort == null || Class_for_Sort == 1)
                return ItemsForSort;
            else return new ObservableCollection<ITEM>(ItemsForSort.Where(p => p.usItemClass == Class_for_Sort));
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
}
//http://dev.net.ua/blogs/andriydanilchenko/archive/2011/08/14/binding-and-multibinding-converters.aspx

//https://habrahabr.ru/post/141107/