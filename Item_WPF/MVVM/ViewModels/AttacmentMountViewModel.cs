using Item_WPF.addin;
using System;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.Linq;
using System.Windows;
using GurpsDb.GurpsModel;

namespace Item_WPF.MVVM.ViewModels
{
    public class AttacmentMountViewModel : ViewModelBase, IDisposable
    {
        private ContextGurpsModel _context;
        private string _slot;
        public ObservableCollection<AttachmentMount> AvvAttSlotOk { get; set; }
        public ObservableCollection<AttachmentMount> AvvAttSlotOkForWork { get; set; }
        public AttacmentMountViewModel(string slot)
        {
            _slot = slot;
            _context = new ContextGurpsModel();
            AvvAttSlotOk = new ObservableCollection<AttachmentMount>(_context.AttachmentmountDbSet);
            AvvAttSlotOkForWork = new ObservableCollection<AttachmentMount>(AvvAttSlotOk.Where(p => p.Attachmentslot.SzSlotName.Contains(_slot)));
            Save = new ViewModelCommand(SaveChanges);
            AvvAttSlotOkForWork.CollectionChanged += _Avv_att_slot_OK_CollectionChanged;
        }

        public AttacmentMountViewModel(string slot, ObservableCollection<AttachmentMount> avvAttSlotOk, ContextGurpsModel context)
        {
            _slot = slot;
            _context = context;
            AvvAttSlotOk = new ObservableCollection<AttachmentMount>(_context.AttachmentmountDbSet);
            AvvAttSlotOkForWork = new ObservableCollection<AttachmentMount>(AvvAttSlotOk.Where(p => p.Attachmentslot.SzSlotName.Contains(_slot)));
            //    avvAttSlotOk.CollectionChanged += new NotifyCollectionChangedEventHandler(_Avv_att_slot_OK_CollectionChanged_with_context);
        }
        private void _Avv_att_slot_OK_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (AttachmentMount item in e.OldItems)
                {
                    _context.AttachmentmountDbSet.Remove(item);
                    AvvAttSlotOk.Remove(item);
                }
                SaveChanges(1);
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (AttachmentMount item in e.NewItems)
                {
                    item.Name = "New_slot";
                    item.IdAttacClass = (_context.AttachmentslotDbSet.First(p => p.SzSlotName.Contains(_slot)).UiSlotIndex);
                    AvvAttSlotOk.Add(item);
                    _context.AttachmentmountDbSet.Add(item);
                    SaveChanges(1);
                }

            }
        }
        private void _Avv_att_slot_OK_CollectionChanged_with_context(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (AttachmentMount item in e.OldItems)
                {
                    _context.AttachmentmountDbSet.Remove(item);
                }
                SaveChanges(1);
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (AttachmentMount item in e.NewItems)
                {
                    item.Name = "New_slot";
                    item.IdAttacClass = (_context.AttachmentslotDbSet.First(p => p.SzSlotName.Contains(_slot)).UiSlotIndex);
                    _context.AttachmentmountDbSet.Add(item);
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
        public ViewModelCommand Save { get; set; }

        public void Dispose()
        {
            _context?.Dispose();
        }
    }
}
