namespace GurpsDb.GurpsModel
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class GurpsModel : DbContext
    {
        public GurpsModel()
            : base("name=GurpsModel")
        {
        }

        public virtual DbSet<Advantage> Advantage { get; set; }
        public virtual DbSet<advantage_prereq> advantage_prereq { get; set; }
        public virtual DbSet<attribute_bonus> attribute_bonus { get; set; }
        public virtual DbSet<attribute_prereq> attribute_prereq { get; set; }
        public virtual DbSet<CharacterDB> CharacterDB { get; set; }
        public virtual DbSet<contained_weight_prereq> contained_weight_prereq { get; set; }
        public virtual DbSet<cost_reduction> cost_reduction { get; set; }
        public virtual DbSet<DefaultSkill> DefaultSkill { get; set; }
        public virtual DbSet<DefSkillSome> DefSkillSome { get; set; }
        public virtual DbSet<DifficultySkill> DifficultySkill { get; set; }
        public virtual DbSet<dr_bonusDB> dr_bonusDB { get; set; }
        public virtual DbSet<GurpsCategory> GurpsCategory { get; set; }
        public virtual DbSet<GurpsSkill> GurpsSkill { get; set; }
        public virtual DbSet<InventoryOfChar> InventoryOfChar { get; set; }
        public virtual DbSet<melee_weapon> melee_weapon { get; set; }
        public virtual DbSet<modifier> modifier { get; set; }
        public virtual DbSet<prereq_listDB> prereq_listDB { get; set; }
        public virtual DbSet<ranged_weapon> ranged_weapon { get; set; }
        public virtual DbSet<skill_bonusDB> skill_bonusDB { get; set; }
        public virtual DbSet<skill_prereqDB> skill_prereqDB { get; set; }
        public virtual DbSet<spell_bonus> spell_bonus { get; set; }
        public virtual DbSet<spell_prereqDB> spell_prereqDB { get; set; }
        public virtual DbSet<weapon_bonus> weapon_bonus { get; set; }
        public virtual DbSet<AMMOUPGRATES> AMMOUPGRATES { get; set; }
        public virtual DbSet<AnyBoxNameType> AnyBoxNameType { get; set; }
        public virtual DbSet<ARMOUR> ARMOUR { get; set; }
        public virtual DbSet<Attachment> Attachment { get; set; }
        public virtual DbSet<Attachmentmount> Attachmentmount { get; set; }
        public virtual DbSet<ATTACHMENTSLOT> ATTACHMENTSLOT { get; set; }
        public virtual DbSet<AvailableAttachSlot> AvailableAttachSlot { get; set; }
        public virtual DbSet<Battery> Battery { get; set; }
        public virtual DbSet<BoxItem> BoxItem { get; set; }
        public virtual DbSet<Caliber> Caliber { get; set; }
        public virtual DbSet<Clothes> Clothes { get; set; }
        public virtual DbSet<CombineWeap> CombineWeap { get; set; }
        public virtual DbSet<Drug> Drug { get; set; }
        public virtual DbSet<EXPLOSIVE> EXPLOSIVE { get; set; }
        public virtual DbSet<FOOD> FOOD { get; set; }
        public virtual DbSet<G_AttachClass> G_AttachClass { get; set; }
        public virtual DbSet<G_AvAttachClass> G_AvAttachClass { get; set; }
        public virtual DbSet<G_SubAttachClass> G_SubAttachClass { get; set; }
        public virtual DbSet<GurpsClass> GurpsClass { get; set; }
        public virtual DbSet<ITEM> ITEM { get; set; }
        public virtual DbSet<ItemClass> ItemClass { get; set; }
        public virtual DbSet<ItemSubClass> ItemSubClass { get; set; }
        public virtual DbSet<LaserColorEf> LaserColorEf { get; set; }
        public virtual DbSet<LC> LC { get; set; }
        public virtual DbSet<LOADBEARINGEQUIPMENT> LOADBEARINGEQUIPMENT { get; set; }
        public virtual DbSet<TL> TL { get; set; }
        public virtual DbSet<Type_of_Box> Type_of_Box { get; set; }
        public virtual DbSet<TypeOfDamage> TypeOfDamage { get; set; }
        public virtual DbSet<WEAPON> WEAPON { get; set; }
        public virtual DbSet<WeaponAttackType> WeaponAttackType { get; set; }
        public virtual DbSet<WeaponDamage> WeaponDamage { get; set; }
        public virtual DbSet<CharSkill> CharSkill { get; set; }
        public virtual DbSet<NeedSkill> NeedSkill { get; set; }

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

            modelBuilder.Entity<CharacterDB>()
                .HasMany(e => e.CharSkill)
                .WithRequired(e => e.CharacterDB)
                .HasForeignKey(e => e.idChar);

            modelBuilder.Entity<CharacterDB>()
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
                .HasForeignKey(e => e.idSkill);

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
                .Map(m => m.ToTable("GurpsSkillCategory88", "CharDB").MapLeftKey("idSkill").MapRightKey("idSkillCategory"));

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
                .WithRequired(e => e.ITEM)
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
