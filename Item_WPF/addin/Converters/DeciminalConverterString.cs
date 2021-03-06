﻿using System;
using System.Globalization;


namespace Item_WPF.addin.Converters
{
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
            if (str != null) convertValue = convertValue.Replace(str, string.Empty);

            convertValue = convertValue.Replace(" ", string.Empty);
            char separator = CultureInfo.CurrentCulture.NumberFormat.CurrencyDecimalSeparator[0];
            if (separator == '.')
                return System.Convert.ToDecimal(convertValue.Replace(',', separator));
            else return System.Convert.ToDecimal(convertValue.Replace('.', separator));
        }
    }
}
