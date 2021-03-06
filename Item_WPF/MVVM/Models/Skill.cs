﻿using GurpsDb.GurpsModel;

namespace Item_WPF.MVVM.Models
{
    // This enum is used to denote the difficulty of a skill.
    public enum SkillDifficulty
    {
        Easy,

        Average,

        Hard,

        VeryHard
    };

    // This enum is used to specify which stat a skill is based on.
    public enum SkillStat
    {
        Strength,

        Dexterity,

        Intelligence,

        Health
    }

    public class SkillnotDB
    {
        public string Name { get; set; }

        public string Description { get; set; }

        // The stat this skill is based on.
        public SkillStat Stat { get; set; }

        // The difficulty of the skill
        public SkillDifficulty Difficulty { get; set; }

        // The skill level relative to the base skill level.
        public int? RelativeLevel { get; set; }

        // The skill level relative to the base skill level if the skill is untrained.
        // If null, the skill is impossible without training.
        public int? DefaultRelativeLevel { get; set; }

        // The number of character points the training of this level is worth.
        public int Points
        {
            get
            {
                // If not learned, then 0 points are spent.
                if (this.RelativeLevel == null)
                    return 0;

                // Compensate for skill difficulty.
                int level = (int)this.RelativeLevel;
                switch (this.Difficulty)
                {
                    case SkillDifficulty.Average:
                        level += 1;
                        break;
                    case SkillDifficulty.Hard:
                        level += 2;
                        break;
                    case SkillDifficulty.VeryHard:
                        level += 3;
                        break;
                }

                // Calculate number of points spent if difficulty is easy.
                int points = 0;
                if (level == 0)
                    points = 1;
                if (level == 1)
                    points = 2;
                if (level > 1)
                    points = 4 * (level - 1);

                return points;
            }
        }

        // The effective skill level.
        public int? Level(CharacterDb character)
        {
            // If skill is not learned
            if (this.RelativeLevel == null)
            {
                // Skill impossible
                if (this.DefaultRelativeLevel == null)
                    return null;

                // Default skill level;
                switch (this.Stat)
                {
                    case SkillStat.Strength:
                        return character.Strength + (int)this.DefaultRelativeLevel;
                    case SkillStat.Dexterity:
                        return character.Dexterity + (int)this.DefaultRelativeLevel;
                    case SkillStat.Intelligence:
                        return character.Intelligence + (int)this.DefaultRelativeLevel;
                    case SkillStat.Health:
                        return character.Health + (int)this.DefaultRelativeLevel;
                    default:
                        return null;
                }
            }
            else
            {
                // Add base skill level to relative level.
                switch (this.Stat)
                {
                    case SkillStat.Strength:
                        return character.Strength + (int)this.RelativeLevel;
                    case SkillStat.Dexterity:
                        return character.Dexterity + (int)this.RelativeLevel;
                    case SkillStat.Intelligence:
                        return character.Intelligence + (int)this.RelativeLevel;
                    case SkillStat.Health:
                        return character.Health + (int)this.RelativeLevel;
                    default:
                        return null;
                }
            }
        }

        public SkillnotDB()
        {
        }

        public SkillnotDB(string name, string description, SkillStat stat, SkillDifficulty difficulty)
        {
            this.Name = name;
            this.Description = description;
            this.Stat = stat;
            this.Difficulty = difficulty;
            this.RelativeLevel = null;
        }

        public override string ToString()
        {
            return this.Name;
        }
    }
}
