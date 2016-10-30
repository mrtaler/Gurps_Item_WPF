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
                switch (DefaultSkill.PrimaryStat)
                {
                    case "ST":
                        return CharacterDB.Strength + Convert.ToInt32(DefaultSkill.Modif) + PointOfSkill;
                    case "DX":
                        return CharacterDB.Dexterity + Convert.ToInt32(DefaultSkill.Modif) + PointOfSkill;
                    case "IQ":
                        return CharacterDB.Intelligence + Convert.ToInt32(DefaultSkill.Modif) + PointOfSkill;
                    case "HT":
                        return CharacterDB.Health + Convert.ToInt32(DefaultSkill.Modif) + PointOfSkill;
                    default:
                        return 0;
                }
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


                    return new DefaultSkillToCalc(type, mod);
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
        public void DifficultyMultiplex(int atribute)
        {
            switch (atribute)
            {
                case :
                    break;
                case:
                    break;
                case:
                    break;
                case:
                    break;
                case:
                    break;
                case:
                    break;
                case:
                    break;
            }
        }

        public void DifficultySkillLevel(string difficulty)
        {
            switch (difficulty.ToLower())
            {
                case "e":
                    break;
                case "a":
                    break;
                case "h":
                    break;
                case "vh":
                    break;
                case "wc":
                    break;
            }
        }

        public void AddSkillPoint()
        {
            int point=0;
            switch (DefaultSkill.PrimaryStat)
            {
                case "ST":
                    point= CharacterDB.Strength;
                    break;
                case "DX":
                    point = CharacterDB.Dexterity;
                    break;
                case "IQ":
                    point = CharacterDB.Intelligence;
                    break;
                case "HT":
                    point = CharacterDB.Health;
                    break;
                default:
                    point = 0;
                    break;
            }
        }
         public class DefaultSkillToCalc
        {
            public string PrimaryStat { get; set; }
            public string Modif { get; set; }
            public DefaultSkillToCalc()
            {
                PrimaryStat = string.Empty;
                Modif = string.Empty;
            }

            public DefaultSkillToCalc(string type, string modif)
            {
                this.PrimaryStat = type;
                this.Modif = modif;
            }
        }
    }
}
