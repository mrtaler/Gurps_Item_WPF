using System;
using System.Globalization;

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
            convertValue = convertValue.Replace("$", string.Empty);
            char separator = CultureInfo.CurrentCulture.NumberFormat.CurrencyDecimalSeparator[0];
            if (separator == '.')
                return System.Convert.ToDecimal(convertValue.Replace(',', separator));
            else return System.Convert.ToDecimal(convertValue.Replace('.', separator));
        }
    }
}
