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
    
    public partial class nasAttachmentClass
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public nasAttachmentClass()
        {
            this.ATTACHMENTSLOTs = new HashSet<ATTACHMENTSLOT>();
        }
    
        public int id { get; set; }
        public string name { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ATTACHMENTSLOT> ATTACHMENTSLOTs { get; set; }
    }
}