using System.IO;
using System.Windows;
using System.Windows.Media.Imaging;

namespace Item_WPF
{
    public class datachange
    {
        public static int ID_sel;
        public static int ID_change;
        public static byte[] ItemImage;
        public static string Class_Cha;
        public static string Pass;
    }


    public class WeaponCombine
    {
        public static int Id_WeaponItem;
    }      

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