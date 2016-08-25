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
    
    public partial class GurpsSkill : System.ComponentModel.INotifyPropertyChanged
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
        public GurpsSkill()
        {
            this.DefaultSkills = new HashSet<DefaultSkill>();
            this.DefaultSkills1 = new HashSet<DefaultSkill>();
            this.GurpsSkill1 = new HashSet<GurpsSkill>();
            this.NeedSkills = new HashSet<NeedSkill>();
            this.prereq_listDB = new HashSet<prereq_listDB>();
            this.GurpsSkillCategories = new HashSet<GurpsSkillCategory>();
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
        private string _NameSkill;
    	public string NameSkill 
    	{ 
    		get
    		{
    			return _NameSkill;
    		} 
    		set
    		{
    			if (_NameSkill != value)
    			{
    				_NameSkill = value;
    				OnPropertyChanged("NameSkill");
    			}
    		}
    	}
        private string _Specialization;
    	public string Specialization 
    	{ 
    		get
    		{
    			return _Specialization;
    		} 
    		set
    		{
    			if (_Specialization != value)
    			{
    				_Specialization = value;
    				OnPropertyChanged("Specialization");
    			}
    		}
    	}
        private string _Difficulty;
    	public string Difficulty 
    	{ 
    		get
    		{
    			return _Difficulty;
    		} 
    		set
    		{
    			if (_Difficulty != value)
    			{
    				_Difficulty = value;
    				OnPropertyChanged("Difficulty");
    			}
    		}
    	}
        private Nullable<int> _Points;
    	public Nullable<int> Points 
    	{ 
    		get
    		{
    			return _Points;
    		} 
    		set
    		{
    			if (_Points != value)
    			{
    				_Points = value;
    				OnPropertyChanged("Points");
    			}
    		}
    	}
        private string _Reference;
    	public string Reference 
    	{ 
    		get
    		{
    			return _Reference;
    		} 
    		set
    		{
    			if (_Reference != value)
    			{
    				_Reference = value;
    				OnPropertyChanged("Reference");
    			}
    		}
    	}
        private Nullable<bool> _TypeSpecialization;
    	public Nullable<bool> TypeSpecialization 
    	{ 
    		get
    		{
    			return _TypeSpecialization;
    		} 
    		set
    		{
    			if (_TypeSpecialization != value)
    			{
    				_TypeSpecialization = value;
    				OnPropertyChanged("TypeSpecialization");
    			}
    		}
    	}
        private Nullable<int> _DefaultModifier;
    	public Nullable<int> DefaultModifier 
    	{ 
    		get
    		{
    			return _DefaultModifier;
    		} 
    		set
    		{
    			if (_DefaultModifier != value)
    			{
    				_DefaultModifier = value;
    				OnPropertyChanged("DefaultModifier");
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
        private string _encumbrance_penalty_multiplier;
    	public string encumbrance_penalty_multiplier 
    	{ 
    		get
    		{
    			return _encumbrance_penalty_multiplier;
    		} 
    		set
    		{
    			if (_encumbrance_penalty_multiplier != value)
    			{
    				_encumbrance_penalty_multiplier = value;
    				OnPropertyChanged("encumbrance_penalty_multiplier");
    			}
    		}
    	}
        private string _notes;
    	public string notes 
    	{ 
    		get
    		{
    			return _notes;
    		} 
    		set
    		{
    			if (_notes != value)
    			{
    				_notes = value;
    				OnPropertyChanged("notes");
    			}
    		}
    	}
        private Nullable<int> _idDifficulty;
    	public Nullable<int> idDifficulty 
    	{ 
    		get
    		{
    			return _idDifficulty;
    		} 
    		set
    		{
    			if (_idDifficulty != value)
    			{
    				_idDifficulty = value;
    				OnPropertyChanged("idDifficulty");
    			}
    		}
    	}
        private Nullable<int> _idSpecialization;
    	public Nullable<int> idSpecialization 
    	{ 
    		get
    		{
    			return _idSpecialization;
    		} 
    		set
    		{
    			if (_idSpecialization != value)
    			{
    				_idSpecialization = value;
    				OnPropertyChanged("idSpecialization");
    			}
    		}
    	}
        private Nullable<int> _idtech_level;
    	public Nullable<int> idtech_level 
    	{ 
    		get
    		{
    			return _idtech_level;
    		} 
    		set
    		{
    			if (_idtech_level != value)
    			{
    				_idtech_level = value;
    				OnPropertyChanged("idtech_level");
    			}
    		}
    	}
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        private ICollection<DefaultSkill> _DefaultSkills;
            public virtual ICollection<DefaultSkill> DefaultSkills
            {
                get { return _DefaultSkills; }
                set
                { if(_DefaultSkills != value)
                    {    _DefaultSkills = value;    OnPropertyChanged("DefaultSkills");   }
                }
            } 
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        private ICollection<DefaultSkill> _DefaultSkills1;
            public virtual ICollection<DefaultSkill> DefaultSkills1
            {
                get { return _DefaultSkills1; }
                set
                { if(_DefaultSkills1 != value)
                    {    _DefaultSkills1 = value;    OnPropertyChanged("DefaultSkills1");   }
                }
            } 
        private DifficultySkill _DifficultySkill;
            public virtual DifficultySkill DifficultySkill
            {
                get { return _DifficultySkill; }
                set
                { if(_DifficultySkill != value)
                    {    _DifficultySkill = value;    OnPropertyChanged("DifficultySkill");   }
                }
            } 
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        private ICollection<GurpsSkill> _GurpsSkill1;
            public virtual ICollection<GurpsSkill> GurpsSkill1
            {
                get { return _GurpsSkill1; }
                set
                { if(_GurpsSkill1 != value)
                    {    _GurpsSkill1 = value;    OnPropertyChanged("GurpsSkill1");   }
                }
            } 
        private GurpsSkill _GurpsSkill2;
            public virtual GurpsSkill GurpsSkill2
            {
                get { return _GurpsSkill2; }
                set
                { if(_GurpsSkill2 != value)
                    {    _GurpsSkill2 = value;    OnPropertyChanged("GurpsSkill2");   }
                }
            } 
        private TL _TL;
            public virtual TL TL
            {
                get { return _TL; }
                set
                { if(_TL != value)
                    {    _TL = value;    OnPropertyChanged("TL");   }
                }
            } 
        private NeedSkill _NeedSkill;
            public virtual NeedSkill NeedSkill
            {
                get { return _NeedSkill; }
                set
                { if(_NeedSkill != value)
                    {    _NeedSkill = value;    OnPropertyChanged("NeedSkill");   }
                }
            } 
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        private ICollection<NeedSkill> _NeedSkills;
            public virtual ICollection<NeedSkill> NeedSkills
            {
                get { return _NeedSkills; }
                set
                { if(_NeedSkills != value)
                    {    _NeedSkills = value;    OnPropertyChanged("NeedSkills");   }
                }
            } 
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        private ICollection<prereq_listDB> _prereq_listDB;
            public virtual ICollection<prereq_listDB> prereq_listDB
            {
                get { return _prereq_listDB; }
                set
                { if(_prereq_listDB != value)
                    {    _prereq_listDB = value;    OnPropertyChanged("prereq_listDB");   }
                }
            } 
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        private ICollection<GurpsSkillCategory> _GurpsSkillCategories;
            public virtual ICollection<GurpsSkillCategory> GurpsSkillCategories
            {
                get { return _GurpsSkillCategories; }
                set
                { if(_GurpsSkillCategories != value)
                    {    _GurpsSkillCategories = value;    OnPropertyChanged("GurpsSkillCategories");   }
                }
            } 
    }
}
