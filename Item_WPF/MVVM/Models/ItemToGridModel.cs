using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Item_WPF.MVVM.Models
{
    class ItemToGridModel
    {
        public ITEM ItemS { get; set; }
        public string Name { get; set; }
        public string Tl { get; set; }
        private WeaponDamage DamagePrim { get; set; }
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

        public ItemToGridModel(ITEM itt)
        {
            if (itt.ItemClass.name == "Gun")
            {
                
                Name = itt.szItemName;
                Tl = itt.TL1.name_TL;
                DamagePrim = itt.WEAPON.WeaponDamages.FirstOrDefault(p => p.WeaponAttackType.name.Contains("Primary"));
                if (DamagePrim.idTypeOfDamage1 != null)
                {

                    if (DamagePrim.ArmorDivision != 1) Damage = DamagePrim.Damage + " (" + Convert.ToDouble(DamagePrim.ArmorDivision) + ") " + DamagePrim.TypeOfDamage.name;
                    else Damage = DamagePrim.Damage + " " + DamagePrim.TypeOfDamage.name;
                }
                else {
                    if (DamagePrim.ArmorDivision != 1) Damage = DamagePrim.Damage + " (" + Convert.ToDouble(DamagePrim.ArmorDivision) + ")";
                    else Damage = DamagePrim.Damage ;
                }
                DefAcc = itt.WEAPON.DefACC.ToString();
                Range = Convert.ToDouble(itt.WEAPON.Half_Range) + "/" + Convert.ToDouble(itt.WEAPON.FullRange);
                Weigth = Convert.ToDouble(itt.ubWeight) + "/" + itt.WEAPON.Shots * Convert.ToDouble(itt.WEAPON.AMMO.WPS);
                //ROF
                Rof = itt.WEAPON.ROF.ToString();
                if (itt.WEAPON.WeaponType.name == "Shotgun") Rof = itt.WEAPON.ROF.ToString() + "x" + itt.WEAPON.ROF_for_Sh.ToString();
                if (itt.WEAPON.Full_auto) Rof = itt.WEAPON.ROF.ToString() + "!";
                //if (weaponLoad.h//   HCR ROF

                //Shots
                Shots = itt.WEAPON.Shots.ToString();
                if (itt.WEAPON.Add_in_Chamber) Shots = itt.WEAPON.Shots.ToString() + "+1";
                if (itt.WEAPON.single_reload) Shots = itt.WEAPON.Shots.ToString() + "(" + itt.WEAPON.Time_For_reload + "i)";
                else Shots = Shots.ToString() + "(" + itt.WEAPON.Time_For_reload + ")";
                //st
                MinSt = itt.minST.ToString();
                if (itt.TwoHanded) MinSt = itt.minST.ToString() + "†";
                //Bulk
                Bulk = itt.ItemSize;
                if (itt.WEAPON.Bulkfolded) Bulk = itt.ItemSize + "*";
                //RCL%cost%LC
                Rcl = itt.WEAPON.Recoil.ToString();
                Cost = "$" + Convert.ToDouble(itt.usPrice) + "/$" + itt.WEAPON.Shots * Convert.ToDouble(itt.WEAPON.AMMO.CPS);
                Lc = itt.LC1.Name_LC;
                //Type
                Type = itt.ItemClass.name;
            }
        }

        public ItemToGridModel(ITEM itt, string type)
        {
            Name = itt.szItemName;
            Tl = itt.TL1.name_TL;
            Type = type;


            DefAcc = itt.Attachment.AccAddmax.ToString();
            Weigth = itt.ubWeight.ToString();
            //ROF
            Bulk = itt.ItemSize;
            Cost = "$" + Convert.ToDouble(itt.usPrice);
            Lc = itt.LC1.Name_LC;
        }


    }
}

