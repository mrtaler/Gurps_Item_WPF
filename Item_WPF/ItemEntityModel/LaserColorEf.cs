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
    
    public partial class LaserColorEf : System.ComponentModel.INotifyPropertyChanged
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
        private Nullable<decimal> _LaserColorDayEfect;
    	public Nullable<decimal> LaserColorDayEfect 
    	{ 
    		get
    		{
    			return _LaserColorDayEfect;
    		} 
    		set
    		{
    			if (_LaserColorDayEfect != value)
    			{
    				_LaserColorDayEfect = value;
    				OnPropertyChanged("LaserColorDayEfect");
    			}
    		}
    	}
    }
}