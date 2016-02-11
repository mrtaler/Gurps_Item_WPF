using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Drawing;
using System.Globalization;
using System.Windows.Markup;
using System.Collections.ObjectModel;

namespace Item_WPF.addin
{

    public class ImageConverter : ConvertorBase<ImageConverter>
    {
        public override object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            byte[] bytes = (byte[])value;

            if (bytes != null)
            {
                var s = value.GetType();
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
            char Separator = System.Globalization.CultureInfo.CurrentCulture.NumberFormat.CurrencyDecimalSeparator[0];
            if (Separator == '.')
                return System.Convert.ToDecimal(convertValue.Replace(',', Separator));
            else return System.Convert.ToDecimal(convertValue.Replace('.', Separator));
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
            char Separator = System.Globalization.CultureInfo.CurrentCulture.NumberFormat.CurrencyDecimalSeparator[0];
            if (Separator == '.')
                return System.Convert.ToDecimal(convertValue.Replace(',', Separator));
            else return System.Convert.ToDecimal(convertValue.Replace('.', Separator));
        }
    }

    class DatacontextTupeFromClass : IMultiValueConverter
    {
        public object Convert(object[] values,
                              Type targetType,
                              object parameter,
                              System.Globalization.CultureInfo culture)
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
                                    System.Globalization.CultureInfo culture)
        {
            return null;
        }
    }
    class AvailableAttachPointConvert : ConvertorBase<AvailableAttachPointConvert>
    {
        private ObservableCollection<AvailableAttachSlot> aSlot { get; set; }
        private int idWeapon { get; set; }
        public override object Convert(object values,
                              Type targetType,
                              object parameter,
                              System.Globalization.CultureInfo culture)
        {
            // I added this because I kept getting DependecyProperty.UnsetValue 
            //// Passed in as the program initializes

            aSlot = (ObservableCollection<AvailableAttachSlot>)values;
            int findslotPoint = System.Convert.ToInt32(parameter);
            idWeapon = (from p in aSlot
                        select p.rWeaponId).FirstOrDefault();
            // var findColl= aSlot.First(p => p.rATTACHMENTSLOT == findslotPoint);
            AvailableAttachSlot findColl = (from p in aSlot
                                            where p.rATTACHMENTSLOT == findslotPoint
                                            select p).FirstOrDefault();

            if (findColl != null)
                return true;
            else
            {
                return false;
            }
        }

        public override object ConvertBack(object value,
                                    Type targetTypes,
                                    object parameter,
                                    System.Globalization.CultureInfo culture)
        {
            ///хуйня, нужно действовать тоньше через поиск
            int i = 1;
            int param = System.Convert.ToInt32(parameter);
            if (param== 1) i = 68;
            else if (param == 2) i = 41;

            if ((bool)value == true && aSlot != null)
            {
                aSlot.Add(new AvailableAttachSlot()
                {
                    rWeaponId = idWeapon,
                    rATTACHMENTSLOT = System.Convert.ToInt32(parameter),
                    rAttachmentmount = i
                });
                return aSlot;
            }



            else if ((bool)value == true && aSlot == null)
            {
                aSlot.Add(new AvailableAttachSlot()
                {
                    rWeaponId = idWeapon,
                    rATTACHMENTSLOT = System.Convert.ToInt32(parameter),
                    rAttachmentmount = 0
                });
                return aSlot;
            }
            else
            {
                AvailableAttachSlot avs = new AvailableAttachSlot();
                int find = System.Convert.ToInt32(parameter);
                avs = (from p in aSlot
                       where p.rATTACHMENTSLOT == find
                       select p).First();
                aSlot.Remove(avs);
                return aSlot;
            }
        }
    }

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
            else
            {
                return null;
            }
        }

        public override object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
        {
            return base.ConvertBack(value, targetTypes, parameter, culture);
        }
    }

    class MountToAttachPointConvert : ConvertorBase<MountToAttachPointConvert>
    {
        private ObservableCollection<AvailableAttachSlot> aSlot { get; set; }
        private int idWeapon { get; set; }
        private AvailableAttachSlot Ase { get; set; }
        public override object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            aSlot = (ObservableCollection<AvailableAttachSlot>)value;
            int findslotPoint = System.Convert.ToInt32(parameter);
            idWeapon = (from p in aSlot
                        select p.rWeaponId).FirstOrDefault();
            return (from p in aSlot
                    where p.rATTACHMENTSLOT == findslotPoint &&
                    p.rWeaponId == idWeapon
                    select p.rAttachmentmount).FirstOrDefault();

        }

        public override object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            int findslotPoint = System.Convert.ToInt32(parameter);
            int idWeap = (from p in aSlot
                            select p.rWeaponId).FirstOrDefault();
            Ase = aSlot.FirstOrDefault(p => p.rWeaponId == idWeap && p.rATTACHMENTSLOT == findslotPoint);
            if (Ase != null)
            {
              return  Ase.rAttachmentmount = (int) value;
            }
            else
            {
                return aSlot;
            }
        }
    }
}
//http://dev.net.ua/blogs/andriydanilchenko/archive/2011/08/14/binding-and-multibinding-converters.aspx