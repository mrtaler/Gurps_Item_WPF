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
    
    public partial class G_SubAttachClass : System.ComponentModel.INotifyPropertyChanged
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
        public G_SubAttachClass()
        {
            this.Attachments = new HashSet<Attachment>();
            this.G_AvAttachClass = new HashSet<G_AvAttachClass>();
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
       if(_id != value)
       {
        _id = value;
        OnPropertyChanged("id");
       }
      }
     }
     
        private string _SubAttach_name;
     public string SubAttach_name 
     { 
      get
      {
       return _SubAttach_name;
      } 
      set
      {
       if(_SubAttach_name != value)
       {
        _SubAttach_name = value;
        OnPropertyChanged("SubAttach_name");
       }
      }
     }
     
        private int _AttachClass;
     public int AttachClass 
     { 
      get
      {
       return _AttachClass;
      } 
      set
      {
       if(_AttachClass != value)
       {
        _AttachClass = value;
        OnPropertyChanged("AttachClass");
       }
      }
     }
     
        private string _SubAttachDescription;
     public string SubAttachDescription 
     { 
      get
      {
       return _SubAttachDescription;
      } 
      set
      {
       if(_SubAttachDescription != value)
       {
        _SubAttachDescription = value;
        OnPropertyChanged("SubAttachDescription");
       }
      }
     }
     
        private int _ATTACHMENTSLOT1;
     public int ATTACHMENTSLOT1 
     { 
      get
      {
       return _ATTACHMENTSLOT1;
      } 
      set
      {
       if(_ATTACHMENTSLOT1 != value)
       {
        _ATTACHMENTSLOT1 = value;
        OnPropertyChanged("ATTACHMENTSLOT1");
       }
      }
     }
     
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        private ICollection<Attachment> _Attachments;
    			public virtual ICollection<Attachment> Attachments
    					{
    					get
    						{ return _Attachments; } 
    					set
    					{ if(_Attachments != value)
    					   {    _Attachments = value;    OnPropertyChanged("Attachments");   }
    						}
    					 } 
        private ATTACHMENTSLOT _ATTACHMENTSLOT;
    			public virtual ATTACHMENTSLOT ATTACHMENTSLOT
    					{
    					get
    						{ return _ATTACHMENTSLOT; } 
    					set
    					{ if(_ATTACHMENTSLOT != value)
    					   {    _ATTACHMENTSLOT = value;    OnPropertyChanged("ATTACHMENTSLOT");   }
    						}
    					 } 
        private G_AttachClass _G_AttachClass;
    			public virtual G_AttachClass G_AttachClass
    					{
    					get
    						{ return _G_AttachClass; } 
    					set
    					{ if(_G_AttachClass != value)
    					   {    _G_AttachClass = value;    OnPropertyChanged("G_AttachClass");   }
    						}
    					 } 
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        private ICollection<G_AvAttachClass> _G_AvAttachClass;
    			public virtual ICollection<G_AvAttachClass> G_AvAttachClass
    					{
    					get
    						{ return _G_AvAttachClass; } 
    					set
    					{ if(_G_AvAttachClass != value)
    					   {    _G_AvAttachClass = value;    OnPropertyChanged("G_AvAttachClass");   }
    						}
    					 } 
    }
}
