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

    public partial class AnyBoxNameType : System.ComponentModel.INotifyPropertyChanged
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

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public AnyBoxNameType()
        {
            this.AnyBoxNameType1 = new HashSet<AnyBoxNameType>();
            this.BoxItems = new HashSet<BoxItem>();
        }

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
        private string _nameOfBox;
        public string nameOfBox
        {
            get
            {
                return _nameOfBox;
            }
            set
            {
                if (_nameOfBox != value)
                {
                    _nameOfBox = value;
                    OnPropertyChanged("nameOfBox");
                }
            }
        }
        private int _TypeOfBox;
        public int TypeOfBox
        {
            get
            {
                return _TypeOfBox;
            }
            set
            {
                if (_TypeOfBox != value)
                {
                    _TypeOfBox = value;
                    OnPropertyChanged("TypeOfBox");
                }
            }
        }
        private Nullable<int> _ParentBoxName;
        public Nullable<int> ParentBoxName
        {
            get
            {
                return _ParentBoxName;
            }
            set
            {
                if (_ParentBoxName != value)
                {
                    _ParentBoxName = value;
                    OnPropertyChanged("ParentBoxName");
                }
            }
        }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        private ICollection<AnyBoxNameType> _AnyBoxNameType1;
        public virtual ICollection<AnyBoxNameType> AnyBoxNameType1
        {
            get { return _AnyBoxNameType1; }
            set
            {
                if (_AnyBoxNameType1 != value)
                { _AnyBoxNameType1 = value; OnPropertyChanged("AnyBoxNameType1"); }
            }
        }
        private AnyBoxNameType _AnyBoxNameType2;
        public virtual AnyBoxNameType AnyBoxNameType2
        {
            get { return _AnyBoxNameType2; }
            set
            {
                if (_AnyBoxNameType2 != value)
                { _AnyBoxNameType2 = value; OnPropertyChanged("AnyBoxNameType2"); }
            }
        }
        private Type_of_Box _Type_of_Box;
        public virtual Type_of_Box Type_of_Box
        {
            get { return _Type_of_Box; }
            set
            {
                if (_Type_of_Box != value)
                { _Type_of_Box = value; OnPropertyChanged("TypeOfBox"); }
            }
        }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        private ICollection<BoxItem> _BoxItems;
        public virtual ICollection<BoxItem> BoxItems
        {
            get { return _BoxItems; }
            set
            {
                if (_BoxItems != value)
                { _BoxItems = value; OnPropertyChanged("BoxItems"); }
            }
        }
    }
}
