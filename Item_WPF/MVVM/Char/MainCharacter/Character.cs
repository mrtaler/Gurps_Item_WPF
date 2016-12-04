﻿using Item_WPF.ItemEntityModel;
using Item_WPF.MVVM.Models;
using System;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Linq;

namespace Item_WPF.ItemEntityModel

{
    // This class represents a GURPS character.
    public partial class CharacterDB
    {
        private int HumanStat = 10;

        // The Points properties contains the number of points to be
        // added/subtracted from the base value of the stat, thus acting
        // as a modifier.
        //
        // For example the base value of Strength is 10. If StrengthPoints
        // is 3, then the effective Strength is 13.
        // These read-only properties returns the effective value of the stats.
        #region MainAttrib
        #region Strength
        public int Strength => HumanStat + StrengthPoints;
        public int StrengthCost => BasicCost.ST_Cost * StrengthPoints;
        #endregion
        #region Dexterity
        public int Dexterity => HumanStat + DexterityPoints;
        public int DexterityCost => BasicCost.DX_Cost * DexterityPoints;
        #endregion
        #region Intelligence
        public int Intelligence => HumanStat + IntelligencePoints;
        public int IntelligenceCost => BasicCost.IQ_Cost * IntelligencePoints;
        #endregion
        #region Health
        public int Health => HumanStat + HealthPoints;
        public int HealtCost => BasicCost.HT_Cost * HealthPoints;
        #endregion
        public int CharacterPointsPrimarySkill => StrengthCost + IntelligenceCost + DexterityCost + HealtCost;
        #endregion
        #region SecAtrib
        #region MaxHP
        public int MaxHP => MaxHPPoints + Strength;
        public int MaxHPCost => BasicCost.HP_Cost * MaxHPPoints;
        #endregion
        #region MaxFP
        public int MaxFP => MaxFPPoints + Health;
        public int MaxFPCost => BasicCost.FP_Cost * MaxFPPoints;
        #endregion
        #region Willpower
        public int Willpower => WillpowerPoints + Intelligence;
        public int WillpowerCost => BasicCost.WL_Cost * WillpowerPoints;
        #endregion
        #region Perception
        public int Perception => PerceptionPoints + Intelligence;
        public int PerceptionCost => BasicCost.PR_Cost * PerceptionPoints;
        #endregion
        public float BasicLift
        {
            get
            {
                float bl = Strength * Strength / 5F;
                if (bl >= 10)
                    bl = (float)Math.Round(bl);
                return bl;
            }
        }
        #region BasicSpeed
        public float BasicSpeed
        {
            get
            {
                float bs = (Health + Dexterity) / 4F;
                return bs + BasicSpeedPoints;
            }
        }
        public int BasicSpeedCost => (int)(BasicCost.BS_Cost * (BasicSpeedPoints / 0.25F));
        #endregion
        #region BasicMove
        public int BasicMove
        {
            get
            {
                int bm = (int)Math.Floor(BasicSpeed);
                return bm + BasicMovePoints;
            }
        }
        public int BasicMoveCost => BasicCost.BM_Cost * BasicMovePoints;
        #endregion
        public int CharacterPointsSecondarySkill =>
            MaxHPCost +
            MaxFPCost +
            PerceptionCost +
            WillpowerCost +
            BasicSpeedCost +
            BasicMoveCost;

        public int Move
        {
            get
            {
                if (Encumbrance.HasValue)
                    return Math.Max(BasicMove - (int)Encumbrance, 1);
                else
                    return 0;
            }
        }
        public int Dodge
        {
            get
            {
                if (Encumbrance.HasValue)
                    return Math.Max((int)Math.Floor(BasicSpeed + 3) - (int)Encumbrance, 1);
                else
                    return 0;
            }
        }


        #endregion
        public DiceString ThrustDamage
        {
            get
            {
                int str = Strength;
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
                        case 7: return new DiceString(1, 0);
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
                int str = Strength;
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
        private ObservableCollection<ITEM> inventory = new ObservableCollection<ITEM>();
        public ObservableCollection<ITEM> Inventory
        {
            get
            {
                return inventory;
            }
        }
        public int TotalWeight
        {
            get
            {
                int w = 0;
                foreach (ITEM item in Inventory)
                    w += System.Convert.ToInt32(item.ubWeight);
                return w;
            }
        }
        public int? Encumbrance
        {
            get
            {
                float bl = BasicLift;
                float weight = TotalWeight;

                if (weight <= bl) return 0;
                if (weight <= 2 * bl) return 1;
                if (weight <= 3 * bl) return 2;
                if (weight <= 6 * bl) return 3;
                if (weight <= 10 * bl) return 4;
                return null;
            }
        }

        // Character advantages and disadvantages
        private ObservableCollection<Advantage> advantages = new ObservableCollection<Advantage>();
        public ObservableCollection<Advantage> Advantages
        {
            get
            {
                return advantages;
            }
        }
        // Calculation of character points spent on this character



        public int CharacterPointsAdvantages
        {
            get
            {
                int points = 0;
                foreach (Advantage advantage in Advantages)
                {
                    //     points += advantage.Points;
                }
                return points;
            }
        }
        public int CharacterPointsSkills
        {
            get
            {

                return CharSkills.Sum(p => p.SkillPointCost);

                //    int? points = 0;
                //    foreach (GurpsSkill skill in Skills)
                //    {
                //        points += skill.Points;
                //    }
                //    return Convert.ToInt32(points);
            }
        }
        public int CharacterPoints
        {
            get
            {
                return CharacterPointsPrimarySkill + CharacterPointsSecondarySkill +/* CharacterPointsAdvantages */+CharacterPointsSkills;
            }
        }

        //public CharacterDB()
        //{
        //}

        public CharacterDB Copy()
        {
            return (CharacterDB)this.MemberwiseClone();
        }

        public override string ToString()
        {
            // return Name;
            return name;
        }
        public class BasicCost
        {
            public const int ST_Cost = 10;
            public const int DX_Cost = 20;
            public const int IQ_Cost = 20;
            public const int HT_Cost = 10;

            public const int HP_Cost = 2;
            public const int WL_Cost = 5;
            public const int PR_Cost = 5;
            public const int FP_Cost = 3;
            public const int BS_Cost = 5;
            public const int BM_Cost = 5;
        }
    }


}