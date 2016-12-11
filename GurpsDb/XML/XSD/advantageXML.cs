using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections.ObjectModel;
using Item_WPF.MVVM.Serialize.Model;
using System.Xml.Linq;

namespace Item_WPF.MVVM.Serialize.Model
{
    public partial class AdvantageXml
    {
        public int NumPp;
        /**/
        public ObservableCollection<CategoriesXML> Categories;//y
                                                              /**/
        public ObservableCollection<PrereqListXml> PrereqList; //y
        public ObservableCollection<dr_bonusXml> DrBonus;
        /**/
        public ObservableCollection<Attribute_bonusXML> AttributeBonus;//y
        public ObservableCollection<skill_bonusXML> SkillBonus;
        public ObservableCollection<spell_bonusXML> SpellBonus;
        /**/
        public ObservableCollection<Weapon_bonusXML> WeaponBonus; //y
        public ObservableCollection<melee_weaponXML> MeleeWeapon;
        public ObservableCollection<ranged_weaponXML> RangedWeapon;
        public ObservableCollection<cost_reductionXML> CostReduction;
        //  public ObservableCollection<crXML> cr;
        public XElement Cr;
        /**/
        public ObservableCollection<modifierXML> Modifier;//y

        /// <summary>
        /// 1
        /// </summary>
        public XElement Name;
        /// <summary>
        /// 2
        /// </summary>
        public XElement Type;
        /// <summary>
        /// 3
        /// </summary>
        public XElement Levels;
        /// <summary>
        /// 4
        /// </summary>
        public XElement PointsPerLevel;
        /// <summary>
        /// 5
        /// </summary>
        public XElement BasePoints;
        /// <summary>
        /// 6
        /// </summary>
        public XElement Reference;
        /// <summary>
        /// 7
        /// </summary>
        public XElement Notes;
        /// <summary>
        /// 8
        /// </summary>
        public XAttribute Version;
        /// <summary>
        /// 9
        /// </summary>
        public XAttribute RoundDown;
    }
}
