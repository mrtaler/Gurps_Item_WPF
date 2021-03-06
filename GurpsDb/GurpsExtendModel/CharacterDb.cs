﻿using System;
using System.Diagnostics;
using System.Linq;

using GurpsDb.GurpsExtendModel;

// ReSharper disable CheckNamespace
namespace GurpsDb.GurpsModel
{
    public partial class CharacterDb
    {
        private const int HumanStat = 10;

        // The Points properties contains the number of points to be
        // added/subtracted from the base value of the stat, thus acting
        // as a modifier.
        // For example the base value of Strength is 10. If StrengthPoints
        // is 3, then the effective Strength is 13.
        // These read-only properties returns the effective value of the stats.
        #region MainAttrib
        #region Strength
        public int Strength => HumanStat + this.StrengthPoints;
        public int StrengthCost => BasicCost.StCost * this.StrengthPoints;
        #endregion
        #region Dexterity
        public int Dexterity => HumanStat + this.DexterityPoints;
        public int DexterityCost => BasicCost.DxCost * this.DexterityPoints;
        #endregion
        #region Intelligence
        public int Intelligence => HumanStat + this.IntelligencePoints;
        public int IntelligenceCost => BasicCost.IqCost * this.IntelligencePoints;
        #endregion
        #region Health
        public int Health => HumanStat + this.HealthPoints;
        public int HealtCost => BasicCost.HtCost * this.HealthPoints;
        #endregion
        public int CharacterPointsPrimarySkill => this.StrengthCost + this.IntelligenceCost + this.DexterityCost + this.HealtCost;
        #endregion
        #region SecAtrib
        #region MaxHP
        public int MaxHP => this.MaxHPPoints + this.Strength;
        public int MaxHPCost => BasicCost.HPCost * this.MaxHPPoints;
        #endregion
        #region MaxFP
        public int MaxFP => this.MaxFPPoints + this.Health;
        public int MaxFPCost => BasicCost.FPCost * this.MaxFPPoints;
        #endregion
        #region Willpower
        public int Willpower => this.WillpowerPoints + this.Intelligence;
        public int WillpowerCost => BasicCost.WlCost * this.WillpowerPoints;
        #endregion
        #region Perception
        public int Perception => this.PerceptionPoints + this.Intelligence;
        public int PerceptionCost => BasicCost.PrCost * this.PerceptionPoints;
        #endregion
        public float BasicLift
        {
            get
            {
                float bl = this.Strength * this.Strength / 5F;
                if (bl >= 10)
                    bl = (float)Math.Round(bl);
                return bl;
            }
        }
        #region BasicSpeed
        public decimal BasicSpeed
        {
            get
            {
                decimal bs = (this.Health + this.Dexterity) / 4M;
                return bs + this.BasicSpeedPoints;
            }
        }
        public int BasicSpeedCost => (int)(BasicCost.BsCost * (this.BasicSpeedPoints / 0.25M));
        #endregion
        #region BasicMove
        public int BasicMove
        {
            get
            {
                int bm = (int)Math.Floor(this.BasicSpeed);
                return bm + this.BasicMovePoints;
            }
        }
        public int BasicMoveCost => BasicCost.BmCost * this.BasicMovePoints;
        #endregion
        public int CharacterPointsSecondarySkill =>
            this.MaxHPCost + this.MaxFPCost + this.PerceptionCost + this.WillpowerCost + this.BasicSpeedCost + this.BasicMoveCost;

        public int Move
        {
            get
            {
                if (this.Encumbrance.HasValue)
                    return Math.Max(this.BasicMove - (int)this.Encumbrance, 1);
                else
                    return 0;
            }
        }
        public int Dodge
        {
            get
            {
                if (this.Encumbrance.HasValue)
                    return Math.Max((int)Math.Floor(this.BasicSpeed + 3) - (int)this.Encumbrance, 1);
                else
                    return 0;
            }
        }


