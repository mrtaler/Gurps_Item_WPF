namespace Item_WPF.ItemEntityModel
{
    public partial class WeaponBonus
    {
        public WeaponBonus() { }
        public WeaponBonus(Weapon_bonusXML itemWeaponBonus)
        {
            AmountPer_level = itemWeaponBonus.Amount.Attribute("per_level").Value.ToString();
            AmountValue = itemWeaponBonus.Amount.Value.ToString();

            nameCompare = itemWeaponBonus.name.Attribute("compare").Value.ToString();
            name = itemWeaponBonus.name.Value.ToString();
            specializationCompare = itemWeaponBonus.specialization.Attribute("compare").Value.ToString(); ;
            specialization = itemWeaponBonus.specialization.Value.ToString();
            levelCompare = itemWeaponBonus.level.Attribute("compare").Value.ToString(); ;
            level = itemWeaponBonus.level.Value.ToString();
        }
    }
}
