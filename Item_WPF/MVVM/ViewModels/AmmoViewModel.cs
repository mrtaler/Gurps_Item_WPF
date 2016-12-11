using Item_WPF.addin;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.Linq;
using GurpsDb.GurpsModel;

namespace Item_WPF.MVVM.ViewModels
{
    public class AmmoViewModel : ViewModelBase
    {
        private ContextGurpsModel _context;
        public ObservableCollection<Caliber> caliber { get; set; }
        public ObservableCollection<Item> AmmoOk { get; set; }
        public AmmoViewModel()
        {
            _context = new ContextGurpsModel();

            Save = new ViewModelCommand(SaveChanges);
            caliber = new ObservableCollection<Caliber>(_context.CaliberDbSet);
            AmmoOk = new ObservableCollection<Item>(_context.ItemDbSet.Where(p => p.ItemSubClass.ItemClass.Name.Contains("ammo")));
            AmmoOk.CollectionChanged += new NotifyCollectionChangedEventHandler(_ammoOK_CollectionChanged);

        }
        public AmmoViewModel(object parametr)
        {
            _context = new ContextGurpsModel();
            int? param = (parametr as int?);
            Save = new ViewModelCommand(SaveChanges);
            caliber = new ObservableCollection<Caliber>(_context.CaliberDbSet);
            AmmoOk = new ObservableCollection<Item>(_context.ItemDbSet.Where(p => p.ItemSubClass.ItemClass.Name.Contains("ammo")).Where(p => p.UbCalibre == param));
            AmmoOk.CollectionChanged += new NotifyCollectionChangedEventHandler(_ammoOK_CollectionChanged);

        }
        private void _ammoOK_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (Item item in e.OldItems)
                {
                    _context.ItemDbSet.Remove(item);
                }
                SaveChanges(1);
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (Item item in e.NewItems)
                {
                    item.SzItemName = "new Ammo";
                    item.UsItemClass = _context.ItemClassDbSet.First(p => p.Name.Contains("Ammo")).Id;
                    _context.ItemDbSet.Add(item);
                    SaveChanges(1);
                }
            }
        }
        private void SaveChanges(object parameter)
        {
            _context.SaveChanges();
        }

        public ViewModelCommand Save { get; set; }

        //      PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));


        public void Dispose()
        {
            _context?.Dispose();
        }
    }
}
