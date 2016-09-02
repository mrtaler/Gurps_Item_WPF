﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml.Linq;
using System.Collections.ObjectModel;

namespace Item_WPF.MVVM.Serialize.Model
{
    public class SkillXMLModel
    {
        public int numPP;
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
        public XElement tech_level;
        /// <summary>
        /// 4 element name="difficulty" type="xs:string"
        /// </summary>
        public XElement difficulty;
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
        public XAttribute version;
        /// <summary>
        /// 8 element name="notes" type="StringWithCompareAttribute" 
        /// </summary>
        public XElement notes;
        /// <summary>
        /// 9 element name="encumbrance_penalty_multiplier" type="xs:unsignedInt" 
        /// </summary>
        public XElement encumbrance_penalty_multiplier;
        public XAttribute limit;
        public string Type;
        /// <summary>
        /// 1_1 element ref="default" 
        /// </summary>
        public ObservableCollection<DefaultXML> Default;
        /// <summary>
        /// 1_2 element ref="categories" 
        /// </summary>
        public ObservableCollection<CategoriesXML> categories;
        /// <summary>
        /// 1_3 element ref="prereq_list" 
        /// </summary>
        public ObservableCollection<Prereq_listXML> prereq_list;
        /// <summary>
        /// 1_4 element ref="attribute_bonus" 
        /// </summary>
        public ObservableCollection<Attribute_bonusXML> attribute_bonus=new ObservableCollection<Attribute_bonusXML>();
        /// <summary>
        /// 1_5 element ref="weapon_bonus" 
        /// </summary>
        public ObservableCollection<Weapon_bonusXML> weapon_bonus=new ObservableCollection<Weapon_bonusXML>();
    }
}
