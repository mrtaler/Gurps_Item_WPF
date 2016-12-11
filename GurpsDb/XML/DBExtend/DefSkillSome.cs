namespace Item_WPF.ItemEntityModel
{
    public partial class DefSkillSome
    {
        public DefSkillSome() { }
        public DefSkillSome(DefaultXML itemDefault)
        {
            nameSkill = itemDefault.nameDefaultXml.Value.ToString();
            specialization = itemDefault.specializationDefaultXml.Value.ToString();
            type = itemDefault.typeDefaultXml.Value.ToString();
            Modifier = itemDefault.modifierDefaultXml.Value.ToString();
        }
    }
}