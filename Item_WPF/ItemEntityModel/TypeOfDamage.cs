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
    
    public partial class TypeOfDamage : System.ComponentModel.INotifyPropertyChanged
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
        public TypeOfDamage()
        {
            this.WeaponDamages = new HashSet<WeaponDamage>();
            this.WeaponDamages1 = new HashSet<WeaponDamage>();
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
        private string _name;
    	public string name 
    	{ 
    		get
    		{
    			return _name;
    		} 
    		set
    		{
    			if (_name != value)
    			{
    				_name = value;
    				OnPropertyChanged("name");
    			}
    		}
    	}
        private string _LongName;
    	public string LongName 
    	{ 
    		get
    		{
    			return _LongName;
    		} 
    		set
    		{
    			if (_LongName != value)
    			{
    				_LongName = value;
    				OnPropertyChanged("LongName");
    			}
    		}
    	}
        private string _mDamage;
    	public string mDamage 
    	{ 
    		get
    		{
    			return _mDamage;
    		} 
    		set
    		{
    			if (_mDamage != value)
    			{
    				_mDamage = value;
    				OnPropertyChanged("mDamage");
    			}
    		}
    	}
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        private ICollection<WeaponDamage> _WeaponDamages;
            public virtual ICollection<WeaponDamage> WeaponDamages
            {
                get { return _WeaponDamages; }
                set
                { if(_WeaponDamages != value)
                    {    _WeaponDamages = value;    OnPropertyChanged("WeaponDamages");   }
                }
            } 
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        private ICollection<WeaponDamage> _WeaponDamages1;
            public virtual ICollection<WeaponDamage> WeaponDamages1
            {
                get { return _WeaponDamages1; }
                set
                { if(_WeaponDamages1 != value)
                    {    _WeaponDamages1 = value;    OnPropertyChanged("WeaponDamages1");   }
                }
            } 
    }
}