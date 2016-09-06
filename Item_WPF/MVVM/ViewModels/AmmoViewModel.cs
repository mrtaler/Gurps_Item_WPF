using Item_WPF.addin;
using Item_WPF.ItemEntityModel;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Item_WPF.MVVM.ViewModels
{
    public class AmmoViewModel: ViewModelBase
    {
        private item1Entities _context;
        public ObservableCollection<Caliber> caliber { get; set; }
        public ObservableCollection<ITEM> AmmoOk { get; set; }
        public AmmoViewModel()
        {
            _context = new item1Entities();
           
            Save = new DelegateCommand(SaveChanges);
            caliber = new ObservableCollection<Caliber>(_context.Calibers);
            AmmoOk = new ObservableCollection<ITEM>(_context.ITEMs.Where(p => p.ItemSubClass.ItemClass.name.Contains("ammo")));
            AmmoOk.CollectionChanged += new NotifyCollectionChangedEventHandler(_ammoOK_CollectionChanged);
           
        }
        public AmmoViewModel(object parametr)
        {
            _context = new item1Entities();
            int? param = (parametr as int?);    
            Save = new DelegateCommand(SaveChanges);
            caliber = new ObservableCollection<Caliber>(_context.Calibers);
            AmmoOk = new ObservableCollection<ITEM>(_context.ITEMs.Where(p => p.ItemSubClass.ItemClass.name.Contains("ammo")).Where(p=>p.ubCalibre==param));
            AmmoOk.CollectionChanged += new NotifyCollectionChangedEventHandler(_ammoOK_CollectionChanged);

        }
        private void _ammoOK_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (ITEM item in e.OldItems)
                {
                    _context.ITEMs.Remove(item);
                }
                SaveChanges(1);
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (ITEM item in e.NewItems)
                {
                    item.szItemName = "new Ammo";
                    item.usItemClass = _context.ItemClasses.First(p => p.name.Contains("Ammo")).id;
                    _context.ITEMs.Add(item);
                    SaveChanges(1);
                }
            }
        }
        private void SaveChanges(object parameter)
        {
            _context.SaveChanges();
        }

        public DelegateCommand Save { get; set; }

        //      PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));


        public void Dispose()
        {
            _context?.Dispose();
        }
    }
}
