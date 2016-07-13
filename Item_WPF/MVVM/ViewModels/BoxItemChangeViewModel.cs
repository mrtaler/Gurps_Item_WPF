using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Item_WPF.MVVM.ViewModels
{
    public class BoxItemChangeViewModel
    {
        private item1Entities _context;
        public AnyBoxNameType MainBox { get; set; }
         public ObservableCollection<AnyBoxNameType> MainBoxCollection { get; set; }
        public BoxItemChangeViewModel(object param)
        {
            int idparam = Convert.ToInt32(param);
            _context = new item1Entities();
            MainBox = _context.AnyBoxNameTypes.FirstOrDefault(p => p.id == idparam);
        }
    }
}
