namespace Item_WPF.ItemEntityModel
{
    public partial class SpellBonus
    {
        public SpellBonus() { }
        public SpellBonus(spell_bonusXML item)
        {
            spell_name = item.spell_name.Value.ToString();
            spell_nameC = item.spell_name.Attribute("compare") != null
                ? item.spell_name.Attribute("compare").Value.ToString() : null;
            college_name = item.college_name.Value.ToString();
            college_nameC = item.college_name.Attribute("compare") != null
                ? item.college_name.Attribute("compare").Value.ToString() : null;
            all_colleges = item.all_colleges.Value.ToString();
            amountper_level = item.amount.Attribute("per_level") != null
                                 ? item.amount.Attribute("per_level").Value.ToString() : null;
            amountValue = item.amount.Value.ToString();
        }
    }
}
