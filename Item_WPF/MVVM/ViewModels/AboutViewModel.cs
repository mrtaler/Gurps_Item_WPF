using System.Reflection;

using GurpsDb.BaseModel;

using Item_WPF.addin;

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
