using Item_WPF.addin;
using System;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.Linq;
using System.Windows;
using GurpsDb.GurpsModel;
using GurpsDb.BaseModel;

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
            AvvAttSlotOk = new ObservableCollection<AttachmentMount>(_context.AttachmentMountDbSet);
            AvvAttSlotOkForWork = new ObservableCollection<AttachmentMount>(AvvAttSlotOk.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains(_slot)));
            Save = new ViewModelCommand(SaveChanges);
            AvvAttSlotOkForWork.CollectionChanged += _Avv_att_slot_OK_CollectionChanged;
        }

        public AttacmentMountViewModel(string slot, ObservableCollection<AttachmentMount> avvAttSlotOk, ContextGurpsModel context)
        {
            _slot = slot;
            _context = context;
            AvvAttSlotOk = new ObservableCollection<AttachmentMount>(_context.AttachmentMountDbSet);
            AvvAttSlotOkForWork = new ObservableCollection<AttachmentMount>(AvvAttSlotOk.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains(_slot)));
            //    avvAttSlotOk.CollectionChanged += new NotifyCollectionChangedEventHandler(_Avv_att_slot_OK_CollectionChanged_with_context);
        }
        private void _Avv_att_slot_OK_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (AttachmentMount item in e.OldItems)
                {
                    _context.AttachmentMountDbSet.Remove(item);
                    AvvAttSlotOk.Remove(item);
                }
                SaveChanges(1);
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (AttachmentMount item in e.NewItems)
                {
                    item.Name = "New_slot";
                    item.IdAttacClass = (_context.AttachmentSlotDbSet.First(p => p.AttachmentSlotName.Contains(_slot)).Id);
                    AvvAttSlotOk.Add(item);
                    _context.AttachmentMountDbSet.Add(item);
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
                    _context.AttachmentMountDbSet.Remove(item);
                }
                SaveChanges(1);
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (AttachmentMount item in e.NewItems)
                {
                    item.Name = "New_slot";
                    item.IdAttacClass = (_context.AttachmentSlotDbSet.First(p => p.AttachmentSlotName.Contains(_slot)).Id);
                    _context.AttachmentMountDbSet.Add(item);
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
