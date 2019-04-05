using System.Collections.ObjectModel;

using GurpsDb.GurpsModel;

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
