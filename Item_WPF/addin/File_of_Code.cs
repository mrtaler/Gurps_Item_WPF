using System;
using System.Collections.ObjectModel;
using System.Globalization;
using System.Windows.Data;
using System.Windows.Markup;

namespace Item_WPF.addin
{/// <summary>
/// 4
/// </summary>
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
    #region BasicConverter Class
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
            return this;
        }
        #endregion
        ////https://habrahabr.ru/post/140876/
    }
    #endregion
    #region MyltiValueCinverter Basik
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
            return this;
        }

        //  private static T _converter = null;

        #endregion
        ////https://habrahabr.ru/post/140876/
    }
    #endregion
   public class AnyBoxNameType_mem: AnyBoxNameType
    {
        public AnyBoxNameType_mem()
        {
            this.Members = new ObservableCollection<AnyBoxNameType>();
        }
        public ObservableCollection<AnyBoxNameType> Members { get; set; }

    }
}