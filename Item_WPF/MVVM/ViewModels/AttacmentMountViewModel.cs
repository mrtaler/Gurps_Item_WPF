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
    public class AttacmentMountViewModel : ViewModelBase, IDisposable
    {
        private item1Entities _context;
        private string _slot;
        public ObservableCollection<Attachmentmount> avvAttSlotOk { get; set; }
        public ObservableCollection<Attachmentmount> avvAttSlotOkForWork { get; set; }
        public AttacmentMountViewModel(string slot)
        {
            _slot = slot;
            _context = new item1Entities();
            avvAttSlotOk = new ObservableCollection<Attachmentmount>(_context.Attachmentmounts);
            avvAttSlotOkForWork = new ObservableCollection<Attachmentmount>(avvAttSlotOk.Where(p => p.ATTACHMENTSLOT.szSlotName.Contains(_slot)));
            Save = new DelegateCommand(SaveChanges);
            avvAttSlotOkForWork.CollectionChanged += new NotifyCollectionChangedEventHandler(_Avv_att_slot_OK_CollectionChanged);
        }

        public AttacmentMountViewModel(string slot, ObservableCollection<Attachmentmount> AvvAttSlotOk, item1Entities context)
        {
            _slot = slot;
            _context = context;
            avvAttSlotOk = new ObservableCollection<Attachmentmount>(_context.Attachmentmounts);
            avvAttSlotOkForWork = new ObservableCollection<Attachmentmount>(avvAttSlotOk.Where(p => p.ATTACHMENTSLOT.szSlotName.Contains(_slot)));
            //    avvAttSlotOk.CollectionChanged += new NotifyCollectionChangedEventHandler(_Avv_att_slot_OK_CollectionChanged_with_context);
        }
        private void _Avv_att_slot_OK_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (Attachmentmount item in e.OldItems)
                {
                    _context.Attachmentmounts.Remove(item);
                    avvAttSlotOk.Remove(item);
                }
                SaveChanges(1);
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (Attachmentmount item in e.NewItems)
                {
                    item.name = "New_slot";
                    item.idAttacClass = (_context.ATTACHMENTSLOTs.First(p => p.szSlotName.Contains(_slot)).uiSlotIndex); ;
                    avvAttSlotOk.Add(item);
                    _context.Attachmentmounts.Add(item);
                    SaveChanges(1);
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
                SaveChanges(1);
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (Attachmentmount item in e.NewItems)
                {
                    item.name = "New_slot";
                    item.idAttacClass = (_context.ATTACHMENTSLOTs.First(p => p.szSlotName.Contains(_slot)).uiSlotIndex); 
                    _context.Attachmentmounts.Add(item);
                    SaveChanges(1);
                }
            }
        }
        private void SaveChanges(object parameter)
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
        public DelegateCommand Save { get; set; }  
      
        public void Dispose()
        {
            _context?.Dispose();
        }
    }
}
