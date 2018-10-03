using System;
using System.Collections.ObjectModel;
using System.Linq;
using GurpsDb;
using GurpsDb.GurpsModel;

namespace Item_WPF.MVVM.ViewModels
{
    public class BoxItemChangeViewModel
    {
        private ContextGurpsModel _context;
        public AnyBoxNameType MainBox { get; set; }
        public ObservableCollection<AnyBoxNameType> MainBoxCollection { get; set; }
        public BoxItemChangeViewModel(object param)
        {
            int idparam = Convert.ToInt32(param);
            _context = new ContextGurpsModel();
            MainBox = _context.AnyBoxNameTypeDbSet.FirstOrDefault(p => p.Id == idparam);
        }
    }
}
