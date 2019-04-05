using System;
using System.ComponentModel.DataAnnotations.Schema;

using GurpsDb.BaseModel;

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
                return this.GetIntAllAtribute() + this.GetStartPointOfSkill();
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
                return Convert.ToInt32(this.GetPoint(this.PointOfSkill));
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
                return this.GetIntAllAtribute() + (this.GetStartPointOfSkill() + this.PointOfSkill - 1);
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
                return this.GetAttributteFromDb() + (this.GetStartPointOfSkill() + this.PointOfSkill - 1);
            }
        }

        /// <summary>
        /// конструктор по умолчанию
        /// </summary>
        public CharSkill()
        {
            this.PropertyDependencyMap.Add(
                "PointOfSkill",
                new[] { "SkillPointCost", "CurrentSkillValue", "LevelSkills" });
        }

        /* /// <summary>
                 /// конструктор для создания присваивания нового скилла персонажу
                 /// </summary>
                 /// <param name="characterDb">Персонаж</param>
                 /// <param name="gurpsSkill">Навык</param>
                /* public CharSkill( GurpsSkill gurpsSkill)
                     : base()
                 {
                     GurpsSkill = gurpsSkill;
        
                     PointOfSkill = 1;
                 }
             */
        public CharSkill(CharacterDb characterDb, GurpsSkill gurpsSkill)
            : this()
        {
            this.CharacterDb = characterDb;
            this.GurpsSkill = gurpsSkill;

            this.PointOfSkill = 1;
        }

        #region diff & atrib

        /// <summary>
        /// Получить от навыка сложность
        /// </summary>
        /// <returns>Сложность</returns>
        private string GetDifficultyFromDb()
        {
            if (this.GurpsSkill.Difficulty.Contains("/"))
            {
                return this.GurpsSkill.Difficulty.Substring(this.GurpsSkill.Difficulty.IndexOf('/') + 1);
            }
            else return this.GurpsSkill.Difficulty;
        }

        /// <summary>
        /// Получить от навыка Атрибут
        /// </summary>
        /// <returns>Атрибут</returns>
        private string GetAttributteFromDb()
        {
            if (this.GurpsSkill.Difficulty.Contains("/"))
            {
                return this.GurpsSkill.Difficulty.Remove(this.GurpsSkill.Difficulty.IndexOf('/'));
            }
            else return this.GurpsSkill.Difficulty;
        }

        #endregion

        /// <summary>
        /// получение начального значения разницы в зависимости от сложности
        /// </summary>
        /// <returns>разница к атрибуту</returns>
        private int GetStartPointOfSkill()
        {
            switch (this.GetDifficultyFromDb().ToLower())
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
            switch (this.GetAttributteFromDb())
            {
                case "ST":
                    return this.CharacterDb.Strength;
                case "DX":
                    return this.CharacterDb.Dexterity;
                case "IQ":
                    return this.CharacterDb.Intelligence;
                case "HT":
                    return this.CharacterDb.Health;
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
            this.PointOfSkill++;
        }

        /// <summary>
        /// Method for Decrease point
        /// </summary>
        public void DecreasePoint()
        {
            this.PointOfSkill--;
        }
    }
}
