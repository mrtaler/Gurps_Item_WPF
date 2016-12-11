using GurpsDb.GurpsModel;
using System;
using System.Globalization;
using System.Linq;

namespace Item_WPF.MVVM.Models
{
    public class ItemToGridModel
    {
        public GurpsDb.GurpsModel.Item ItemS { get; set; }
        public string Name { get; set; }
        public string Tl { get; set; }
        private WeaponDamage DamagePrim { get; }
        private WeaponDamage DamageLinked { get; }
        private WeaponDamage DamageFollowUp { get; }
        public string Damage { get; set; }
        public string DefAcc { get; set; }
        public string Range { get; set; }
        public string Weigth { get; set; }
        public string Rof { get; set; }
        public string Shots { get; set; }
        public string MinSt { get; set; }
        public string Rcl { get; set; }
        public string Cost { get; set; }
        public string Lc { get; set; }
        public string Bulk { get; set; }
        public string Type { get; set; }

        public ItemToGridModel(GurpsDb.GurpsModel.Item itt)
        {
            if (itt.ItemSubClass.ItemClass.Name == "Weapon")
            {

                Name = itt.SzItemName;
                Tl = itt.Tl1.NameTl;
                DamagePrim = itt.Weapon.WeaponDamage.FirstOrDefault(p => p.WeaponAttackType.Name.Contains("Primary"));
                DamageLinked = itt.Weapon.WeaponDamage.FirstOrDefault(p => p.WeaponAttackType.Name.Contains("Linke"));
                DamageFollowUp = itt.Weapon.WeaponDamage.FirstOrDefault(p => p.WeaponAttackType.Name.Contains("Follow"));
                if (DamagePrim != null)
                {
                    if (DamagePrim.IdTypeOfDamage1 != null && DamagePrim.IdTypeOfDamage2 != null)
                    {
                        if (DamagePrim.ArmorDivision != 1) Damage = DamagePrim.Damage
                                + " (" + Convert.ToDouble(DamagePrim.ArmorDivision) + ") "
                                + DamagePrim.TypeOfDamage.Name + " " + DamagePrim.TypeOfDamage1Text + " " + DamagePrim.TypeOfDamage1.Name + " " + DamagePrim.TypeOfDamage2Text;
                        else Damage = DamagePrim.Damage + " " + DamagePrim.TypeOfDamage.Name + " " + DamagePrim.TypeOfDamage1.Name;
                    }
                    else if (DamagePrim.IdTypeOfDamage1 != null && DamagePrim.IdTypeOfDamage2 == null)
                    {
                        if (DamagePrim.ArmorDivision != 1) Damage = DamagePrim.Damage + " (" + Convert.ToDouble(DamagePrim.ArmorDivision) + ") " + DamagePrim.TypeOfDamage.Name;
                        else Damage = DamagePrim.Damage + " " + DamagePrim.TypeOfDamage.Name;
                    }
                    else
                    {
                        if (DamagePrim.ArmorDivision != 1) Damage = DamagePrim.Damage + " (" + Convert.ToDouble(DamagePrim.ArmorDivision) + ")";
                        else Damage = DamagePrim.Damage;
                    }

                }

                if (DamageLinked != null)
                {
                    Name += "\r\n" + "    -- Linked";
                    if (DamageLinked.IdTypeOfDamage1 != null)
                    {
                        if (DamageLinked.ArmorDivision != 1) Damage += "\r\n" + DamageLinked.Damage + " (" + Convert.ToDouble(DamageLinked.ArmorDivision) + ") " + DamageLinked.TypeOfDamage.Name;
                        else Damage += "\r\n" + DamageLinked.Damage + " " + DamageLinked.TypeOfDamage.Name;
                    }
                    else
                    {
                        if (DamageLinked.ArmorDivision != 1) Damage += "\r\n" + DamageLinked.Damage + " (" + Convert.ToDouble(DamageLinked.ArmorDivision) + ")";
                        else Damage += "\r\n" + DamageLinked.Damage;
                    }
                }
                if (DamageFollowUp != null)
                {
                    Name += "\r\n" + "    -- Follow-Up";
                    if (DamageFollowUp.IdTypeOfDamage1 != null)
                    {
                        if (DamageFollowUp.ArmorDivision != 1) Damage += "\r\n" + DamageFollowUp.Damage + " (" + Convert.ToDouble(DamageFollowUp.ArmorDivision) + ") " + DamageFollowUp.TypeOfDamage.Name;
                        else Damage += "\r\n" + DamageFollowUp.Damage + " " + DamageFollowUp.TypeOfDamage.Name;
                    }
                    else
                    {
                        if (DamageFollowUp.ArmorDivision != 1) Damage += "\r\n" + DamageFollowUp.Damage + " (" + Convert.ToDouble(DamageFollowUp.ArmorDivision) + ")";
                        else Damage += "\r\n" + DamageFollowUp.Damage;
                    }
                }
                if (itt.Weapon.AccAddin != null)
                    DefAcc = itt.Weapon.DefAcc + "+" + itt.Weapon.AccAddin;
                else DefAcc = itt.Weapon.DefAcc.ToString();
                Range = Convert.ToDouble(itt.Weapon.HalfRange) + "/" + Convert.ToDouble(itt.Weapon.FullRange);
                Weigth = Convert.ToDouble(itt.UbWeight) + "/";// + itt.WEAPON.Shots * Convert.ToDouble(itt.AMMO.WPS);
                //ROF
                Rof = itt.Weapon.Rof.ToString();
                if (itt.ItemSubClass.NameSub == "Shotgun") Rof = itt.Weapon.Rof + "x" + itt.Weapon.Rof;
                if (itt.Weapon.FullAuto) Rof = itt.Weapon.Rof + "!";

                Shots = itt.Weapon.Shots.ToString();
                if (itt.Weapon.AddInChamber) Shots = itt.Weapon.Shots + "+1";
                if (itt.Weapon.SingleReload) Shots = itt.Weapon.Shots + "(" + itt.Weapon.TimeForReload + "i)";
                else Shots = Shots + "(" + itt.Weapon.TimeForReload + ")";
                //st
                MinSt = itt.MinSt.ToString();
                if (itt.TwoHanded) MinSt = itt.MinSt + "†";
                //Bulk
                Bulk = itt.ItemSize;
                if (itt.Weapon.Bulkfolded) Bulk = itt.ItemSize + "*";
                //RCL%cost%Lc
                Rcl = itt.Weapon.Recoil.ToString();
                Cost = "$" + Convert.ToDouble(itt.UsPrice) + "/$" + itt.Weapon.Shots;// * Convert.ToDouble(itt.WEAPON.AMMO.CPS);
                Lc = itt.Lc1.NameLc;
                //Type
                Type = itt.ItemSubClass.NameSub;
            }
        }

        public ItemToGridModel(GurpsDb.GurpsModel.Item itt, string type)
        {
            Name = itt.SzItemName;
            Tl = itt.Tl1.NameTl;
            Type = type;


            DefAcc = itt.Attachment.AccAddmax.ToString();
            Weigth = itt.UbWeight.ToString(CultureInfo.InvariantCulture);
            //ROF
            Bulk = itt.ItemSize;
            Cost = "$" + Convert.ToDouble(itt.UsPrice);
            Lc = itt.Lc1.NameLc;
        }


    }
}

