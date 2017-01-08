// ReSharper disable once CheckNamespace
namespace GurpsDb.GurpsModel
{
    using System.Data.Entity;

    public partial class ContextGurpsModel : DbContext
    {
        public ContextGurpsModel()
            : base("name=ContextGurpsModel")
        {
            // Установить новый инициализатор
            // Database.SetInitializer<ContextGurpsModel>(new DbInit());
        }

        public virtual DbSet<Advantage> AdvantageDbSet { get; set; }
        public virtual DbSet<AdvantagePrereq> AdvantagePrereqDbSet { get; set; }
        public virtual DbSet<AttributeBonus> AttributeBonusDbSet { get; set; }
        public virtual DbSet<AttributePrereq> AttributePrereqDbSet { get; set; }
        public virtual DbSet<CharacterDb> CharacterDbDbSet { get; set; }
        public virtual DbSet<ContainedWeightPrereq> ContainedWeightPrereqDbSet { get; set; }
        public virtual DbSet<CostReduction> CostReductionDbSet { get; set; }
        public virtual DbSet<DefaultSkill> DefaultSkillDbSet { get; set; }
        public virtual DbSet<DefSkillSome> DefSkillSomeDbSet { get; set; }
        public virtual DbSet<DifficultySkill> DifficultySkillDbSet { get; set; }
        public virtual DbSet<DrBonusDb> DrBonusDbDbSet { get; set; }
        public virtual DbSet<GurpsCategory> GurpsCategoryDbSet { get; set; }
        public virtual DbSet<GurpsSkill> GurpsSkillDbSet { get; set; }
        public virtual DbSet<InventoryOfChar> InventoryOfCharDbSet { get; set; }
        public virtual DbSet<MeleeWeapon> MeleeWeaponDbSet { get; set; }
        public virtual DbSet<Modifier> ModifierDbSet { get; set; }
        public virtual DbSet<PrereqListDb> PrereqListDbDbSet { get; set; }
        public virtual DbSet<RangedWeapon> RangedWeaponDbSet { get; set; }
        public virtual DbSet<SkillBonusDb> SkillBonusDbDbSet { get; set; }
        public virtual DbSet<SkillPrereqDb> SkillPrereqDbDbSet { get; set; }
        public virtual DbSet<SpellBonus> SpellBonusDbSet { get; set; }
        public virtual DbSet<SpellPrereqDb> SpellPrereqDbDbSet { get; set; }
        public virtual DbSet<WeaponBonus> WeaponBonusDbSet { get; set; }
        public virtual DbSet<Ammoupgrates> AmmoupgratesDbSet { get; set; }
        public virtual DbSet<AnyBoxNameType> AnyBoxNameTypeDbSet { get; set; }
        public virtual DbSet<Armour> ArmourDbSet { get; set; }
        public virtual DbSet<Attachment> AttachmentDbSet { get; set; }
        public virtual DbSet<AttachmentMount> AttachmentMountDbSet { get; set; }
        public virtual DbSet<AttachmentSlot> AttachmentSlotDbSet { get; set; }
        public virtual DbSet<AvailableAttachSlot> AvailableAttachSlotDbSet { get; set; }
        public virtual DbSet<Battery> BatteryDbSet { get; set; }
        public virtual DbSet<BoxItem> BoxItemDbSet { get; set; }
        public virtual DbSet<Caliber> CaliberDbSet { get; set; }
        public virtual DbSet<Clothes> ClothesDbSet { get; set; }
        public virtual DbSet<CombineWeap> CombineWeapDbSet { get; set; }
        public virtual DbSet<Drug> DrugDbSet { get; set; }
        public virtual DbSet<Explosive> ExplosiveDbSet { get; set; }
        public virtual DbSet<Food> FoodDbSet { get; set; }
        public virtual DbSet<GAttachClass> GAttachClassDbSet { get; set; }
        public virtual DbSet<GAvAttachClass> GAvAttachClassDbSet { get; set; }
        public virtual DbSet<GSubAttachClass> GSubAttachClassDbSet { get; set; }
        public virtual DbSet<GurpsClass> GurpsClassDbSet { get; set; }
        public virtual DbSet<Item> ItemDbSet { get; set; }
        public virtual DbSet<ItemClass> ItemClassDbSet { get; set; }
        public virtual DbSet<ItemSubClass> ItemSubClassDbSet { get; set; }
        public virtual DbSet<LaserColorEf> LaserColorEfDbSet { get; set; }
        public virtual DbSet<Lc> LcDbSet { get; set; }
        public virtual DbSet<LoadBearingEquipment> LoadbearingequipmentDbSet { get; set; }
        public virtual DbSet<Tl> TlDbSet { get; set; }
        public virtual DbSet<TypeOfBox> TypeOfBoxeDbSet { get; set; }
        public virtual DbSet<TypeOfDamage> TypeOfDamageDbSet { get; set; }
        public virtual DbSet<Weapon> WeaponDbSet { get; set; }
        public virtual DbSet<WeaponAttackType> WeaponAttackTypeDbSet { get; set; }
        public virtual DbSet<WeaponDamage> WeaponDamageDbSet { get; set; }
        public virtual DbSet<CharSkill> CharSkillDbSet { get; set; }
        public virtual DbSet<NeedSkill> NeedSkillDbSet { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            #region CharSkill

            #endregion




            modelBuilder.Entity<Advantage>()
                .HasMany(e => e.AttributeBonus)
                .WithOptional(e => e.Advantage)
                .HasForeignKey(e => e.FkAdvantage)
                .WillCascadeOnDelete();

            modelBuilder.Entity<Advantage>()
                .HasMany(e => e.CostReduction)
                .WithOptional(e => e.Advantage)
                .HasForeignKey(e => e.IdAdv)
                .WillCascadeOnDelete();

            modelBuilder.Entity<Advantage>()
                .HasMany(e => e.DrBonusDb)
                .WithOptional(e => e.Advantage)
                .HasForeignKey(e => e.IdAdv)
                .WillCascadeOnDelete();

            modelBuilder.Entity<Advantage>()
                .HasMany(e => e.MeleeWeapon)
                .WithOptional(e => e.Advantage)
                .HasForeignKey(e => e.IdAdv)
                .WillCascadeOnDelete();

            modelBuilder.Entity<Advantage>()
                .HasMany(e => e.Modifier)
                .WithOptional(e => e.Advantage)
                .HasForeignKey(e => e.IdAdv);

            modelBuilder.Entity<Advantage>()
                .HasMany(e => e.PrereqListDb)
                .WithOptional(e => e.Advantage)
                .HasForeignKey(e => e.FkAdvantage)
                .WillCascadeOnDelete();

            modelBuilder.Entity<Advantage>()
                .HasMany(e => e.RangedWeapon)
                .WithOptional(e => e.Advantage)
                .HasForeignKey(e => e.IdAdv)
                .WillCascadeOnDelete();

            modelBuilder.Entity<Advantage>()
                .HasMany(e => e.SkillBonusDb)
                .WithOptional(e => e.Advantage)
                .HasForeignKey(e => e.FkAdv)
                .WillCascadeOnDelete();

            modelBuilder.Entity<Advantage>()
                .HasMany(e => e.SpellBonus)
                .WithOptional(e => e.Advantage)
                .HasForeignKey(e => e.IdAdv)
                .WillCascadeOnDelete();

            modelBuilder.Entity<Advantage>()
                .HasMany(e => e.WeaponBonus)
                .WithOptional(e => e.Advantage)
                .HasForeignKey(e => e.FkAdv)
                .WillCascadeOnDelete();

            modelBuilder.Entity<Advantage>()
                .HasMany(e => e.GurpsCategory)
                .WithMany(e => e.Advantage)
                .Map(m => m.ToTable("AdvantageCategory88", "CharDB").MapLeftKey("idAdvantage").MapRightKey("idGurpsCategory"));

            modelBuilder.Entity<CharacterDb>()
                .HasMany(e => e.CharSkillCollection)
                .WithRequired(e => e.CharacterDb)
                .HasForeignKey(e => e.IdChar);

            modelBuilder.Entity<CharacterDb>()
                .HasMany(e => e.InventoryOfChar)
                .WithRequired(e => e.CharacterDb)
                .HasForeignKey(e => e.IdCharacter);

            modelBuilder.Entity<CostReduction>()
                .Property(e => e.Attribute)
                .IsUnicode(false);

            modelBuilder.Entity<CostReduction>()
                .Property(e => e.Percentage)
                .IsUnicode(false);

            modelBuilder.Entity<DefSkillSome>()
                .Property(e => e.NameSkill)
                .IsUnicode(false);

            modelBuilder.Entity<DefSkillSome>()
                .Property(e => e.Specialization)
                .IsUnicode(false);

            modelBuilder.Entity<DefSkillSome>()
                .Property(e => e.Type)
                .IsUnicode(false);

            modelBuilder.Entity<DefSkillSome>()
                .Property(e => e.Modifier)
                .IsUnicode(false);

            modelBuilder.Entity<DifficultySkill>()
                .HasMany(e => e.GurpsSkill)
                .WithOptional(e => e.DifficultySkill)
                .HasForeignKey(e => e.IdDifficulty);

            modelBuilder.Entity<GurpsSkill>()
                .HasMany(e => e.AttributeBonusCollection)
                .WithOptional(e => e.GurpsSkill)
                .HasForeignKey(e => e.FkSkill)
                .WillCascadeOnDelete();

            modelBuilder.Entity<GurpsSkill>()
                .HasMany(e => e.DefaultSkillInNeedCollection)
                .WithRequired(e => e.GurpsSkill)
                .HasForeignKey(e => e.IdSkillIn);

            modelBuilder.Entity<GurpsSkill>()
                .HasMany(e => e.DefaultSkillOutNeededCollection)
                .WithOptional(e => e.GurpsSkill1)
                .HasForeignKey(e => e.IdSkillOut);

            modelBuilder.Entity<GurpsSkill>()
                .HasMany(e => e.DefSkillSomeCollection)
                .WithOptional(e => e.GurpsSkill)
                .HasForeignKey(e => e.IdSkill)
                .WillCascadeOnDelete();

            modelBuilder.Entity<GurpsSkill>()
                .HasMany(e => e.CharSkillCollection)
                .WithRequired(e => e.GurpsSkill)
                .HasForeignKey(e => e.IdSkill);

            modelBuilder.Entity<GurpsSkill>()
                .HasMany(e => e.GurpsSkillCollection)
                .WithOptional(e => e.GurpsSkillSelf)
                .HasForeignKey(e => e.IdSpecialization);

            modelBuilder.Entity<GurpsSkill>()
                .HasOptional(e => e.NeedSkill)
                .WithRequired(e => e.GurpsSkill)
                .WillCascadeOnDelete();

            modelBuilder.Entity<GurpsSkill>()
                .HasMany(e => e.NeedSkillOutCollection)
                .WithOptional(e => e.GurpsSkill1)
                .HasForeignKey(e => e.IdSkillOut);

            modelBuilder.Entity<GurpsSkill>()
                .HasMany(e => e.PrereqListDbCollection)
                .WithOptional(e => e.GurpsSkill)
                .HasForeignKey(e => e.FkSkill)
                .WillCascadeOnDelete();

            modelBuilder.Entity<GurpsSkill>()
                .HasMany(e => e.WeaponBonusCollection)
                .WithOptional(e => e.GurpsSkill)
                .HasForeignKey(e => e.FkSkill)
                .WillCascadeOnDelete();

            modelBuilder.Entity<GurpsSkill>()
                .HasMany(e => e.GurpsCategoryCollection)
                .WithMany(e => e.GurpsSkill)
                .Map(m => m.ToTable("GurpsSkillCategory88", "CharDB").MapLeftKey("IdSkill").MapRightKey("idSkillCategory"));

            modelBuilder.Entity<MeleeWeapon>()
                .Property(e => e.Damage)
                .IsUnicode(false);

            modelBuilder.Entity<MeleeWeapon>()
                .Property(e => e.Strength)
                .IsUnicode(false);

            modelBuilder.Entity<MeleeWeapon>()
                .Property(e => e.Usage)
                .IsUnicode(false);

            modelBuilder.Entity<MeleeWeapon>()
                .Property(e => e.Reach)
                .IsUnicode(false);

            modelBuilder.Entity<MeleeWeapon>()
                .Property(e => e.Parry)
                .IsUnicode(false);

            modelBuilder.Entity<MeleeWeapon>()
                .Property(e => e.Block)
                .IsUnicode(false);

            modelBuilder.Entity<MeleeWeapon>()
                .HasMany(e => e.DefSkillSome)
                .WithOptional(e => e.MeleeWeapon)
                .HasForeignKey(e => e.IdMeleWeap);

            modelBuilder.Entity<Modifier>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<Modifier>()
                .Property(e => e.NameC)
                .IsUnicode(false);

            modelBuilder.Entity<Modifier>()
                .Property(e => e.Notes)
                .IsUnicode(false);

            modelBuilder.Entity<Modifier>()
                .Property(e => e.NotesC)
                .IsUnicode(false);

            modelBuilder.Entity<Modifier>()
                .Property(e => e.Levels)
                .IsUnicode(false);

            modelBuilder.Entity<Modifier>()
                .Property(e => e.Reference)
                .IsUnicode(false);

            modelBuilder.Entity<Modifier>()
                .Property(e => e.Affects)
                .IsUnicode(false);

            modelBuilder.Entity<Modifier>()
                .Property(e => e.Version)
                .IsUnicode(false);

            modelBuilder.Entity<Modifier>()
                .Property(e => e.Enabled)
                .IsUnicode(false);

            modelBuilder.Entity<PrereqListDb>()
                .HasMany(e => e.AdvantagePrereq)
                .WithOptional(e => e.PrereqListDb)
                .HasForeignKey(e => e.IdPrqList)
                .WillCascadeOnDelete();

            modelBuilder.Entity<PrereqListDb>()
                .HasMany(e => e.AttributePrereq)
                .WithOptional(e => e.PrereqListDb)
                .HasForeignKey(e => e.IdPrqList)
                .WillCascadeOnDelete();

            modelBuilder.Entity<PrereqListDb>()
                .HasMany(e => e.ContainedWeightPrereq)
                .WithOptional(e => e.PrereqListDb)
                .HasForeignKey(e => e.IdPrqList)
                .WillCascadeOnDelete();

            modelBuilder.Entity<PrereqListDb>()
                .HasMany(e => e.PrereqListDb1)
                .WithOptional(e => e.PrereqListDb2)
                .HasForeignKey(e => e.FkPrereqList);

            modelBuilder.Entity<PrereqListDb>()
                .HasMany(e => e.SkillPrereqDb)
                .WithOptional(e => e.PrereqListDb)
                .HasForeignKey(e => e.IdprereqList)
                .WillCascadeOnDelete();

            modelBuilder.Entity<PrereqListDb>()
                .HasMany(e => e.SpellPrereqDb)
                .WithOptional(e => e.PrereqListDb)
                .HasForeignKey(e => e.IdPrqlist)
                .WillCascadeOnDelete();

            modelBuilder.Entity<RangedWeapon>()
                .Property(e => e.Damage)
                .IsUnicode(false);

            modelBuilder.Entity<RangedWeapon>()
                .Property(e => e.Strength)
                .IsUnicode(false);

            modelBuilder.Entity<RangedWeapon>()
                .Property(e => e.Usage)
                .IsUnicode(false);

            modelBuilder.Entity<RangedWeapon>()
                .Property(e => e.Accuracy)
                .IsUnicode(false);

            modelBuilder.Entity<RangedWeapon>()
                .Property(e => e.Range)
                .IsUnicode(false);

            modelBuilder.Entity<RangedWeapon>()
                .Property(e => e.RateOfFire)
                .IsUnicode(false);

            modelBuilder.Entity<RangedWeapon>()
                .Property(e => e.Recoil)
                .IsUnicode(false);

            modelBuilder.Entity<RangedWeapon>()
                .Property(e => e.Shots)
                .IsUnicode(false);

            modelBuilder.Entity<RangedWeapon>()
                .Property(e => e.Bulk)
                .IsUnicode(false);

            modelBuilder.Entity<RangedWeapon>()
                .HasMany(e => e.DefSkillSome)
                .WithOptional(e => e.RangedWeapon)
                .HasForeignKey(e => e.IdRangeWeap)
                .WillCascadeOnDelete();

            modelBuilder.Entity<SkillBonusDb>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<SkillBonusDb>()
                .Property(e => e.Namecompare)
                .IsUnicode(false);

            modelBuilder.Entity<SkillBonusDb>()
                .Property(e => e.Specialization)
                .IsUnicode(false);

            modelBuilder.Entity<SkillBonusDb>()
                .Property(e => e.Specializationcompare)
                .IsUnicode(false);

            modelBuilder.Entity<SkillBonusDb>()
                .Property(e => e.AmountPerLevel)
                .IsUnicode(false);

            modelBuilder.Entity<SkillBonusDb>()
                .Property(e => e.AmountValue)
                .IsUnicode(false);

            modelBuilder.Entity<SpellBonus>()
                .Property(e => e.SpellName)
                .IsUnicode(false);

            modelBuilder.Entity<SpellBonus>()
                .Property(e => e.SpellNameC)
                .IsUnicode(false);

            modelBuilder.Entity<SpellBonus>()
                .Property(e => e.CollegeName)
                .IsUnicode(false);

            modelBuilder.Entity<SpellBonus>()
                .Property(e => e.CollegeNameC)
                .IsUnicode(false);

            modelBuilder.Entity<SpellBonus>()
                .Property(e => e.AllColleges)
                .IsUnicode(false);

            modelBuilder.Entity<SpellBonus>()
                .Property(e => e.AmountperLevel)
                .IsUnicode(false);

            modelBuilder.Entity<SpellBonus>()
                .Property(e => e.AmountValue)
                .IsUnicode(false);

            modelBuilder.Entity<SpellPrereqDb>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<SpellPrereqDb>()
                .Property(e => e.CollegeCompare)
                .IsUnicode(false);

            modelBuilder.Entity<SpellPrereqDb>()
                .Property(e => e.College)
                .IsUnicode(false);

            modelBuilder.Entity<SpellPrereqDb>()
                .Property(e => e.CollegeCountCompare)
                .IsUnicode(false);

            modelBuilder.Entity<SpellPrereqDb>()
                .Property(e => e.CollegeCount)
                .IsUnicode(false);

            modelBuilder.Entity<SpellPrereqDb>()
                .Property(e => e.QuantityCompare)
                .IsUnicode(false);

            modelBuilder.Entity<SpellPrereqDb>()
                .Property(e => e.Quantity)
                .IsUnicode(false);

            modelBuilder.Entity<SpellPrereqDb>()
                .Property(e => e.Anyt)
                .IsUnicode(false);

            modelBuilder.Entity<SpellPrereqDb>()
                .Property(e => e.Has)
                .IsUnicode(false);

            modelBuilder.Entity<WeaponBonus>()
                .Property(e => e.NameCompare)
                .IsUnicode(false);

            modelBuilder.Entity<WeaponBonus>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<WeaponBonus>()
                .Property(e => e.SpecializationCompare)
                .IsUnicode(false);

            modelBuilder.Entity<WeaponBonus>()
                .Property(e => e.Specialization)
                .IsUnicode(false);

            modelBuilder.Entity<WeaponBonus>()
                .Property(e => e.LevelCompare)
                .IsUnicode(false);

            modelBuilder.Entity<WeaponBonus>()
                .Property(e => e.Level)
                .IsUnicode(false);

            modelBuilder.Entity<Ammoupgrates>()
                .Property(e => e.ArDivX)
                .HasPrecision(4, 2);

            modelBuilder.Entity<Ammoupgrates>()
                .Property(e => e.AccX)
                .HasPrecision(4, 2);

            modelBuilder.Entity<Ammoupgrates>()
                .Property(e => e.DamageX)
                .HasPrecision(4, 2);

            modelBuilder.Entity<Ammoupgrates>()
                .Property(e => e.RangeX12)
                .HasPrecision(4, 2);

            modelBuilder.Entity<Ammoupgrates>()
                .Property(e => e.RangeX)
                .HasPrecision(4, 2);

            modelBuilder.Entity<Ammoupgrates>()
                .Property(e => e.StX)
                .HasPrecision(4, 2);

            modelBuilder.Entity<Ammoupgrates>()
                .Property(e => e.WpsX)
                .HasPrecision(4, 2);

            modelBuilder.Entity<Ammoupgrates>()
                .Property(e => e.CpsX)
                .HasPrecision(4, 2);

            modelBuilder.Entity<Ammoupgrates>()
                .Property(e => e.MinCaliber)
                .HasPrecision(4, 2);

            modelBuilder.Entity<Ammoupgrates>()
                .Property(e => e.MaxCalider)
                .HasPrecision(4, 2);

            modelBuilder.Entity<Ammoupgrates>()
                .Property(e => e.DtMinAmmoCAliber)
                .HasPrecision(4, 2);

            modelBuilder.Entity<AnyBoxNameType>()
                .Property(e => e.NameOfBox)
                .IsUnicode(false);

            modelBuilder.Entity<AnyBoxNameType>()
                .HasMany(e => e.AnyBoxNameType1)
                .WithOptional(e => e.AnyBoxNameType2)
                .HasForeignKey(e => e.ParentBoxName);

            modelBuilder.Entity<AnyBoxNameType>()
                .HasMany(e => e.BoxItem)
                .WithRequired(e => e.AnyBoxNameType)
                .HasForeignKey(e => e.BoxName);

            modelBuilder.Entity<Attachment>()
                .Property(e => e.ScopeMagFactor)
                .HasPrecision(4, 2);

            modelBuilder.Entity<Attachment>()
                .Property(e => e.LaserColorEf)
                .HasPrecision(4, 2);

            modelBuilder.Entity<Attachment>()
                .HasMany(e => e.GAvAttachClass)
                .WithRequired(e => e.Attachment)
                .HasForeignKey(e => e.IdAttach);

            modelBuilder.Entity<AttachmentMount>()
                .HasMany(e => e.Attachment)
                .WithRequired(e => e.Attachmentmount1)
                .HasForeignKey(e => e.IdAttachmentmount)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<AttachmentMount>()
                .HasMany(e => e.AvailableAttachSlot)
                .WithRequired(e => e.Attachmentmount)
                .HasForeignKey(e => e.RAttachmentmount)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<AttachmentSlot>()
                .HasMany(e => e.Attachmentmount)
                .WithRequired(e => e.AttachmentSlot)
                .HasForeignKey(e => e.IdAttacClass)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<AttachmentSlot>()
                .HasMany(e => e.GSubAttachClass)
                .WithRequired(e => e.Attachmentslot1)
                .HasForeignKey(e => e.Attachmentslot)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Battery>()
                .Property(e => e.Cpp)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Battery>()
                .Property(e => e.Wpp)
                .HasPrecision(7, 3);

            modelBuilder.Entity<Caliber>()
                .Property(e => e.DimOfBulletSi)
                .HasPrecision(8, 4);

            modelBuilder.Entity<Caliber>()
                .Property(e => e.DimOfBulletUs)
                .HasPrecision(8, 4);

            modelBuilder.Entity<Caliber>()
                .HasMany(e => e.Item)
                .WithOptional(e => e.Caliber)
                .HasForeignKey(e => e.UbCalibre);

            modelBuilder.Entity<Clothes>()
                .HasMany(e => e.Item)
                .WithRequired(e => e.Clothes)
                .HasForeignKey(e => e.Clothestype)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Explosive>()
                .Property(e => e.BIndoorModifier)
                .HasPrecision(38, 0);

            modelBuilder.Entity<Food>()
                .HasMany(e => e.Item)
                .WithRequired(e => e.Food)
                .HasForeignKey(e => e.FoodType)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<GAttachClass>()
                .HasMany(e => e.GSubAttachClass)
                .WithRequired(e => e.GAttachClass)
                .HasForeignKey(e => e.AttachClass)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<GSubAttachClass>()
                .HasMany(e => e.GAvAttachClass)
                .WithRequired(e => e.GSubAttachClass)
                .HasForeignKey(e => e.IdGSubClass)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<GurpsClass>()
                .HasMany(e => e.ItemSubClass)
                .WithOptional(e => e.GurpsClass)
                .HasForeignKey(e => e.IdGurpsSubClass);

            modelBuilder.Entity<Item>()
                .Property(e => e.UbWeight)
                .HasPrecision(7, 3);

            modelBuilder.Entity<Item>()
                .Property(e => e.UsPrice)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Item>()
                .HasMany(e => e.InventoryOfChar)
                .WithRequired(e => e.Item)
                .HasForeignKey(e => e.IdItem);

            modelBuilder.Entity<Item>()
                .HasOptional(e => e.Armour)
                .WithRequired(e => e.Item)
                .WillCascadeOnDelete();

            modelBuilder.Entity<Item>()
                .HasOptional(e => e.Attachment)
                .WithRequired(e => e.Item)
                .WillCascadeOnDelete();

            modelBuilder.Entity<Item>()
                .HasMany(e => e.AvailableAttachSlot)
                .WithRequired(e => e.Item)
                .HasForeignKey(e => e.RItemId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Item>()
                .HasMany(e => e.BoxItem)
                .WithRequired(e => e.Item)
                .HasForeignKey(e => e.Items)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Item>()
                .HasOptional(e => e.Drug)
                .WithRequired(e => e.Item);

            modelBuilder.Entity<Item>()
                .HasOptional(e => e.Explosive)
                .WithRequired(e => e.Item)
                .WillCascadeOnDelete();

            modelBuilder.Entity<Item>()
                .HasOptional(e => e.Loadbearingequipment)
                .WithRequired(e => e.Item)
                .WillCascadeOnDelete();

            modelBuilder.Entity<Item>()
                .HasOptional(e => e.Weapon)
                .WithRequired(e => e.Item)
                .WillCascadeOnDelete();

            modelBuilder.Entity<ItemClass>()
                .HasMany(e => e.ItemSubClass)
                .WithRequired(e => e.ItemClass)
                .HasForeignKey(e => e.IdItemClass)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ItemSubClass>()
                .HasMany(e => e.Item)
                .WithRequired(e => e.ItemSubClass)
                .HasForeignKey(e => e.UsItemClass)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<LaserColorEf>()
                .Property(e => e.LaserColorDayEfect)
                .HasPrecision(4, 2);

            modelBuilder.Entity<Lc>()
                .HasMany(e => e.Item)
                .WithRequired(e => e.Lc1)
                .HasForeignKey(e => e.Lc)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Tl>()
                .Property(e => e.StartMoney)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Tl>()
                .HasMany(e => e.GurpsSkill)
                .WithOptional(e => e.Tl)
                .HasForeignKey(e => e.IdtechLevel);

            modelBuilder.Entity<Tl>()
                .HasMany(e => e.Item)
                .WithRequired(e => e.Tl1)
                .HasForeignKey(e => e.Tl)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TypeOfBox>()
                .Property(e => e.NameOfType)
                .IsUnicode(false);

            modelBuilder.Entity<TypeOfBox>()
                .HasMany(e => e.AnyBoxNameType)
                .WithRequired(e => e.Type_of_Box)
                .HasForeignKey(e => e.TypeOfBox);

            modelBuilder.Entity<TypeOfDamage>()
                .HasMany(e => e.WeaponDamage)
                .WithOptional(e => e.TypeOfDamage)
                .HasForeignKey(e => e.IdTypeOfDamage1);

            modelBuilder.Entity<TypeOfDamage>()
                .HasMany(e => e.WeaponDamage1)
                .WithOptional(e => e.TypeOfDamage1)
                .HasForeignKey(e => e.IdTypeOfDamage2);

            modelBuilder.Entity<Weapon>()
                .Property(e => e.HalfRange)
                .HasPrecision(10, 4);

            modelBuilder.Entity<Weapon>()
                .Property(e => e.FullRange)
                .HasPrecision(10, 4);

            modelBuilder.Entity<Weapon>()
                .Property(e => e.AWeight)
                .HasPrecision(5, 3);

            modelBuilder.Entity<Weapon>()
                .HasMany(e => e.WeaponDamage)
                .WithRequired(e => e.Weapon)
                .HasForeignKey(e => e.IdWeapon);

            modelBuilder.Entity<WeaponAttackType>()
                .HasMany(e => e.WeaponDamage)
                .WithRequired(e => e.WeaponAttackType)
                .HasForeignKey(e => e.IdWeaponAttackType)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<WeaponDamage>()
                .Property(e => e.ArmorDivision)
                .HasPrecision(5, 2);
        }
    }
}
