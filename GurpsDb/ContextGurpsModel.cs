// ReSharper disable once CheckNamespace
namespace GurpsDb.GurpsModel
{
    using System.Data.Entity;

    public partial class ContextGurpsModel : DbContext
    {
        public ContextGurpsModel()
            : base("name=GurpsModel")
        {
        }

        public virtual DbSet<Advantage> AdvantageDbSet { get; set; }
        public virtual DbSet<advantage_prereq> AdvantagePrereqDbSet { get; set; }
        public virtual DbSet<attribute_bonus> AttributeBonusDbSet { get; set; }
        public virtual DbSet<attribute_prereq> AttributePrereqDbSet { get; set; }
        public virtual DbSet<CharacterDb> CharacterDbDbSet { get; set; }
        public virtual DbSet<contained_weight_prereq> ContainedWeightPrereqDbSet { get; set; }
        public virtual DbSet<cost_reduction> CostReductionDbSet { get; set; }
        public virtual DbSet<DefaultSkill> DefaultSkillDbSet { get; set; }
        public virtual DbSet<DefSkillSome> DefSkillSomeDbSet { get; set; }
        public virtual DbSet<DifficultySkill> DifficultySkillDbSet { get; set; }
        public virtual DbSet<dr_bonusDB> DrBonusDbDbSet { get; set; }
        public virtual DbSet<GurpsCategory> GurpsCategoryDbSet { get; set; }
        public virtual DbSet<GurpsSkill> GurpsSkillDbSet { get; set; }
        public virtual DbSet<InventoryOfChar> InventoryOfCharDbSet { get; set; }
        public virtual DbSet<melee_weapon> MeleeWeaponDbSet { get; set; }
        public virtual DbSet<modifier> ModifierDbSet { get; set; }
        public virtual DbSet<prereq_listDB> PrereqListDbDbSet { get; set; }
        public virtual DbSet<ranged_weapon> RangedWeaponDbSet { get; set; }
        public virtual DbSet<skill_bonusDB> SkillBonusDbDbSet { get; set; }
        public virtual DbSet<skill_prereqDB> SkillPrereqDbDbSet { get; set; }
        public virtual DbSet<spell_bonus> SpellBonusDbSet { get; set; }
        public virtual DbSet<spell_prereqDB> SpellPrereqDbDbSet { get; set; }
        public virtual DbSet<weapon_bonus> WeaponBonusDbSet { get; set; }
        public virtual DbSet<AMMOUPGRATES> AmmoupgratesDbSet { get; set; }
        public virtual DbSet<AnyBoxNameType> AnyBoxNameTypeDbSet { get; set; }
        public virtual DbSet<ARMOUR> ArmourDbSet { get; set; }
        public virtual DbSet<Attachment> AttachmentDbSet { get; set; }
        public virtual DbSet<Attachmentmount> AttachmentmountDbSet { get; set; }
        public virtual DbSet<ATTACHMENTSLOT> AttachmentslotDbSet { get; set; }
        public virtual DbSet<AvailableAttachSlot> AvailableAttachSlotDbSet { get; set; }
        public virtual DbSet<Battery> BatteryDbSet { get; set; }
        public virtual DbSet<BoxItem> BoxItemDbSet { get; set; }
        public virtual DbSet<Caliber> CaliberDbSet { get; set; }
        public virtual DbSet<Clothes> ClothesDbSet { get; set; }
        public virtual DbSet<CombineWeap> CombineWeapDbSet { get; set; }
        public virtual DbSet<Drug> DrugDbSet { get; set; }
        public virtual DbSet<EXPLOSIVE> ExplosiveDbSet { get; set; }
        public virtual DbSet<FOOD> FoodDbSet { get; set; }
        public virtual DbSet<G_AttachClass> GAttachClassDbSet { get; set; }
        public virtual DbSet<G_AvAttachClass> GAvAttachClassDbSet { get; set; }
        public virtual DbSet<G_SubAttachClass> GSubAttachClassDbSet { get; set; }
        public virtual DbSet<GurpsClass> GurpsClassDbSet { get; set; }
        public virtual DbSet<ITEM> ItemDbSet { get; set; }
        public virtual DbSet<ItemClass> ItemClassDbSet { get; set; }
        public virtual DbSet<ItemSubClass> ItemSubClassDbSet { get; set; }
        public virtual DbSet<LaserColorEf> LaserColorEfDbSet { get; set; }
        public virtual DbSet<LC> LcDbSet { get; set; }
        public virtual DbSet<LOADBEARINGEQUIPMENT> LoadbearingequipmentDbSet { get; set; }
        public virtual DbSet<TL> TlDbSet { get; set; }
        public virtual DbSet<Type_of_Box> TypeOfBoxeDbSet { get; set; }
        public virtual DbSet<TypeOfDamage> TypeOfDamageDbSet { get; set; }
        public virtual DbSet<WEAPON> WeaponDbSet { get; set; }
        public virtual DbSet<WeaponAttackType> WeaponAttackTypeDbSet { get; set; }
        public virtual DbSet<WeaponDamage> WeaponDamageDbSet { get; set; }
        public virtual DbSet<CharSkill> CharSkillDbSet { get; set; }
        public virtual DbSet<NeedSkill> NeedSkillDbSet { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Advantage>()
                .HasMany(e => e.attribute_bonus)
                .WithOptional(e => e.Advantage)
                .HasForeignKey(e => e.FK_Advantage)
                .WillCascadeOnDelete();

            modelBuilder.Entity<Advantage>()
                .HasMany(e => e.cost_reduction)
                .WithOptional(e => e.Advantage)
                .HasForeignKey(e => e.idAdv)
                .WillCascadeOnDelete();

            modelBuilder.Entity<Advantage>()
                .HasMany(e => e.dr_bonusDB)
                .WithOptional(e => e.Advantage)
                .HasForeignKey(e => e.idAdv)
                .WillCascadeOnDelete();

            modelBuilder.Entity<Advantage>()
                .HasMany(e => e.melee_weapon)
                .WithOptional(e => e.Advantage)
                .HasForeignKey(e => e.idAdv)
                .WillCascadeOnDelete();

            modelBuilder.Entity<Advantage>()
                .HasMany(e => e.modifier)
                .WithOptional(e => e.Advantage)
                .HasForeignKey(e => e.idAdv);

            modelBuilder.Entity<Advantage>()
                .HasMany(e => e.prereq_listDB)
                .WithOptional(e => e.Advantage)
                .HasForeignKey(e => e.FK_Advantage)
                .WillCascadeOnDelete();

            modelBuilder.Entity<Advantage>()
                .HasMany(e => e.ranged_weapon)
                .WithOptional(e => e.Advantage)
                .HasForeignKey(e => e.idADV)
                .WillCascadeOnDelete();

            modelBuilder.Entity<Advantage>()
                .HasMany(e => e.skill_bonusDB)
                .WithOptional(e => e.Advantage)
                .HasForeignKey(e => e.FK_Adv)
                .WillCascadeOnDelete();

            modelBuilder.Entity<Advantage>()
                .HasMany(e => e.spell_bonus)
                .WithOptional(e => e.Advantage)
                .HasForeignKey(e => e.id_Adv)
                .WillCascadeOnDelete();

            modelBuilder.Entity<Advantage>()
                .HasMany(e => e.weapon_bonus)
                .WithOptional(e => e.Advantage)
                .HasForeignKey(e => e.FK_Adv)
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
                .WithRequired(e => e.CharacterDB)
                .HasForeignKey(e => e.IdCharacter);

            modelBuilder.Entity<cost_reduction>()
                .Property(e => e.attribute)
                .IsUnicode(false);

            modelBuilder.Entity<cost_reduction>()
                .Property(e => e.percentage)
                .IsUnicode(false);

            modelBuilder.Entity<DefSkillSome>()
                .Property(e => e.nameSkill)
                .IsUnicode(false);

            modelBuilder.Entity<DefSkillSome>()
                .Property(e => e.specialization)
                .IsUnicode(false);

            modelBuilder.Entity<DefSkillSome>()
                .Property(e => e.type)
                .IsUnicode(false);

            modelBuilder.Entity<DefSkillSome>()
                .Property(e => e.modifier)
                .IsUnicode(false);

            modelBuilder.Entity<DifficultySkill>()
                .HasMany(e => e.GurpsSkill)
                .WithOptional(e => e.DifficultySkill)
                .HasForeignKey(e => e.idDifficulty);

            modelBuilder.Entity<GurpsSkill>()
                .HasMany(e => e.attribute_bonus)
                .WithOptional(e => e.GurpsSkill)
                .HasForeignKey(e => e.FK_Skill)
                .WillCascadeOnDelete();

            modelBuilder.Entity<GurpsSkill>()
                .HasMany(e => e.DefaultSkill)
                .WithRequired(e => e.GurpsSkill)
                .HasForeignKey(e => e.idSkillIn);

            modelBuilder.Entity<GurpsSkill>()
                .HasMany(e => e.DefaultSkill1)
                .WithOptional(e => e.GurpsSkill1)
                .HasForeignKey(e => e.idSkillOut);

            modelBuilder.Entity<GurpsSkill>()
                .HasMany(e => e.DefSkillSome)
                .WithOptional(e => e.GurpsSkill)
                .HasForeignKey(e => e.idSkill)
                .WillCascadeOnDelete();

            modelBuilder.Entity<GurpsSkill>()
                .HasMany(e => e.CharSkill)
                .WithRequired(e => e.GurpsSkill)
                .HasForeignKey(e => e.IdSkill);

            modelBuilder.Entity<GurpsSkill>()
                .HasMany(e => e.GurpsSkill1)
                .WithOptional(e => e.GurpsSkill2)
                .HasForeignKey(e => e.idSpecialization);

            modelBuilder.Entity<GurpsSkill>()
                .HasOptional(e => e.NeedSkill)
                .WithRequired(e => e.GurpsSkill)
                .WillCascadeOnDelete();

            modelBuilder.Entity<GurpsSkill>()
                .HasMany(e => e.NeedSkill1)
                .WithOptional(e => e.GurpsSkill1)
                .HasForeignKey(e => e.idSkillOut);

            modelBuilder.Entity<GurpsSkill>()
                .HasMany(e => e.prereq_listDB)
                .WithOptional(e => e.GurpsSkill)
                .HasForeignKey(e => e.FK_skill)
                .WillCascadeOnDelete();

            modelBuilder.Entity<GurpsSkill>()
                .HasMany(e => e.weapon_bonus)
                .WithOptional(e => e.GurpsSkill)
                .HasForeignKey(e => e.FK_Skill)
                .WillCascadeOnDelete();

            modelBuilder.Entity<GurpsSkill>()
                .HasMany(e => e.GurpsCategory)
                .WithMany(e => e.GurpsSkill)
                .Map(m => m.ToTable("GurpsSkillCategory88", "CharDB").MapLeftKey("IdSkill").MapRightKey("idSkillCategory"));

            modelBuilder.Entity<melee_weapon>()
                .Property(e => e.damage)
                .IsUnicode(false);

            modelBuilder.Entity<melee_weapon>()
                .Property(e => e.strength)
                .IsUnicode(false);

            modelBuilder.Entity<melee_weapon>()
                .Property(e => e.usage)
                .IsUnicode(false);

            modelBuilder.Entity<melee_weapon>()
                .Property(e => e.reach)
                .IsUnicode(false);

            modelBuilder.Entity<melee_weapon>()
                .Property(e => e.parry)
                .IsUnicode(false);

            modelBuilder.Entity<melee_weapon>()
                .Property(e => e.block)
                .IsUnicode(false);

            modelBuilder.Entity<melee_weapon>()
                .HasMany(e => e.DefSkillSome)
                .WithOptional(e => e.melee_weapon)
                .HasForeignKey(e => e.idMeleWeap);

            modelBuilder.Entity<modifier>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<modifier>()
                .Property(e => e.nameC)
                .IsUnicode(false);

            modelBuilder.Entity<modifier>()
                .Property(e => e.notes)
                .IsUnicode(false);

            modelBuilder.Entity<modifier>()
                .Property(e => e.notesC)
                .IsUnicode(false);

            modelBuilder.Entity<modifier>()
                .Property(e => e.levels)
                .IsUnicode(false);

            modelBuilder.Entity<modifier>()
                .Property(e => e.reference)
                .IsUnicode(false);

            modelBuilder.Entity<modifier>()
                .Property(e => e.affects)
                .IsUnicode(false);

            modelBuilder.Entity<modifier>()
                .Property(e => e.version)
                .IsUnicode(false);

            modelBuilder.Entity<modifier>()
                .Property(e => e.enabled)
                .IsUnicode(false);

            modelBuilder.Entity<prereq_listDB>()
                .HasMany(e => e.advantage_prereq)
                .WithOptional(e => e.prereq_listDB)
                .HasForeignKey(e => e.idPrqList)
                .WillCascadeOnDelete();

            modelBuilder.Entity<prereq_listDB>()
                .HasMany(e => e.attribute_prereq)
                .WithOptional(e => e.prereq_listDB)
                .HasForeignKey(e => e.idPrqList)
                .WillCascadeOnDelete();

            modelBuilder.Entity<prereq_listDB>()
                .HasMany(e => e.contained_weight_prereq)
                .WithOptional(e => e.prereq_listDB)
                .HasForeignKey(e => e.idPrqList)
                .WillCascadeOnDelete();

            modelBuilder.Entity<prereq_listDB>()
                .HasMany(e => e.prereq_listDB1)
                .WithOptional(e => e.prereq_listDB2)
                .HasForeignKey(e => e.FK_prereq_list);

            modelBuilder.Entity<prereq_listDB>()
                .HasMany(e => e.skill_prereqDB)
                .WithOptional(e => e.prereq_listDB)
                .HasForeignKey(e => e.idprereq_list)
                .WillCascadeOnDelete();

            modelBuilder.Entity<prereq_listDB>()
                .HasMany(e => e.spell_prereqDB)
                .WithOptional(e => e.prereq_listDB)
                .HasForeignKey(e => e.idPrqlist)
                .WillCascadeOnDelete();

            modelBuilder.Entity<ranged_weapon>()
                .Property(e => e.damage)
                .IsUnicode(false);

            modelBuilder.Entity<ranged_weapon>()
                .Property(e => e.strength)
                .IsUnicode(false);

            modelBuilder.Entity<ranged_weapon>()
                .Property(e => e.usage)
                .IsUnicode(false);

            modelBuilder.Entity<ranged_weapon>()
                .Property(e => e.accuracy)
                .IsUnicode(false);

            modelBuilder.Entity<ranged_weapon>()
                .Property(e => e.range)
                .IsUnicode(false);

            modelBuilder.Entity<ranged_weapon>()
                .Property(e => e.rate_of_fire)
                .IsUnicode(false);

            modelBuilder.Entity<ranged_weapon>()
                .Property(e => e.recoil)
                .IsUnicode(false);

            modelBuilder.Entity<ranged_weapon>()
                .Property(e => e.shots)
                .IsUnicode(false);

            modelBuilder.Entity<ranged_weapon>()
                .Property(e => e.bulk)
                .IsUnicode(false);

            modelBuilder.Entity<ranged_weapon>()
                .HasMany(e => e.DefSkillSome)
                .WithOptional(e => e.ranged_weapon)
                .HasForeignKey(e => e.idRangeWeap)
                .WillCascadeOnDelete();

            modelBuilder.Entity<skill_bonusDB>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<skill_bonusDB>()
                .Property(e => e.namecompare)
                .IsUnicode(false);

            modelBuilder.Entity<skill_bonusDB>()
                .Property(e => e.specialization)
                .IsUnicode(false);

            modelBuilder.Entity<skill_bonusDB>()
                .Property(e => e.specializationcompare)
                .IsUnicode(false);

            modelBuilder.Entity<skill_bonusDB>()
                .Property(e => e.AmountPer_level)
                .IsUnicode(false);

            modelBuilder.Entity<skill_bonusDB>()
                .Property(e => e.AmountValue)
                .IsUnicode(false);

            modelBuilder.Entity<spell_bonus>()
                .Property(e => e.spell_name)
                .IsUnicode(false);

            modelBuilder.Entity<spell_bonus>()
                .Property(e => e.spell_nameC)
                .IsUnicode(false);

            modelBuilder.Entity<spell_bonus>()
                .Property(e => e.college_name)
                .IsUnicode(false);

            modelBuilder.Entity<spell_bonus>()
                .Property(e => e.college_nameC)
                .IsUnicode(false);

            modelBuilder.Entity<spell_bonus>()
                .Property(e => e.all_colleges)
                .IsUnicode(false);

            modelBuilder.Entity<spell_bonus>()
                .Property(e => e.amountper_level)
                .IsUnicode(false);

            modelBuilder.Entity<spell_bonus>()
                .Property(e => e.amountValue)
                .IsUnicode(false);

            modelBuilder.Entity<spell_prereqDB>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<spell_prereqDB>()
                .Property(e => e.collegeCompare)
                .IsUnicode(false);

            modelBuilder.Entity<spell_prereqDB>()
                .Property(e => e.college)
                .IsUnicode(false);

            modelBuilder.Entity<spell_prereqDB>()
                .Property(e => e.college_countCompare)
                .IsUnicode(false);

            modelBuilder.Entity<spell_prereqDB>()
                .Property(e => e.college_count)
                .IsUnicode(false);

            modelBuilder.Entity<spell_prereqDB>()
                .Property(e => e.quantityCompare)
                .IsUnicode(false);

            modelBuilder.Entity<spell_prereqDB>()
                .Property(e => e.quantity)
                .IsUnicode(false);

            modelBuilder.Entity<spell_prereqDB>()
                .Property(e => e.anyt)
                .IsUnicode(false);

            modelBuilder.Entity<spell_prereqDB>()
                .Property(e => e.has)
                .IsUnicode(false);

            modelBuilder.Entity<weapon_bonus>()
                .Property(e => e.nameCompare)
                .IsUnicode(false);

            modelBuilder.Entity<weapon_bonus>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<weapon_bonus>()
                .Property(e => e.specializationCompare)
                .IsUnicode(false);

            modelBuilder.Entity<weapon_bonus>()
                .Property(e => e.specialization)
                .IsUnicode(false);

            modelBuilder.Entity<weapon_bonus>()
                .Property(e => e.levelCompare)
                .IsUnicode(false);

            modelBuilder.Entity<weapon_bonus>()
                .Property(e => e.level)
                .IsUnicode(false);

            modelBuilder.Entity<AMMOUPGRATES>()
                .Property(e => e.AR_divX)
                .HasPrecision(4, 2);

            modelBuilder.Entity<AMMOUPGRATES>()
                .Property(e => e.ACC_x)
                .HasPrecision(4, 2);

            modelBuilder.Entity<AMMOUPGRATES>()
                .Property(e => e.damage_x)
                .HasPrecision(4, 2);

            modelBuilder.Entity<AMMOUPGRATES>()
                .Property(e => e.range_x12)
                .HasPrecision(4, 2);

            modelBuilder.Entity<AMMOUPGRATES>()
                .Property(e => e.range_x)
                .HasPrecision(4, 2);

            modelBuilder.Entity<AMMOUPGRATES>()
                .Property(e => e.ST_x)
                .HasPrecision(4, 2);

            modelBuilder.Entity<AMMOUPGRATES>()
                .Property(e => e.WPS_x)
                .HasPrecision(4, 2);

            modelBuilder.Entity<AMMOUPGRATES>()
                .Property(e => e.CPS_x)
                .HasPrecision(4, 2);

            modelBuilder.Entity<AMMOUPGRATES>()
                .Property(e => e.min_Caliber)
                .HasPrecision(4, 2);

            modelBuilder.Entity<AMMOUPGRATES>()
                .Property(e => e.Max_Calider)
                .HasPrecision(4, 2);

            modelBuilder.Entity<AMMOUPGRATES>()
                .Property(e => e.DT_Min_Ammo_CAliber)
                .HasPrecision(4, 2);

            modelBuilder.Entity<AnyBoxNameType>()
                .Property(e => e.nameOfBox)
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
                .HasMany(e => e.G_AvAttachClass)
                .WithRequired(e => e.Attachment)
                .HasForeignKey(e => e.id_attach);

            modelBuilder.Entity<Attachmentmount>()
                .HasMany(e => e.Attachment)
                .WithRequired(e => e.Attachmentmount1)
                .HasForeignKey(e => e.id_Attachmentmount)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Attachmentmount>()
                .HasMany(e => e.AvailableAttachSlot)
                .WithRequired(e => e.Attachmentmount)
                .HasForeignKey(e => e.rAttachmentmount)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ATTACHMENTSLOT>()
                .HasMany(e => e.Attachmentmount)
                .WithRequired(e => e.ATTACHMENTSLOT)
                .HasForeignKey(e => e.idAttacClass)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ATTACHMENTSLOT>()
                .HasMany(e => e.G_SubAttachClass)
                .WithRequired(e => e.ATTACHMENTSLOT1)
                .HasForeignKey(e => e.ATTACHMENTSLOT)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Battery>()
                .Property(e => e.CPP)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Battery>()
                .Property(e => e.WPP)
                .HasPrecision(7, 3);

            modelBuilder.Entity<Caliber>()
                .Property(e => e.Dim_of_bullet_SI)
                .HasPrecision(8, 4);

            modelBuilder.Entity<Caliber>()
                .Property(e => e.Dim_of_bullet_US)
                .HasPrecision(8, 4);

            modelBuilder.Entity<Caliber>()
                .HasMany(e => e.ITEM)
                .WithOptional(e => e.Caliber)
                .HasForeignKey(e => e.ubCalibre);

            modelBuilder.Entity<Clothes>()
                .HasMany(e => e.ITEM)
                .WithRequired(e => e.Clothes)
                .HasForeignKey(e => e.clothestype)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<EXPLOSIVE>()
                .Property(e => e.bIndoorModifier)
                .HasPrecision(38, 0);

            modelBuilder.Entity<FOOD>()
                .HasMany(e => e.ITEM)
                .WithRequired(e => e.FOOD)
                .HasForeignKey(e => e.FoodType)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<G_AttachClass>()
                .HasMany(e => e.G_SubAttachClass)
                .WithRequired(e => e.G_AttachClass)
                .HasForeignKey(e => e.AttachClass)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<G_SubAttachClass>()
                .HasMany(e => e.G_AvAttachClass)
                .WithRequired(e => e.G_SubAttachClass)
                .HasForeignKey(e => e.id_GSubClass)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<GurpsClass>()
                .HasMany(e => e.ItemSubClass)
                .WithOptional(e => e.GurpsClass)
                .HasForeignKey(e => e.idGurpsSubClass);

            modelBuilder.Entity<ITEM>()
                .Property(e => e.ubWeight)
                .HasPrecision(7, 3);

            modelBuilder.Entity<ITEM>()
                .Property(e => e.usPrice)
                .HasPrecision(19, 4);

            modelBuilder.Entity<ITEM>()
                .HasMany(e => e.InventoryOfChar)
                .WithRequired(e => e.ITEM)
                .HasForeignKey(e => e.IdItem);

            modelBuilder.Entity<ITEM>()
                .HasOptional(e => e.ARMOUR)
                .WithRequired(e => e.ITEM)
                .WillCascadeOnDelete();

            modelBuilder.Entity<ITEM>()
                .HasOptional(e => e.Attachment)
                .WithRequired(e => e.ITEM)
                .WillCascadeOnDelete();

            modelBuilder.Entity<ITEM>()
                .HasMany(e => e.AvailableAttachSlot)
                .WithRequired(e => e.ITEM)
                .HasForeignKey(e => e.rItemId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ITEM>()
                .HasMany(e => e.BoxItem)
                .WithRequired(e => e.ITEM)
                .HasForeignKey(e => e.Items)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ITEM>()
                .HasOptional(e => e.Drug)
                .WithRequired(e => e.ITEM);

            modelBuilder.Entity<ITEM>()
                .HasOptional(e => e.EXPLOSIVE)
                .WithRequired(e => e.ITEM)
                .WillCascadeOnDelete();

            modelBuilder.Entity<ITEM>()
                .HasOptional(e => e.LOADBEARINGEQUIPMENT)
                .WithRequired(e => e.Item)
                .WillCascadeOnDelete();

            modelBuilder.Entity<ITEM>()
                .HasOptional(e => e.WEAPON)
                .WithRequired(e => e.ITEM)
                .WillCascadeOnDelete();

            modelBuilder.Entity<ItemClass>()
                .HasMany(e => e.ItemSubClass)
                .WithRequired(e => e.ItemClass)
                .HasForeignKey(e => e.IdItemClass)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ItemSubClass>()
                .HasMany(e => e.ITEM)
                .WithRequired(e => e.ItemSubClass)
                .HasForeignKey(e => e.usItemClass)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<LaserColorEf>()
                .Property(e => e.LaserColorDayEfect)
                .HasPrecision(4, 2);

            modelBuilder.Entity<LC>()
                .HasMany(e => e.ITEM)
                .WithRequired(e => e.LC1)
                .HasForeignKey(e => e.LC)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TL>()
                .Property(e => e.StartMoney)
                .HasPrecision(19, 4);

            modelBuilder.Entity<TL>()
                .HasMany(e => e.GurpsSkill)
                .WithOptional(e => e.TL)
                .HasForeignKey(e => e.idtech_level);

            modelBuilder.Entity<TL>()
                .HasMany(e => e.ITEM)
                .WithRequired(e => e.TL1)
                .HasForeignKey(e => e.TL)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Type_of_Box>()
                .Property(e => e.nameOfType)
                .IsUnicode(false);

            modelBuilder.Entity<Type_of_Box>()
                .HasMany(e => e.AnyBoxNameType)
                .WithRequired(e => e.Type_of_Box)
                .HasForeignKey(e => e.TypeOfBox);

            modelBuilder.Entity<TypeOfDamage>()
                .HasMany(e => e.WeaponDamage)
                .WithOptional(e => e.TypeOfDamage)
                .HasForeignKey(e => e.idTypeOfDamage1);

            modelBuilder.Entity<TypeOfDamage>()
                .HasMany(e => e.WeaponDamage1)
                .WithOptional(e => e.TypeOfDamage1)
                .HasForeignKey(e => e.idTypeOfDamage2);

            modelBuilder.Entity<WEAPON>()
                .Property(e => e.Half_Range)
                .HasPrecision(10, 4);

            modelBuilder.Entity<WEAPON>()
                .Property(e => e.FullRange)
                .HasPrecision(10, 4);

            modelBuilder.Entity<WEAPON>()
                .Property(e => e.AWeight)
                .HasPrecision(5, 3);

            modelBuilder.Entity<WEAPON>()
                .HasMany(e => e.WeaponDamage)
                .WithRequired(e => e.WEAPON)
                .HasForeignKey(e => e.idWeapon);

            modelBuilder.Entity<WeaponAttackType>()
                .HasMany(e => e.WeaponDamage)
                .WithRequired(e => e.WeaponAttackType)
                .HasForeignKey(e => e.idWeaponAttackType)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<WeaponDamage>()
                .Property(e => e.ArmorDivision)
                .HasPrecision(5, 2);
        }
    }
}