        #endregion
        public DiceString ThrustDamage
        {
            get
            {
                int str = this.Strength;
                if (str <= 40)
                {
                    switch (str / 2)
                    {
                        case 1: return new DiceString(1, -6);
                        case 2: return new DiceString(1, -5);
                        case 3: return new DiceString(1, -4);
                        case 4: return new DiceString(1, -3);
                        case 5: return new DiceString(1, -2);
                        case 6: return new DiceString(1, -1);
                        case 7: return new DiceString(1);
                        case 8: return new DiceString(1, 1);
                        case 9: return new DiceString(1, 2);
                        case 10: return new DiceString(2, -1);
                        case 11: return new DiceString(2);
                        case 12: return new DiceString(2, 1);
                        case 13: return new DiceString(2, 2);
                        case 14: return new DiceString(3, -1);
                        case 15: return new DiceString(3);
                        case 16: return new DiceString(3, 1);
                        case 17: return new DiceString(3, 2);
                        case 18: return new DiceString(4, -1);
                        case 19: return new DiceString(4);
                        case 20: return new DiceString(4, 1);
                    }
                }

                if (str <= 100)
                {
                    switch ((str - 40) / 5)
                    {
                        case 0: return new DiceString(4, 1);
                        case 1: return new DiceString(5);
                        case 2: return new DiceString(5, 2);
                        case 3: return new DiceString(6);
                        case 4: return new DiceString(7, -1);
                        case 5: return new DiceString(7, 1);
                        case 6: return new DiceString(8);
                        case 7: return new DiceString(8, 2);
                        case 8: return new DiceString(9);
                        case 9: return new DiceString(9, 2);
                        case 10: return new DiceString(10);
                        case 11: return new DiceString(10, 2);
                        case 12: return new DiceString(11);
                    }
                }

                Debug.Assert(str > 100);
                return new DiceString(11 + (str - 100) / 10);
            }
        }
        public DiceString SwingDamage
        {
            get
            {
                int str = this.Strength;
                if (str <= 40)
                {
                    switch (str)
                    {
                        case 1:
                        case 2:
                            return new DiceString(1, -5);
                        case 3:
                        case 4:
                            return new DiceString(1, -4);
                        case 5:
                        case 6:
                            return new DiceString(1, -3);
                        case 7:
                        case 8:
                            return new DiceString(1, -2);
                        case 9:
                            return new DiceString(1, -1);
                        case 10:
                            return new DiceString(1);
                        case 11:
                            return new DiceString(1, 1);
                        case 12:
                            return new DiceString(1, 2);
                        case 13:
                            return new DiceString(2, -1);
                        case 14:
                            return new DiceString(2);
                        case 15:
                            return new DiceString(2, 1);
                        case 16:
                            return new DiceString(2, 2);
                        case 17:
                            return new DiceString(3, -1);
                        case 18:
                            return new DiceString(3);
                        case 19:
                            return new DiceString(3, 1);
                        case 20:
                            return new DiceString(3, 2);
                        case 21:
                            return new DiceString(4, -1);
                        case 22:
                            return new DiceString(4);
                        case 23:
                            return new DiceString(4, 1);
                        case 24:
                            return new DiceString(4, 2);
                        case 25:
                            return new DiceString(5, -1);
                        case 26:
                            return new DiceString(5);
                        case 27:
                        case 28:
                            return new DiceString(5, 1);
                        case 29:
                        case 30:
                            return new DiceString(5, 2);
                        case 31:
                        case 32:
                            return new DiceString(6, -1);
                        case 33:
                        case 34:
                            return new DiceString(6);
                        case 35:
                        case 36:
                            return new DiceString(6, 1);
                        case 37:
                        case 38:
                            return new DiceString(6, 2);
                        case 39:
                        case 40:
                            return new DiceString(7, -1);
                    }
                }

                if (str <= 100)
                {
                    switch ((str - 40) / 5)
                    {
                        case 0: return new DiceString(7, -1);
                        case 1: return new DiceString(7, 1);
                        case 2: return new DiceString(8, -1);
                        case 3: return new DiceString(8, 1);
                        case 4: return new DiceString(9);
                        case 5: return new DiceString(9, 2);
                        case 6: return new DiceString(10);
                        case 7: return new DiceString(10, 2);
                        case 8: return new DiceString(11);
                        case 9: return new DiceString(11, 2);
                        case 10: return new DiceString(12);
                        case 11: return new DiceString(12, 2);
                        case 12: return new DiceString(13);
                    }
                }

                Debug.Assert(str > 100);
                return new DiceString(13 + (str - 100) / 10);
            }
        }

        // Inventory of the character.
        // private ObservableCollection<Item> inventory = new ObservableCollection<Item>();
        // public ObservableCollection<Item> Inventory
        // {
        // get
        // {
        // return inventory;
        // }
        // }
        public int TotalWeight
        {
            get
            {
                // int w = 0;
                // foreach (Item item in Inventory)
                // w += Convert.ToInt32(item.ubWeight);
                return 0; // w;
            }
        }
        public int? Encumbrance
        {
            get
            {
                float bl = this.BasicLift;
                float weight = this.TotalWeight;

                if (weight <= bl) return 0;
                if (weight <= 2 * bl) return 1;
                if (weight <= 3 * bl) return 2;
                if (weight <= 6 * bl) return 3;
                if (weight <= 10 * bl) return 4;
                return null;
            }
        }

        // Character advantages and disadvantages
        // private ObservableCollection<Advantage> advantages = new ObservableCollection<Advantage>();
        // public ObservableCollection<Advantage> Advantages
        // {
        // get
        // {
        // return advantages;
        // }
        // }
        // Calculation of character points spent on this character


        public int CharacterPointsAdvantages
        {
            get
            {
                int points = 0;

                // foreach (Advantage advantage in Advantages)
                // {
                // //     points += advantage.Points;
                // }
                return points;
            }
        }
        public int CharacterPointsSkills
        {
            get
            {

                return Convert.ToInt32(this.CharSkillCollection.Sum(p => p.SkillPointCost));


                // .Sum(p => p.SkillPointCost);

                // int? points = 0;
                // foreach (GurpsSkill skill in Skills)
                // {
                // points += skill.Points;
                // }
                // return Convert.ToInt32(points);
            }
        }
        public int CharacterPoints
        {
            get
            {
                return this.CharacterPointsPrimarySkill + this.CharacterPointsSecondarySkill +/* CharacterPointsAdvantages */+this.CharacterPointsSkills;
            }
        }

        // public CharacterDb()
        // {
        // }
        public CharacterDb Copy()
        {
            return (CharacterDb)this.MemberwiseClone();
        }

        public override string ToString()
        {
            // return Name;
            return this.Name;
        }

        public class BasicCost
        {
            public const int StCost = 10;
            public const int DxCost = 20;
            public const int IqCost = 20;
            public const int HtCost = 10;

            public const int HPCost = 2;
            public const int WlCost = 5;
            public const int PrCost = 5;
            public const int FPCost = 3;
            public const int BsCost = 5;
            public const int BmCost = 5;
        }
    }

}
