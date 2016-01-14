﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class item1Entities : DbContext
    {
        public item1Entities()
            : base("name=item1Entities")
        {
    
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<AMMO> AMMOes { get; set; }
        public virtual DbSet<AMMOUPGRATE> AMMOUPGRATES { get; set; }
        public virtual DbSet<ARMOUR> ARMOURs { get; set; }
        public virtual DbSet<ArmourClass> ArmourClasses { get; set; }
        public virtual DbSet<Attachment> Attachments { get; set; }
        public virtual DbSet<AttachmentClass> AttachmentClasses { get; set; }
        public virtual DbSet<Attachmentmount> Attachmentmounts { get; set; }
        public virtual DbSet<ATTACHMENTSLOT> ATTACHMENTSLOTs { get; set; }
        public virtual DbSet<AttachmentSystem> AttachmentSystems { get; set; }
        public virtual DbSet<AvailableAttachSlot> AvailableAttachSlots { get; set; }
        public virtual DbSet<Battery> Batteries { get; set; }
        public virtual DbSet<Cloth> Clothes { get; set; }
        public virtual DbSet<Drug> Drugs { get; set; }
        public virtual DbSet<DrugType> DrugTypes { get; set; }
        public virtual DbSet<ExplosionType> ExplosionTypes { get; set; }
        public virtual DbSet<EXPLOSIVE> EXPLOSIVEs { get; set; }
        public virtual DbSet<FOOD> FOODs { get; set; }
        public virtual DbSet<G_AttachClass> G_AttachClass { get; set; }
        public virtual DbSet<G_AvAttachClass> G_AvAttachClass { get; set; }
        public virtual DbSet<G_SubAttachClass> G_SubAttachClass { get; set; }
        public virtual DbSet<ITEM> ITEMs { get; set; }
        public virtual DbSet<ItemClass> ItemClasses { get; set; }
        public virtual DbSet<LBEClass> LBEClasses { get; set; }
        public virtual DbSet<LC> LCs { get; set; }
        public virtual DbSet<LOADBEARINGEQUIPMENT> LOADBEARINGEQUIPMENTs { get; set; }
        public virtual DbSet<nasAttachmentClass> nasAttachmentClasses { get; set; }
        public virtual DbSet<nasLayoutClass> nasLayoutClasses { get; set; }
        public virtual DbSet<TL> TLs { get; set; }
        public virtual DbSet<TypeOfDamage> TypeOfDamages { get; set; }
        public virtual DbSet<CombineWeap> CombineWeaps { get; set; }
        public virtual DbSet<WEAPON> WEAPONs { get; set; }
        public virtual DbSet<WeaponClass> WeaponClasses { get; set; }
        public virtual DbSet<WeaponType> WeaponTypes { get; set; }
    
        public virtual int NEW_ITEM(string name, string class_ofItem, ObjectParameter returns)
        {
            var nameParameter = name != null ?
                new ObjectParameter("name", name) :
                new ObjectParameter("name", typeof(string));
    
            var class_ofItemParameter = class_ofItem != null ?
                new ObjectParameter("class_ofItem", class_ofItem) :
                new ObjectParameter("class_ofItem", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("NEW_ITEM", nameParameter, class_ofItemParameter, returns);
        }
    
        public virtual int NEW_ITEM_att(string name, Nullable<int> g_att_class, Nullable<int> g_sub_att, Nullable<int> id_att_mount)
        {
            var nameParameter = name != null ?
                new ObjectParameter("name", name) :
                new ObjectParameter("name", typeof(string));
    
            var g_att_classParameter = g_att_class.HasValue ?
                new ObjectParameter("G_att_class", g_att_class) :
                new ObjectParameter("G_att_class", typeof(int));
    
            var g_sub_attParameter = g_sub_att.HasValue ?
                new ObjectParameter("G_sub_att", g_sub_att) :
                new ObjectParameter("G_sub_att", typeof(int));
    
            var id_att_mountParameter = id_att_mount.HasValue ?
                new ObjectParameter("id_att_mount", id_att_mount) :
                new ObjectParameter("id_att_mount", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("NEW_ITEM_att", nameParameter, g_att_classParameter, g_sub_attParameter, id_att_mountParameter);
        }
    }
}
