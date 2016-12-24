using GurpsDb.BaseModel;
using System;
using System.ComponentModel.DataAnnotations.Schema;

// ReSharper disable once CheckNamespace
namespace GurpsDb.GurpsModel
{
    
    public partial class CharSkill
    {
        /// <summary>
        /// Start point for this skill
        /// </summary>
        [NotMapped]
        private int StartPoint
        {
            get
            {
                return GetIntAllAtribute() + GetStartPointOfSkill();
            }
        }
        /// <summary>
        /// Skill point cost for all point
        /// </summary>
        [NotMapped]
        public int SkillPointCost
        {
            get
            {
                return Convert.ToInt32(GetPoint(PointOfSkill));
            }
        }
        /// <summary>
        /// Curent skill value 
        /// </summary>
        [NotMapped]
        public int? CurrentSkillValue
        {
            get
            {
                return GetIntAllAtribute() + (GetStartPointOfSkill() + PointOfSkill - 1);
            }
        }
        /// <summary>
        /// Наименование 
        /// </summary>
        [NotMapped]
        public string LevelSkills
        {
            get
            {
                return GetAttributteFromDb() + (GetStartPointOfSkill() + PointOfSkill - 1);
            }
        }
        /// <summary>
        /// конструктор по умолчанию
        /// </summary>
        public CharSkill()
        {
            PropertyDependencyMap.Add("PointOfSkill", new []
            {
                "SkillPointCost",
                "CurrentSkillValue",
                "LevelSkills"
            });
            //    CharacterDb = null;
            //    GurpsSkill = null;
            //    PointOfSkill = 1;
        }
        /// <summary>
        /// конструктор для создания присваивания нового скилла персонажу
        /// </summary>
        /// <param name="characterDb">Персонаж</param>
        /// <param name="gurpsSkill">Навык</param>
        public CharSkill(/*CharacterDb characterDb, */GurpsSkill gurpsSkill)
            :base()
        {
            //  CharacterDb  = characterDb;
            GurpsSkill = gurpsSkill;

            //  IdChar = characterDb.Id;
            //  IdSkill = gurpsSkill.Id;

            PointOfSkill = 1;
        }
        #region diff & atrib
        /// <summary>
        /// Получить от навыка сложность
        /// </summary>
        /// <returns>Сложность</returns>
        private string GetDifficultyFromDb()
        {
            if (GurpsSkill.Difficulty.Contains("/"))
            {
                return GurpsSkill.Difficulty.Substring(GurpsSkill.Difficulty.IndexOf('/') + 1);
            }
            else return GurpsSkill.Difficulty;
        }
        /// <summary>
        /// Получить от навыка Атрибут
        /// </summary>
        /// <returns>Атрибут</returns>
        private string GetAttributteFromDb()
        {
            if (GurpsSkill.Difficulty.Contains("/"))
            {
                return GurpsSkill.Difficulty.Remove(GurpsSkill.Difficulty.IndexOf('/'));
            }
            else return GurpsSkill.Difficulty;
        }
        #endregion
        /// <summary>
        /// получение начального значения разницы в зависимости от сложности
        /// </summary>
        /// <returns>разница к атрибуту</returns>
        private int GetStartPointOfSkill()
        {
            switch (GetDifficultyFromDb().ToLower())
            {
                case "e":
                    return 0;
                case "a":
                    return -1;
                case "h":
                    return -2;
                case "vh":
                    return -3;
                case "wc":
                    return -4;
                default:
                    return 0;
            }
        }
        /// <summary>
        /// Получение значения атрибута в завичимости от скилла
        /// </summary>
        /// <returns>числовое значение соответствующего скилла</returns>
        private int GetIntAllAtribute()
        {
            switch (GetAttributteFromDb())
            {
                case "ST":
                    return CharacterDb.Strength;
                case "DX":
                    return CharacterDb.Dexterity;
                case "IQ":
                    return CharacterDb.Intelligence;
                case "HT":
                    return CharacterDb.Health;
                default:
                    return 0;
            }
        }
        /// <summary>
        /// Получить значение стоимости скила 
        /// </summary>
        /// <param name="pointOfSkill"></param>
        /// <returns></returns>
        private int? GetPoint(int? pointOfSkill)
        {
            if (pointOfSkill > 0)
            {
                switch (pointOfSkill)
                {
                    case 1:
                        return 1;
                    case 2:
                        return 2;
                    case 3:
                        return 4;
                    default:
                        int? skille = pointOfSkill - 3;

                        return 4 + skille * 4;
                }
            }
            else
            {
                return 0;
            }
        }
        /// <summary>
        /// Method for increase point
        /// </summary>
        public void IncreasePoint()
        {
            PointOfSkill++;
        }
        /// <summary>
        /// Method for Decrease point
        /// </summary>
        public void DecreasePoint()
        {
            PointOfSkill--;
        }
    }
}
