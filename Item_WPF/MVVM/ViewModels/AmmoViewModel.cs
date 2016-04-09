using System;
using System.Collections.ObjectModel;
using Item_WPF.addin;
using Item_WPF.MVVM.View;
using System.ComponentModel;
using System.Collections.Specialized;

namespace Item_WPF.MVVM.ViewModels
{
    class AmmoViewModel : ViewModelBase, IDisposable
    {    
        private item1Entities _context;
             public ObservableCollection<AMMO> AmmoOk { get; set; }
             public AmmoViewModel()
        {
            _context = new item1Entities();
            AmmoOk = new ObservableCollection<AMMO>(_context.AMMOes);
            Save = new ActionCommand(SaveChanges) { IsExecutable = true };
            AmmoOk.CollectionChanged += new NotifyCollectionChangedEventHandler(_ammoOK_CollectionChanged);
        }
        private void _ammoOK_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (AMMO item in e.OldItems)
                {
                    _context.AMMOes.Remove(item);
                }
                SaveChanges();
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (AMMO item in e.NewItems)
                {
                    item.Caliber_name = "new item";
                    item.alt_caliber_name = "";
                    item.AV_Upgrates = 1;
                    item.Dim_of_bullet_SI = 1;
                    item.Dim_of_bullet_US = 1;
                    item.WPS = 1;
                    item.CPS = 1;
                    item.Class_of_Ammo = "1";
                    _context.AMMOes.Add(item);
                    SaveChanges();
                }
            } 
        }
        private void SaveChanges()
        {
            _context.SaveChanges();
        }

        public ActionCommand Save { get; set; }

      //      PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        

        public void Dispose()
        {
            _context?.Dispose();
        }
    }

}
