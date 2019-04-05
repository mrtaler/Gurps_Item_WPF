using System;
using System.Collections.ObjectModel;
using System.Collections.Specialized;

using GurpsDb;
using GurpsDb.BaseModel;
using GurpsDb.GurpsModel;

using Item_WPF.addin;

namespace Item_WPF.MVVM.ViewModels
{
    public class CaliberViewModel : ViewModelBase, IDisposable
    {
        private ContextGurpsModel _context;
        public ObservableCollection<Caliber> CaliberOk { get; set; }
        public CaliberViewModel()
        {
            this._context = new ContextGurpsModel();
            this.CaliberOk = new ObservableCollection<Caliber>(this._context.CaliberDbSet);
            this.Save = new ViewModelCommand(this.SaveChanges);
            this.CaliberOk.CollectionChanged += this._ammoOK_CollectionChanged;
        }

        private void _ammoOK_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (Caliber item in e.OldItems)
                {
                    this._context.CaliberDbSet.Remove(item);
                }

                this.SaveChanges(1);
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (Caliber item in e.NewItems)
                {
                    item.CaliberName = "new item";
                    item.ClassOfCaliber = "1";
                    this._context.CaliberDbSet.Add(item);
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
