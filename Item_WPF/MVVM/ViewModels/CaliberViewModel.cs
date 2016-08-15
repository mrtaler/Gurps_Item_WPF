using System;
using System.Collections.ObjectModel;
using Item_WPF.addin;
using Item_WPF.MVVM.View;
using System.ComponentModel;
using System.Collections.Specialized;
using Item_WPF.ItemEntityModel;

namespace Item_WPF.MVVM.ViewModels
{
    public class CaliberViewModel : ViewModelBase, IDisposable
    {
        private item1Entities _context;
        public ObservableCollection<Caliber> CaliberOk { get; set; }
        public CaliberViewModel()
        {
            _context = new item1Entities();
            CaliberOk = new ObservableCollection<Caliber>(_context.Calibers);
            Save = new DelegateCommand(SaveChanges);
            CaliberOk.CollectionChanged += new NotifyCollectionChangedEventHandler(_ammoOK_CollectionChanged);
        }
        private void _ammoOK_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (Caliber item in e.OldItems)
                {
                    _context.Calibers.Remove(item);
                }
                SaveChanges(1);
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (Caliber item in e.NewItems)
                {
                    item.Caliber_name = "new item";
                    item.Class_of_Caliber = "1";
                    _context.Calibers.Add(item);
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
