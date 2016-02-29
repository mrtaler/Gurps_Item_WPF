using Item_WPF.addin;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace Item_WPF.MVVM.ViewModels
{
    class AttacmentMountViewModel : INotifyPropertyChanged, IDisposable
    {
        private item1Entities _context;
        private int _slot;
        public ObservableCollection<Attachmentmount> avvAttSlotOk { get; set; }
        public AttacmentMountViewModel(int slot)
        {
            _slot = slot;
            _context = new item1Entities();
            avvAttSlotOk = new ObservableCollection<Attachmentmount>(_context.Attachmentmounts.Where(p => p.idAttacClass == _slot));
            Save = new ActionCommand(SaveChanges) { IsExecutable = true };
            avvAttSlotOk.CollectionChanged += new NotifyCollectionChangedEventHandler(_Avv_att_slot_OK_CollectionChanged);
        }

        public AttacmentMountViewModel(int slot, ObservableCollection<Attachmentmount> AvvAttSlotOk, item1Entities context)
        {
            _slot = slot;
            _context = context;
            avvAttSlotOk = new ObservableCollection<Attachmentmount>(AvvAttSlotOk.Where(p => p.idAttacClass == _slot));
        //    avvAttSlotOk.CollectionChanged += new NotifyCollectionChangedEventHandler(_Avv_att_slot_OK_CollectionChanged_with_context);
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
        private void _Avv_att_slot_OK_CollectionChanged_with_context(object sender, NotifyCollectionChangedEventArgs e)
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
            try
            {
                _context.SaveChanges();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
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
