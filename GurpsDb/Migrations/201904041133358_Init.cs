namespace GurpsDb.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Init : DbMigration
    {
        public override void Up()
        {
            this.CreateTable(
                "CharDB.Advantage",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(maxLength: 50),
                        NameCompare = c.String(maxLength: 50),
                        Typeadc = c.String(maxLength: 50),
                        Levels = c.String(maxLength: 50),
                        PointsPerLevel = c.String(maxLength: 50),
                        BasePoints = c.String(maxLength: 50),
                        Reference = c.String(maxLength: 50),
                        Notes = c.String(maxLength: 500),
                        Cr = c.String(maxLength: 50),
                        Versionadv = c.String(maxLength: 50),
                        RoundDown = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.Id);

            this.CreateTable(
                "CharDB.AttributeBonus",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        FkSkill = c.Int(),
                        FkAmount = c.Int(),
                        AttributeLimitation = c.String(maxLength: 50),
                        AttributeValue = c.String(maxLength: 50),
                        AmountPerLevel = c.String(maxLength: 50),
                        AmountValue = c.String(maxLength: 50),
                        FkAdvantage = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("CharDB.GurpsSkill", t => t.FkSkill, cascadeDelete: true)
                .ForeignKey("CharDB.Advantage", t => t.FkAdvantage, cascadeDelete: true)
                .Index(t => t.FkSkill)
                .Index(t => t.FkAdvantage);

            this.CreateTable(
                "CharDB.GurpsSkill",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        NameSkill = c.String(maxLength: 50),
                        Specialization = c.String(maxLength: 500),
                        Difficulty = c.String(maxLength: 50),
                        Points = c.Int(),
                        Reference = c.String(maxLength: 50),
                        TypeSpecialization = c.Boolean(),
                        DefaultModifier = c.Int(),
                        Version = c.String(maxLength: 50),
                        EncumbrancePenaltyMultiplier = c.String(maxLength: 50),
                        Notes = c.String(maxLength: 500),
                        IdDifficulty = c.Int(),
                        IdSpecialization = c.Int(),
                        IdtechLevel = c.Int(),
                        LimitT = c.String(maxLength: 50),
                        TypeSkTh = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Tl", t => t.IdtechLevel)
                .ForeignKey("CharDB.DifficultySkill", t => t.IdDifficulty)
                .ForeignKey("CharDB.GurpsSkill", t => t.IdSpecialization)
                .Index(t => t.IdDifficulty)
                .Index(t => t.IdSpecialization)
                .Index(t => t.IdtechLevel);

            this.CreateTable(
                "CharDB.CharSkill",
                c => new
                    {
                        idSkill = c.Int(nullable: false),
                        idChar = c.Int(nullable: false),
                        PointOfSkill = c.Int(),
                    })
                .PrimaryKey(t => new { t.idSkill, t.idChar })
                .ForeignKey("CharDB.CharacterDb", t => t.idChar, cascadeDelete: true)
                .ForeignKey("CharDB.GurpsSkill", t => t.idSkill, cascadeDelete: true)
                .Index(t => t.idSkill)
                .Index(t => t.idChar);

            this.CreateTable(
                "CharDB.CharacterDb",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(maxLength: 80),
                        StrengthPoints = c.Int(nullable: false),
                        DexterityPoints = c.Int(nullable: false),
                        IntelligencePoints = c.Int(nullable: false),
                        HealthPoints = c.Int(nullable: false),
                        MaxHPPoints = c.Int(nullable: false),
                        MaxFPPoints = c.Int(nullable: false),
                        PerceptionPoints = c.Int(nullable: false),
                        WillpowerPoints = c.Int(nullable: false),
                        BasicSpeedPoints = c.Decimal(nullable: false, precision: 18, scale: 2),
                        BasicMovePoints = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id);

            this.CreateTable(
                "CharDB.InventoryOfChar",
                c => new
                    {
                        Id = c.Int(nullable: false),
                        IdCharacter = c.Int(nullable: false),
                        IdItem = c.Int(nullable: false),
                        Count = c.Long(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Item", t => t.IdItem, cascadeDelete: true)
                .ForeignKey("CharDB.CharacterDb", t => t.IdCharacter, cascadeDelete: true)
                .Index(t => t.IdCharacter)
                .Index(t => t.IdItem);

            this.CreateTable(
                "dbo.Item",
                c => new
                    {
                        UiIndex = c.Int(nullable: false, identity: true),
                        SzItemName = c.String(nullable: false, maxLength: 80),
                        SzLongItemName = c.String(maxLength: 80),
                        SzItemDesc = c.String(),
                        UsItemClass = c.Int(nullable: false),
                        UbClassIndex = c.Int(nullable: false),
                        UbWeight = c.Decimal(nullable: false, precision: 19, scale: 4),
                        ItemSize = c.String(nullable: false, maxLength: 80),
                        UsPrice = c.Decimal(nullable: false, storeType: "money"),
                        Damageable = c.Boolean(nullable: false),
                        Repairable = c.Boolean(nullable: false),
                        WaterDamages = c.Boolean(nullable: false),
                        Metal = c.Boolean(nullable: false),
                        TwoHanded = c.Boolean(nullable: false),
                        Electronic = c.Boolean(nullable: false),
                        Ht = c.Boolean(nullable: false),
                        Ut = c.Boolean(nullable: false),
                        NeedsBatteries = c.Boolean(nullable: false),
                        HaveFingerPrintId = c.Boolean(nullable: false),
                        Tl = c.Int(nullable: false),
                        Lc = c.Int(nullable: false),
                        SizeBatteries = c.String(maxLength: 4),
                        LockPickModifier = c.Decimal(precision: 18, scale: 2),
                        CrowbarModifier = c.Decimal(precision: 18, scale: 2),
                        DisarmModifier = c.Decimal(precision: 18, scale: 2),
                        RepairModifier = c.Decimal(precision: 18, scale: 2),
                        DamageChance = c.Decimal(precision: 18, scale: 2),
                        ItemImage = c.Binary(),
                        MinSt = c.Int(nullable: false),
                        Link = c.String(),
                        Used = c.Boolean(nullable: false),
                        Dt = c.DateTime(),
                        CountOfBat = c.Int(nullable: false),
                        WorksOnBat = c.String(nullable: false, maxLength: 15),
                    })
                .PrimaryKey(t => t.UiIndex)
                .ForeignKey("dbo.ItemSubClass", t => t.UsItemClass)
                .ForeignKey("dbo.Lc", t => t.Lc)
                .ForeignKey("dbo.Tl", t => t.Tl)
                .Index(t => t.UsItemClass)
                .Index(t => t.Tl)
                .Index(t => t.Lc);

            this.CreateTable(
                "dbo.AvailableAttachSlot",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        RItemId = c.Int(nullable: false),
                        RAttachmentslot = c.Int(nullable: false),
                        RAttachmentmount = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.AttachmentMount", t => t.RAttachmentmount)
                .ForeignKey("dbo.Item", t => t.RItemId)
                .Index(t => t.RItemId)
                .Index(t => t.RAttachmentmount);

            this.CreateTable(
                "dbo.AttachmentMount",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(maxLength: 50),
                        IdAttacClass = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.AttachmentSlot", t => t.IdAttacClass)
                .Index(t => t.IdAttacClass);

            this.CreateTable(
                "dbo.BoxItem",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        BoxName = c.Int(nullable: false),
                        Items = c.Int(nullable: false),
                        CountItems = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.AnyBoxNameType", t => t.BoxName, cascadeDelete: true)
                .ForeignKey("dbo.Item", t => t.Items)
                .Index(t => t.BoxName)
                .Index(t => t.Items);

            this.CreateTable(
                "dbo.AnyBoxNameType",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        IsSelected = c.Boolean(nullable: false),
                        NameOfBox = c.String(maxLength: 50, unicode: false),
                        TypeOfBox = c.Int(nullable: false),
                        ParentBoxName = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.AnyBoxNameType", t => t.ParentBoxName)
                .ForeignKey("dbo.TypeOfBox", t => t.TypeOfBox, cascadeDelete: true)
                .Index(t => t.TypeOfBox)
                .Index(t => t.ParentBoxName);

            this.CreateTable(
                "dbo.TypeOfBox",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        NameOfType = c.String(maxLength: 50, unicode: false),
                    })
                .PrimaryKey(t => t.Id);

            this.CreateTable(
                "dbo.GAvAttachClass",
                c => new
                    {
                        IdAttach = c.Int(nullable: false),
                        IdGSubClass = c.Int(nullable: false),
                        IdAttachClass = c.Int(),
                    })
                .PrimaryKey(t => new { t.IdAttach, t.IdGSubClass })
                .ForeignKey("dbo.GSubAttachClass", t => t.IdGSubClass)
                .ForeignKey("dbo.Attachment", t => t.IdAttach)
                .Index(t => t.IdAttach)
                .Index(t => t.IdGSubClass);

            this.CreateTable(
                "dbo.GSubAttachClass",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        SubAttachName = c.String(nullable: false, maxLength: 50),
                        AttachClass = c.Int(nullable: false),
                        SubAttachDescription = c.String(),
                        Attachmentslot = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.AttachmentSlot", t => t.Attachmentslot)
                .ForeignKey("dbo.GAttachClass", t => t.AttachClass)
                .Index(t => t.AttachClass)
                .Index(t => t.Attachmentslot);

            this.CreateTable(
                "dbo.AttachmentSlot",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        AttachmentSlotName = c.String(nullable: false, maxLength: 50),
                    })
                .PrimaryKey(t => t.Id);

            this.CreateTable(
                "dbo.GAttachClass",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        NameClass = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.Id);

            this.CreateTable(
                "dbo.ItemSubClass",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        NameSub = c.String(maxLength: 50),
                        IdItemClass = c.Int(nullable: false),
                        Type = c.String(maxLength: 50),
                        IdGurpsSubClass = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.GurpsClass", t => t.IdGurpsSubClass)
                .ForeignKey("dbo.ItemClass", t => t.IdItemClass)
                .Index(t => t.IdItemClass)
                .Index(t => t.IdGurpsSubClass);

            this.CreateTable(
                "dbo.GurpsClass",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(nullable: false, maxLength: 16),
                    })
                .PrimaryKey(t => t.Id);

            this.CreateTable(
                "dbo.ItemClass",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(nullable: false, maxLength: 70),
                    })
                .PrimaryKey(t => t.Id);

            this.CreateTable(
                "dbo.Lc",
                c => new
                    {
                        IdLc = c.Int(nullable: false, identity: true),
                        NameLc = c.String(maxLength: 10),
                        ShortDes = c.String(maxLength: 15),
                        Description = c.String(maxLength: 300),
                    })
                .PrimaryKey(t => t.IdLc);

            this.CreateTable(
                "dbo.Tl",
                c => new
                    {
                        IdTl = c.Int(nullable: false, identity: true),
                        NameTl = c.String(maxLength: 50),
                        Description = c.String(maxLength: 60),
                        StartMoney = c.Decimal(nullable: false, precision: 19, scale: 4),
                    })
                .PrimaryKey(t => t.IdTl);

            this.CreateTable(
                "dbo.Caliber",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        CaliberName = c.String(nullable: false, maxLength: 255),
                        AltCaliberName = c.String(maxLength: 255),
                        ClassOfCaliber = c.String(nullable: false, maxLength: 50),
                        DimOfBulletSi = c.Decimal(precision: 18, scale: 2),
                        DimOfBulletUs = c.Decimal(precision: 18, scale: 2),
                    })
                .PrimaryKey(t => t.Id);

            this.CreateTable(
                "dbo.WeaponDamage",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        IdWeapon = c.Int(nullable: false),
                        IdWeaponAttackType = c.Int(nullable: false),
                        Damage = c.String(maxLength: 50),
                        ArmorDivision = c.Decimal(nullable: false, precision: 5, scale: 2),
                        IdTypeOfDamage1 = c.Int(),
                        IdTypeOfDamage2 = c.Int(),
                        TypeOfDamage1Text = c.String(maxLength: 50),
                        TypeOfDamage2Text = c.String(maxLength: 50),
                        Descrip = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.TypeOfDamage", t => t.IdTypeOfDamage1)
                .ForeignKey("dbo.TypeOfDamage", t => t.IdTypeOfDamage2)
                .ForeignKey("dbo.WeaponAttackType", t => t.IdWeaponAttackType)
                .ForeignKey("dbo.Weapon", t => t.IdWeapon)
                .Index(t => t.IdWeapon)
                .Index(t => t.IdWeaponAttackType)
                .Index(t => t.IdTypeOfDamage1)
                .Index(t => t.IdTypeOfDamage2);

            this.CreateTable(
                "dbo.TypeOfDamage",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(nullable: false, maxLength: 5),
                        LongName = c.String(maxLength: 30),
                        MDamage = c.String(nullable: false, maxLength: 5),
                    })
                .PrimaryKey(t => t.Id);

            this.CreateTable(
                "dbo.WeaponAttackType",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(maxLength: 20),
                        Descr = c.String(maxLength: 150),
                    })
                .PrimaryKey(t => t.Id);

            this.CreateTable(
                "CharDB.DefaultSkill",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        IdSkillIn = c.Int(nullable: false),
                        IdSkillOut = c.Int(),
                        Modifier = c.Int(),
                        Type = c.String(maxLength: 10),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("CharDB.GurpsSkill", t => t.IdSkillIn, cascadeDelete: true)
                .ForeignKey("CharDB.GurpsSkill", t => t.IdSkillOut)
                .Index(t => t.IdSkillIn)
                .Index(t => t.IdSkillOut);

            this.CreateTable(
                "CharDB.DefSkillSome",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        NameSkill = c.String(maxLength: 50, unicode: false),
                        Specialization = c.String(maxLength: 50, unicode: false),
                        Type = c.String(maxLength: 50, unicode: false),
                        Modifier = c.String(maxLength: 50, unicode: false),
                        IdSkill = c.Int(),
                        IdRangeWeap = c.Int(),
                        IdMeleWeap = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("CharDB.MeleeWeapon", t => t.IdMeleWeap)
                .ForeignKey("CharDB.RangedWeapon", t => t.IdRangeWeap, cascadeDelete: true)
                .ForeignKey("CharDB.GurpsSkill", t => t.IdSkill, cascadeDelete: true)
                .Index(t => t.IdSkill)
                .Index(t => t.IdRangeWeap)
                .Index(t => t.IdMeleWeap);

            this.CreateTable(
                "CharDB.MeleeWeapon",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Damage = c.String(maxLength: 50, unicode: false),
                        Strength = c.String(maxLength: 50, unicode: false),
                        Usage = c.String(maxLength: 50, unicode: false),
                        Reach = c.String(maxLength: 50, unicode: false),
                        Parry = c.String(maxLength: 50, unicode: false),
                        Block = c.String(maxLength: 50, unicode: false),
                        IdAdv = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("CharDB.Advantage", t => t.IdAdv, cascadeDelete: true)
                .Index(t => t.IdAdv);

            this.CreateTable(
                "CharDB.RangedWeapon",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Damage = c.String(maxLength: 50, unicode: false),
                        Strength = c.String(maxLength: 50, unicode: false),
                        Usage = c.String(maxLength: 50, unicode: false),
                        Accuracy = c.String(maxLength: 50, unicode: false),
                        Range = c.String(maxLength: 50, unicode: false),
                        RateOfFire = c.String(maxLength: 50, unicode: false),
                        Recoil = c.String(maxLength: 50, unicode: false),
                        Shots = c.String(maxLength: 50, unicode: false),
                        Bulk = c.String(maxLength: 50, unicode: false),
                        IdAdv = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("CharDB.Advantage", t => t.IdAdv, cascadeDelete: true)
                .Index(t => t.IdAdv);

            this.CreateTable(
                "CharDB.DifficultySkill",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(maxLength: 50),
                        Cost = c.String(maxLength: 50),
                        BaseCost = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.Id);

            this.CreateTable(
                "CharDB.GurpsCategory",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        NameCategory = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.Id);

            this.CreateTable(
                "CharDB.NeedSkill",
                c => new
                    {
                        IdSkillIn = c.Int(nullable: false),
                        IdSkillOut = c.Int(),
                        Needed = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.IdSkillIn)
                .ForeignKey("CharDB.GurpsSkill", t => t.IdSkillIn, cascadeDelete: true)
                .ForeignKey("CharDB.GurpsSkill", t => t.IdSkillOut)
                .Index(t => t.IdSkillIn)
                .Index(t => t.IdSkillOut);

            this.CreateTable(
                "CharDB.PrereqListDb",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        All = c.String(maxLength: 10),
                        WhenTlCompare = c.String(maxLength: 10),
                        WhenTl = c.String(maxLength: 10),
                        CollegeCountCompare = c.String(maxLength: 10),
                        CollegeCount = c.String(maxLength: 10),
                        FkPrereqList = c.Int(),
                        FkSkill = c.Int(),
                        FkTechnique = c.Int(),
                        FkAdvantage = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("CharDB.PrereqListDb", t => t.FkPrereqList)
                .ForeignKey("CharDB.GurpsSkill", t => t.FkSkill, cascadeDelete: true)
                .ForeignKey("CharDB.Advantage", t => t.FkAdvantage, cascadeDelete: true)
                .Index(t => t.FkPrereqList)
                .Index(t => t.FkSkill)
                .Index(t => t.FkAdvantage);

            this.CreateTable(
                "CharDB.AdvantagePrereq",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        NameCompare = c.String(maxLength: 50),
                        Name = c.String(maxLength: 50),
                        NotesCompare = c.String(maxLength: 50),
                        Notes = c.String(maxLength: 50),
                        LevelCompare = c.String(maxLength: 50),
                        Level = c.String(maxLength: 50),
                        Has = c.String(maxLength: 50),
                        IdPrqList = c.Int(),
                        Value = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("CharDB.PrereqListDb", t => t.IdPrqList, cascadeDelete: true)
                .Index(t => t.IdPrqList);

            this.CreateTable(
                "CharDB.AttributePrereq",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Has = c.String(maxLength: 50),
                        Which = c.String(maxLength: 50),
                        Compare = c.String(maxLength: 50),
                        CombinedWith = c.String(maxLength: 50),
                        IdPrqList = c.Int(),
                        Value = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("CharDB.PrereqListDb", t => t.IdPrqList, cascadeDelete: true)
                .Index(t => t.IdPrqList);

            this.CreateTable(
                "CharDB.ContainedWeightPrereq",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Has = c.String(maxLength: 50),
                        Compare = c.String(maxLength: 50),
                        Value = c.String(maxLength: 50),
                        IdPrqList = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("CharDB.PrereqListDb", t => t.IdPrqList, cascadeDelete: true)
                .Index(t => t.IdPrqList);

            this.CreateTable(
                "CharDB.SkillPrereqDb",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        NameCompare = c.String(maxLength: 50),
                        Name = c.String(maxLength: 50),
                        SpecializationCompare = c.String(maxLength: 50),
                        Specialization = c.String(maxLength: 50),
                        LevelSpCompare = c.String(maxLength: 50),
                        LevelSp = c.String(maxLength: 50),
                        Has = c.String(maxLength: 10),
                        IdprereqList = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("CharDB.PrereqListDb", t => t.IdprereqList, cascadeDelete: true)
                .Index(t => t.IdprereqList);

            this.CreateTable(
                "CharDB.SpellPrereqDb",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        NameCompare = c.String(maxLength: 50),
                        Name = c.String(maxLength: 50, unicode: false),
                        CollegeCompare = c.String(maxLength: 50, unicode: false),
                        College = c.String(maxLength: 50, unicode: false),
                        CollegeCountCompare = c.String(maxLength: 50, unicode: false),
                        CollegeCount = c.String(maxLength: 50, unicode: false),
                        QuantityCompare = c.String(maxLength: 50, unicode: false),
                        Quantity = c.String(maxLength: 50, unicode: false),
                        Anyt = c.String(maxLength: 50, unicode: false),
                        Has = c.String(maxLength: 50, unicode: false),
                        IdPrqlist = c.Int(),
                        Value = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("CharDB.PrereqListDb", t => t.IdPrqlist, cascadeDelete: true)
                .Index(t => t.IdPrqlist);

            this.CreateTable(
                "CharDB.WeaponBonus",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        NameCompare = c.String(maxLength: 50, unicode: false),
                        Name = c.String(maxLength: 50, unicode: false),
                        SpecializationCompare = c.String(maxLength: 50, unicode: false),
                        Specialization = c.String(maxLength: 50, unicode: false),
                        LevelCompare = c.String(maxLength: 50, unicode: false),
                        Level = c.String(maxLength: 50, unicode: false),
                        FkSkill = c.Int(),
                        AmountPerLevel = c.String(maxLength: 50),
                        AmountValue = c.String(maxLength: 50),
                        FkAdv = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("CharDB.GurpsSkill", t => t.FkSkill, cascadeDelete: true)
                .ForeignKey("CharDB.Advantage", t => t.FkAdv, cascadeDelete: true)
                .Index(t => t.FkSkill)
                .Index(t => t.FkAdv);

            this.CreateTable(
                "CharDB.CostReduction",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Attribute = c.String(maxLength: 50, unicode: false),
                        Percentage = c.String(maxLength: 50, unicode: false),
                        IdAdv = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("CharDB.Advantage", t => t.IdAdv, cascadeDelete: true)
                .Index(t => t.IdAdv);

            this.CreateTable(
                "CharDB.DrBonusDb",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Location = c.String(maxLength: 50),
                        PerLevel = c.String(maxLength: 50),
                        Value = c.String(maxLength: 50),
                        IdAdv = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("CharDB.Advantage", t => t.IdAdv, cascadeDelete: true)
                .Index(t => t.IdAdv);

            this.CreateTable(
                "CharDB.Modifier",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(maxLength: 50, unicode: false),
                        NameC = c.String(maxLength: 50, unicode: false),
                        Notes = c.String(maxLength: 50, unicode: false),
                        NotesC = c.String(maxLength: 50, unicode: false),
                        Levels = c.String(maxLength: 50, unicode: false),
                        Reference = c.String(maxLength: 50, unicode: false),
                        Affects = c.String(maxLength: 50, unicode: false),
                        Version = c.String(maxLength: 50, unicode: false),
                        Enabled = c.String(maxLength: 50, unicode: false),
                        IdAdv = c.Int(),
                        Cost = c.String(maxLength: 50),
                        CostType = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("CharDB.Advantage", t => t.IdAdv)
                .Index(t => t.IdAdv);

            this.CreateTable(
                "CharDB.SkillBonusDb",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(maxLength: 50, unicode: false),
                        Namecompare = c.String(maxLength: 50, unicode: false),
                        Specialization = c.String(maxLength: 50, unicode: false),
                        Specializationcompare = c.String(maxLength: 50, unicode: false),
                        AmountPerLevel = c.String(maxLength: 50, unicode: false),
                        AmountValue = c.String(maxLength: 50, unicode: false),
                        FkAdv = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("CharDB.Advantage", t => t.FkAdv, cascadeDelete: true)
                .Index(t => t.FkAdv);

            this.CreateTable(
                "CharDB.SpellBonus",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        SpellName = c.String(maxLength: 50, unicode: false),
                        SpellNameC = c.String(maxLength: 50, unicode: false),
                        CollegeName = c.String(maxLength: 50, unicode: false),
                        CollegeNameC = c.String(maxLength: 50, unicode: false),
                        AllColleges = c.String(maxLength: 50, unicode: false),
                        AmountperLevel = c.String(maxLength: 50, unicode: false),
                        AmountValue = c.String(maxLength: 50, unicode: false),
                        IdAdv = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("CharDB.Advantage", t => t.IdAdv, cascadeDelete: true)
                .Index(t => t.IdAdv);

            this.CreateTable(
                "pbo.Ammoupgrates",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(nullable: false, maxLength: 150),
                        Shortname = c.String(nullable: false, maxLength: 20),
                        Malf = c.Int(nullable: false),
                        ArDivX = c.Decimal(nullable: false, precision: 4, scale: 2),
                        AccAdd = c.Int(nullable: false),
                        AccX = c.Decimal(nullable: false, precision: 4, scale: 2),
                        DamageX = c.Decimal(nullable: false, precision: 4, scale: 2),
                        DamType = c.String(maxLength: 5),
                        RangeX12 = c.Decimal(nullable: false, precision: 4, scale: 2),
                        RangeX = c.Decimal(nullable: false, precision: 4, scale: 2),
                        StX = c.Decimal(nullable: false, precision: 4, scale: 2),
                        WpsX = c.Decimal(nullable: false, precision: 4, scale: 2),
                        CpsX = c.Decimal(nullable: false, precision: 4, scale: 2),
                        Hearing = c.Int(nullable: false),
                        AmmoClass = c.String(maxLength: 15),
                        MinCaliber = c.Decimal(precision: 4, scale: 2),
                        MaxCalider = c.Decimal(precision: 4, scale: 2),
                        DtMinAmmoCAliber = c.Decimal(precision: 4, scale: 2),
                        ConditionDtMinAmmoCal = c.String(maxLength: 3),
                        HearingTable = c.Int(nullable: false),
                        Upgrates = c.String(nullable: false, maxLength: 150),
                        FollowUp = c.String(maxLength: 50),
                        Linked = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.Id);

            this.CreateTable(
                "dbo.Battery",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(nullable: false, maxLength: 50),
                        SmolName = c.String(maxLength: 50),
                        Description = c.String(maxLength: 500),
                        Cpp = c.Decimal(storeType: "money"),
                        Wpp = c.Decimal(precision: 7, scale: 3),
                    })
                .PrimaryKey(t => t.Id);

            this.CreateTable(
                "dbo.CombineWeap",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        IdWeapon = c.Int(nullable: false),
                        ScopeSelect = c.Int(),
                        LaserSelect = c.Int(),
                        LightSelect = c.Int(),
                        BipodSelect = c.Int(),
                        SilenserSelect = c.Int(),
                        LauncherSelect = c.Int(),
                        BayonetSelect = c.Int(),
                        MagazineSelect = c.Int(),
                        InternalSelect = c.Int(),
                        ExternalSelect = c.Int(),
                        StockSelect = c.Int(),
                    })
                .PrimaryKey(t => t.Id);

            this.CreateTable(
                "dbo.LaserColorEf",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(maxLength: 10),
                        LaserColorDayEfect = c.Decimal(precision: 4, scale: 2),
                    })
                .PrimaryKey(t => t.Id);

            this.CreateTable(
                "CharDB.GurpsSkillCategory88",
                c => new
                    {
                        IdSkill = c.Int(nullable: false),
                        idSkillCategory = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.IdSkill, t.idSkillCategory })
                .ForeignKey("CharDB.GurpsSkill", t => t.IdSkill, cascadeDelete: true)
                .ForeignKey("CharDB.GurpsCategory", t => t.idSkillCategory, cascadeDelete: true)
                .Index(t => t.IdSkill)
                .Index(t => t.idSkillCategory);

            this.CreateTable(
                "CharDB.AdvantageCategory88",
                c => new
                    {
                        idAdvantage = c.Int(nullable: false),
                        idGurpsCategory = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.idAdvantage, t.idGurpsCategory })
                .ForeignKey("CharDB.Advantage", t => t.idAdvantage, cascadeDelete: true)
                .ForeignKey("CharDB.GurpsCategory", t => t.idGurpsCategory, cascadeDelete: true)
                .Index(t => t.idAdvantage)
                .Index(t => t.idGurpsCategory);

            this.CreateTable(
                "dbo.Armour",
                c => new
                    {
                        UiIndex = c.Int(nullable: false),
                        UbArmourClass = c.Int(nullable: false),
                        UbProtection = c.Int(nullable: false),
                        UbCoverage = c.Int(nullable: false),
                        UbDegradePercent = c.Int(nullable: false),
                        FlakJacket = c.Boolean(nullable: false),
                        LeatherJacket = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.UiIndex)
                .ForeignKey("dbo.Item", t => t.UiIndex)
                .Index(t => t.UiIndex);

            this.CreateTable(
                "dbo.Attachment",
                c => new
                    {
                        UiIndex = c.Int(nullable: false),
                        RAttachmentClass = c.Int(nullable: false),
                        Attachmentmount = c.String(maxLength: 50),
                        HiddenAttachment = c.Boolean(nullable: false),
                        NoiseReduction = c.Int(),
                        HideMuzzleFlash = c.Boolean(nullable: false),
                        RangeBonus = c.Int(),
                        AimBonus = c.Int(),
                        MinRangeForAimBonus = c.Int(),
                        MagSizeBonus = c.Int(),
                        BurstSizeBonus = c.Int(),
                        RateOfFireBonus = c.Int(),
                        DamageBonus = c.Int(),
                        ScopeMagFactor = c.Decimal(precision: 4, scale: 2),
                        HearingRangeBonus = c.Int(),
                        VisionRangeBonus = c.Int(),
                        NightVisionRangeBonus = c.Int(),
                        DayVisionRangeBonus = c.Int(),
                        CaveVisionRangeBonus = c.Int(),
                        BrightLightVisionRangeBonus = c.Int(),
                        PercentTunnelVision = c.Int(),
                        FlashLightRange = c.Int(),
                        RecoilModifier = c.Int(),
                        GSubAttachClass = c.Int(nullable: false),
                        GAttachClass = c.Int(nullable: false),
                        Darkness = c.Int(),
                        BulkAdd = c.Int(),
                        Fix = c.Boolean(nullable: false),
                        BatTimeWork = c.Int(),
                        Tritium = c.Boolean(nullable: false),
                        ScopeMagMin = c.Int(),
                        ScopeMagMax = c.Int(),
                        AccAddmax = c.Int(),
                        IdAttachmentmount = c.Int(nullable: false),
                        ImpVisSights = c.Boolean(nullable: false),
                        BlockIronSight = c.Boolean(nullable: false),
                        Collimator = c.Boolean(nullable: false),
                        Reflex = c.Boolean(nullable: false),
                        Targetingprogram = c.Boolean(nullable: false),
                        Laserrangefinder = c.Boolean(nullable: false),
                        LaserRFrange = c.Int(),
                        LaserRfAcc = c.Int(),
                        NightVision = c.Int(),
                        NeedIRillumination = c.Boolean(nullable: false),
                        Infravision = c.Boolean(nullable: false),
                        IrFilter = c.Boolean(nullable: false),
                        LightRange = c.Int(),
                        IrLigRange = c.Int(),
                        LaserRange = c.Int(),
                        LaserColor = c.String(maxLength: 10),
                        LaserColorEf = c.Decimal(precision: 4, scale: 2),
                        UsedBatType = c.Int(),
                    })
                .PrimaryKey(t => t.UiIndex)
                .ForeignKey("dbo.Item", t => t.UiIndex)
                .ForeignKey("dbo.AttachmentMount", t => t.IdAttachmentmount)
                .Index(t => t.UiIndex)
                .Index(t => t.IdAttachmentmount);

            this.CreateTable(
                "dbo.Clothes",
                c => new
                    {
                        UiIndex = c.Int(nullable: false),
                        ComfortTemperature = c.String(maxLength: 255),
                        Wearout = c.String(),
                    })
                .PrimaryKey(t => t.UiIndex)
                .ForeignKey("dbo.Item", t => t.UiIndex)
                .Index(t => t.UiIndex);

            this.CreateTable(
                "dbo.Drug",
                c => new
                    {
                        UiIndex = c.Int(nullable: false),
                        Type = c.String(),
                        Wearout = c.String(),
                        Addict = c.String(),
                    })
                .PrimaryKey(t => t.UiIndex)
                .ForeignKey("dbo.Item", t => t.UiIndex)
                .Index(t => t.UiIndex);

            this.CreateTable(
                "dbo.Explosive",
                c => new
                    {
                        UiIndex = c.Int(nullable: false),
                        UbType = c.Int(nullable: false),
                        UbDamage = c.Int(nullable: false),
                        UbStunDamage = c.Int(nullable: false),
                        UbRadius = c.Int(nullable: false),
                        UbDuration = c.Int(nullable: false),
                        UbStartRadius = c.Int(nullable: false),
                        UbMagSize = c.Int(nullable: false),
                        UsNumFragments = c.Int(nullable: false),
                        UbFragType = c.Int(nullable: false),
                        UbFragDamage = c.Int(nullable: false),
                        UbFragRange = c.Int(nullable: false),
                        UbHorizontalDegree = c.Int(nullable: false),
                        UbVerticalDegree = c.Int(nullable: false),
                        BIndoorModifier = c.Decimal(nullable: false, precision: 38, scale: 0),
                        FExplodeOnImpact = c.Boolean(nullable: false),
                        GlGrenade = c.Boolean(nullable: false),
                        RlGrenade = c.Boolean(nullable: false),
                        Mine = c.Boolean(nullable: false),
                        Flare = c.Boolean(nullable: false),
                        Directional = c.Boolean(nullable: false),
                        ShapedCharge = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.UiIndex)
                .ForeignKey("dbo.Item", t => t.UiIndex)
                .Index(t => t.UiIndex);

            this.CreateTable(
                "dbo.Food",
                c => new
                    {
                        UiIndex = c.Int(nullable: false),
                        GetEnergy = c.String(maxLength: 50),
                        StorageLife = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.UiIndex)
                .ForeignKey("dbo.Item", t => t.UiIndex)
                .Index(t => t.UiIndex);

            this.CreateTable(
                "dbo.LoadBearingEquipment",
                c => new
                    {
                        UiIndex = c.Int(nullable: false),
                        LbeClass = c.Int(nullable: false),
                        LbeCombo = c.Int(nullable: false),
                        LbeFilledSize = c.Int(nullable: false),
                        LbeAvailableVolume = c.Int(nullable: false),
                        LbePocketsAvailable = c.Int(nullable: false),
                        LbePocketIndex1 = c.Int(nullable: false),
                        LbePocketIndex2 = c.Int(nullable: false),
                        LbePocketIndex3 = c.Int(nullable: false),
                        LbePocketIndex4 = c.Int(nullable: false),
                        LbePocketIndex5 = c.Int(nullable: false),
                        LbePocketIndex6 = c.Int(nullable: false),
                        LbePocketIndex7 = c.Int(nullable: false),
                        LbePocketIndex8 = c.Int(nullable: false),
                        LbePocketIndex9 = c.Int(nullable: false),
                        LbePocketIndex10 = c.Int(nullable: false),
                        LbePocketIndex11 = c.Int(nullable: false),
                        LbePocketIndex12 = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.UiIndex)
                .ForeignKey("dbo.Item", t => t.UiIndex)
                .Index(t => t.UiIndex);

            this.CreateTable(
                "dbo.Weapon",
                c => new
                    {
                        UiIndex = c.Int(nullable: false),
                        Caliber_Id = c.Int(),
                        DefAcc = c.Int(nullable: false),
                        AccAddin = c.Int(),
                        HalfRange = c.Decimal(nullable: false, precision: 10, scale: 4),
                        FullRange = c.Decimal(nullable: false, precision: 10, scale: 4),
                        MinRange = c.Boolean(nullable: false),
                        AWeight = c.Decimal(nullable: false, precision: 5, scale: 3),
                        Rof = c.Int(nullable: false),
                        FullAuto = c.Boolean(nullable: false),
                        RofForSh = c.Int(),
                        Shots = c.Int(nullable: false),
                        TimeForReload = c.Int(nullable: false),
                        SingleReload = c.Boolean(nullable: false),
                        Recoil = c.Int(nullable: false),
                        HeavyWeapon = c.Boolean(nullable: false),
                        AddInChamber = c.Boolean(nullable: false),
                        CutOffShots = c.Boolean(nullable: false),
                        CutOffShotsCount = c.Int(nullable: false),
                        GrenadeLauncher = c.Boolean(nullable: false),
                        RocketLauncher = c.Boolean(nullable: false),
                        Mortar = c.Boolean(nullable: false),
                        Cannon = c.Boolean(nullable: false),
                        SingleShotRocketLauncher = c.Boolean(nullable: false),
                        RocketRifle = c.Boolean(nullable: false),
                        Bulkfolded = c.Boolean(nullable: false),
                        Hcrof = c.Boolean(nullable: false),
                        HcrofValue = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.UiIndex)
                .ForeignKey("dbo.Item", t => t.UiIndex)
                .ForeignKey("dbo.Caliber", t => t.Caliber_Id)
                .Index(t => t.UiIndex)
                .Index(t => t.Caliber_Id);
            
        }
        
        public override void Down()
        {
            this.DropForeignKey("dbo.Weapon", "Caliber_Id", "dbo.Caliber");
            this.DropForeignKey("dbo.Weapon", "UiIndex", "dbo.Item");
            this.DropForeignKey("dbo.LoadBearingEquipment", "UiIndex", "dbo.Item");
            this.DropForeignKey("dbo.Food", "UiIndex", "dbo.Item");
            this.DropForeignKey("dbo.Explosive", "UiIndex", "dbo.Item");
            this.DropForeignKey("dbo.Drug", "UiIndex", "dbo.Item");
            this.DropForeignKey("dbo.Clothes", "UiIndex", "dbo.Item");
            this.DropForeignKey("dbo.Attachment", "IdAttachmentmount", "dbo.AttachmentMount");
            this.DropForeignKey("dbo.Attachment", "UiIndex", "dbo.Item");
            this.DropForeignKey("dbo.Armour", "UiIndex", "dbo.Item");
            this.DropForeignKey("CharDB.WeaponBonus", "FkAdv", "CharDB.Advantage");
            this.DropForeignKey("CharDB.SpellBonus", "IdAdv", "CharDB.Advantage");
            this.DropForeignKey("CharDB.SkillBonusDb", "FkAdv", "CharDB.Advantage");
            this.DropForeignKey("CharDB.RangedWeapon", "IdAdv", "CharDB.Advantage");
            this.DropForeignKey("CharDB.PrereqListDb", "FkAdvantage", "CharDB.Advantage");
            this.DropForeignKey("CharDB.Modifier", "IdAdv", "CharDB.Advantage");
            this.DropForeignKey("CharDB.MeleeWeapon", "IdAdv", "CharDB.Advantage");
            this.DropForeignKey("CharDB.AdvantageCategory88", "idGurpsCategory", "CharDB.GurpsCategory");
            this.DropForeignKey("CharDB.AdvantageCategory88", "idAdvantage", "CharDB.Advantage");
            this.DropForeignKey("CharDB.DrBonusDb", "IdAdv", "CharDB.Advantage");
            this.DropForeignKey("CharDB.CostReduction", "IdAdv", "CharDB.Advantage");
            this.DropForeignKey("CharDB.AttributeBonus", "FkAdvantage", "CharDB.Advantage");
            this.DropForeignKey("CharDB.WeaponBonus", "FkSkill", "CharDB.GurpsSkill");
            this.DropForeignKey("CharDB.PrereqListDb", "FkSkill", "CharDB.GurpsSkill");
            this.DropForeignKey("CharDB.SpellPrereqDb", "IdPrqlist", "CharDB.PrereqListDb");
            this.DropForeignKey("CharDB.SkillPrereqDb", "IdprereqList", "CharDB.PrereqListDb");
            this.DropForeignKey("CharDB.PrereqListDb", "FkPrereqList", "CharDB.PrereqListDb");
            this.DropForeignKey("CharDB.ContainedWeightPrereq", "IdPrqList", "CharDB.PrereqListDb");
            this.DropForeignKey("CharDB.AttributePrereq", "IdPrqList", "CharDB.PrereqListDb");
            this.DropForeignKey("CharDB.AdvantagePrereq", "IdPrqList", "CharDB.PrereqListDb");
            this.DropForeignKey("CharDB.NeedSkill", "IdSkillOut", "CharDB.GurpsSkill");
            this.DropForeignKey("CharDB.NeedSkill", "IdSkillIn", "CharDB.GurpsSkill");
            this.DropForeignKey("CharDB.GurpsSkill", "IdSpecialization", "CharDB.GurpsSkill");
            this.DropForeignKey("CharDB.GurpsSkillCategory88", "idSkillCategory", "CharDB.GurpsCategory");
            this.DropForeignKey("CharDB.GurpsSkillCategory88", "IdSkill", "CharDB.GurpsSkill");
            this.DropForeignKey("CharDB.GurpsSkill", "IdDifficulty", "CharDB.DifficultySkill");
            this.DropForeignKey("CharDB.DefSkillSome", "IdSkill", "CharDB.GurpsSkill");
            this.DropForeignKey("CharDB.DefSkillSome", "IdRangeWeap", "CharDB.RangedWeapon");
            this.DropForeignKey("CharDB.DefSkillSome", "IdMeleWeap", "CharDB.MeleeWeapon");
            this.DropForeignKey("CharDB.DefaultSkill", "IdSkillOut", "CharDB.GurpsSkill");
            this.DropForeignKey("CharDB.DefaultSkill", "IdSkillIn", "CharDB.GurpsSkill");
            this.DropForeignKey("CharDB.CharSkill", "idSkill", "CharDB.GurpsSkill");
            this.DropForeignKey("CharDB.InventoryOfChar", "IdCharacter", "CharDB.CharacterDb");
            this.DropForeignKey("dbo.WeaponDamage", "IdWeapon", "dbo.Weapon");
            this.DropForeignKey("dbo.WeaponDamage", "IdWeaponAttackType", "dbo.WeaponAttackType");
            this.DropForeignKey("dbo.WeaponDamage", "IdTypeOfDamage2", "dbo.TypeOfDamage");
            this.DropForeignKey("dbo.WeaponDamage", "IdTypeOfDamage1", "dbo.TypeOfDamage");
            this.DropForeignKey("CharDB.InventoryOfChar", "IdItem", "dbo.Item");
            this.DropForeignKey("dbo.BoxItem", "Items", "dbo.Item");
            this.DropForeignKey("dbo.AvailableAttachSlot", "RItemId", "dbo.Item");
            this.DropForeignKey("dbo.AvailableAttachSlot", "RAttachmentmount", "dbo.AttachmentMount");
            this.DropForeignKey("dbo.Item", "Tl", "dbo.Tl");
            this.DropForeignKey("CharDB.GurpsSkill", "IdtechLevel", "dbo.Tl");
            this.DropForeignKey("dbo.Item", "Lc", "dbo.Lc");
            this.DropForeignKey("dbo.ItemSubClass", "IdItemClass", "dbo.ItemClass");
            this.DropForeignKey("dbo.Item", "UsItemClass", "dbo.ItemSubClass");
            this.DropForeignKey("dbo.ItemSubClass", "IdGurpsSubClass", "dbo.GurpsClass");
            this.DropForeignKey("dbo.GAvAttachClass", "IdAttach", "dbo.Attachment");
            this.DropForeignKey("dbo.GAvAttachClass", "IdGSubClass", "dbo.GSubAttachClass");
            this.DropForeignKey("dbo.GSubAttachClass", "AttachClass", "dbo.GAttachClass");
            this.DropForeignKey("dbo.GSubAttachClass", "Attachmentslot", "dbo.AttachmentSlot");
            this.DropForeignKey("dbo.AttachmentMount", "IdAttacClass", "dbo.AttachmentSlot");
            this.DropForeignKey("dbo.AnyBoxNameType", "TypeOfBox", "dbo.TypeOfBox");
            this.DropForeignKey("dbo.BoxItem", "BoxName", "dbo.AnyBoxNameType");
            this.DropForeignKey("dbo.AnyBoxNameType", "ParentBoxName", "dbo.AnyBoxNameType");
            this.DropForeignKey("CharDB.CharSkill", "idChar", "CharDB.CharacterDb");
            this.DropForeignKey("CharDB.AttributeBonus", "FkSkill", "CharDB.GurpsSkill");
            this.DropIndex("dbo.Weapon", new[] { "Caliber_Id" });
            this.DropIndex("dbo.Weapon", new[] { "UiIndex" });
            this.DropIndex("dbo.LoadBearingEquipment", new[] { "UiIndex" });
            this.DropIndex("dbo.Food", new[] { "UiIndex" });
            this.DropIndex("dbo.Explosive", new[] { "UiIndex" });
            this.DropIndex("dbo.Drug", new[] { "UiIndex" });
            this.DropIndex("dbo.Clothes", new[] { "UiIndex" });
            this.DropIndex("dbo.Attachment", new[] { "IdAttachmentmount" });
            this.DropIndex("dbo.Attachment", new[] { "UiIndex" });
            this.DropIndex("dbo.Armour", new[] { "UiIndex" });
            this.DropIndex("CharDB.AdvantageCategory88", new[] { "idGurpsCategory" });
            this.DropIndex("CharDB.AdvantageCategory88", new[] { "idAdvantage" });
            this.DropIndex("CharDB.GurpsSkillCategory88", new[] { "idSkillCategory" });
            this.DropIndex("CharDB.GurpsSkillCategory88", new[] { "IdSkill" });
            this.DropIndex("CharDB.SpellBonus", new[] { "IdAdv" });
            this.DropIndex("CharDB.SkillBonusDb", new[] { "FkAdv" });
            this.DropIndex("CharDB.Modifier", new[] { "IdAdv" });
            this.DropIndex("CharDB.DrBonusDb", new[] { "IdAdv" });
            this.DropIndex("CharDB.CostReduction", new[] { "IdAdv" });
            this.DropIndex("CharDB.WeaponBonus", new[] { "FkAdv" });
            this.DropIndex("CharDB.WeaponBonus", new[] { "FkSkill" });
            this.DropIndex("CharDB.SpellPrereqDb", new[] { "IdPrqlist" });
            this.DropIndex("CharDB.SkillPrereqDb", new[] { "IdprereqList" });
            this.DropIndex("CharDB.ContainedWeightPrereq", new[] { "IdPrqList" });
            this.DropIndex("CharDB.AttributePrereq", new[] { "IdPrqList" });
            this.DropIndex("CharDB.AdvantagePrereq", new[] { "IdPrqList" });
            this.DropIndex("CharDB.PrereqListDb", new[] { "FkAdvantage" });
            this.DropIndex("CharDB.PrereqListDb", new[] { "FkSkill" });
            this.DropIndex("CharDB.PrereqListDb", new[] { "FkPrereqList" });
            this.DropIndex("CharDB.NeedSkill", new[] { "IdSkillOut" });
            this.DropIndex("CharDB.NeedSkill", new[] { "IdSkillIn" });
            this.DropIndex("CharDB.RangedWeapon", new[] { "IdAdv" });
            this.DropIndex("CharDB.MeleeWeapon", new[] { "IdAdv" });
            this.DropIndex("CharDB.DefSkillSome", new[] { "IdMeleWeap" });
            this.DropIndex("CharDB.DefSkillSome", new[] { "IdRangeWeap" });
            this.DropIndex("CharDB.DefSkillSome", new[] { "IdSkill" });
            this.DropIndex("CharDB.DefaultSkill", new[] { "IdSkillOut" });
            this.DropIndex("CharDB.DefaultSkill", new[] { "IdSkillIn" });
            this.DropIndex("dbo.WeaponDamage", new[] { "IdTypeOfDamage2" });
            this.DropIndex("dbo.WeaponDamage", new[] { "IdTypeOfDamage1" });
            this.DropIndex("dbo.WeaponDamage", new[] { "IdWeaponAttackType" });
            this.DropIndex("dbo.WeaponDamage", new[] { "IdWeapon" });
            this.DropIndex("dbo.ItemSubClass", new[] { "IdGurpsSubClass" });
            this.DropIndex("dbo.ItemSubClass", new[] { "IdItemClass" });
            this.DropIndex("dbo.GSubAttachClass", new[] { "Attachmentslot" });
            this.DropIndex("dbo.GSubAttachClass", new[] { "AttachClass" });
            this.DropIndex("dbo.GAvAttachClass", new[] { "IdGSubClass" });
            this.DropIndex("dbo.GAvAttachClass", new[] { "IdAttach" });
            this.DropIndex("dbo.AnyBoxNameType", new[] { "ParentBoxName" });
            this.DropIndex("dbo.AnyBoxNameType", new[] { "TypeOfBox" });
            this.DropIndex("dbo.BoxItem", new[] { "Items" });
            this.DropIndex("dbo.BoxItem", new[] { "BoxName" });
            this.DropIndex("dbo.AttachmentMount", new[] { "IdAttacClass" });
            this.DropIndex("dbo.AvailableAttachSlot", new[] { "RAttachmentmount" });
            this.DropIndex("dbo.AvailableAttachSlot", new[] { "RItemId" });
            this.DropIndex("dbo.Item", new[] { "Lc" });
            this.DropIndex("dbo.Item", new[] { "Tl" });
            this.DropIndex("dbo.Item", new[] { "UsItemClass" });
            this.DropIndex("CharDB.InventoryOfChar", new[] { "IdItem" });
            this.DropIndex("CharDB.InventoryOfChar", new[] { "IdCharacter" });
            this.DropIndex("CharDB.CharSkill", new[] { "idChar" });
            this.DropIndex("CharDB.CharSkill", new[] { "idSkill" });
            this.DropIndex("CharDB.GurpsSkill", new[] { "IdtechLevel" });
            this.DropIndex("CharDB.GurpsSkill", new[] { "IdSpecialization" });
            this.DropIndex("CharDB.GurpsSkill", new[] { "IdDifficulty" });
            this.DropIndex("CharDB.AttributeBonus", new[] { "FkAdvantage" });
            this.DropIndex("CharDB.AttributeBonus", new[] { "FkSkill" });
            this.DropTable("dbo.Weapon");
            this.DropTable("dbo.LoadBearingEquipment");
            this.DropTable("dbo.Food");
            this.DropTable("dbo.Explosive");
            this.DropTable("dbo.Drug");
            this.DropTable("dbo.Clothes");
            this.DropTable("dbo.Attachment");
            this.DropTable("dbo.Armour");
            this.DropTable("CharDB.AdvantageCategory88");
            this.DropTable("CharDB.GurpsSkillCategory88");
            this.DropTable("dbo.LaserColorEf");
            this.DropTable("dbo.CombineWeap");
            this.DropTable("dbo.Battery");
            this.DropTable("pbo.Ammoupgrates");
            this.DropTable("CharDB.SpellBonus");
            this.DropTable("CharDB.SkillBonusDb");
            this.DropTable("CharDB.Modifier");
            this.DropTable("CharDB.DrBonusDb");
            this.DropTable("CharDB.CostReduction");
            this.DropTable("CharDB.WeaponBonus");
            this.DropTable("CharDB.SpellPrereqDb");
            this.DropTable("CharDB.SkillPrereqDb");
            this.DropTable("CharDB.ContainedWeightPrereq");
            this.DropTable("CharDB.AttributePrereq");
            this.DropTable("CharDB.AdvantagePrereq");
            this.DropTable("CharDB.PrereqListDb");
            this.DropTable("CharDB.NeedSkill");
            this.DropTable("CharDB.GurpsCategory");
            this.DropTable("CharDB.DifficultySkill");
            this.DropTable("CharDB.RangedWeapon");
            this.DropTable("CharDB.MeleeWeapon");
            this.DropTable("CharDB.DefSkillSome");
            this.DropTable("CharDB.DefaultSkill");
            this.DropTable("dbo.WeaponAttackType");
            this.DropTable("dbo.TypeOfDamage");
            this.DropTable("dbo.WeaponDamage");
            this.DropTable("dbo.Caliber");
            this.DropTable("dbo.Tl");
            this.DropTable("dbo.Lc");
            this.DropTable("dbo.ItemClass");
            this.DropTable("dbo.GurpsClass");
            this.DropTable("dbo.ItemSubClass");
            this.DropTable("dbo.GAttachClass");
            this.DropTable("dbo.AttachmentSlot");
            this.DropTable("dbo.GSubAttachClass");
            this.DropTable("dbo.GAvAttachClass");
            this.DropTable("dbo.TypeOfBox");
            this.DropTable("dbo.AnyBoxNameType");
            this.DropTable("dbo.BoxItem");
            this.DropTable("dbo.AttachmentMount");
            this.DropTable("dbo.AvailableAttachSlot");
            this.DropTable("dbo.Item");
            this.DropTable("CharDB.InventoryOfChar");
            this.DropTable("CharDB.CharacterDb");
            this.DropTable("CharDB.CharSkill");
            this.DropTable("CharDB.GurpsSkill");
            this.DropTable("CharDB.AttributeBonus");
            this.DropTable("CharDB.Advantage");
        }
    }
}
