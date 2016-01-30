using System;
using System.IO;
using System.Windows;
using System.Windows.Media.Imaging;

namespace Item_WPF
{
    /// <summary>
    /// класс для обмена данных между формами
    /// </summary>
    public class datachange
    {
        /// <summary>
        /// переменная системного десятичного разделителя
        /// </summary>
        public static char separator = System.Globalization.CultureInfo.CurrentCulture.NumberFormat.CurrencyDecimalSeparator[0];
        /// <summary>
        /// переменная для замены десятичного разделителя( можно установить различные с поиоью else if
        /// </summary>
        public static char separatorCh
        {
            get {
                if (separator == '.') return ',';
                else return '.';
            }            
        }

        public static int ID_sel;
        public static int ID_change;
        public static byte[] ItemImage;
        public static string Class_Cha;
        public static string Pass;
    }

    /// <summary>
    /// класс для фомирования комбинаций оружия
    /// </summary>
    public class WeaponCombine
    {
        public static int Id_WeaponItem;
        public static int Id_ScopeItem;
        public static int Id_LaserItem;
        public static int Id_LightItem;
        public static int Id_BipodItem;
        public static int Id_SilenserItem;
        public static int Id_LauncherItem;
        public static int Id_StockItem;
        public static int Id_BayonetItem;
        public static int Id_MagazineItem;
        public static int Id_InternalItem;
        public static int Id_ExternalItem;
        /// <summary>
        /// обнуление комбинатора
        /// </summary>
        public static void WeapCombNull()
        {
            Id_WeaponItem = 0;
            Id_ScopeItem = 0;
            Id_LaserItem = 0;
            Id_LightItem = 0;
            Id_BipodItem = 0;
            Id_SilenserItem = 0;
            Id_LauncherItem = 0;
            Id_StockItem = 0;
            Id_BayonetItem = 0;
            Id_MagazineItem = 0;
            Id_InternalItem = 0;
            Id_ExternalItem = 0;
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
        public static int rollDie(int _numDice, int _dice)
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
}