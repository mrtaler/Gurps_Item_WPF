
using GurpsDb.XML.XSD.List;

// ReSharper disable once CheckNamespace
namespace GurpsDb.GurpsModel
{
    public partial class DefSkillSome
    {
        public DefSkillSome() { }
        public DefSkillSome(DefaultXml itemDefault)
        {
            this.NameSkill = itemDefault.NameDefaultXml.Value.ToString();
            this.Specialization = itemDefault.SpecializationDefaultXml.Value.ToString();
            this.Type = itemDefault.TypeDefaultXml.Value.ToString();
            this.Modifier = itemDefault.ModifierDefaultXml.Value.ToString();
        }
    }
}