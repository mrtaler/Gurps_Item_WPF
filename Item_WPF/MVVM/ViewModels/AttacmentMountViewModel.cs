using System;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.Linq;
using System.Windows;

using GurpsDb;
using GurpsDb.BaseModel;
using GurpsDb.GurpsModel;

using Item_WPF.addin;

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
            this._slot = slot;
            this._context = new ContextGurpsModel();
            this.AvvAttSlotOk = new ObservableCollection<AttachmentMount>(this._context.AttachmentMountDbSet);
            this.AvvAttSlotOkForWork = new ObservableCollection<AttachmentMount>(this.AvvAttSlotOk.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains(this._slot)));
            this.Save = new ViewModelCommand(this.SaveChanges);
            this.AvvAttSlotOkForWork.CollectionChanged += this._Avv_att_slot_OK_CollectionChanged;
        }

        public AttacmentMountViewModel(string slot, ObservableCollection<AttachmentMount> avvAttSlotOk, ContextGurpsModel context)
        {
            this._slot = slot;
            this._context = context;
            this.AvvAttSlotOk = new ObservableCollection<AttachmentMount>(this._context.AttachmentMountDbSet);
            this.AvvAttSlotOkForWork = new ObservableCollection<AttachmentMount>(
                this.AvvAttSlotOk.Where(p => p.AttachmentSlot.AttachmentSlotName.Contains(this._slot)));

            // avvAttSlotOk.CollectionChanged += new NotifyCollectionChangedEventHandler(_Avv_att_slot_OK_CollectionChanged_with_context);
        }

        private void _Avv_att_slot_OK_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (AttachmentMount item in e.OldItems)
                {
                    this._context.AttachmentMountDbSet.Remove(item);
                    this.AvvAttSlotOk.Remove(item);
                }

                this.SaveChanges(1);
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (AttachmentMount item in e.NewItems)
                {
                    item.Name = "New_slot";
                    item.IdAttacClass = (this._context.AttachmentSlotDbSet.First(p => p.AttachmentSlotName.Contains(this._slot)).Id);
                    this.AvvAttSlotOk.Add(item);
                    this._context.AttachmentMountDbSet.Add(item);
                    this.SaveChanges(1);
                }

            }
        }

        private void _Avv_att_slot_OK_CollectionChanged_with_context(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (AttachmentMount item in e.OldItems)
                {
                    this._context.AttachmentMountDbSet.Remove(item);
                }

                this.SaveChanges(1);
            }
            else if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (AttachmentMount item in e.NewItems)
                {
                    item.Name = "New_slot";
                    item.IdAttacClass = (this._context.AttachmentSlotDbSet.First(p => p.AttachmentSlotName.Contains(this._slot)).Id);
                    this._context.AttachmentMountDbSet.Add(item);
                    this.SaveChanges(1);
                }
            }
        }

        private void SaveChanges(object parameter)
        {
            try
            {
                this._context.SaveChanges();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        public ViewModelCommand Save { get; set; }

        public void Dispose()
        {
            this._context?.Dispose();
        }
    }
}
