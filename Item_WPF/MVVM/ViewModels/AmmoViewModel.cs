using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.Linq;

using GurpsDb;
using GurpsDb.BaseModel;
using GurpsDb.GurpsModel;

using Item_WPF.addin;

namespace Item_WPF.MVVM.ViewModels
{
    public class AmmoViewModel : ViewModelBase
    {
        private ContextGurpsModel _context;
        public ObservableCollection<Caliber> caliber { get; set; }
        public ObservableCollection<Item> AmmoOk { get; set; }
        public AmmoViewModel()
        {
            this._context = new ContextGurpsModel();

            this.Save = new ViewModelCommand(this.SaveChanges);
            this.caliber = new ObservableCollection<Caliber>(this._context.CaliberDbSet);
            this.AmmoOk = new ObservableCollection<Item>(this._context.ItemDbSet.Where(p => p.ItemSubClass.ItemClass.Name.Contains("ammo")));
            this.AmmoOk.CollectionChanged += new NotifyCollectionChangedEventHandler(this._ammoOK_CollectionChanged);

        }

        public AmmoViewModel(object parametr)
        {
            this._context = new ContextGurpsModel();
            int? param = (parametr as int?);
            this.Save = new ViewModelCommand(this.SaveChanges);
            this.caliber = new ObservableCollection<Caliber>(this._context.CaliberDbSet);

            // AmmoOk = new ObservableCollection<Item>(_context.ItemDbSet.Where(p => p.ItemSubClass.ItemClass.Name.Contains("ammo")).Where(p => p.UbCalibre == param));
            this.AmmoOk.CollectionChanged += new NotifyCollectionChangedEventHandler(this._ammoOK_CollectionChanged);
        }

        private void _ammoOK_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (Item item in e.OldItems)
                {
                    this._context.ItemDbSet.Remove(item);
                }

                this.SaveChanges(1);
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (Item item in e.NewItems)
                {
                    item.SzItemName = "new Ammo";
                    item.UsItemClass = this._context.ItemClassDbSet.First(p => p.Name.Contains("Ammo")).Id;
                    this._context.ItemDbSet.Add(item);
                    this.SaveChanges(1);
                }
            }
        }

        private void SaveChanges(object parameter)
        {
            this._context.SaveChanges();
        }

        public ViewModelCommand Save { get; set; }

        // PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));

        public void Dispose()
        {
            this._context?.Dispose();
        }
    }
}
