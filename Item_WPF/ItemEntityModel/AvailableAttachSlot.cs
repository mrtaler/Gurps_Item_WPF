//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Item_WPF.ItemEntityModel
{
    using System;
    using System.Collections.Generic;

    public partial class AvailableAttachSlot : System.ComponentModel.INotifyPropertyChanged
    {

        #region Implement INotifyPropertyChanged

        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged(string propertyName)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }

        #endregion

        private int _id;
        public int id
        {
            get
            {
                return _id;
            }
            set
            {
                if (_id != value)
                {
                    _id = value;
                    OnPropertyChanged("id");
                }
            }
        }
        private int _rItemId;
        public int rItemId
        {
            get
            {
                return _rItemId;
            }
            set
            {
                if (_rItemId != value)
                {
                    _rItemId = value;
                    OnPropertyChanged("rItemId");
                }
            }
        }
        private int _rATTACHMENTSLOT;
        public int rATTACHMENTSLOT
        {
            get
            {
                return _rATTACHMENTSLOT;
            }
            set
            {
                if (_rATTACHMENTSLOT != value)
                {
                    _rATTACHMENTSLOT = value;
                    OnPropertyChanged("rATTACHMENTSLOT");
                }
            }
        }
        private int _rAttachmentmount;
        public int rAttachmentmount
        {
            get
            {
                return _rAttachmentmount;
            }
            set
            {
                if (_rAttachmentmount != value)
                {
                    _rAttachmentmount = value;
                    OnPropertyChanged("rAttachmentmount");
                }
            }
        }

        private Attachmentmount _Attachmentmount;
        public virtual Attachmentmount Attachmentmount
        {
            get { return _Attachmentmount; }
            set
            {
                if (_Attachmentmount != value)
                { _Attachmentmount = value; OnPropertyChanged("Attachmentmount"); }
            }
        }
        private ITEM _ITEM;
        public virtual ITEM ITEM
        {
            get { return _ITEM; }
            set
            {
                if (_ITEM != value)
                { _ITEM = value; OnPropertyChanged("Item"); }
            }
        }
    }
}
