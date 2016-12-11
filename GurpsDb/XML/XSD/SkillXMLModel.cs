using System.Collections.ObjectModel;
using System.Xml.Linq;
using GurpsDb.XML.XSD.List;
using GurpsDb.XML.XSD.prereq_list;

namespace GurpsDb.XML.XSD
{
    public class SkillXmlModel
    {
        public int NumPp;
        /// <summary>
        /// 1 element name="name" type="StringWithCompareAttribute"
        /// </summary>
        public XElement NameSkill;
        /// <summary>
        /// 2  element name="specialization" type="StringWithCompareAttribute"
        /// </summary>
        public XElement Specialization;
        /// <summary>
        /// 3 element name="tech_level" type="xs:string"
        /// </summary>
        public XElement TechLevel;
        /// <summary>
        /// 4 element name="difficulty" type="xs:string"
        /// </summary>
        public XElement Difficulty;
        /// <summary>
        /// 5 element name="points" type="xs:unsignedInt" 
        /// </summary>
        public XElement Points;
        /// <summary>
        /// 6 element name="reference" type="xs:string" 
        /// </summary>
        public XElement Reference;
        /// <summary>
        /// 7 attribute name="version" type="xs:unsignedShort" use="required" 
        /// </summary>
        public XAttribute Version;
        /// <summary>
        /// 8 element name="notes" type="StringWithCompareAttribute" 
        /// </summary>
        public XElement Notes;
        /// <summary>
        /// 9 element name="encumbrance_penalty_multiplier" type="xs:unsignedInt" 
        /// </summary>
        public XElement EncumbrancePenaltyMultiplier;
        public XAttribute Limit;
        public string Type;
        /// <summary>
        /// 1_1 element ref="default" 
        /// </summary>
        public ObservableCollection<DefaultXml> Default;
        /// <summary>
        /// 1_2 element ref="categories" 
        /// </summary>
        public ObservableCollection<CategoriesXml> Categories;
        /// <summary>
        /// 1_3 element ref="prereq_list" 
        /// </summary>
        public ObservableCollection<PrereqListXml> PrereqList;
        /// <summary>
        /// 1_4 element ref="attribute_bonus" 
        /// </summary>
        public ObservableCollection<AttributeBonusXml> AttributeBonus = new ObservableCollection<AttributeBonusXml>();
        /// <summary>
        /// 1_5 element ref="weapon_bonus" 
        /// </summary>
        public ObservableCollection<WeaponBonusXml> WeaponBonus = new ObservableCollection<WeaponBonusXml>();
    }
}
