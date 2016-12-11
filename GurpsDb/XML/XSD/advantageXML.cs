using System.Collections.ObjectModel;
using System.Xml.Linq;
using GurpsDb.XML.XSD.List;
using GurpsDb.XML.XSD.prereq_list;

namespace GurpsDb.XML.XSD
{
    public partial class AdvantageXml
    {
        public int NumPp;
        /**/
        public ObservableCollection<CategoriesXml> Categories;//y
                                                              /**/
        public ObservableCollection<PrereqListXml> PrereqList; //y
        public ObservableCollection<DrBonusXml> DrBonus;
        /**/
        public ObservableCollection<AttributeBonusXml> AttributeBonus;//y
        public ObservableCollection<SkillBonusXml> SkillBonus;
        public ObservableCollection<SpellBonusXml> SpellBonus;
        /**/
        public ObservableCollection<WeaponBonusXml> WeaponBonus; //y
        public ObservableCollection<MeleeWeaponXml> MeleeWeapon;
        public ObservableCollection<RangedWeaponXml> RangedWeapon;
        public ObservableCollection<CostReductionXml> CostReduction;
        //  public ObservableCollection<crXML> cr;
        public XElement Cr;
        /**/
        public ObservableCollection<ModifierXml> Modifier;//y

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
