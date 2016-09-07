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
            nameSkill = itemDefault.nameDefaultXml.Value.ToString();
            specialization = itemDefault.specializationDefaultXml.Value.ToString();
            type = itemDefault.typeDefaultXml.Value.ToString();
            modifier = itemDefault.modifierDefaultXml.Value.ToString();
        }
    }
}
