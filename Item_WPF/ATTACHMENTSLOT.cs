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
    
    public partial class ATTACHMENTSLOT
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ATTACHMENTSLOT()
        {
            this.Attachmentmounts = new HashSet<Attachmentmount>();
            this.AvailableAttachSlots = new HashSet<AvailableAttachSlot>();
            this.G_SubAttachClass = new HashSet<G_SubAttachClass>();
        }
    
        public int uiSlotIndex { get; set; }
        public string szSlotName { get; set; }
        public int nasLayoutClass { get; set; }
        public int nasAttachmentClass { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Attachmentmount> Attachmentmounts { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AvailableAttachSlot> AvailableAttachSlots { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<G_SubAttachClass> G_SubAttachClass { get; set; }
        public virtual nasAttachmentClass nasAttachmentClass1 { get; set; }
        public virtual nasLayoutClass nasLayoutClass1 { get; set; }
    }
}
