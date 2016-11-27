using Item_WPF.ItemEntityModel;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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
