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
    
    public partial class ItemSubClass : System.ComponentModel.INotifyPropertyChanged
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
        public ItemSubClass()
        {
            this.ITEMs = new HashSet<ITEM>();
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
        private string _NameSub;
    	public string NameSub 
    	{ 
    		get
    		{
    			return _NameSub;
    		} 
    		set
    		{
    			if (_NameSub != value)
    			{
    				_NameSub = value;
    				OnPropertyChanged("NameSub");
    			}
    		}
    	}
        private int _IdItemClass;
    	public int IdItemClass 
    	{ 
    		get
    		{
    			return _IdItemClass;
    		} 
    		set
    		{
    			if (_IdItemClass != value)
    			{
    				_IdItemClass = value;
    				OnPropertyChanged("IdItemClass");
    			}
    		}
    	}
        private string _Type;
    	public string Type 
    	{ 
    		get
    		{
    			return _Type;
    		} 
    		set
    		{
    			if (_Type != value)
    			{
    				_Type = value;
    				OnPropertyChanged("Type");
    			}
    		}
    	}
        private Nullable<int> _idGurpsSubClass;
    	public Nullable<int> idGurpsSubClass 
    	{ 
    		get
    		{
    			return _idGurpsSubClass;
    		} 
    		set
    		{
    			if (_idGurpsSubClass != value)
    			{
    				_idGurpsSubClass = value;
    				OnPropertyChanged("idGurpsSubClass");
    			}
    		}
    	}
    
        private GurpsClass _GurpsClass;
            public virtual GurpsClass GurpsClass
            {
                get { return _GurpsClass; }
                set
                { if(_GurpsClass != value)
                    {    _GurpsClass = value;    OnPropertyChanged("GurpsClass");   }
                }
            } 
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        private ICollection<ITEM> _ITEMs;
            public virtual ICollection<ITEM> ITEMs
            {
                get { return _ITEMs; }
                set
                { if(_ITEMs != value)
                    {    _ITEMs = value;    OnPropertyChanged("ITEMs");   }
                }
            } 
        private ItemClass _ItemClass;
            public virtual ItemClass ItemClass
            {
                get { return _ItemClass; }
                set
                { if(_ItemClass != value)
                    {    _ItemClass = value;    OnPropertyChanged("ItemClass");   }
                }
            } 
    }
}
