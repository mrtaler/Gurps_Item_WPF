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
    
    public partial class G_AvAttachClass
    {
        public int id_attach { get; set; }
        public int id_GSubClass { get; set; }
        public int id_AttachClass { get; set; }
    
        public virtual Attachment Attachment { get; set; }
        public virtual G_AttachClass G_AttachClass { get; set; }
        public virtual G_SubAttachClass G_SubAttachClass { get; set; }
    }
}