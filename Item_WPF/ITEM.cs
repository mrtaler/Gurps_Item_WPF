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
    
    public partial class ITEM : System.ComponentModel.INotifyPropertyChanged
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
     
        private int _uiIndex;
     public int uiIndex 
     { 
      get
      {
       return _uiIndex;
      } 
      set
      {
       if(_uiIndex != value)
       {
        _uiIndex = value;
        OnPropertyChanged("uiIndex");
       }
      }
     }
     
        private string _szItemName;
     public string szItemName 
     { 
      get
      {
       return _szItemName;
      } 
      set
      {
       if(_szItemName != value)
       {
        _szItemName = value;
        OnPropertyChanged("szItemName");
       }
      }
     }
     
        private string _szLongItemName;
     public string szLongItemName 
     { 
      get
      {
       return _szLongItemName;
      } 
      set
      {
       if(_szLongItemName != value)
       {
        _szLongItemName = value;
        OnPropertyChanged("szLongItemName");
       }
      }
     }
     
        private string _szItemDesc;
     public string szItemDesc 
     { 
      get
      {
       return _szItemDesc;
      } 
      set
      {
       if(_szItemDesc != value)
       {
        _szItemDesc = value;
        OnPropertyChanged("szItemDesc");
       }
      }
     }
     
        private int _usItemClass;
     public int usItemClass 
     { 
      get
      {
       return _usItemClass;
      } 
      set
      {
       if(_usItemClass != value)
       {
        _usItemClass = value;
        OnPropertyChanged("usItemClass");
       }
      }
     }
     
        private int _ubClassIndex;
     public int ubClassIndex 
     { 
      get
      {
       return _ubClassIndex;
      } 
      set
      {
       if(_ubClassIndex != value)
       {
        _ubClassIndex = value;
        OnPropertyChanged("ubClassIndex");
       }
      }
     }
     
        private decimal _ubWeight;
     public decimal ubWeight 
     { 
      get
      {
       return _ubWeight;
      } 
      set
      {
       if(_ubWeight != value)
       {
        _ubWeight = value;
        OnPropertyChanged("ubWeight");
       }
      }
     }
     
        private string _ItemSize;
     public string ItemSize 
     { 
      get
      {
       return _ItemSize;
      } 
      set
      {
       if(_ItemSize != value)
       {
        _ItemSize = value;
        OnPropertyChanged("ItemSize");
       }
      }
     }
     
        private decimal _usPrice;
     public decimal usPrice 
     { 
      get
      {
       return _usPrice;
      } 
      set
      {
       if(_usPrice != value)
       {
        _usPrice = value;
        OnPropertyChanged("usPrice");
       }
      }
     }
     
        private bool _Damageable;
     public bool Damageable 
     { 
      get
      {
       return _Damageable;
      } 
      set
      {
       if(_Damageable != value)
       {
        _Damageable = value;
        OnPropertyChanged("Damageable");
       }
      }
     }
     
        private bool _Repairable;
     public bool Repairable 
     { 
      get
      {
       return _Repairable;
      } 
      set
      {
       if(_Repairable != value)
       {
        _Repairable = value;
        OnPropertyChanged("Repairable");
       }
      }
     }
     
        private bool _WaterDamages;
     public bool WaterDamages 
     { 
      get
      {
       return _WaterDamages;
      } 
      set
      {
       if(_WaterDamages != value)
       {
        _WaterDamages = value;
        OnPropertyChanged("WaterDamages");
       }
      }
     }
     
        private bool _Metal;
     public bool Metal 
     { 
      get
      {
       return _Metal;
      } 
      set
      {
       if(_Metal != value)
       {
        _Metal = value;
        OnPropertyChanged("Metal");
       }
      }
     }
     
        private bool _TwoHanded;
     public bool TwoHanded 
     { 
      get
      {
       return _TwoHanded;
      } 
      set
      {
       if(_TwoHanded != value)
       {
        _TwoHanded = value;
        OnPropertyChanged("TwoHanded");
       }
      }
     }
     
        private int _TL;
     public int TL 
     { 
      get
      {
       return _TL;
      } 
      set
      {
       if(_TL != value)
       {
        _TL = value;
        OnPropertyChanged("TL");
       }
      }
     }
     
        private int _LC;
     public int LC 
     { 
      get
      {
       return _LC;
      } 
      set
      {
       if(_LC != value)
       {
        _LC = value;
        OnPropertyChanged("LC");
       }
      }
     }
     
        private bool _Electronic;
     public bool Electronic 
     { 
      get
      {
       return _Electronic;
      } 
      set
      {
       if(_Electronic != value)
       {
        _Electronic = value;
        OnPropertyChanged("Electronic");
       }
      }
     }
     
        private bool _HT;
     public bool HT 
     { 
      get
      {
       return _HT;
      } 
      set
      {
       if(_HT != value)
       {
        _HT = value;
        OnPropertyChanged("HT");
       }
      }
     }
     
        private bool _UT;
     public bool UT 
     { 
      get
      {
       return _UT;
      } 
      set
      {
       if(_UT != value)
       {
        _UT = value;
        OnPropertyChanged("UT");
       }
      }
     }
     
        private bool _RemoteTrigger;
     public bool RemoteTrigger 
     { 
      get
      {
       return _RemoteTrigger;
      } 
      set
      {
       if(_RemoteTrigger != value)
       {
        _RemoteTrigger = value;
        OnPropertyChanged("RemoteTrigger");
       }
      }
     }
     
        private bool _GasMask;
     public bool GasMask 
     { 
      get
      {
       return _GasMask;
      } 
      set
      {
       if(_GasMask != value)
       {
        _GasMask = value;
        OnPropertyChanged("GasMask");
       }
      }
     }
     
        private bool _Alcohol;
     public bool Alcohol 
     { 
      get
      {
       return _Alcohol;
      } 
      set
      {
       if(_Alcohol != value)
       {
        _Alcohol = value;
        OnPropertyChanged("Alcohol");
       }
      }
     }
     
        private bool _Hardware;
     public bool Hardware 
     { 
      get
      {
       return _Hardware;
      } 
      set
      {
       if(_Hardware != value)
       {
        _Hardware = value;
        OnPropertyChanged("Hardware");
       }
      }
     }
     
        private bool _Medical;
     public bool Medical 
     { 
      get
      {
       return _Medical;
      } 
      set
      {
       if(_Medical != value)
       {
        _Medical = value;
        OnPropertyChanged("Medical");
       }
      }
     }
     
        private bool _CamouflageKit;
     public bool CamouflageKit 
     { 
      get
      {
       return _CamouflageKit;
      } 
      set
      {
       if(_CamouflageKit != value)
       {
        _CamouflageKit = value;
        OnPropertyChanged("CamouflageKit");
       }
      }
     }
     
        private bool _LocksmithKit;
     public bool LocksmithKit 
     { 
      get
      {
       return _LocksmithKit;
      } 
      set
      {
       if(_LocksmithKit != value)
       {
        _LocksmithKit = value;
        OnPropertyChanged("LocksmithKit");
       }
      }
     }
     
        private bool _Toolkit;
     public bool Toolkit 
     { 
      get
      {
       return _Toolkit;
      } 
      set
      {
       if(_Toolkit != value)
       {
        _Toolkit = value;
        OnPropertyChanged("Toolkit");
       }
      }
     }
     
        private bool _FirstAidKit;
     public bool FirstAidKit 
     { 
      get
      {
       return _FirstAidKit;
      } 
      set
      {
       if(_FirstAidKit != value)
       {
        _FirstAidKit = value;
        OnPropertyChanged("FirstAidKit");
       }
      }
     }
     
        private bool _MedicalKit;
     public bool MedicalKit 
     { 
      get
      {
       return _MedicalKit;
      } 
      set
      {
       if(_MedicalKit != value)
       {
        _MedicalKit = value;
        OnPropertyChanged("MedicalKit");
       }
      }
     }
     
        private bool _WireCutters;
     public bool WireCutters 
     { 
      get
      {
       return _WireCutters;
      } 
      set
      {
       if(_WireCutters != value)
       {
        _WireCutters = value;
        OnPropertyChanged("WireCutters");
       }
      }
     }
     
        private bool _Canteen;
     public bool Canteen 
     { 
      get
      {
       return _Canteen;
      } 
      set
      {
       if(_Canteen != value)
       {
        _Canteen = value;
        OnPropertyChanged("Canteen");
       }
      }
     }
     
        private bool _GasCan;
     public bool GasCan 
     { 
      get
      {
       return _GasCan;
      } 
      set
      {
       if(_GasCan != value)
       {
        _GasCan = value;
        OnPropertyChanged("GasCan");
       }
      }
     }
     
        private bool _Batteries;
     public bool Batteries 
     { 
      get
      {
       return _Batteries;
      } 
      set
      {
       if(_Batteries != value)
       {
        _Batteries = value;
        OnPropertyChanged("Batteries");
       }
      }
     }
     
        private string _SizeBatteries;
     public string SizeBatteries 
     { 
      get
      {
       return _SizeBatteries;
      } 
      set
      {
       if(_SizeBatteries != value)
       {
        _SizeBatteries = value;
        OnPropertyChanged("SizeBatteries");
       }
      }
     }
     
        private bool _NeedsBatteries;
     public bool NeedsBatteries 
     { 
      get
      {
       return _NeedsBatteries;
      } 
      set
      {
       if(_NeedsBatteries != value)
       {
        _NeedsBatteries = value;
        OnPropertyChanged("NeedsBatteries");
       }
      }
     }
     
        private bool _ContainsLiquid;
     public bool ContainsLiquid 
     { 
      get
      {
       return _ContainsLiquid;
      } 
      set
      {
       if(_ContainsLiquid != value)
       {
        _ContainsLiquid = value;
        OnPropertyChanged("ContainsLiquid");
       }
      }
     }
     
        private bool _MetalDetector;
     public bool MetalDetector 
     { 
      get
      {
       return _MetalDetector;
      } 
      set
      {
       if(_MetalDetector != value)
       {
        _MetalDetector = value;
        OnPropertyChanged("MetalDetector");
       }
      }
     }
     
        private bool _FingerPrintID;
     public bool FingerPrintID 
     { 
      get
      {
       return _FingerPrintID;
      } 
      set
      {
       if(_FingerPrintID != value)
       {
        _FingerPrintID = value;
        OnPropertyChanged("FingerPrintID");
       }
      }
     }
     
        private bool _TripWireActivation;
     public bool TripWireActivation 
     { 
      get
      {
       return _TripWireActivation;
      } 
      set
      {
       if(_TripWireActivation != value)
       {
        _TripWireActivation = value;
        OnPropertyChanged("TripWireActivation");
       }
      }
     }
     
        private bool _TripWire;
     public bool TripWire 
     { 
      get
      {
       return _TripWire;
      } 
      set
      {
       if(_TripWire != value)
       {
        _TripWire = value;
        OnPropertyChanged("TripWire");
       }
      }
     }
     
        private Nullable<bool> _perehodnik;
     public Nullable<bool> perehodnik 
     { 
      get
      {
       return _perehodnik;
      } 
      set
      {
       if(_perehodnik != value)
       {
        _perehodnik = value;
        OnPropertyChanged("perehodnik");
       }
      }
     }
     
        private int _FoodType;
     public int FoodType 
     { 
      get
      {
       return _FoodType;
      } 
      set
      {
       if(_FoodType != value)
       {
        _FoodType = value;
        OnPropertyChanged("FoodType");
       }
      }
     }
     
        private int _LockPickModifier;
     public int LockPickModifier 
     { 
      get
      {
       return _LockPickModifier;
      } 
      set
      {
       if(_LockPickModifier != value)
       {
        _LockPickModifier = value;
        OnPropertyChanged("LockPickModifier");
       }
      }
     }
     
        private int _CrowbarModifier;
     public int CrowbarModifier 
     { 
      get
      {
       return _CrowbarModifier;
      } 
      set
      {
       if(_CrowbarModifier != value)
       {
        _CrowbarModifier = value;
        OnPropertyChanged("CrowbarModifier");
       }
      }
     }
     
        private int _DisarmModifier;
     public int DisarmModifier 
     { 
      get
      {
       return _DisarmModifier;
      } 
      set
      {
       if(_DisarmModifier != value)
       {
        _DisarmModifier = value;
        OnPropertyChanged("DisarmModifier");
       }
      }
     }
     
        private int _RepairModifier;
     public int RepairModifier 
     { 
      get
      {
       return _RepairModifier;
      } 
      set
      {
       if(_RepairModifier != value)
       {
        _RepairModifier = value;
        OnPropertyChanged("RepairModifier");
       }
      }
     }
     
        private int _DamageChance;
     public int DamageChance 
     { 
      get
      {
       return _DamageChance;
      } 
      set
      {
       if(_DamageChance != value)
       {
        _DamageChance = value;
        OnPropertyChanged("DamageChance");
       }
      }
     }
     
        private int _clothestype;
     public int clothestype 
     { 
      get
      {
       return _clothestype;
      } 
      set
      {
       if(_clothestype != value)
       {
        _clothestype = value;
        OnPropertyChanged("clothestype");
       }
      }
     }
     
        private int _DrugType;
     public int DrugType 
     { 
      get
      {
       return _DrugType;
      } 
      set
      {
       if(_DrugType != value)
       {
        _DrugType = value;
        OnPropertyChanged("DrugType");
       }
      }
     }
     
        private byte[] _Item_Image;
     public byte[] Item_Image 
     { 
      get
      {
       return _Item_Image;
      } 
      set
      {
       if(_Item_Image != value)
       {
        _Item_Image = value;
        OnPropertyChanged("Item_Image");
       }
      }
     }
     
        private int _minST;
     public int minST 
     { 
      get
      {
       return _minST;
      } 
      set
      {
       if(_minST != value)
       {
        _minST = value;
        OnPropertyChanged("minST");
       }
      }
     }
     
        private string _Link;
     public string Link 
     { 
      get
      {
       return _Link;
      } 
      set
      {
       if(_Link != value)
       {
        _Link = value;
        OnPropertyChanged("Link");
       }
      }
     }
     
        private bool _used;
     public bool used 
     { 
      get
      {
       return _used;
      } 
      set
      {
       if(_used != value)
       {
        _used = value;
        OnPropertyChanged("used");
       }
      }
     }
     
        private Nullable<System.DateTime> _dt;
     public Nullable<System.DateTime> dt 
     { 
      get
      {
       return _dt;
      } 
      set
      {
       if(_dt != value)
       {
        _dt = value;
        OnPropertyChanged("dt");
       }
      }
     }
     
        private int _Count_of_Bat;
     public int Count_of_Bat 
     { 
      get
      {
       return _Count_of_Bat;
      } 
      set
      {
       if(_Count_of_Bat != value)
       {
        _Count_of_Bat = value;
        OnPropertyChanged("Count_of_Bat");
       }
      }
     }
     
        private string _Works_on_Bat;
     public string Works_on_Bat 
     { 
      get
      {
       return _Works_on_Bat;
      } 
      set
      {
       if(_Works_on_Bat != value)
       {
        _Works_on_Bat = value;
        OnPropertyChanged("Works_on_Bat");
       }
      }
     }
     
    
        private Cloth _Cloth;
    			public virtual Cloth Cloth
    					{
    					get
    						{ return _Cloth; } 
    					set
    					{ if(_Cloth != value)
    					   {    _Cloth = value;    OnPropertyChanged("Cloth");   }
    						}
    					 } 
        private DrugType _DrugType1;
    			public virtual DrugType DrugType1
    					{
    					get
    						{ return _DrugType1; } 
    					set
    					{ if(_DrugType1 != value)
    					   {    _DrugType1 = value;    OnPropertyChanged("DrugType1");   }
    						}
    					 } 
        private FOOD _FOOD;
    			public virtual FOOD FOOD
    					{
    					get
    						{ return _FOOD; } 
    					set
    					{ if(_FOOD != value)
    					   {    _FOOD = value;    OnPropertyChanged("FOOD");   }
    						}
    					 } 
        private ItemClass _ItemClass;
    			public virtual ItemClass ItemClass
    					{
    					get
    						{ return _ItemClass; } 
    					set
    					{ if(_ItemClass != value)
    					   {    _ItemClass = value;    OnPropertyChanged("ItemClass");   }
    						}
    					 } 
        private LC _LC1;
    			public virtual LC LC1
    					{
    					get
    						{ return _LC1; } 
    					set
    					{ if(_LC1 != value)
    					   {    _LC1 = value;    OnPropertyChanged("LC1");   }
    						}
    					 } 
        private TL _TL1;
    			public virtual TL TL1
    					{
    					get
    						{ return _TL1; } 
    					set
    					{ if(_TL1 != value)
    					   {    _TL1 = value;    OnPropertyChanged("TL1");   }
    						}
    					 } 
    }
}
