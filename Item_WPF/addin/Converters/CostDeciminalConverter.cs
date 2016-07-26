using System;
using System.Linq;
using System.Windows.Data;
using System.Windows.Media.Imaging;
using System.Globalization;
using System.Collections.ObjectModel;
using System.Windows;
using System.Windows.Media;
using System.Collections.Generic;

using System.Text;

namespace Item_WPF.addin.Converters
{
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
}
