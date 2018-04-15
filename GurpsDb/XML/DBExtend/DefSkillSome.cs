
using GurpsDb.XML.XSD.List;

// ReSharper disable once CheckNamespace
namespace GurpsDb.GurpsModel
{
    public partial class DefSkillSome
    {
        public DefSkillSome() { }
        public DefSkillSome(DefaultXml itemDefault)
        {
            NameSkill = itemDefault.NameDefaultXml.Value.ToString();
            Specialization = itemDefault.SpecializationDefaultXml.Value.ToString();
            Type = itemDefault.TypeDefaultXml.Value.ToString();
            Modifier = itemDefault.ModifierDefaultXml.Value.ToString();
        }
    }
}