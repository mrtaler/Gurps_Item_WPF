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
    
    public partial class cost_reduction : System.ComponentModel.INotifyPropertyChanged
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
        private string _attribute;
    	public string attribute 
    	{ 
    		get
    		{
    			return _attribute;
    		} 
    		set
    		{
    			if (_attribute != value)
    			{
    				_attribute = value;
    				OnPropertyChanged("attribute");
    			}
    		}
    	}
        private string _percentage;
    	public string percentage 
    	{ 
    		get
    		{
    			return _percentage;
    		} 
    		set
    		{
    			if (_percentage != value)
    			{
    				_percentage = value;
    				OnPropertyChanged("percentage");
    			}
    		}
    	}
        private Nullable<int> _idAdv;
    	public Nullable<int> idAdv 
    	{ 
    		get
    		{
    			return _idAdv;
    		} 
    		set
    		{
    			if (_idAdv != value)
    			{
    				_idAdv = value;
    				OnPropertyChanged("idAdv");
    			}
    		}
    	}
    
        private Advantage _Advantage;
            public virtual Advantage Advantage
            {
                get { return _Advantage; }
                set
                { if(_Advantage != value)
                    {    _Advantage = value;    OnPropertyChanged("Advantage");   }
                }
            } 
    }
}