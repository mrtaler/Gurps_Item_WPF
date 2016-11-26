using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections.ObjectModel;
using Item_WPF.MVVM.Serialize.Model;
using System.Xml.Linq;

namespace Item_WPF.MVVM.Serialize.Model
{
    public partial class AdvantageXML
    {
        public int numPP;
        /**/
        public ObservableCollection<CategoriesXML> categories;//y
                                                              /**/
        public ObservableCollection<Prereq_listXML> prereq_list; //y
        public ObservableCollection<dr_bonusXml> dr_bonus;
        /**/
        public ObservableCollection<Attribute_bonusXML> attribute_bonus;//y
        public ObservableCollection<skill_bonusXML> skill_bonus;
        public ObservableCollection<spell_bonusXML> spell_bonus;
        /**/
        public ObservableCollection<Weapon_bonusXML> weapon_bonus; //y
        public ObservableCollection<melee_weaponXML> melee_weapon;
        public ObservableCollection<ranged_weaponXML> ranged_weapon;
        public ObservableCollection<CostReductionXml> cost_reduction;
        //  public ObservableCollection<CrXml> cr;
        public XElement cr;
        /**/
        public ObservableCollection<modifierXML> modifier;//y

        /// <summary>
        /// 1
        /// </summary>
        public XElement name;
        /// <summary>
        /// 2
        /// </summary>
        public XElement type;
        /// <summary>
        /// 3
        /// </summary>
        public XElement levels;
        /// <summary>
        /// 4
        /// </summary>
        public XElement points_per_level;
        /// <summary>
        /// 5
        /// </summary>
        public XElement base_points;
        /// <summary>
        /// 6
        /// </summary>
        public XElement reference;
        /// <summary>
        /// 7
        /// </summary>
        public XElement notes;
        /// <summary>
        /// 8
        /// </summary>
        public XAttribute version;
        /// <summary>
        /// 9
        /// </summary>
        public XAttribute round_down;
    }
}
