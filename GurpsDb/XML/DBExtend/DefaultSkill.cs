﻿using System;
using System.Collections.ObjectModel;
using System.Linq;

using GurpsDb.XML.XSD.List;

// ReSharper disable once CheckNamespace
namespace GurpsDb.GurpsModel
{
    public partial class DefaultSkill
    {
        /// <summary>
        /// default constructor
        /// </summary>
        public DefaultSkill() { }

        /// <summary>
        /// Constructor for XML
        /// </summary>
        /// <param name="itemDefault"></param>
        /// <param name="collectionCategiry"></param>
        public DefaultSkill(DefaultXml itemDefault, ObservableCollection<GurpsSkill> collectionCategiry)
        {
            string typex = itemDefault.TypeDefaultXml?.Value;
            string modf = itemDefault.ModifierDefaultXml?.Value;

            if (typex.ToLower().Contains("skill"))
            {
                string name = itemDefault.NameDefaultXml?.Value;
                string spec = itemDefault.SpecializationDefaultXml?.Value;
                GurpsSkill referenseSkillFind;
                if (spec != null)
                {
                    referenseSkillFind = collectionCategiry
                           .Where(p => p.NameSkill == name)
                           .FirstOrDefault(x => x.Specialization == spec);
                }
                else
                {
                    referenseSkillFind = collectionCategiry
                            .FirstOrDefault(p => p.NameSkill == name);
                }

                this.Modifier = Convert.ToInt32(modf);
                this.Type = typex;
                this.GurpsSkill1 = referenseSkillFind;
            }
            else
            {
                this.Type = typex;
                this.Modifier = Convert.ToInt32(modf);
            }
        }
    }
}