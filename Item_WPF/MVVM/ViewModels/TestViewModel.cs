using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Item_WPF.MVVM.ViewModels
{
    class TestViewModel /*: INotifyPropertyChanged, IDisposable*/
    {
        private item1Entities _context;
        public ObservableCollection<AMMO> AmmoTest { get; set; }
        public ObservableCollection<TypeOfDamage> TypeOfDamageTest { get; set; }

        public TestViewModel()
        {
            _context=new item1Entities();
            AmmoTest=new ObservableCollection< AMMO > (_context.AMMOes);
            TypeOfDamageTest= new ObservableCollection<TypeOfDamage>(_context.TypeOfDamages);
        }
    }
}
