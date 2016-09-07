using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections.ObjectModel;
using Item_WPF.MVVM.Serialize.Model;

namespace Item_WPF.ItemEntityModel
{
    public partial class DefaultSkill
    {
        public DefaultSkill() { }
        public DefaultSkill(DefaultXML itemDefault, ObservableCollection<GurpsSkill> CollectionCategiry)
        {
            string typex = itemDefault.typeDefaultXml != null ? itemDefault.typeDefaultXml.Value.ToString() : null;
            string modf = itemDefault.modifierDefaultXml != null ? itemDefault.modifierDefaultXml.Value.ToString() : null;

            if (typex.ToLower().Contains("skill"))
            {
                string name = itemDefault.nameDefaultXml != null ? itemDefault.nameDefaultXml.Value.ToString() : null;
                string spec = itemDefault.specializationDefaultXml != null ? itemDefault.specializationDefaultXml.Value.ToString() : null;
                GurpsSkill referenseSkillFind;
                if (spec != null)
                {
                    referenseSkillFind = CollectionCategiry
                           .Where(p => p.NameSkill == name)
                           .FirstOrDefault(x => x.Specialization == spec);
                }
                else
                {
                    referenseSkillFind = CollectionCategiry
                            .FirstOrDefault(p => p.NameSkill == name);
                }
                Modifier = Convert.ToInt32(modf);
                type = typex;
                GurpsSkill1 = referenseSkillFind;
            }
            else
            {
                type = typex;
                Modifier = Convert.ToInt32(modf);
            }
        }
    }
}
