using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Item_WPF.ItemEntityModel
{

    public partial class CharSkill
    {
        public int LevelSkills
        {
            get
            {
                return 1;
            }
        }

        public DefaultSkillToCalc DefaultSkill
        {
            get
            {
                var qery = GurpsSkill.DefaultSkills;
                if (GurpsSkill.DefaultSkills == null)
                {
                    return new DefaultSkillToCalc();
                }
                else
                {
                    string type = GurpsSkill.DefaultSkills.FirstOrDefault(p => p.type.ToLower() != "skill")?.type;
                    string mod =
                        GurpsSkill.DefaultSkills.FirstOrDefault(p => p.type.ToLower() != "skill")?.Modifier.ToString();


                    return new DefaultSkillToCalc(type,mod);
                }
            }
        }

        public CharSkill() { }
        public CharSkill(CharacterDB characterDb, GurpsSkill gurpsSkill)
        {
            CharacterDB = characterDb;
            GurpsSkill = gurpsSkill;
            PointOfSkill = 1;
        }
        public void AddSkilPoint()
        {
            //  GurpsSkill.Difficulty;

        }
       public  class DefaultSkillToCalc
        {

            public string type;
            public string modif;
            public DefaultSkillToCalc()
            {
                type = string.Empty;
                modif = string.Empty;
            }

            public DefaultSkillToCalc(string type, string modif)
            {
                this.type=type;
                this.modif=modif;
            }
        }
    }
}
