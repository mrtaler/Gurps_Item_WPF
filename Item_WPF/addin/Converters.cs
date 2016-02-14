using System;
using System.Linq;
using System.Windows.Data;
using System.Windows.Media.Imaging;
using System.Globalization;
using System.Collections.ObjectModel;
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

    public class WeigtDeciminalConverter : ConvertorBase<WeigtDeciminalConverter>
    {
        public override object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return System.Convert.ToString(value, culture) + " lbs";
        }

        public override object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            string convertValue = (string)value;
            convertValue = convertValue.Replace("lbs", "");
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
    class DatacontextTupeFromClass : IMultiValueConverter
    {
        public object Convert(object[] values,
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

        public object[] ConvertBack(object value,
                                    Type[] targetTypes,
                                    object parameter,
                                    CultureInfo culture)
        {
            return null;
        }
    }
    #endregion
    #region Converter int to Visible and check
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
            int Check = 0;
            if (ASlot.Count != 0)
            {
                int findslotPoint = System.Convert.ToInt32(parameter);
                Check = (from p in ASlot
                         where p.rATTACHMENTSLOT == findslotPoint
                         select p.rAttachmentmount).FirstOrDefault();
            }
            if (Check != 0) return true;
            else return false;
        }

        public override object[] ConvertBack(object value,
                                    Type[] targetTypes,
                                    object parameter,
                                    CultureInfo culture)
        {
            //хуйня, нужно действовать тоньше через поиск

            int i = 1;
            int param = System.Convert.ToInt32(parameter);
            if (param == 1) i = 68;
            else if (param == 2) i = 41;

            if ((bool)value && ASlot != null)
            {
                ASlot.Add(new AvailableAttachSlot()
                {
                    rWeaponId = System.Convert.ToInt32(IdWeapon),
                    rATTACHMENTSLOT = System.Convert.ToInt32(parameter),
                    rAttachmentmount = i
                });
            }
            else if ((bool)value && ASlot == null)
            {
                if (ASlot != null)
                    ASlot.Add(new AvailableAttachSlot()
                    {
                        rWeaponId = System.Convert.ToInt32(IdWeapon),
                        rATTACHMENTSLOT = System.Convert.ToInt32(parameter),
                        rAttachmentmount = i
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
        private ObservableCollection<Attachmentmount> AvAttMount { get; set; }
        public override object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            if ((bool)values[1])
            {
                AvAttMount = (ObservableCollection<Attachmentmount>)values[0];
                int findslotPoint = System.Convert.ToInt32(parameter);
                return new ObservableCollection<Attachmentmount>(AvAttMount.Where(p => p.idAttacClass == findslotPoint));
            }
            else return null;
        }
    }
    #endregion

    class MountToAttachPointConvert : MultiConvertorBase<MountToAttachPointConvert>
    {
        public ObservableCollection<AvailableAttachSlot> ASlot { set; private get; }
        public int? IdWeapon { set; private get; }
        public override object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            ASlot = values[0] as ObservableCollection<AvailableAttachSlot>;
            IdWeapon = values[1] as int?;
            int findslotPoint = System.Convert.ToInt32(parameter);
            return (from p in ASlot
                    where p.rATTACHMENTSLOT == findslotPoint &&
                    p.rWeaponId == IdWeapon
                    select p.rAttachmentmount).FirstOrDefault();
        }

        public override object[] ConvertBack(object value, Type[] targetType, object parameter, CultureInfo culture)
        {
            int findslotPoint = System.Convert.ToInt32(parameter);
                int selVal = System.Convert.ToInt32(value);
            AvailableAttachSlot Ase = ASlot.FirstOrDefault(p =>
                p.rWeaponId == IdWeapon
                && p.rATTACHMENTSLOT == findslotPoint);


            if (Ase != null) Ase.rAttachmentmount = selVal;


            object[] ret = new object[2];
            ret[0] = ASlot;
            ret[1] = IdWeapon;
            return ret;
        }
    }
}
//http://dev.net.ua/blogs/andriydanilchenko/archive/2011/08/14/binding-and-multibinding-converters.aspx

//https://habrahabr.ru/post/141107/