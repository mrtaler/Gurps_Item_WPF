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
    
    public partial class name1 : System.ComponentModel.INotifyPropertyChanged
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
     
        private string _PrimaryKey;
    	public string PrimaryKey 
    	{ 
    		get
    		{
    			return _PrimaryKey;
    		} 
    		set
    		{
    			if (_PrimaryKey != value)
    			{
    				_PrimaryKey = value;
    				OnPropertyChanged("PrimaryKey");
    			}
    		}
    	}
        private string _compare;
    	public string compare 
    	{ 
    		get
    		{
    			return _compare;
    		} 
    		set
    		{
    			if (_compare != value)
    			{
    				_compare = value;
    				OnPropertyChanged("compare");
    			}
    		}
    	}
        private string _Text;
    	public string Text 
    	{ 
    		get
    		{
    			return _Text;
    		} 
    		set
    		{
    			if (_Text != value)
    			{
    				_Text = value;
    				OnPropertyChanged("Text");
    			}
    		}
    	}
        private string _FK_advantage_prereq;
    	public string FK_advantage_prereq 
    	{ 
    		get
    		{
    			return _FK_advantage_prereq;
    		} 
    		set
    		{
    			if (_FK_advantage_prereq != value)
    			{
    				_FK_advantage_prereq = value;
    				OnPropertyChanged("FK_advantage_prereq");
    			}
    		}
    	}
        private string _FK_skill_prereq;
    	public string FK_skill_prereq 
    	{ 
    		get
    		{
    			return _FK_skill_prereq;
    		} 
    		set
    		{
    			if (_FK_skill_prereq != value)
    			{
    				_FK_skill_prereq = value;
    				OnPropertyChanged("FK_skill_prereq");
    			}
    		}
    	}
        private string _FK_weapon_bonus;
    	public string FK_weapon_bonus 
    	{ 
    		get
    		{
    			return _FK_weapon_bonus;
    		} 
    		set
    		{
    			if (_FK_weapon_bonus != value)
    			{
    				_FK_weapon_bonus = value;
    				OnPropertyChanged("FK_weapon_bonus");
    			}
    		}
    	}
    
        private advantage_prereq _advantage_prereq;
            public virtual advantage_prereq advantage_prereq
            {
                get { return _advantage_prereq; }
                set
                { if(_advantage_prereq != value)
                    {    _advantage_prereq = value;    OnPropertyChanged("advantage_prereq");   }
                }
            } 
        private skill_prereq _skill_prereq;
            public virtual skill_prereq skill_prereq
            {
                get { return _skill_prereq; }
                set
                { if(_skill_prereq != value)
                    {    _skill_prereq = value;    OnPropertyChanged("skill_prereq");   }
                }
            } 
        private weapon_bonus _weapon_bonus;
            public virtual weapon_bonus weapon_bonus
            {
                get { return _weapon_bonus; }
                set
                { if(_weapon_bonus != value)
                    {    _weapon_bonus = value;    OnPropertyChanged("weapon_bonus");   }
                }
            } 
    }
}
