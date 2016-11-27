using Item_WPF.addin;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Linq;
using System.Text;
using Item_WPF.ItemEntityModel;
using System.Threading.Tasks;

namespace Item_WPF.MVVM.ViewModels
{
    public class DamageTypeViewModel : INotifyPropertyChanged, IDisposable
    {
        private item1Entities _context;
        public ObservableCollection<TypeOfDamage> TypeOfDamageOk { get; set; }
        public DamageTypeViewModel()
        {
            _context = new item1Entities();
            TypeOfDamageOk = new ObservableCollection<TypeOfDamage>(_context.TypeOfDamages);
            Save = new ViewModelCommand(SaveChanges);
            TypeOfDamageOk.CollectionChanged += new NotifyCollectionChangedEventHandler(_TypeOfDamageOK_CollectionChanged);
        }
        private void _TypeOfDamageOK_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (TypeOfDamage item in e.OldItems)
                {
                    _context.TypeOfDamages.Remove(item);
                }
                SaveChanges(1);
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (TypeOfDamage item in e.NewItems)
                {
                    item.name = "";
                    item.LongName = "";
                    item.mDamage = "";
                    _context.TypeOfDamages.Add(item);
                    SaveChanges(1);
                }
            }
        }
        private void SaveChanges(object parameter)
        {
            _context.SaveChanges();
        }
        public ViewModelCommand Save { get; set; }
        public event PropertyChangedEventHandler PropertyChanged;
        private void RaisePropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
        public void Dispose()
        {
            _context?.Dispose();
        }
    }
}
