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
    
    public partial class technique : System.ComponentModel.INotifyPropertyChanged
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
        public technique()
        {
            this.categories1 = new HashSet<categories1>();
            this.default1 = new HashSet<default1>();
            this.prereq_list1 = new HashSet<prereq_list1>();
        }
    
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
        private string _version;
    	public string version 
    	{ 
    		get
    		{
    			return _version;
    		} 
    		set
    		{
    			if (_version != value)
    			{
    				_version = value;
    				OnPropertyChanged("version");
    			}
    		}
    	}
        private string _limit;
    	public string limit 
    	{ 
    		get
    		{
    			return _limit;
    		} 
    		set
    		{
    			if (_limit != value)
    			{
    				_limit = value;
    				OnPropertyChanged("limit");
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
        private string _difficulty;
    	public string difficulty 
    	{ 
    		get
    		{
    			return _difficulty;
    		} 
    		set
    		{
    			if (_difficulty != value)
    			{
    				_difficulty = value;
    				OnPropertyChanged("difficulty");
    			}
    		}
    	}
        private string _points;
    	public string points 
    	{ 
    		get
    		{
    			return _points;
    		} 
    		set
    		{
    			if (_points != value)
    			{
    				_points = value;
    				OnPropertyChanged("points");
    			}
    		}
    	}
        private string _reference;
    	public string reference 
    	{ 
    		get
    		{
    			return _reference;
    		} 
    		set
    		{
    			if (_reference != value)
    			{
    				_reference = value;
    				OnPropertyChanged("reference");
    			}
    		}
    	}
        private string _FK_skill_list;
    	public string FK_skill_list 
    	{ 
    		get
    		{
    			return _FK_skill_list;
    		} 
    		set
    		{
    			if (_FK_skill_list != value)
    			{
    				_FK_skill_list = value;
    				OnPropertyChanged("FK_skill_list");
    			}
    		}
    	}
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        private ICollection<categories1> _categories1;
            public virtual ICollection<categories1> categories1
            {
                get { return _categories1; }
                set
                { if(_categories1 != value)
                    {    _categories1 = value;    OnPropertyChanged("categories1");   }
                }
            } 
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        private ICollection<default1> _default1;
            public virtual ICollection<default1> default1
            {
                get { return _default1; }
                set
                { if(_default1 != value)
                    {    _default1 = value;    OnPropertyChanged("default1");   }
                }
            } 
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        private ICollection<prereq_list1> _prereq_list1;
            public virtual ICollection<prereq_list1> prereq_list1
            {
                get { return _prereq_list1; }
                set
                { if(_prereq_list1 != value)
                    {    _prereq_list1 = value;    OnPropertyChanged("prereq_list1");   }
                }
            } 
        private skill_list _skill_list;
            public virtual skill_list skill_list
            {
                get { return _skill_list; }
                set
                { if(_skill_list != value)
                    {    _skill_list = value;    OnPropertyChanged("skill_list");   }
                }
            } 
    }
}
