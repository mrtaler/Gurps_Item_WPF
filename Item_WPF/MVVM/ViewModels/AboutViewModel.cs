using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;
using Item_WPF.addin;
using Item_WPF.Properties;

namespace Item_WPF.MVVM.ViewModels
{
    class AboutViewModel : ViewModelBase
    {
        public string Copyright
        {
            get
            {
                return ((AssemblyCopyrightAttribute)Attribute.GetCustomAttribute(Assembly.GetExecutingAssembly(), typeof(AssemblyCopyrightAttribute))).Copyright;
            }
        }
    }
}
