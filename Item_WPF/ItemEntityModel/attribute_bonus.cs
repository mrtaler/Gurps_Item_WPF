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
    
    public partial class attribute_bonus : System.ComponentModel.INotifyPropertyChanged
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
        private Nullable<int> _FK_Skill;
    	public Nullable<int> FK_Skill 
    	{ 
    		get
    		{
    			return _FK_Skill;
    		} 
    		set
    		{
    			if (_FK_Skill != value)
    			{
    				_FK_Skill = value;
    				OnPropertyChanged("FK_Skill");
    			}
    		}
    	}
        private Nullable<int> _FK_Amount;
    	public Nullable<int> FK_Amount 
    	{ 
    		get
    		{
    			return _FK_Amount;
    		} 
    		set
    		{
    			if (_FK_Amount != value)
    			{
    				_FK_Amount = value;
    				OnPropertyChanged("FK_Amount");
    			}
    		}
    	}
        private string _AttributeLimitation;
    	public string AttributeLimitation 
    	{ 
    		get
    		{
    			return _AttributeLimitation;
    		} 
    		set
    		{
    			if (_AttributeLimitation != value)
    			{
    				_AttributeLimitation = value;
    				OnPropertyChanged("AttributeLimitation");
    			}
    		}
    	}
        private string _AttributeValue;
    	public string AttributeValue 
    	{ 
    		get
    		{
    			return _AttributeValue;
    		} 
    		set
    		{
    			if (_AttributeValue != value)
    			{
    				_AttributeValue = value;
    				OnPropertyChanged("AttributeValue");
    			}
    		}
    	}
        private string _AmountPer_level;
    	public string AmountPer_level 
    	{ 
    		get
    		{
    			return _AmountPer_level;
    		} 
    		set
    		{
    			if (_AmountPer_level != value)
    			{
    				_AmountPer_level = value;
    				OnPropertyChanged("AmountPer_level");
    			}
    		}
    	}
        private string _AmountValue;
    	public string AmountValue 
    	{ 
    		get
    		{
    			return _AmountValue;
    		} 
    		set
    		{
    			if (_AmountValue != value)
    			{
    				_AmountValue = value;
    				OnPropertyChanged("AmountValue");
    			}
    		}
    	}
        private Nullable<int> _FK_Advantage;
    	public Nullable<int> FK_Advantage 
    	{ 
    		get
    		{
    			return _FK_Advantage;
    		} 
    		set
    		{
    			if (_FK_Advantage != value)
    			{
    				_FK_Advantage = value;
    				OnPropertyChanged("FK_Advantage");
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
        private GurpsSkill _GurpsSkill;
            public virtual GurpsSkill GurpsSkill
            {
                get { return _GurpsSkill; }
                set
                { if(_GurpsSkill != value)
                    {    _GurpsSkill = value;    OnPropertyChanged("GurpsSkill");   }
                }
            } 
    }
}
