namespace GurpsDb.DbInitialData
{
    using System.Data.Entity;
    using System.Data.Entity.Migrations;

    using GurpsDb.GurpsModel;

    public static class GurpsAttachClassInit
    {
        static GurpsAttachClassInit()
        {
            Default = new GAttachClass { NameClass = "Def" };
            SIGHTS_AND_AIMING_AIDS = new GAttachClass { NameClass = "SIGHTS AND AIMING AIDS" };
            SOUND_SUPPRESSORS = new GAttachClass { NameClass = "SOUND SUPPRESSORS" };
            STOCKS_TRIPODS_AND_BIPODS = new GAttachClass { NameClass = "STOCKS, TRIPODS, AND BIPODS" };
            HOLSTERS_SCABBARDS_AND_SLINGS = new GAttachClass { NameClass = "HOLSTERS, SCABBARDS, AND SLINGS" };
            MAGAZINE_MODIFICATIONS_AND_RELOADING_AIDS =
                new GAttachClass { NameClass = "MAGAZINE MODIFICATIONS AND RELOADING AIDS" };
            MISCELLANEOUS_ACCESSORIES_AND_MODIFICATIONS =
                new GAttachClass { NameClass = "MISCELLANEOUS ACCESSORIES AND MODIFICATIONS" };


        }

        public readonly static GAttachClass Default;
        public readonly static GAttachClass SIGHTS_AND_AIMING_AIDS;
        public readonly static GAttachClass SOUND_SUPPRESSORS;
        public readonly static GAttachClass STOCKS_TRIPODS_AND_BIPODS;
        public readonly static GAttachClass HOLSTERS_SCABBARDS_AND_SLINGS;
        public readonly static GAttachClass MAGAZINE_MODIFICATIONS_AND_RELOADING_AIDS;
        public readonly static GAttachClass MISCELLANEOUS_ACCESSORIES_AND_MODIFICATIONS;


    }

    internal static class GurpsClassInit
    {
        static GurpsClassInit()
        {
            None = new GurpsClass { Name = "None" };
            Artillery = new GurpsClass { Name = "Artillery" };
            BeamWeapons = new GurpsClass { Name = "Beam Weapons" };
            Gunner = new GurpsClass { Name = "Gunner" };
            Guns = new GurpsClass { Name = "Guns" };
            LiquidProjector = new GurpsClass { Name = "Liquid Projector" };
            ThrownWeapon = new GurpsClass { Name = "Thrown Weapon" };

        }

        public readonly static GurpsClass None;
        public readonly static GurpsClass Artillery;
        public readonly static GurpsClass BeamWeapons;
        public readonly static GurpsClass Gunner;
        public readonly static GurpsClass Guns;
        public readonly static GurpsClass LiquidProjector;
        public readonly static GurpsClass ThrownWeapon;

        internal static void InitAddOrUpdate(this DbSet<GurpsClass> context)
        {
            context.AddOrUpdate(None);              // 1
            context.AddOrUpdate(Artillery);         // 2
            context.AddOrUpdate(BeamWeapons);      // 3
            context.AddOrUpdate(Gunner);            // 4
            context.AddOrUpdate(Guns);              // 5
            context.AddOrUpdate(LiquidProjector);  // 6     
            context.AddOrUpdate(ThrownWeapon);     // 7
        }
    }

    internal static class ItemClassInit
    {
        static ItemClassInit()
        {
            All = new ItemClass { Name = "All" };
            Weapon = new ItemClass { Name = "Weapon" };
            Ammo = new ItemClass { Name = "Ammo" };
            Attachment = new ItemClass { Name = "Attachment" };
            RandomItem = new ItemClass { Name = "Random Item" };
            EXPLOSIVE = new ItemClass { Name = "EXPLOSIVE" };
            Drug = new ItemClass { Name = "Drug" };
            LOADBEARINGEQUIPMENT = new ItemClass { Name = "LOADBEARINGEQUIPMENT" };
            ARMOUR = new ItemClass { Name = "ARMOUR" };

        }

        public readonly static ItemClass All;
        public readonly static ItemClass Weapon;
        public readonly static ItemClass Ammo;
        public readonly static ItemClass Attachment;
        public readonly static ItemClass RandomItem;
        public readonly static ItemClass EXPLOSIVE;
        public readonly static ItemClass Drug;
        public readonly static ItemClass LOADBEARINGEQUIPMENT;
        public readonly static ItemClass ARMOUR;

        internal static void InitAddOrUpdate(this DbSet<ItemClass> context)
        {
            context.AddOrUpdate(All);
            context.AddOrUpdate(Weapon);
            context.AddOrUpdate(Ammo);
            context.AddOrUpdate(Attachment);
            context.AddOrUpdate(RandomItem);
            context.AddOrUpdate(EXPLOSIVE);
            context.AddOrUpdate(Drug);
            context.AddOrUpdate(LOADBEARINGEQUIPMENT);
            context.AddOrUpdate(ARMOUR);
        }
    }

    internal static class WeaponAttackTypeInit
    {
        static WeaponAttackTypeInit()
        {
            Primary = new WeaponAttackType("Primary", "ee");
            FollowUp = new WeaponAttackType("Follow-up", "ee");
            Linked = new WeaponAttackType("Linked", "ee");

        }

        public readonly static WeaponAttackType Primary;
        public readonly static WeaponAttackType FollowUp;
        public readonly static WeaponAttackType Linked;
    }

}