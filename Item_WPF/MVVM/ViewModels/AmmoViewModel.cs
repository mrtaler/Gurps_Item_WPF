using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using Item_WPF.addin;
using System.Collections.Specialized;

namespace Item_WPF.MVVM.ViewModels
{
    public class AmmoViewModel : INotifyPropertyChanged, IDisposable
    {
        /// <summary>
        /// Основной контекст данных
        /// </summary>
        private item1Entities _context;
        /// <summary>
        /// Коллекция патронов .
        /// </summary>
        public ObservableCollection<AMMO> AmmoOk { get; set; }
        /// <summary>
        /// Конструктор класса
        /// </summary>
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
