using System;
using System.Collections.ObjectModel;
using Item_WPF.addin;
using System.Collections.Specialized;
using GurpsDb;
using GurpsDb.GurpsModel;
using GurpsDb.BaseModel;

namespace Item_WPF.MVVM.ViewModels
{
    public class CaliberViewModel : ViewModelBase, IDisposable
    {
        private ContextGurpsModel _context;
        public ObservableCollection<Caliber> CaliberOk { get; set; }
        public CaliberViewModel()
        {
            _context = new ContextGurpsModel();
            CaliberOk = new ObservableCollection<Caliber>(_context.CaliberDbSet);
            Save = new ViewModelCommand(SaveChanges);
            CaliberOk.CollectionChanged += _ammoOK_CollectionChanged;
        }
        private void _ammoOK_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (Caliber item in e.OldItems)
                {
                    _context.CaliberDbSet.Remove(item);
                }
                SaveChanges(1);
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (Caliber item in e.NewItems)
                {
                    item.CaliberName = "new item";
                    item.ClassOfCaliber = "1";
                    _context.CaliberDbSet.Add(item);
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
