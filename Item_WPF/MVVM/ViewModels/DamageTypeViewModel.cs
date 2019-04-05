using System;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.ComponentModel;

using GurpsDb;
using GurpsDb.GurpsModel;

using Item_WPF.addin;

namespace Item_WPF.MVVM.ViewModels
{
    public class DamageTypeViewModel : INotifyPropertyChanged, IDisposable
    {
        private ContextGurpsModel _context;
        public ObservableCollection<TypeOfDamage> TypeOfDamageOk { get; set; }
        public DamageTypeViewModel()
        {
            this._context = new ContextGurpsModel();
            this.TypeOfDamageOk = new ObservableCollection<TypeOfDamage>(this._context.TypeOfDamageDbSet);
            this.Save = new ViewModelCommand(this.SaveChanges);
            this.TypeOfDamageOk.CollectionChanged += new NotifyCollectionChangedEventHandler(this._TypeOfDamageOK_CollectionChanged);
        }

        private void _TypeOfDamageOK_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (TypeOfDamage item in e.OldItems)
                {
                    this._context.TypeOfDamageDbSet.Remove(item);
                }

                this.SaveChanges(1);
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (TypeOfDamage item in e.NewItems)
                {
                    item.Name = string.Empty;
                    item.LongName = string.Empty;
                    item.MDamage = string.Empty;
                    this._context.TypeOfDamageDbSet.Add(item);
                    this.SaveChanges(1);
                }
            }
        }

        private void SaveChanges(object parameter)
        {
            this._context.SaveChanges();
        }

        public ViewModelCommand Save { get; set; }
        public event PropertyChangedEventHandler PropertyChanged;
        private void RaisePropertyChanged(string propertyName)
        {
            this.PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public void Dispose()
        {
            this._context?.Dispose();
        }
    }
}
