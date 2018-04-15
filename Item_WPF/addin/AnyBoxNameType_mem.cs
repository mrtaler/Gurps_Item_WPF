using GurpsDb.GurpsModel;
using System.Collections.ObjectModel;

namespace Item_WPF.addin
{
    public class AnyBoxNameType_mem : AnyBoxNameType
    {
        public AnyBoxNameType_mem()
        {
            this.Members = new ObservableCollection<AnyBoxNameType>();
        }
        public ObservableCollection<AnyBoxNameType> Members { get; set; }

    }
}
