using Item_WPF.addin;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Item_WPF.MVVM.ViewModels
{
    class AttacmentMountViewModel : INotifyPropertyChanged, IDisposable
    {
        private item1Entities _context;
        private int _slot;
        public ObservableCollection<Attachmentmount> AvvAttSlotOk { get; set; }
        public AttacmentMountViewModel(int slot)
        {
            _slot = slot;
            _context = new item1Entities();
            AvvAttSlotOk = new ObservableCollection<Attachmentmount>(_context.Attachmentmounts.Where(p => p.idAttacClass == _slot));
            Save = new ActionCommand(SaveChanges) { IsExecutable = true };
            AvvAttSlotOk.CollectionChanged += new NotifyCollectionChangedEventHandler(_Avv_att_slot_OK_CollectionChanged);
        }
        private void _Avv_att_slot_OK_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (Attachmentmount item in e.OldItems)
                {
                    _context.Attachmentmounts.Remove(item);
                }
                SaveChanges();
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (Attachmentmount item in e.NewItems)
                {
                    item.name = "New_slot";
                    item.idAttacClass = _slot;
                    _context.Attachmentmounts.Add(item);
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
