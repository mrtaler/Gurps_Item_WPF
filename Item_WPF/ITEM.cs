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
    
    public partial class ITEM
    {
        public int uiIndex { get; set; }
        public string szItemName { get; set; }
        public string szLongItemName { get; set; }
        public string szItemDesc { get; set; }
        public int usItemClass { get; set; }
        public int ubClassIndex { get; set; }
        public decimal ubWeight { get; set; }
        public string ItemSize { get; set; }
        public decimal usPrice { get; set; }
        public bool Damageable { get; set; }
        public bool Repairable { get; set; }
        public bool WaterDamages { get; set; }
        public bool Metal { get; set; }
        public bool TwoHanded { get; set; }
        public int TL { get; set; }
        public int LC { get; set; }
        public bool Electronic { get; set; }
        public bool HT { get; set; }
        public bool UT { get; set; }
        public bool RemoteTrigger { get; set; }
        public bool GasMask { get; set; }
        public bool Alcohol { get; set; }
        public bool Hardware { get; set; }
        public bool Medical { get; set; }
        public bool CamouflageKit { get; set; }
        public bool LocksmithKit { get; set; }
        public bool Toolkit { get; set; }
        public bool FirstAidKit { get; set; }
        public bool MedicalKit { get; set; }
        public bool WireCutters { get; set; }
        public bool Canteen { get; set; }
        public bool GasCan { get; set; }
        public bool Batteries { get; set; }
        public string SizeBatteries { get; set; }
        public bool NeedsBatteries { get; set; }
        public bool ContainsLiquid { get; set; }
        public bool MetalDetector { get; set; }
        public bool FingerPrintID { get; set; }
        public bool TripWireActivation { get; set; }
        public bool TripWire { get; set; }
        public Nullable<bool> perehodnik { get; set; }
        public int FoodType { get; set; }
        public int LockPickModifier { get; set; }
        public int CrowbarModifier { get; set; }
        public int DisarmModifier { get; set; }
        public int RepairModifier { get; set; }
        public int DamageChance { get; set; }
        public int clothestype { get; set; }
        public int DrugType { get; set; }
        public byte[] Item_Image { get; set; }
        public int minST { get; set; }
        public string Link { get; set; }
        public bool used { get; set; }
        public Nullable<System.DateTime> dt { get; set; }
        public int Count_of_Bat { get; set; }
        public string Works_on_Bat { get; set; }
    
        public virtual Cloth Cloth { get; set; }
        public virtual DrugType DrugType1 { get; set; }
        public virtual FOOD FOOD { get; set; }
        public virtual ItemClass ItemClass { get; set; }
        public virtual LC LC1 { get; set; }
        public virtual TL TL1 { get; set; }
    }
}