using System.Reflection;
using Item_WPF.addin;
using GurpsDb.BaseModel;

namespace Item_WPF.MVVM.ViewModels
{
    class AboutViewModel : ViewModelBase
    {
        public string Copyright
        {
            get
            {
                return ((AssemblyCopyrightAttribute)System.Attribute.GetCustomAttribute(Assembly.GetExecutingAssembly(), typeof(AssemblyCopyrightAttribute))).Copyright;
            }
        }
    }
}
