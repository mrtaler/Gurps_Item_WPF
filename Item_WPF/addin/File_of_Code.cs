using System;
using System.Globalization;
using System.Windows.Data;
using System.Windows.Markup;

namespace Item_WPF.addin
{
    /// <summary>
    /// класс для обмена данных между формами
    /// </summary>
    public class Datachange
    {
        /// <summary>
        /// переменная системного десятичного разделителя
        /// </summary>
        public static char Separator = System.Globalization.CultureInfo.CurrentCulture.NumberFormat.CurrencyDecimalSeparator[0];
        /// <summary>
        /// переменная для замены десятичного разделителя( можно установить различные с поиоью else if
        /// </summary>
        public static char SeparatorCh
        {
            get
            {
                if (Separator == '.') return ',';
                else return '.';
            }
        }

        public static int IdSel;
        public static int IdChange;
        public static byte[] ItemImage;
        public static string ClassCha;
        public static string Pass;
    }

    /// <summary>
    /// класс для фомирования комбинаций оружия
    /// </summary>
    public class WeaponCombine
    {
        public static int IdWeaponItem;
        public static int IdScopeItem;
        public static int IdLaserItem;
        public static int IdLightItem;
        public static int IdBipodItem;
        public static int IdSilenserItem;
        public static int IdLauncherItem;
        public static int IdStockItem;
        public static int IdBayonetItem;
        public static int IdMagazineItem;
        public static int IdInternalItem;
        public static int IdExternalItem;
        /// <summary>
        /// обнуление комбинатора
        /// </summary>
        public static void WeapCombNull()
        {
            IdWeaponItem = 0;
            IdScopeItem = 0;
            IdLaserItem = 0;
            IdLightItem = 0;
            IdBipodItem = 0;
            IdSilenserItem = 0;
            IdLauncherItem = 0;
            IdStockItem = 0;
            IdBayonetItem = 0;
            IdMagazineItem = 0;
            IdInternalItem = 0;
            IdExternalItem = 0;
        }

    }
    ///<summary>
    ///класс бросатель кубиков
    ///</summary>
    public class Dice
    {
        /// <summary>
        /// функция бросателя
        /// </summary>
        /// <param name="_numDice">количество кубиков</param>
        /// <param name="_dice">число сторон</param>
        /// <returns></returns>
        public static int RollDie(int _numDice, int _dice)
        {
            int roll;
            int total = 0;
            Random rand = new Random();
            string Dice = "";
            for (int i = 1; i < (_numDice) + 1; i++)
            {
                roll = (rand.Next(1, (_dice + 1)));
                total += roll;
                Dice += roll.ToString() + "\r\n";
            }
            Dice += total.ToString();
            return total;
        }

    }
    //
    //public BitmapImage ConvertByteArrayToImage(byte[] array)
    //{
    //    if (array != null)
    //    {
    //        using (var ms = new MemoryStream(array, 0, array.Length))
    //        {
    //            var image = new BitmapImage();
    //            image.BeginInit();
    //            image.CacheOption = BitmapCacheOption.OnLoad;
    //            image.StreamSource = ms;
    //            image.EndInit();
    //            return image;
    //        }
    //    }
    //    return null;
    //}
    public abstract class ConvertorBase<T> : MarkupExtension, IValueConverter
    where T : class, new()
    {
        /// <summary>
        /// Must be implemented in inheritor.
        /// </summary>
        public abstract object Convert(object value, Type targetType, object parameter,
            CultureInfo culture);

        /// <summary>
        /// Override if needed.
        /// </summary>
        public virtual object ConvertBack(object value, Type targetType, object parameter,
            CultureInfo culture)
        {
            throw new NotImplementedException();
        }

        #region MarkupExtension members

        public override object ProvideValue(IServiceProvider serviceProvider)
        {
            if (_converter == null)
                _converter = new T();
            return _converter;
        }

        private static T _converter = null;

        #endregion


        ////https://habrahabr.ru/post/140876/
    }

    public abstract class MultiConvertorBase<T> : MarkupExtension, IMultiValueConverter
   where T : class, new()
    {
        /// <summary>
        /// Must be implemented in inheritor.
        /// </summary>
        public abstract object Convert(object[] values, Type targetType, object parameter,
            CultureInfo culture);

        /// <summary>
        /// Override if needed.
        /// </summary>
        public virtual object[] ConvertBack(object value, Type[] targetTypes, object parameter,
            CultureInfo culture)
        {
            throw new NotImplementedException();
        }

        #region MarkupExtension members

        public override object ProvideValue(IServiceProvider serviceProvider)
        {
            if (_converter == null)
                _converter = new T();
            return _converter;
        }

        private static T _converter = null;

        #endregion


        ////https://habrahabr.ru/post/140876/
    }
}