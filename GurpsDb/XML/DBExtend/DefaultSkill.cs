using System;
using System.Linq;
using System.Collections.ObjectModel;

namespace Item_WPF.ItemEntityModel
{
    public partial class DefaultSkill
    {
        public DefaultSkill() { }
        public DefaultSkill(DefaultXML itemDefault, ObservableCollection<GurpsSkill> collectionCategiry)
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
                    referenseSkillFind = collectionCategiry
                           .Where(p => p.NameSkill == name)
                           .FirstOrDefault(x => x.Specialization == spec);
                }
                else
                {
                    referenseSkillFind = collectionCategiry
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