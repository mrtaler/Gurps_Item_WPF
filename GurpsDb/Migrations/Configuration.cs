namespace GurpsDb.Migrations
{
    using System;
    using System.Collections.Generic;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    using GurpsDb.GurpsModel;
    using GurpsDb.DbInitialData;

    internal sealed class Configuration : DbMigrationsConfiguration<ContextGurpsModel>
    {
        public Configuration()
        {
            this.AutomaticMigrationsEnabled = false;
        }

        protected override void Seed(ContextGurpsModel context)
        {
            #region TL INIT
            context.TlDbSet.AddOrUpdate(InitTl.Tl0);
            context.TlDbSet.AddOrUpdate(InitTl.Tl1);
            context.TlDbSet.AddOrUpdate(InitTl.Tl2);
            context.TlDbSet.AddOrUpdate(InitTl.Tl3);
            context.TlDbSet.AddOrUpdate(InitTl.Tl4);
            context.TlDbSet.AddOrUpdate(InitTl.Tl5);
            context.TlDbSet.AddOrUpdate(InitTl.Tl6);
            context.TlDbSet.AddOrUpdate(InitTl.Tl7);
            context.TlDbSet.AddOrUpdate(InitTl.Tl8);
            context.TlDbSet.AddOrUpdate(InitTl.Tl9);
            context.TlDbSet.AddOrUpdate(InitTl.Tl10);
            context.TlDbSet.AddOrUpdate(InitTl.Tl11);
            context.TlDbSet.AddOrUpdate(InitTl.Tl12);
            #endregion
            #region LC INIT
            context.LcDbSet.AddOrUpdate(InitLc.Ll0);
            context.LcDbSet.AddOrUpdate(InitLc.Ll1);
            context.LcDbSet.AddOrUpdate(InitLc.Ll2);
            context.LcDbSet.AddOrUpdate(InitLc.Ll3);
            context.LcDbSet.AddOrUpdate(InitLc.Ll4);
            #endregion


            #region ATTACHMENTSLOT + Attachmentmount
            /* AttachmentSlotInit.ScopeAttachmentSlot,
             AttachmentSlotInit.LaserAttachmentSlot,
             AttachmentSlotInit.LightAttachmentSlot   ,
             AttachmentSlotInit.BipodAttachmentSlot  ,
             AttachmentSlotInit.SilenserAttachmentSlot  ,
             AttachmentSlotInit.LauncherAttachmentSlot  ,
             AttachmentSlotInit.StockAttachmentSlot  ,
             AttachmentSlotInit.BayonetAttachmentSlot ,
             AttachmentSlotInit. MagazineAttachmentSlot ,
             AttachmentSlotInit. InternalAttachmentSlot ,
             AttachmentSlotInit. ExternalAttachmentSlot,
             AttachmentSlotInit. RifleGrenadeAttachmentSlot,
             AttachmentSlotInit. RocketLauncherAttachmentSlot*/

            #region "Scope Attachments"
            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.AKScope);
            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.M16A1A2Scope);
            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.M16A3Scope);
            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.MINI14Scope);
            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.HKG36Scope);
            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.GALILScope);
            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.M14Scope);
            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.SCOUTScope);
            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.SIG551Scope);
            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.WRScope);
            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.HKMP5Scope);
            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.BUILTINScope);
            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.SA80Scope);
            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.SVDScope);
            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.L96A1Scope);
            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.M24Scope);
            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.SIGScope);
            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.L85A2Scope);
            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.PSGScope);
            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.HKMSG90Scope);
            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.F2000Scope);
            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.ZRAKScope);
            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.GROZAScope);
            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.MOSINScope);
            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.G11Scope);
            #endregion
            #region Laser Attachments--2

            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.BUILTINLaser);
            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.WRLaser);
            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.HKLaser);
            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.BarrelMountLaser);
            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.F2000Laser);
            #endregion
            #region Light Attachments--3

            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.F2000Light);
            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.WRLight);
            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.HKLight);
            context.AttachmentMountDbSet.AddOrUpdate(AttachmentMountInit.BarrelMountLight);
            
            #endregion
            #region Bipod Attachments--4
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("built-in", AttachmentSlotInit.BipodAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("WR", AttachmentSlotInit.BipodAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("СВ-98", AttachmentSlotInit.BipodAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("SniperBipod", AttachmentSlotInit.BipodAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("L96A1 bipod", AttachmentSlotInit.BipodAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("L86_Bipod", AttachmentSlotInit.BipodAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("G36_bipod", AttachmentSlotInit.BipodAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("BM1", AttachmentSlotInit.BipodAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("AssaultBipod", AttachmentSlotInit.BipodAttachmentSlot));

            #endregion
            #region--  (N'Silenser Attachments'),   --5

            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount(".300 BLK", AttachmentSlotInit.SilenserAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("5,7mm (FN)", AttachmentSlotInit.SilenserAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("5,7mm (P90)", AttachmentSlotInit.SilenserAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("VZ82", AttachmentSlotInit.SilenserAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("Std 9mm Para", AttachmentSlotInit.SilenserAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("APB", AttachmentSlotInit.SilenserAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("Bizon 9x18", AttachmentSlotInit.SilenserAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("GSh-18", AttachmentSlotInit.SilenserAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("HK MP5-40", AttachmentSlotInit.SilenserAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("Std 45 ACP", AttachmentSlotInit.SilenserAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("UMP45", AttachmentSlotInit.SilenserAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("AEK919K", AttachmentSlotInit.SilenserAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("M24x1,5", AttachmentSlotInit.SilenserAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("MAC", AttachmentSlotInit.SilenserAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("PBS-7,62x39", AttachmentSlotInit.SilenserAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("UZI", AttachmentSlotInit.SilenserAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("RM", AttachmentSlotInit.SilenserAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("QM", AttachmentSlotInit.SilenserAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("Supressor-5,56", AttachmentSlotInit.SilenserAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("L85A2", AttachmentSlotInit.SilenserAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("SR25", AttachmentSlotInit.SilenserAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("SIG - 7,62", AttachmentSlotInit.SilenserAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("Saiga", AttachmentSlotInit.SilenserAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("AK", AttachmentSlotInit.SilenserAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("Galil", AttachmentSlotInit.SilenserAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("M76", AttachmentSlotInit.SilenserAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("PBS - 5,45", AttachmentSlotInit.SilenserAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("Supressor-7,62", AttachmentSlotInit.SilenserAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("SV98", AttachmentSlotInit.SilenserAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("built-in", AttachmentSlotInit.SilenserAttachmentSlot));
            #endregion
            #region--  (N'Launcher Attachments'),   --6

            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("Scar", AttachmentSlotInit.LauncherAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("built-in", AttachmentSlotInit.LauncherAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("M203PI", AttachmentSlotInit.LauncherAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("M203", AttachmentSlotInit.LauncherAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("GP-30", AttachmentSlotInit.LauncherAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("HK", AttachmentSlotInit.LauncherAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("F2000 Launcher", AttachmentSlotInit.LauncherAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("IMC40", AttachmentSlotInit.LauncherAttachmentSlot));
            #endregion
            #region--(N'Stock Attachments'),      --7

            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("WR", AttachmentSlotInit.StockAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("built-in", AttachmentSlotInit.StockAttachmentSlot));
            #endregion
            #region--(N'Bayonet Attachments'),    --8

            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("Knifes", AttachmentSlotInit.BayonetAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("StdBayonet", AttachmentSlotInit.BayonetAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("built-in", AttachmentSlotInit.BayonetAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("Mosin_Bayonet", AttachmentSlotInit.BayonetAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("M9", AttachmentSlotInit.BayonetAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("FAL", AttachmentSlotInit.BayonetAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("HK", AttachmentSlotInit.BayonetAttachmentSlot));
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("throw", AttachmentSlotInit.BayonetAttachmentSlot));
            #endregion

            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("None", AttachmentSlotInit.ScopeAttachmentSlot));// 1
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("None", AttachmentSlotInit.LaserAttachmentSlot));// 2
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("None", AttachmentSlotInit.LightAttachmentSlot));// 3
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("None", AttachmentSlotInit.BipodAttachmentSlot));// 4
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("None", AttachmentSlotInit.SilenserAttachmentSlot));// 5
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("None", AttachmentSlotInit.LauncherAttachmentSlot));// 6
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("None", AttachmentSlotInit.StockAttachmentSlot));// 7
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("None", AttachmentSlotInit.BayonetAttachmentSlot));// 8
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("None", AttachmentSlotInit.MagazineAttachmentSlot));// 9
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("None", AttachmentSlotInit.InternalAttachmentSlot));// 10
            context.AttachmentMountDbSet.AddOrUpdate(new AttachmentMount("None", AttachmentSlotInit.ExternalAttachmentSlot));// 11
            #endregion
            #region GAttack+gSubAttach

            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Telescopic Sights",
                                                     GAttachClass = GurpsAttachClassInit.SIGHTS_AND_AIMING_AIDS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.ScopeAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Improved-Visibility Sights",
                                                     GAttachClass = GurpsAttachClassInit.SIGHTS_AND_AIMING_AIDS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.ScopeAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Collimating Sight",
                                                     GAttachClass = GurpsAttachClassInit.SIGHTS_AND_AIMING_AIDS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.ScopeAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Reflex Sight",
                                                     GAttachClass = GurpsAttachClassInit.SIGHTS_AND_AIMING_AIDS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.ScopeAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Night Sights",
                                                     GAttachClass = GurpsAttachClassInit.SIGHTS_AND_AIMING_AIDS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.ScopeAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Computer Sights",
                                                     GAttachClass = GurpsAttachClassInit.SIGHTS_AND_AIMING_AIDS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.ScopeAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Thermal-Imaging Sights",
                                                     GAttachClass = GurpsAttachClassInit.SIGHTS_AND_AIMING_AIDS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.ScopeAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Targeting Lasers",
                                                     GAttachClass = GurpsAttachClassInit.SIGHTS_AND_AIMING_AIDS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.LaserAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Tactical Lights",
                                                     GAttachClass = GurpsAttachClassInit.SIGHTS_AND_AIMING_AIDS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.LightAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Tripods and Other Mounts",
                                                     GAttachClass = GurpsAttachClassInit.STOCKS_TRIPODS_AND_BIPODS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.BipodAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Bipods",
                                                     GAttachClass = GurpsAttachClassInit.STOCKS_TRIPODS_AND_BIPODS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.BipodAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Baffle Suppressors",

                                                     GAttachClass = GurpsAttachClassInit.SOUND_SUPPRESSORS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.SilenserAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Wiper Suppressors",
                                                     GAttachClass = GurpsAttachClassInit.SOUND_SUPPRESSORS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.SilenserAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Extended Magazines",
                                                     GAttachClass = GurpsAttachClassInit.MAGAZINE_MODIFICATIONS_AND_RELOADING_AIDS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.MagazineAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Drum magazines",
                                                     GAttachClass = GurpsAttachClassInit.MAGAZINE_MODIFICATIONS_AND_RELOADING_AIDS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.MagazineAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "High-density magazines",
                                                     GAttachClass = GurpsAttachClassInit.MAGAZINE_MODIFICATIONS_AND_RELOADING_AIDS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.MagazineAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Speedloaders",
                                                     GAttachClass = GurpsAttachClassInit.MAGAZINE_MODIFICATIONS_AND_RELOADING_AIDS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.MagazineAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Clamped Magazines",
                                                     GAttachClass = GurpsAttachClassInit.MAGAZINE_MODIFICATIONS_AND_RELOADING_AIDS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.MagazineAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Pistol Stocks",
                                                     GAttachClass = GurpsAttachClassInit.STOCKS_TRIPODS_AND_BIPODS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.StockAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Shooting Sticks",
                                                     GAttachClass = GurpsAttachClassInit.STOCKS_TRIPODS_AND_BIPODS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.StockAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Folding Stock",
                                                     GAttachClass = GurpsAttachClassInit.STOCKS_TRIPODS_AND_BIPODS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.StockAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Belt Holster (TL5)",
                                                     GAttachClass = GurpsAttachClassInit.HOLSTERS_SCABBARDS_AND_SLINGS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.ExternalAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Lanyard (TL5)",
                                                     GAttachClass = GurpsAttachClassInit.HOLSTERS_SCABBARDS_AND_SLINGS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.ExternalAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Military Holster (TL5)",
                                                     GAttachClass = GurpsAttachClassInit.HOLSTERS_SCABBARDS_AND_SLINGS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.ExternalAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Rifle Sling (TL5)",
                                                     GAttachClass = GurpsAttachClassInit.HOLSTERS_SCABBARDS_AND_SLINGS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.ExternalAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Scabbard (TL5)",
                                                     GAttachClass = GurpsAttachClassInit.HOLSTERS_SCABBARDS_AND_SLINGS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.ExternalAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Shoulder Holster (TL5)",
                                                     GAttachClass = GurpsAttachClassInit.HOLSTERS_SCABBARDS_AND_SLINGS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.ExternalAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Sleeve Holster (TL6)",
                                                     GAttachClass = GurpsAttachClassInit.HOLSTERS_SCABBARDS_AND_SLINGS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.ExternalAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Fast-Draw Rig (TL7)",
                                                     GAttachClass = GurpsAttachClassInit.HOLSTERS_SCABBARDS_AND_SLINGS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.ExternalAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Patrol Sling (TL7)",
                                                     GAttachClass = GurpsAttachClassInit.HOLSTERS_SCABBARDS_AND_SLINGS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.ExternalAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Undercover Holster (TL7)",
                                                     GAttachClass = GurpsAttachClassInit.HOLSTERS_SCABBARDS_AND_SLINGS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.ExternalAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Retention Holster (TL8)",
                                                     GAttachClass = GurpsAttachClassInit.HOLSTERS_SCABBARDS_AND_SLINGS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.ExternalAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Gun-Cleaning Kit",
                                                     GAttachClass = GurpsAttachClassInit.MISCELLANEOUS_ACCESSORIES_AND_MODIFICATIONS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.ExternalAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Gun Case",
                                                     GAttachClass = GurpsAttachClassInit.MISCELLANEOUS_ACCESSORIES_AND_MODIFICATIONS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.ExternalAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Brass Catchers",
                                                     GAttachClass = GurpsAttachClassInit.MISCELLANEOUS_ACCESSORIES_AND_MODIFICATIONS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.ExternalAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Slide-Lock",
                                                     GAttachClass = GurpsAttachClassInit.MISCELLANEOUS_ACCESSORIES_AND_MODIFICATIONS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.ExternalAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Accessory Rails",
                                                     GAttachClass = GurpsAttachClassInit.MISCELLANEOUS_ACCESSORIES_AND_MODIFICATIONS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.ExternalAttachmentSlot
                                                 });
            context.GSubAttachClassDbSet.AddOrUpdate(new GSubAttachClass
                                                 {
                                                     SubAttachName = "Drag Bag",
                                                     GAttachClass = GurpsAttachClassInit.MISCELLANEOUS_ACCESSORIES_AND_MODIFICATIONS,
                                                     SubAttachDescription = " ",
                                                     Attachmentslot1 = AttachmentSlotInit.ExternalAttachmentSlot
                                                 });
            #endregion


            context.GurpsClassDbSet.InitAddOrUpdate();
            context.ItemClassDbSet.InitAddOrUpdate();

            #region INSERT dbo.ItemSubClass
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Normal", ItemClassInit.EXPLOSIVE, "ExplosionType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Stun", ItemClassInit.EXPLOSIVE, "ExplosionType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Tear Gas", ItemClassInit.EXPLOSIVE, "ExplosionType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Mustard Gas", ItemClassInit.EXPLOSIVE, "ExplosionType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Flare", ItemClassInit.EXPLOSIVE, "ExplosionType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Noise", ItemClassInit.EXPLOSIVE, "ExplosionType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Smoke", ItemClassInit.EXPLOSIVE, "ExplosionType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Creature Gas", ItemClassInit.EXPLOSIVE, "ExplosionType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Fire", ItemClassInit.EXPLOSIVE, "ExplosionType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Flashbang", ItemClassInit.EXPLOSIVE, "ExplosionType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Signal Shell", ItemClassInit.EXPLOSIVE, "ExplosionType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("None", ItemClassInit.Drug, "DrugType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Adrenaline", ItemClassInit.Drug, "DrugType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Alcohol", ItemClassInit.Drug, "DrugType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Regeneration", ItemClassInit.Drug, "DrugType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Damage Resistance", ItemClassInit.Drug, "DrugType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Strength", ItemClassInit.Drug, "DrugType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Agility", ItemClassInit.Drug, "DrugType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Dexterity", ItemClassInit.Drug, "DrugType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Wisdom", ItemClassInit.Drug, "DrugType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Perception", ItemClassInit.Drug, "DrugType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Psychosis", ItemClassInit.Drug, "DrugType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Nervousness", ItemClassInit.Drug, "DrugType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Reflex", ItemClassInit.Drug, "DrugType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Claustrophobia", ItemClassInit.Drug, "DrugType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Heat Intolerance", ItemClassInit.Drug, "DrugType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Fear of Insects", ItemClassInit.Drug, "DrugType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Forgetfulness", ItemClassInit.Drug, "DrugType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Stim", ItemClassInit.Drug, "DrugType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Blindness", ItemClassInit.Drug, "DrugType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Unconsciousness", ItemClassInit.Drug, "DrugType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Barrage", ItemClassInit.Drug, "DrugType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Vision", ItemClassInit.Drug, "DrugType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Tunnel Vision", ItemClassInit.Drug, "DrugType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Occulin", ItemClassInit.Drug, "DrugType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Cure", ItemClassInit.Drug, "DrugType", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Nothing", ItemClassInit.LOADBEARINGEQUIPMENT, "LBEClass", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Thigh Pack", ItemClassInit.LOADBEARINGEQUIPMENT, "LBEClass", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Vest", ItemClassInit.LOADBEARINGEQUIPMENT, "LBEClass", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Combat Pack", ItemClassInit.LOADBEARINGEQUIPMENT, "LBEClass", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Backpack", ItemClassInit.LOADBEARINGEQUIPMENT, "LBEClass", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Helmet", ItemClassInit.ARMOUR, "ArmourClass", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Vest", ItemClassInit.ARMOUR, "ArmourClass", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Leggings", ItemClassInit.ARMOUR, "ArmourClass", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Plate", ItemClassInit.ARMOUR, "ArmourClass", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Vehicle", ItemClassInit.ARMOUR, "ArmourClass", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Firearm", ItemClassInit.Weapon, "Weapon", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("винтовки", ItemClassInit.Ammo, "Ammo", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("пистолет", ItemClassInit.Ammo, "Ammo", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Гранатомёты", ItemClassInit.Ammo, "Ammo", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Автоматические Пушки", ItemClassInit.Ammo, "Ammo", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("дробовики", ItemClassInit.Ammo, "Ammo", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("миномёты", ItemClassInit.Ammo, "Ammo", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("противотанковые пушки", ItemClassInit.Ammo, "Ammo", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Attachment", ItemClassInit.Attachment, "Attachment", null));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Normal", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.LiquidProjector));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Guided Missile", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.Artillery));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Torpedoes", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.Artillery));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Catapult", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.Artillery));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Cannon", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.Artillery));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Beams", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.Artillery));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Bombs", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.Artillery));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Projector", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.BeamWeapons));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Pistol", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.BeamWeapons));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Rifle", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.BeamWeapons));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Machine Gun", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.Gunner));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Catapult", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.Gunner));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Rockets", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.Gunner));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Cannon", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.Gunner));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Beams", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.Gunner));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Light Anti-Armor Weapon", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.Guns));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Light Machine Gun", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.Guns));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Grenade Launcher", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.Guns));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Submachine Gun", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.Guns));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Shotgun", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.Guns));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Musket", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.Guns));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Pistol", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.Guns));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Gyroc", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.Guns));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Rifle", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.Guns));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Flamethrower", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.LiquidProjector));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Water Cannon", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.LiquidProjector));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Squirt Gun", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.LiquidProjector));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Sprayer", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.LiquidProjector));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Axe/Mace", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.ThrownWeapon));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Shuriken", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.ThrownWeapon));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Harpoon", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.ThrownWeapon));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Knife", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.ThrownWeapon));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Spear", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.ThrownWeapon));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Stick", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.ThrownWeapon));
            context.ItemSubClassDbSet.AddOrUpdate(new ItemSubClass("Dart", ItemClassInit.Weapon, "WeaponType", GurpsClassInit.ThrownWeapon));
            #endregion
            #region INSERT INTO TypeOfDamage      
            context.TypeOfDamageDbSet.AddOrUpdate(new TypeOfDamage("pi+", "piersing", "0.5"));
            context.TypeOfDamageDbSet.AddOrUpdate(new TypeOfDamage("pi-", " ", "0.5"));
            context.TypeOfDamageDbSet.AddOrUpdate(new TypeOfDamage("pi", " ", "1.0"));
            context.TypeOfDamageDbSet.AddOrUpdate(new TypeOfDamage("pi++", " ", "2.0"));
            context.TypeOfDamageDbSet.AddOrUpdate(new TypeOfDamage("spec", " ", "1.0"));
            context.TypeOfDamageDbSet.AddOrUpdate(new TypeOfDamage("tox", " ", "1.0"));
            context.TypeOfDamageDbSet.AddOrUpdate(new TypeOfDamage("aff", " ", "1.0"));
            context.TypeOfDamageDbSet.AddOrUpdate(new TypeOfDamage("burn", " ", "1.0"));
            context.TypeOfDamageDbSet.AddOrUpdate(new TypeOfDamage("cor", " ", "1.0"));
            context.TypeOfDamageDbSet.AddOrUpdate(new TypeOfDamage("cr", " ", "1.0"));
            context.TypeOfDamageDbSet.AddOrUpdate(new TypeOfDamage("cut", " ", "1.5"));
            context.TypeOfDamageDbSet.AddOrUpdate(new TypeOfDamage("fat", " ", "1.0"));
            context.TypeOfDamageDbSet.AddOrUpdate(new TypeOfDamage("imp", " ", "2.0"));
            context.TypeOfDamageDbSet.AddOrUpdate(new TypeOfDamage("ex", " ", "1.0"));
            #endregion
            #region INSERT INTO Type_of_Box
            context.TypeOfBoxeDbSet.AddOrUpdate(new TypeOfBox("Shop"));
            context.TypeOfBoxeDbSet.AddOrUpdate(new TypeOfBox("LootBox"));
            context.TypeOfBoxeDbSet.AddOrUpdate(new TypeOfBox("PersonalBox"));
            #endregion
            #region INSERT INTO[LaserColorEf]
            context.LaserColorEfDbSet.AddOrUpdate(new LaserColorEf("Red", 0.33M));
            context.LaserColorEfDbSet.AddOrUpdate(new LaserColorEf("Orange", 0.50M));
            context.LaserColorEfDbSet.AddOrUpdate(new LaserColorEf("Green", 2.00M));
            context.LaserColorEfDbSet.AddOrUpdate(new LaserColorEf("Infrared", 1.00M));
            #endregion
            #region INSERT INTO WeaponAttackType
            context.WeaponAttackTypeDbSet.AddOrUpdate(WeaponAttackTypeInit.Primary);
            context.WeaponAttackTypeDbSet.AddOrUpdate(WeaponAttackTypeInit.Linked);
            context.WeaponAttackTypeDbSet.AddOrUpdate(WeaponAttackTypeInit.FollowUp);
            #endregion

            context.WeaponDbSet.AddOrUpdate(
                new Weapon(
                    weaponDamage: new WeaponDamage(
                        damage: "7d",
                        weaponAttackType: WeaponAttackTypeInit.Primary,
                        typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi+"),
                        typeOfDamage1: null),
                    name: "Royal Ordnance L1A1 w/SUIT (7.62x51mm)",
                    itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"),
                    tl: InitTl.Tl7,
                    lc: InitLc.Ll2)
                {
                    // weapon
                    Rof = 3,
                    FullAuto = false,
                    Recoil = 3,
                    DefAcc = 5,
                    AccAddin = 2,
                    RofForSh = null,
                    HalfRange = 1000M,
                    FullRange = 4200M,
                    Shots = 20,
                    AddInChamber = true,
                    TimeForReload = 3,
                    SingleReload = false,

                    // item
                    UbWeight = 11.5M,
                    MinSt = 11,
                    ItemSize = "3",
                    UsPrice = 1100M,
                    SzItemDesc = "d",
                    TwoHanded = true
                });


            #region ads
            context.WeaponDbSet.Add
             (
                 new Weapon
                 (
                     weaponDamage: new WeaponDamage
                     (
                         damage: "5dx15", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "9K112 Kobra ATGM(125mm Tank Round)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Guided Missile")).First(p => p.GurpsClass.Name == "Artillery"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll1)
                 {
                     Rof = 1,
                     FullAuto = false,
                     Recoil = 1,
                     DefAcc = 3,
                     AccAddin = null,
                     RofForSh = null,
                     HalfRange = 250M,
                     FullRange = 4000M,
                     Shots = 1,
                     AddInChamber = false,
                     TimeForReload = 6,
                     SingleReload = false,
                     UbWeight = 45.3M,
                     MinSt = 0,
                     ItemSize = "--",
                     UsPrice = 8200M,
                     TwoHanded = false
                 });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "6dx6", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "9K116 Bastion ATGM(100mm Tank Round)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Guided Missile")).First(p => p.GurpsClass.Name == "Artillery"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll1)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 1,
                               DefAcc = 6,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 330M,
                               FullRange = 5000M,
                               Shots = 1,
                               AddInChamber = false,
                               TimeForReload = 5,
                               SingleReload = false,
                               UbWeight = 39M,
                               MinSt = 0,
                               ItemSize = "--",
                               UsPrice = 13400M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5dx12",
                                   weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "9K120 Refleks ATGM(125mm Tank Round)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Guided Missile")).First(p => p.GurpsClass.Name == "Artillery"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll1)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 1,
                               DefAcc = 7,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 330M,
                               FullRange = 5000M,
                               Shots = 1,
                               AddInChamber = false,
                               TimeForReload = 6,
                               SingleReload = false,
                               UbWeight = 46.4M,
                               MinSt = 0,
                               ItemSize = "--",
                               UsPrice = 13800M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "6dx13",
                                   weaponAttackType: WeaponAttackTypeInit.Primary,
                                   typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")
                                   ),
                               name: "9M1114 Kokon ATGM",
                               itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Guided Missile")).First(p => p.GurpsClass.Name == "Artillery"),
                               tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")),
                               lc: InitLc.Ll1)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 1,
                               DefAcc = 3,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 450M,
                               FullRange = 5000M,
                               Shots = 2,
                               AddInChamber = false,
                               TimeForReload = 20,
                               SingleReload = false,
                               UbWeight = 132.5M,
                               MinSt = 0,
                               ItemSize = "--",
                               UsPrice = 6400M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5dx12", weaponAttackType:
                                   WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "9M119 Svir ATGM(125mm Tank Round)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Guided Missile")).First(p => p.GurpsClass.Name == "Artillery"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll1)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 1,
                               DefAcc = 8,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 340M,
                               FullRange = 4100M,
                               Shots = 1,
                               AddInChamber = false,
                               TimeForReload = 6,
                               SingleReload = false,
                               UbWeight = 41.4M,
                               MinSt = 0,
                               ItemSize = "--",
                               UsPrice = 13400M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "6dx13", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "9P135M Konkurs - M ATGM", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Guided Missile")).First(p => p.GurpsClass.Name == "Artillery"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll1)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 1,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 200M,
                               FullRange = 4000M,
                               Shots = 1,
                               AddInChamber = false,
                               TimeForReload = 20,
                               SingleReload = false,
                               UbWeight = 51M,
                               MinSt = 0,
                               ItemSize = "--",
                               UsPrice = 5700M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "6dx25", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "BGM - 71D TOW2 ATGM", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Guided Missile")).First(p => p.GurpsClass.Name == "Artillery"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll1)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 1,
                               DefAcc = 3,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 300M,
                               FullRange = 5400M,
                               Shots = 1,
                               AddInChamber = false,
                               TimeForReload = 20,
                               SingleReload = false,
                               UbWeight = 50M,
                               MinSt = 0,
                               ItemSize = "--",
                               UsPrice = 6300M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "6dx17", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "BGM - 71F TOW2B ATGM", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Guided Missile")).First(p => p.GurpsClass.Name == "Artillery"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll1)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 1,
                               DefAcc = 3,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 300M,
                               FullRange = 5700M,
                               Shots = 1,
                               AddInChamber = false,
                               TimeForReload = 20,
                               SingleReload = false,
                               UbWeight = 50M,
                               MinSt = 0,
                               ItemSize = "--",
                               UsPrice = 7100M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "6dx50", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "SA - 19 SAM", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Guided Missile")).First(p => p.GurpsClass.Name == "Artillery"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll1)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 1,
                               DefAcc = 6,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 600M,
                               FullRange = 8000M,
                               Shots = 1,
                               AddInChamber = false,
                               TimeForReload = 20,
                               SingleReload = false,
                               UbWeight = 89M,
                               MinSt = 0,
                               ItemSize = "--",
                               UsPrice = 12500M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5dx7", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "Armbrust(80mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Light Anti-Armor Weapon")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll1)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 1,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 300M,
                               FullRange = 500M,
                               Shots = 1,
                               AddInChamber = false,
                               TimeForReload = 0,
                               SingleReload = false,
                               UbWeight = 13M,
                               MinSt = 10,
                               ItemSize = " - 4",
                               UsPrice = 1052M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "4d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "Colt M203(40x46mmSR)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Grenade Launcher")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll1)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 2,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 150M,
                               FullRange = 4400M,
                               Shots = 1,
                               AddInChamber = false,
                               TimeForReload = 4,
                               SingleReload = false,
                               UbWeight = 3.5M,
                               MinSt = 11,
                               ItemSize = " - ",
                               UsPrice = 500M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "3d - 1", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi-"), typeOfDamage1: null), name: "CZ Vz.24(7.62x25mm Tokarev)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Submachine Gun")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll2)
                           {
                               Rof = 10,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 3,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 160M,
                               FullRange = 1900M,
                               Shots = 32,
                               AddInChamber = false,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 8.1M,
                               MinSt = 10,
                               ItemSize = " - 4",
                               UsPrice = 300M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "3d - 1", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Enfield Sterling L - 2A3(9x19mm Parabellum)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Submachine Gun")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll2)
                           {
                               Rof = 9,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 3,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 160M,
                               FullRange = 1900M,
                               Shots = 34,
                               AddInChamber = false,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 7.6M,
                               MinSt = 10,
                               ItemSize = " - 4",
                               UsPrice = 350M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d - 1", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Enfield Sterling L - 34A1(9x19mm Parabellum)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Submachine Gun")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll1)
                           {
                               Rof = 8,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 3,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 100M,
                               FullRange = 1100M,
                               Shots = 34,
                               AddInChamber = false,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 9.5M,
                               MinSt = 10,
                               ItemSize = " - 4",
                               UsPrice = 1200M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "3d - 1", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "ERMA MP.40(9x19mm Parabellum)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Submachine Gun")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL6")), lc: InitLc.Ll2)
                           {
                               Rof = 8,
                               FullAuto = true,
                               Recoil = 2,
                               DefAcc = 3,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 160M,
                               FullRange = 1900M,
                               Shots = 32,
                               AddInChamber = false,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 10.5M,
                               MinSt = 10,
                               ItemSize = " - 4",
                               UsPrice = 1000M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d + 1", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi+"), typeOfDamage1: null), name: "Guide Lamp M - 3A1 \"Greasegun\"(.45 ACP)",
                               itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Submachine Gun")).First(p => p.GurpsClass.Name == "Guns"),
                               tl: InitTl.Tl7,
                               lc: InitLc.Ll2)
                           {
                               Rof = 8,
                               FullAuto = true,
                               Recoil = 3,
                               DefAcc = 3,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 190M,
                               FullRange = 1750M,
                               Shots = 30,
                               AddInChamber = false,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 10.2M,
                               MinSt = 11,
                               ItemSize = " - 4",
                               UsPrice = 450M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d",
                                   weaponAttackType: WeaponAttackTypeInit.Primary,
                                   typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "H & K PSG1(7.62x51mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll3)
                {
                    Rof = 1,
                    FullAuto = false,
                    Recoil = 3,
                    DefAcc = 6,
                    AccAddin = 2,
                    RofForSh = null,
                    HalfRange = 1000M,
                    FullRange = 4200M,
                    Shots = 1,
                    AddInChamber = false,
                    TimeForReload = 4,
                    SingleReload = false,
                    UbWeight = 16M,
                    MinSt = 11,
                    ItemSize = " - 5",
                    UsPrice = 4500M,
                    TwoHanded = true
                });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "6d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "IMI BT / AT 52 Rifle Grenade", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Grenade Launcher")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll1)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 2,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 100M,
                               FullRange = 300M,
                               Shots = 1,
                               AddInChamber = false,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 1.1M,
                               MinSt = 11,
                               ItemSize = " - ",
                               UsPrice = 75M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "3d - 1", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "IMI MP1 \"Uzi\"(9x19mm Parabellum)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Submachine Gun")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll2)
                           {
                               Rof = 10,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 160M,
                               FullRange = 1900M,
                               Shots = 32,
                               AddInChamber = false,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 9.5M,
                               MinSt = 10,
                               ItemSize = " - 4",
                               UsPrice = 300M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "1d + 2", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "KBP GP - 30(40mm VOG - 25)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Grenade Launcher")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll1)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 2,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 150M,
                               FullRange = 460M,
                               Shots = 1,
                               AddInChamber = false,
                               TimeForReload = 4,
                               SingleReload = false,
                               UbWeight = 3.3M,
                               MinSt = 11,
                               ItemSize = " - ",
                               UsPrice = 250M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "6dx6", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "M136 AT - 4(84mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Light Anti-Armor Weapon")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll1)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 1,
                               DefAcc = 3,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 330M,
                               FullRange = 2300M,
                               Shots = 1,
                               AddInChamber = false,
                               TimeForReload = 0,
                               SingleReload = false,
                               UbWeight = 42565M,
                               MinSt = 10,
                               ItemSize = " - 5",
                               UsPrice = 1500M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "6dx4", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "M72A2(66mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Light Anti-Armor Weapon")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll1)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 1,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 200M,
                               FullRange = 300M,
                               Shots = 1,
                               AddInChamber = false,
                               TimeForReload = 0,
                               SingleReload = false,
                               UbWeight = 5M,
                               MinSt = 10,
                               ItemSize = " - 4",
                               UsPrice = 250M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "8d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "Mecar 35mm HE - RFL - 35 Rifle Grenade", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Grenade Launcher")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll1)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 1,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 150M,
                               FullRange = 400M,
                               Shots = 1,
                               AddInChamber = false,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 2M,
                               MinSt = 11,
                               ItemSize = " - ",
                               UsPrice = 50M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "6dx6", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "Mk.153 Mod.1 SMAW(83mm Rocket)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Light Anti-Armor Weapon")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll1)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 1,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 1000M,
                               Shots = 1,
                               AddInChamber = false,
                               TimeForReload = 4,
                               SingleReload = false,
                               UbWeight = 29.5M,
                               MinSt = 10,
                               ItemSize = " - 5",
                               UsPrice = 13000M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d + 1", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Tulamash SKS(7.62x39mm M - 43)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll3)
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 5,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3100M,
                               Shots = 10,
                               AddInChamber = false,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 8.9M,
                               MinSt = 9,
                               ItemSize = " - 5",
                               UsPrice = 150M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "ZB Vz.54(7.62x54mmR)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL6")), lc: InitLc.Ll3)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 4,
                               DefAcc = 5,
                               AccAddin = 2,
                               RofForSh = null,
                               HalfRange = 800M,
                               FullRange = 3900M,
                               Shots = 5,
                               AddInChamber = false,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 12.4M,
                               MinSt = 10,
                               ItemSize = " - 5",
                               UsPrice = 300M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "S & W Military and Police(.38 Special)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL6")), lc: InitLc.Ll3)
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 2,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 110M,
                               FullRange = 1200M,
                               Shots = 6,
                               AddInChamber = false,
                               TimeForReload = 3,
                               SingleReload = true,
                               UbWeight = 2.2M,
                               MinSt = 9,
                               ItemSize = " - 2",
                               UsPrice = 300M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "1d + 2", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Remington 396 Sporting(12ga 2 3 / 4\")", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Shotgun")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll4)
                           {
                               Rof = 2,
                               FullAuto = false,
                               Recoil = 1,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = 9,
                               HalfRange = 50M,
                               FullRange = 125M,
                               Shots = 2,
                               AddInChamber = false,
                               TimeForReload = 3,
                               SingleReload = true,
                               UbWeight = 8.3M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 2660M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "1d + 2", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Stoeger / IGA Uplander(12ga 2 3 / 4\")", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Shotgun")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll4)
                           {
                               Rof = 2,
                               FullAuto = false,
                               Recoil = 1,
                               DefAcc = 2,
                               AccAddin = null,
                               RofForSh = 9,
                               HalfRange = 50M,
                               FullRange = 125M,
                               Shots = 2,
                               AddInChamber = false,
                               TimeForReload = 3,
                               SingleReload = true,
                               UbWeight = 7M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 450M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d + 2", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Beretta M92(9x19mm Parabellum)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll3)
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 2,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 160M,
                               FullRange = 1800M,
                               Shots = 15,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 2.8M,
                               MinSt = 9,
                               ItemSize = " - 2",
                               UsPrice = 700M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d + 2", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Browning \"Highpower\"(9x19mm Parabellum)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL6")), lc: InitLc.Ll3)
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 2,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 160M,
                               FullRange = 1800M,
                               Shots = 13,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 2.4M,
                               MinSt = 9,
                               ItemSize = " - 2",
                               UsPrice = 780M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi+"), typeOfDamage1: null), name: "Colt M1911A1(.45 ACP)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL6")), lc: InitLc.Ll3)
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 2,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 150M,
                               FullRange = 1600M,
                               Shots = 7,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 2.8M,
                               MinSt = 10,
                               ItemSize = " - 2",
                               UsPrice = 850M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "H & K P7K3(.380 ACP)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll3)
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 2,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 125M,
                               FullRange = 1500M,
                               Shots = 8,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 1.75M,
                               MinSt = 8,
                               ItemSize = " - 2",
                               UsPrice = 1050M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d + 2", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "H & K P7M13(9x19mm Parabellum)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll3)
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 2,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 160M,
                               FullRange = 1800M,
                               Shots = 13,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 2.3M,
                               MinSt = 9,
                               ItemSize = " - 2",
                               UsPrice = 1100M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d + 2", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "H & K P7M8(9x19mm Parabellum)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll3)
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 2,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 160M,
                               FullRange = 1800M,
                               Shots = 8,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 1.8M,
                               MinSt = 9,
                               ItemSize = " - 2",
                               UsPrice = 1050M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Izhmekh Makarov(9x18mm Makarov)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll3)
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 2,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 110M,
                               FullRange = 1200M,
                               Shots = 8,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 1.8M,
                               MinSt = 8,
                               ItemSize = " - 2",
                               UsPrice = 250M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "1d + 1", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi-"), typeOfDamage1: null), name: "Ruger Standard MK1(.22 LR)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll3)
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 3,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 70M,
                               FullRange = 1400M,
                               Shots = 9,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 2.5M,
                               MinSt = 7,
                               ItemSize = " - 2",
                               UsPrice = 300M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d + 1", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "SIG - Sauer M11(9x19mm Parabellum)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll3)
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 1,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 140M,
                               FullRange = 1800M,
                               Shots = 13,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 2.1M,
                               MinSt = 9,
                               ItemSize = " - 2",
                               UsPrice = 700M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi+"), typeOfDamage1: null), name: "Springfield Armory XD - 45(.45 ACP)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll3)
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 2,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 150M,
                               FullRange = 1600M,
                               Shots = 13,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 2.4M,
                               MinSt = 10,
                               ItemSize = " - 2",
                               UsPrice = 500M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d + 2", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi-"), typeOfDamage1: null), name: "Tokarev TT - 33(7.62x25mm Tokarev)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL6")), lc: InitLc.Ll3)
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 2,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 180M,
                               FullRange = 2000M,
                               Shots = 8,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 2.1M,
                               MinSt = 9,
                               ItemSize = " - 2",
                               UsPrice = 350M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "1d + 1", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi-"), typeOfDamage1: null), name: "Walther PP(.22 LR)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL6")), lc: InitLc.Ll3)
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 2,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 70M,
                               FullRange = 1400M,
                               Shots = 10,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 1.8M,
                               MinSt = 7,
                               ItemSize = " - 1",
                               UsPrice = 500M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d - 1", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi-"), typeOfDamage1: null), name: "Walther PP(.32 ACP)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL6")), lc: InitLc.Ll3)
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 1,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 120M,
                               FullRange = 1300M,
                               Shots = 8,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 1.8M,
                               MinSt = 8,
                               ItemSize = " - 1",
                               UsPrice = 500M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Walther PP(.380 ACP)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL6")), lc: InitLc.Ll3)
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 1,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 120M,
                               FullRange = 1300M,
                               Shots = 7,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 1.8M,
                               MinSt = 8,
                               ItemSize = " - 1",
                               UsPrice = 500M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Z.M.Lucznik P - 64(9x18mm Makarov)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll3)
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 1,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 125M,
                               FullRange = 1500M,
                               Shots = 8,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 1.8M,
                               MinSt = 8,
                               ItemSize = " - 1",
                               UsPrice = 450M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Z.M.Lucznik P - 83(9x18mm Makarov)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll3)
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 1,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 125M,
                               FullRange = 1500M,
                               Shots = 8,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 1.8M,
                               MinSt = 8,
                               ItemSize = " - 1",
                               UsPrice = 450M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "8d + 1", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Accuracy International G22(.300 Win Mag)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll3)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 6,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 1300M,
                               FullRange = 5000M,
                               Shots = 5,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 15.8M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 5650M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "9d + 1", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Accuracy International L115A1(.338 Lapua Magnum)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll3)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 4,
                               DefAcc = 6,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 1500M,
                               FullRange = 5500M,
                               Shots = 4,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 17.5M,
                               MinSt = 11,
                               ItemSize = " - 6",
                               UsPrice = 5650M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Accuracy International L96A1(7.62x51mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll3)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 6,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 1000M,
                               FullRange = 4200M,
                               Shots = 10,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 15M,
                               MinSt = 11,
                               ItemSize = " - 6",
                               UsPrice = 5200M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "13d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi+"), typeOfDamage1: null), name: "Barrett M82A1A(.50 BMG)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll3)
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 4,
                               DefAcc = 7,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 2200M,
                               FullRange = 7400M,
                               Shots = 10,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 32M,
                               MinSt = 13,
                               ItemSize = " - 7",
                               UsPrice = 6900M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "13d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi+"), typeOfDamage1: null), name: "Barrett M82A1A w / AN / PVS10(.50 BMG)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll3)
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 4,
                               DefAcc = 7,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 2200M,
                               FullRange = 7400M,
                               Shots = 10,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 36M,
                               MinSt = 13,
                               ItemSize = " - 7",
                               UsPrice = 15500M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "13d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi+"), typeOfDamage1: null), name: "Barrett M82A1A w / Simrad KN - 200(.50 BMG)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll3)
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 4,
                               DefAcc = 7,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 2200M,
                               FullRange = 7400M,
                               Shots = 10,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 35.4M,
                               MinSt = 13,
                               ItemSize = " - 7",
                               UsPrice = 7400M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Bushmaster M15(5.56x45mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll3)
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 5,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3200M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 8.9M,
                               MinSt = 8,
                               ItemSize = " - 5",
                               UsPrice = 1500M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Colt M16A1(5.56x45mm M - 193)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll2)
                           {
                               Rof = 13,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 5,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3200M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 8M,
                               MinSt = 8,
                               ItemSize = " - 5",
                               UsPrice = 540M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Colt M16A2(5.56x45mm NATO)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll2)
                           {
                               Rof = 9,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 5,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3200M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 8.9M,
                               MinSt = 8,
                               ItemSize = " - 5",
                               UsPrice = 800M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "4d + 1", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi-"), typeOfDamage1: null), name: "Colt M4A1(5.56x45mm NATO)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll2)
                           {
                               Rof = 15,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 420M,
                               FullRange = 2700M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 7.25M,
                               MinSt = 8,
                               ItemSize = " - 4",
                               UsPrice = 900M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Diemaco C - 7(5.56x45mm NATO)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll2)
                           {
                               Rof = 13,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 5,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3200M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 8.9M,
                               MinSt = 8,
                               ItemSize = " - 5",
                               UsPrice = 800M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Diemaco C - 7FT w / C79 ELCAN(5.56x45mm NATO)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll2)
                           {
                               Rof = 13,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 5,
                               AccAddin = 1,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3200M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 10.4M,
                               MinSt = 8,
                               ItemSize = " - 5",
                               UsPrice = 1600M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Enfield L42A1(7.62x51mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL6")), lc: InitLc.Ll3)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 5,
                               AccAddin = 2,
                               RofForSh = null,
                               HalfRange = 1000M,
                               FullRange = 4200M,
                               Shots = 10,
                               AddInChamber = true,
                               TimeForReload = 5,
                               SingleReload = false,
                               UbWeight = 10.7M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 1700M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "FN FAL(7.62x51mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll2)
                           {
                               Rof = 11,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 5,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 1000M,
                               FullRange = 4200M,
                               Shots = 20,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 11M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 900M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "4d + 2", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi-"), typeOfDamage1: null), name: "H & K G11(4.73x33mm CLTA)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll1)
                           {
                               Rof = 9,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 5,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3000M,
                               Shots = 45,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 11.25M,
                               MinSt = 8,
                               ItemSize = " - 4",
                               UsPrice = 1500M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "H & K G3(7.62x51mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll2)
                           {
                               Rof = 10,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 5,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 1000M,
                               FullRange = 4200M,
                               Shots = 20,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 11.4M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 550M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "H & K G41(5.56x45mm NATO)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll2)
                           {
                               Rof = 14,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 5,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3200M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 10.1M,
                               MinSt = 8,
                               ItemSize = " - 5",
                               UsPrice = 750M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "3d - 1", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "H & K MP5A2(9x19mm Parabellum)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Submachine Gun")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll2)
                           {
                               Rof = 13,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 160M,
                               FullRange = 1900M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 6M,
                               MinSt = 10,
                               ItemSize = " - 4",
                               UsPrice = 1100M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "3d - 1", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "H & K MP5A3(9x19mm Parabellum)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Submachine Gun")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll2)
                           {
                               Rof = 13,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 160M,
                               FullRange = 1900M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 7.5M,
                               MinSt = 10,
                               ItemSize = " - 4",
                               UsPrice = 1100M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "H & K MP5SD2(9x19mm Parabellum)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Submachine Gun")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll1)
                           {
                               Rof = 13,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 100M,
                               FullRange = 1100M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 6.8M,
                               MinSt = 10,
                               ItemSize = " - 4",
                               UsPrice = 1850M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "H & K MP5SD3(9x19mm Parabellum)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Submachine Gun")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll1)
                           {
                               Rof = 13,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 100M,
                               FullRange = 1100M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 8.3M,
                               MinSt = 10,
                               ItemSize = " - 4",
                               UsPrice = 1850M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Izhmash AK - 74(5.45x39mm M - 74)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll2)
                           {
                               Rof = 11,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3800M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 9M,
                               MinSt = 8,
                               ItemSize = " - 5",
                               UsPrice = 250M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d + 1", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Izhmash AKM(7.62x39mm M - 43)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll2)
                           {
                               Rof = 10,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3100M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 11.3M,
                               MinSt = 9,
                               ItemSize = " - 5",
                               UsPrice = 290M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "4d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi-"), typeOfDamage1: null), name: "Izhmash AKS - 74U(5.45x39mm M - 74)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll2)
                           {
                               Rof = 11,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 3,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 300M,
                               FullRange = 2500M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 7M,
                               MinSt = 8,
                               ItemSize = " - 4 * ",
                               UsPrice = 250M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Izhmash AN - 94(5.45x39mm M - 74)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll2)
                           {
                               Rof = 10,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3800M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 9.7M,
                               MinSt = 8,
                               ItemSize = " - 5 * ",
                               UsPrice = 1150M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d + 2", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Izhmash RPK(7.62x39mm M - 43)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll1)
                           {
                               Rof = 10,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 400M,
                               FullRange = 3000M,
                               Shots = 40,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 12.4M,
                               MinSt = 10,
                               ItemSize = " - 5",
                               UsPrice = 490M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d + 1", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Izhmash RPK - 74(5.45x39mm M - 74)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll1)
                           {
                               Rof = 11,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 600M,
                               FullRange = 3200M,
                               Shots = 45,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 12M,
                               MinSt = 10,
                               ItemSize = " - 5",
                               UsPrice = 500M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Izhmash SVD(7.62x54mmR)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll3)
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 5,
                               AccAddin = 2,
                               RofForSh = null,
                               HalfRange = 800M,
                               FullRange = 3900M,
                               Shots = 10,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 10.1M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 1200M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Mauser K.98k(7.92x57mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL6")), lc: InitLc.Ll3)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 4,
                               DefAcc = 5,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 1000M,
                               FullRange = 4000M,
                               Shots = 5,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 8.9M,
                               MinSt = 10,
                               ItemSize = " - 5",
                               UsPrice = 300M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Parker - Hale C3A1 MRSW(7.62x51mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll3)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 5,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 1000M,
                               FullRange = 4200M,
                               Shots = 5,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 10.9M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 4000M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Remington M21(7.62x51mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll2)
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 6,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 1000M,
                               FullRange = 4200M,
                               Shots = 20,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 12.7M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 2400M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "8d + 1", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Remington M24A1 SWS(.300 Win Mag)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll3)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 6,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 1300M,
                               FullRange = 5000M,
                               Shots = 5,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 13.4M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 3400M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "8d + 1", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Remington M24A1 SWS w / AN / PVS10(.300 Win Mag)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll3)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 6,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 1300M,
                               FullRange = 5000M,
                               Shots = 5,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 17.4M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 12000M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "9d + 1", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Remington M24A2 SWS(.338 Lapua Magnum)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll3)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 4,
                               DefAcc = 6,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 1500M,
                               FullRange = 5500M,
                               Shots = 4,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 13.9M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 3400M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "9d + 1", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Remington M24A2 SWS w / AN / PVS10(.338 Lapua Mag)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll3)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 4,
                               DefAcc = 6,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 1500M,
                               FullRange = 5500M,
                               Shots = 4,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 17.9M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 12000M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Royal Ordnance L1A1(7.62x51mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll2)
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 5,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 1000M,
                               FullRange = 4200M,
                               Shots = 20,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 11M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 900M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Royal Ordnance L1A1 w / SUIT(7.62x51mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll2)
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 5,
                               AccAddin = 2,
                               RofForSh = null,
                               HalfRange = 1000M,
                               FullRange = 4200M,
                               Shots = 20,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 11.5M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 1100M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Royal Ordnance L85A1(5.56x45mm NATO)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll2)
                           {
                               Rof = 12,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3200M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 11.2M,
                               MinSt = 8,
                               ItemSize = " - 4",
                               UsPrice = 800M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Royal Ordnance L85A1 w / SUSAT(5.56x45mm NATO)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll2)
                           {
                               Rof = 12,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 5,
                               AccAddin = 2,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3200M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 12.1M,
                               MinSt = 8,
                               ItemSize = " - 4",
                               UsPrice = 1200M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Royal Ordnance L85A2(5.56x45mm NATO)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll2)
                           {
                               Rof = 12,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3200M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 11.2M,
                               MinSt = 8,
                               ItemSize = " - 4",
                               UsPrice = 1100M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Royal Ordnance L85A2 w / SUSAT(5.56x45mm NATO)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll2)
                           {
                               Rof = 12,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 5,
                               AccAddin = 2,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3200M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 12.1M,
                               MinSt = 8,
                               ItemSize = " - 4",
                               UsPrice = 1500M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Royal Ordnance L86A1(5.56x45mm NATO)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll2)
                           {
                               Rof = 13,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 6,
                               AccAddin = 2,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3500M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 13M,
                               MinSt = 9,
                               ItemSize = " - 5",
                               UsPrice = 1600M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Royal Ordnance L86A2(5.56x45mm NATO)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll2)
                           {
                               Rof = 13,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 6,
                               AccAddin = 2,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3500M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 13M,
                               MinSt = 9,
                               ItemSize = " - 5",
                               UsPrice = 1900M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "1d + 2", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi-"), typeOfDamage1: null), name: "Ruger 10 / 22(.22 LR)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll4)
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 3,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 85M,
                               FullRange = 1200M,
                               Shots = 10,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 5.2M,
                               MinSt = 6,
                               ItemSize = " - 4",
                               UsPrice = 150M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Ruger Mini - 14(5.56x45mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll3)
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 5,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3000M,
                               Shots = 20,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 7.3M,
                               MinSt = 9,
                               ItemSize = " - 4",
                               UsPrice = 600M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Springfield M14(7.62x51mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll2)
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 5,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 1000M,
                               FullRange = 4200M,
                               Shots = 20,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 10.3M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 950M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "1d + 1", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Benelli M1014(12ga 3\")", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Shotgun")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll3)
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 1,
                               DefAcc = 3,
                               AccAddin = null,
                               RofForSh = 9,
                               HalfRange = 50M,
                               FullRange = 125M,
                               Shots = 6,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = true,
                               UbWeight = 8.4M,
                               MinSt = 10,
                               ItemSize = " - 5",
                               UsPrice = 950M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Marlin Model 336(.30 - 30 Win)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL6")), lc: InitLc.Ll3)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 450M,
                               FullRange = 3000M,
                               Shots = 6,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = true,
                               UbWeight = 7M,
                               MinSt = 10,
                               ItemSize = " - 4",
                               UsPrice = 300M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "1d + 2", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi-"), typeOfDamage1: null), name: "Marlin Model 881(.22 LR)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll4)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 5,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 85M,
                               FullRange = 1200M,
                               Shots = 17,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = true,
                               UbWeight = 5.6M,
                               MinSt = 6,
                               ItemSize = " - 4",
                               UsPrice = 655M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "1d + 1", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Mossberg M590(12ga 3\")", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Shotgun")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll4)
                           {
                               Rof = 2,
                               FullAuto = false,
                               Recoil = 1,
                               DefAcc = 3,
                               AccAddin = null,
                               RofForSh = 9,
                               HalfRange = 50M,
                               FullRange = 125M,
                               Shots = 9,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = true,
                               UbWeight = 8.7M,
                               MinSt = 10,
                               ItemSize = " - 5",
                               UsPrice = 600M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Remington M24 SWS(7.62x51mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll3)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 6,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 1000M,
                               FullRange = 4200M,
                               Shots = 6,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = true,
                               UbWeight = 13.4M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 3400M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Remington M24 SWS w / AN / PVS10(7.62x51mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll2)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 6,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 1000M,
                               FullRange = 4200M,
                               Shots = 6,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = true,
                               UbWeight = 17.4M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 12000M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Remington M40A3 RWS(7.62x51mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll3)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 7,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 1000M,
                               FullRange = 4200M,
                               Shots = 6,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = true,
                               UbWeight = 14.8M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 3400M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Remington M40A3 RWS w / AN / PVS10(7.62x51mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll3)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 7,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 1000M,
                               FullRange = 4200M,
                               Shots = 6,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = true,
                               UbWeight = 18.8M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 12000M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Remington M40A3 RWS w / Simrad KN - 200(7.62x51mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: InitLc.Ll3)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 7,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 1000M,
                               FullRange = 4200M,
                               Shots = 6,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = true,
                               UbWeight = 18.2M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 4900M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (

                                   damage: "1d + 2", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Remington Model 870P(12ga 3\")", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Shotgun")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll4)
                           {
                               Rof = 2,
                               FullAuto = false,
                               Recoil = 1,
                               DefAcc = 2,
                               AccAddin = null,
                               RofForSh = 9,
                               HalfRange = 50M,
                               FullRange = 125M,
                               Shots = 7,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = true,
                               UbWeight = 8M,
                               MinSt = 10,
                               ItemSize = " - 5",
                               UsPrice = 400M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: WeaponAttackTypeInit.Primary, typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Winchester Model 70(.30 - 06)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: InitTl.Tl7, lc: InitLc.Ll3)
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 4,
                               DefAcc = 6,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 1000M,
                               FullRange = 4200M,
                               Shots = 4,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = true,
                               UbWeight = 8.7M,
                               MinSt = 10,
                               ItemSize = " - 5",
                               UsPrice = 1640M,
                               TwoHanded = true
                           });


            #endregion

            context.SaveChanges();
        //    base.Seed(context);

            // This method will be called after migrating to the latest version.

            // You can use the DbSet<T>.AddOrUpdate() helper extension method 
            // to avoid creating duplicate seed data.
        }
    }
}
