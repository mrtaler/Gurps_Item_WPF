using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Item_WPF.MVVM.Serialize.Model;

namespace Item_WPF.ItemEntityModel
{
    public partial class DefSkillSome
    {
        public DefSkillSome() { }
        public DefSkillSome(DefaultXML itemDefault)
        {
            nameSkill = itemDefault.nameDefaultXml != null
                           ? itemDefault.nameDefaultXml.Value.ToString() : null;
            specialization = itemDefault.specializationDefaultXml != null
                           ? itemDefault.specializationDefaultXml.Value.ToString() : null;
            type = itemDefault.typeDefaultXml != null
                           ? itemDefault.typeDefaultXml.Value.ToString() : null;
            modifier = itemDefault.modifierDefaultXml != null
                           ? itemDefault.modifierDefaultXml.Value.ToString() : null;
        }
    }
}
