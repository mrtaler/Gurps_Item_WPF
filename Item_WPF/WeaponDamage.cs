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
    
    public partial class WeaponDamage : System.ComponentModel.INotifyPropertyChanged
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
       if(_id != value)
       {
        _id = value;
        OnPropertyChanged("id");
       }
      }
     }
     
        private int _idWeapon;
     public int idWeapon 
     { 
      get
      {
       return _idWeapon;
      } 
      set
      {
       if(_idWeapon != value)
       {
        _idWeapon = value;
        OnPropertyChanged("idWeapon");
       }
      }
     }
     
        private int _idWeaponAttackType;
     public int idWeaponAttackType 
     { 
      get
      {
       return _idWeaponAttackType;
      } 
      set
      {
       if(_idWeaponAttackType != value)
       {
        _idWeaponAttackType = value;
        OnPropertyChanged("idWeaponAttackType");
       }
      }
     }
     
        private string _Damage;
     public string Damage 
     { 
      get
      {
       return _Damage;
      } 
      set
      {
       if(_Damage != value)
       {
        _Damage = value;
        OnPropertyChanged("Damage");
       }
      }
     }
     
        private decimal _ArmorDivision;
     public decimal ArmorDivision 
     { 
      get
      {
       return _ArmorDivision;
      } 
      set
      {
       if(_ArmorDivision != value)
       {
        _ArmorDivision = value;
            OnPropertyChanged("ArmorDivision");
       }
      }
     }
     
        private Nullable<int> _idTypeOfDamage1;
     public Nullable<int> idTypeOfDamage1 
     { 
      get
      {
       return _idTypeOfDamage1;
      } 
      set
      {
       if(_idTypeOfDamage1 != value)
       {
        _idTypeOfDamage1 = value;
        OnPropertyChanged("idTypeOfDamage1");
       }
      }
     }
     
        private Nullable<int> _idTypeOfDamage2;
     public Nullable<int> idTypeOfDamage2 
     { 
      get
      {
       return _idTypeOfDamage2;
      } 
      set
      {
       if(_idTypeOfDamage2 != value)
       {
        _idTypeOfDamage2 = value;
        OnPropertyChanged("idTypeOfDamage2");
       }
      }
     }
     
        private string _TypeOfDamage1;
     public string TypeOfDamage1 
     { 
      get
      {
       return _TypeOfDamage1;
      } 
      set
      {
       if(_TypeOfDamage1 != value)
       {
        _TypeOfDamage1 = value;
        OnPropertyChanged("TypeOfDamage1");
       }
      }
     }
     
        private string _TypeOfDamage2;
     public string TypeOfDamage2 
     { 
      get
      {
       return _TypeOfDamage2;
      } 
      set
      {
       if(_TypeOfDamage2 != value)
       {
        _TypeOfDamage2 = value;
        OnPropertyChanged("TypeOfDamage2");
       }
      }
     }
     
        private string _Descrip;
     public string Descrip 
     { 
      get
      {
       return _Descrip;
      } 
      set
      {
       if(_Descrip != value)
       {
        _Descrip = value;
        OnPropertyChanged("Descrip");
       }
      }
     }
     
    
        private TypeOfDamage _TypeOfDamage;
                public virtual TypeOfDamage TypeOfDamage
                        {
                        get
                            { return _TypeOfDamage; } 
                        set
                        { if(_TypeOfDamage != value)
                           {    _TypeOfDamage = value;    OnPropertyChanged("TypeOfDamage");   }
                            }
                         } 
        private TypeOfDamage _TypeOfDamage3;
                public virtual TypeOfDamage TypeOfDamage3
                        {
                        get
                            { return _TypeOfDamage3; } 
                        set
                        { if(_TypeOfDamage3 != value)
                           {    _TypeOfDamage3 = value;    OnPropertyChanged("TypeOfDamage3");   }
                            }
                         } 
        private WEAPON _WEAPON;
                public virtual WEAPON WEAPON
                        {
                        get
                            { return _WEAPON; } 
                        set
                        { if(_WEAPON != value)
                           {    _WEAPON = value;    OnPropertyChanged("WEAPON");   }
                            }
                         } 
        private WeaponAttackType _WeaponAttackType;
                public virtual WeaponAttackType WeaponAttackType
                        {
                        get
                            { return _WeaponAttackType; } 
                        set
                        { if(_WeaponAttackType != value)
                           {    _WeaponAttackType = value;    OnPropertyChanged("WeaponAttackType");   }
                            }
                         } 
    }
}
