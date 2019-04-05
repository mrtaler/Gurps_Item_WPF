using System;
using System.Globalization;
using System.Linq;

using GurpsDb.GurpsModel;

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
            // if (itt.ItemSubClass.ItemClass.Name == "Weapon")
            var qq = itt.GetType().BaseType.Name;
            var qt = typeof(Weapon).Name;
            if (qq == qt)
            {
                Weapon WeapToGrid = (Weapon)itt;
                this.Name = itt.SzItemName;
                this.Tl = itt.Tl1.NameTl;

                this.DamagePrim =
                    WeapToGrid.WeaponDamage.FirstOrDefault(p => p.WeaponAttackType.Name.Contains("Primary"));
                this.DamageLinked =
                    WeapToGrid.WeaponDamage.FirstOrDefault(p => p.WeaponAttackType.Name.Contains("Linke"));
                this.DamageFollowUp =
                    WeapToGrid.WeaponDamage.FirstOrDefault(p => p.WeaponAttackType.Name.Contains("Follow"));
                if (this.DamagePrim != null)
                {
                    if (this.DamagePrim.TypeOfDamage?.Id != null && this.DamagePrim.TypeOfDamage1?.Id != null)
                    {
                        if (this.DamagePrim.ArmorDivision != 1)
                            this.Damage = this.DamagePrim.Damage + " ("
                                                                 + Convert.ToDouble(this.DamagePrim.ArmorDivision)
                                                                 + ") " + this.DamagePrim.TypeOfDamage.Name + " "
                                                                 + this.DamagePrim.TypeOfDamage1Text + " "
                                                                 + this.DamagePrim.TypeOfDamage1.Name + " "
                                                                 + this.DamagePrim.TypeOfDamage2Text;
                        else
                            this.Damage = this.DamagePrim.Damage + " " + this.DamagePrim.TypeOfDamage.Name + " "
                                          + this.DamagePrim.TypeOfDamage1.Name;
                    }
                    else if (this.DamagePrim.TypeOfDamage != null && this.DamagePrim.TypeOfDamage1 == null)
                    {
                        if (this.DamagePrim.ArmorDivision != 1)
                            this.Damage = this.DamagePrim.Damage + " ("
                                                                 + Convert.ToDouble(this.DamagePrim.ArmorDivision)
                                                                 + ") " + this.DamagePrim.TypeOfDamage.Name;
                        else this.Damage = this.DamagePrim.Damage + " " + this.DamagePrim.TypeOfDamage.Name;
                    }
                    else
                    {
                        if (this.DamagePrim.ArmorDivision != 1)
                            this.Damage = this.DamagePrim.Damage + " ("
                                                                 + Convert.ToDouble(this.DamagePrim.ArmorDivision)
                                                                 + ")";
                        else this.Damage = this.DamagePrim.Damage;
                    }
                }

                if (this.DamageLinked != null)
                {
                    this.Name += "\r\n" + "    -- Linked";
                    if (this.DamageLinked.TypeOfDamage != null)
                    {
                        if (this.DamageLinked.ArmorDivision != 1)
                            this.Damage += "\r\n" + this.DamageLinked.Damage + " ("
                                           + Convert.ToDouble(this.DamageLinked.ArmorDivision) + ") "
                                           + this.DamageLinked.TypeOfDamage.Name;
                        else
                            this.Damage += "\r\n" + this.DamageLinked.Damage + " "
                                           + this.DamageLinked.TypeOfDamage.Name;
                    }
                    else
                    {
                        if (this.DamageLinked.ArmorDivision != 1)
                            this.Damage += "\r\n" + this.DamageLinked.Damage + " ("
                                           + Convert.ToDouble(this.DamageLinked.ArmorDivision) + ")";
                        else this.Damage += "\r\n" + this.DamageLinked.Damage;
                    }
                }

                if (this.DamageFollowUp != null)
                {
                    this.Name += "\r\n" + "    -- Follow-Up";
                    if (this.DamageFollowUp.TypeOfDamage != null)
                    {
                        if (this.DamageFollowUp.ArmorDivision != 1)
                            this.Damage += "\r\n" + this.DamageFollowUp.Damage + " ("
                                           + Convert.ToDouble(this.DamageFollowUp.ArmorDivision) + ") "
                                           + this.DamageFollowUp.TypeOfDamage.Name;
                        else
                            this.Damage += "\r\n" + this.DamageFollowUp.Damage + " "
                                           + this.DamageFollowUp.TypeOfDamage.Name;
                    }
                    else
                    {
                        if (this.DamageFollowUp.ArmorDivision != 1)
                            this.Damage += "\r\n" + this.DamageFollowUp.Damage + " ("
                                           + Convert.ToDouble(this.DamageFollowUp.ArmorDivision) + ")";
                        else this.Damage += "\r\n" + this.DamageFollowUp.Damage;
                    }
                }

                if (WeapToGrid.AccAddin != null) this.DefAcc = WeapToGrid.DefAcc + "+" + WeapToGrid.AccAddin;
                else this.DefAcc = WeapToGrid.DefAcc.ToString();
                this.Range = Convert.ToDouble(WeapToGrid.HalfRange) + "/" + Convert.ToDouble(WeapToGrid.FullRange);
                this.Weigth =
                    Convert.ToDouble(itt.UbWeight) + "/"; // + itt.WEAPON.Shots * Convert.ToDouble(itt.AMMO.WPS);

                // ROF
                this.Rof = WeapToGrid.Rof.ToString();
                if (itt.ItemSubClass.NameSub == "Shotgun") this.Rof = WeapToGrid.Rof + "x" + WeapToGrid.Rof;
                if (WeapToGrid.FullAuto) this.Rof = WeapToGrid.Rof + "!";

                this.Shots = WeapToGrid.Shots.ToString();
                if (WeapToGrid.AddInChamber) this.Shots = WeapToGrid.Shots + "+1";
                if (WeapToGrid.SingleReload) this.Shots = WeapToGrid.Shots + "(" + WeapToGrid.TimeForReload + "i)";
                else this.Shots = this.Shots + "(" + WeapToGrid.TimeForReload + ")";

                // st
                this.MinSt = itt.MinSt.ToString();
                if (itt.TwoHanded) this.MinSt = itt.MinSt + "†";

                // Bulk
                this.Bulk = itt.ItemSize;
                if (WeapToGrid.Bulkfolded) this.Bulk = itt.ItemSize + "*";

                // RCL%cost%Lc
                this.Rcl = WeapToGrid.Recoil.ToString();
                this.Cost = "$" + Convert.ToDouble(itt.UsPrice) + "/$"
                            + WeapToGrid.Shots; // * Convert.ToDouble(itt.WEAPON.AMMO.CPS);
                this.Lc = itt.Lc1.NameLc;

                // Type
                this.Type = itt.ItemSubClass.NameSub;
            }
        }

        public ItemToGridModel(Attachment itt, string type)
        {
            this.Name = itt.SzItemName;
            this.Tl = itt.Tl1.NameTl;
            this.Type = type;

            this.DefAcc = itt.AccAddmax.ToString();
            this.Weigth = itt.UbWeight.ToString(CultureInfo.InvariantCulture);

            // ROF
            this.Bulk = itt.ItemSize;
            this.Cost = "$" + Convert.ToDouble(itt.UsPrice);
            this.Lc = itt.Lc1.NameLc;
        }
    }
}

