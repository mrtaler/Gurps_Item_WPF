//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Item_WPF
{
    using System;
    using System.Collections.Generic;
    
    public partial class Type_of_Box : System.ComponentModel.INotifyPropertyChanged
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
        public Type_of_Box()
        {
            this.AnyBoxNameTypes = new HashSet<AnyBoxNameType>();
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
        private string _nameOfType;
    	public string nameOfType 
    	{ 
    		get
    		{
    			return _nameOfType;
    		} 
    		set
    		{
    			if (_nameOfType != value)
    			{
    				_nameOfType = value;
    				OnPropertyChanged("nameOfType");
    			}
    		}
    	}
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        private ICollection<AnyBoxNameType> _AnyBoxNameTypes;
            public virtual ICollection<AnyBoxNameType> AnyBoxNameTypes
            {
                get { return _AnyBoxNameTypes; }
                set
                { if(_AnyBoxNameTypes != value)
                    {    _AnyBoxNameTypes = value;    OnPropertyChanged("AnyBoxNameTypes");   }
                }
            } 
    }
}
