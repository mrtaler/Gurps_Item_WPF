﻿--
-- Скрипт сгенерирован Devart dbForge Studio for SQL Server, Версия 5.2.177.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/sql/studio
-- Дата скрипта: 13.07.2016 22:32:09
-- Версия сервера: 12.00.0802
-- Версия клиента: 



USE Item1
  
  GO 

  

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ARMOUR]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[ARMOUR] DROP CONSTRAINT [FK_ARMOUR];
GO
IF OBJECT_ID(N'[dbo].[FK_Attachment_Attachmentmount]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[Attachment] DROP CONSTRAINT [FK_Attachment_Attachmentmount];
GO
IF OBJECT_ID(N'[dbo].[FK_Attachment_G_AttachClass]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[Attachment] DROP CONSTRAINT [FK_Attachment_G_AttachClass];
GO
IF OBJECT_ID(N'[dbo].[FK_Attachment_G_SubAttachClass]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[Attachment] DROP CONSTRAINT [FK_Attachment_G_SubAttachClass];
GO
IF OBJECT_ID(N'[dbo].[FK_Attachmentmount_NasAttachmentClass]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[Attachmentmount] DROP CONSTRAINT [FK_Attachmentmount_NasAttachmentClass];
GO
IF OBJECT_ID(N'[dbo].[FK_AVeAttachmentmount]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[AvailableAttachSlot] DROP CONSTRAINT [FK_AVeAttachmentmount];
GO
IF OBJECT_ID(N'[dbo].[FK_AVeATTACHMENTSLOT]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[AvailableAttachSlot] DROP CONSTRAINT [FK_AVeATTACHMENTSLOT];
GO
IF OBJECT_ID(N'[dbo].[FK_AVeWeaponId]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[AvailableAttachSlot] DROP CONSTRAINT [FK_AVeWeaponId];
GO
IF OBJECT_ID(N'[dbo].[FK_Calibre]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[ITEM] DROP CONSTRAINT [FK_Calibre];
GO
IF OBJECT_ID(N'[dbo].[FK_EXPLOSIVE]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[EXPLOSIVE] DROP CONSTRAINT [FK_EXPLOSIVE];
GO
IF OBJECT_ID(N'[dbo].[FK_G_AvAttachClass_Attachment]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[G_AvAttachClass] DROP CONSTRAINT [FK_G_AvAttachClass_Attachment];
GO
IF OBJECT_ID(N'[dbo].[FK_G_AvAttachClass_G_AttachClass]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[G_AvAttachClass] DROP CONSTRAINT [FK_G_AvAttachClass_G_AttachClass];
GO
IF OBJECT_ID(N'[dbo].[FK_G_AvAttachClass_G_SubAttachClass]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[G_AvAttachClass] DROP CONSTRAINT [FK_G_AvAttachClass_G_SubAttachClass];
GO
IF OBJECT_ID(N'[dbo].[FK_G_SubAttachClass_ATTACHMENTSLOT1]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[G_SubAttachClass] DROP CONSTRAINT [FK_G_SubAttachClass_ATTACHMENTSLOT1];
GO
IF OBJECT_ID(N'[dbo].[FK_G_SubAttachClass_G_AttachClass]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[G_SubAttachClass] DROP CONSTRAINT [FK_G_SubAttachClass_G_AttachClass];
GO
IF OBJECT_ID(N'[dbo].[FK_ITEM_Clothes]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[ITEM] DROP CONSTRAINT [FK_ITEM_Clothes];
GO
IF OBJECT_ID(N'[dbo].[FK_ITEM_DrugType]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[ITEM] DROP CONSTRAINT [FK_ITEM_DrugType];
GO
IF OBJECT_ID(N'[dbo].[FK_ITEM_Food]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[ITEM] DROP CONSTRAINT [FK_ITEM_Food];
GO
IF OBJECT_ID(N'[dbo].[FK_Item_ItemClass]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[ITEM] DROP CONSTRAINT [FK_Item_ItemClass];
GO
IF OBJECT_ID(N'[dbo].[FK_ITEM_LC]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[ITEM] DROP CONSTRAINT [FK_ITEM_LC];
GO
IF OBJECT_ID(N'[dbo].[FK_ITEM_TL]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[ITEM] DROP CONSTRAINT [FK_ITEM_TL];
GO
IF OBJECT_ID(N'[dbo].[FK_LOADBEARINGEQUIPMENT]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[LOADBEARINGEQUIPMENT] DROP CONSTRAINT [FK_LOADBEARINGEQUIPMENT];
GO
IF OBJECT_ID(N'[dbo].[FK_nasLayoutClass_slot]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[ATTACHMENTSLOT] DROP CONSTRAINT [FK_nasLayoutClass_slot];
GO
IF OBJECT_ID(N'[dbo].[FK_rAttachmentClass]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[Attachment] DROP CONSTRAINT [FK_rAttachmentClass];
GO
IF OBJECT_ID(N'[dbo].[FK_WEAPON_TypeOfDamage]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[WEAPON] DROP CONSTRAINT [FK_WEAPON_TypeOfDamage];
GO
IF OBJECT_ID(N'[dbo].[FK_WeaponClass]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[WEAPON] DROP CONSTRAINT [FK_WeaponClass];
GO
IF OBJECT_ID(N'[dbo].[FK_WeaponType]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[WEAPON] DROP CONSTRAINT [FK_WeaponType];
GO
IF OBJECT_ID(N'[dbo].[FK_WeaponType_WeaponClass]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[WeaponType] DROP CONSTRAINT [FK_WeaponType_WeaponClass];
GO

IF OBJECT_ID(N'[dbo].[FK_AnyBoxNameType_Type_of_Box_id]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[AnyBoxNameType] DROP CONSTRAINT [FK_AnyBoxNameType_Type_of_Box_id];
GO

IF OBJECT_ID(N'[dbo].[FK_nasAttachmentClass_slot]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[ATTACHMENTSLOT] DROP CONSTRAINT [FK_nasAttachmentClass_slot]


------------------
IF OBJECT_ID(N'[dbo].[FK_WEAPON_ITEM_uiIndex]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[WEAPON] DROP CONSTRAINT [FK_WEAPON_ITEM_uiIndex];
GO

IF OBJECT_ID(N'[dbo].[FK_Attachment_ITEM_uiIndex]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[Attachment] DROP CONSTRAINT [FK_Attachment_ITEM_uiIndex]




IF OBJECT_ID(N'[dbo].[FK_LOADBEARINGEQUIPMENT_ITEM_uiIndex]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[LOADBEARINGEQUIPMENT] DROP CONSTRAINT [FK_LOADBEARINGEQUIPMENT_ITEM_uiIndex];
GO

IF OBJECT_ID(N'[dbo].[FK_ARMOUR_ITEM_uiIndex]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[ARMOUR] DROP CONSTRAINT [FK_ARMOUR_ITEM_uiIndex];
GO

IF OBJECT_ID(N'[dbo].[FK_EXPLOSIVE_ITEM_uiIndex]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[EXPLOSIVE] DROP CONSTRAINT [FK_EXPLOSIVE_ITEM_uiIndex];
GO

IF OBJECT_ID(N'[dbo].[FK_WeaponDamage_WEAPON_uiIndex]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[WeaponDamage] DROP CONSTRAINT [FK_WeaponDamage_WEAPON_uiIndex];
GO


IF OBJECT_ID(N'[dbo].[FK_WeaponDamage_TypeOfDamage_id1]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[WeaponDamage] DROP CONSTRAINT [FK_WeaponDamage_TypeOfDamage_id1];
GO
IF OBJECT_ID(N'[dbo].[FK_WeaponDamage_TypeOfDamage_id2]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[WeaponDamage] DROP CONSTRAINT [FK_WeaponDamage_TypeOfDamage_id2];
GO

IF OBJECT_ID(N'[dbo].[FK_AMMO_ITEM_uiIndex]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[AMMO] DROP CONSTRAINT [FK_AMMO_ITEM_uiIndex]
GO
IF OBJECT_ID(N'[dbo].[FK_AnyBoxNameType_AnyBoxNameType_id]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[AnyBoxNameType] DROP CONSTRAINT [FK_AnyBoxNameType_AnyBoxNameType_id]
go
IF OBJECT_ID(N'[dbo].[FK_BoxItem_AnyBoxNameType_id]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[BoxItem] DROP CONSTRAINT [FK_BoxItem_AnyBoxNameType_id]
go
IF OBJECT_ID(N'[dbo].[FK_BoxItem_ITEM_uiIndex]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[BoxItem] DROP CONSTRAINT [FK_BoxItem_ITEM_uiIndex]
go  


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[AMMO]', 'U') IS NOT NULL
  DROP TABLE [dbo].[AMMO];
GO

IF OBJECT_ID(N'[dbo].[Caliber]', 'U') IS NOT NULL
  DROP TABLE [dbo].[Caliber];
GO
IF OBJECT_ID(N'[dbo].[AMMOUPGRATES]', 'U') IS NOT NULL
  DROP TABLE [dbo].[AMMOUPGRATES];
GO
IF OBJECT_ID(N'[dbo].[ARMOUR]', 'U') IS NOT NULL
  DROP TABLE [dbo].[ARMOUR];
GO
IF OBJECT_ID(N'[dbo].[ArmourClass]', 'U') IS NOT NULL
  DROP TABLE [dbo].[ArmourClass];
GO
IF OBJECT_ID(N'[dbo].[Attachment]', 'U') IS NOT NULL
  DROP TABLE [dbo].[Attachment];
GO
IF OBJECT_ID(N'[dbo].[AttachmentClass]', 'U') IS NOT NULL
  DROP TABLE [dbo].[AttachmentClass];
GO
IF OBJECT_ID(N'[dbo].[Attachmentmount]', 'U') IS NOT NULL
  DROP TABLE [dbo].[Attachmentmount];
GO
IF OBJECT_ID(N'[dbo].[ATTACHMENTSLOT]', 'U') IS NOT NULL
  DROP TABLE [dbo].[ATTACHMENTSLOT];
GO
IF OBJECT_ID(N'[dbo].[AvailableAttachSlot]', 'U') IS NOT NULL
  DROP TABLE [dbo].[AvailableAttachSlot];
GO
IF OBJECT_ID(N'[dbo].[Clothes]', 'U') IS NOT NULL
  DROP TABLE [dbo].[Clothes];
GO
IF OBJECT_ID(N'[dbo].[Drug]', 'U') IS NOT NULL
  DROP TABLE [dbo].[Drug];
GO
IF OBJECT_ID(N'[dbo].[DrugType]', 'U') IS NOT NULL
  DROP TABLE [dbo].[DrugType];
GO
IF OBJECT_ID(N'[dbo].[ExplosionType]', 'U') IS NOT NULL
  DROP TABLE [dbo].[ExplosionType];
GO
IF OBJECT_ID(N'[dbo].[EXPLOSIVE]', 'U') IS NOT NULL
  DROP TABLE [dbo].[EXPLOSIVE];
GO
IF OBJECT_ID(N'[dbo].[FOOD]', 'U') IS NOT NULL
  DROP TABLE [dbo].[FOOD];
GO
IF OBJECT_ID(N'[dbo].[G_AttachClass]', 'U') IS NOT NULL
  DROP TABLE [dbo].[G_AttachClass];
GO
IF OBJECT_ID(N'[dbo].[G_AvAttachClass]', 'U') IS NOT NULL
  DROP TABLE [dbo].[G_AvAttachClass];
GO
IF OBJECT_ID(N'[dbo].[G_SubAttachClass]', 'U') IS NOT NULL
  DROP TABLE [dbo].[G_SubAttachClass];
GO
IF OBJECT_ID(N'[dbo].[ITEM]', 'U') IS NOT NULL
  DROP TABLE [dbo].[ITEM];
GO
IF OBJECT_ID(N'[dbo].[ItemClass]', 'U') IS NOT NULL
  DROP TABLE [dbo].[ItemClass];
GO
IF OBJECT_ID(N'[dbo].[LBEClass]', 'U') IS NOT NULL
  DROP TABLE [dbo].[LBEClass];
GO
IF OBJECT_ID(N'[dbo].[LC]', 'U') IS NOT NULL
  DROP TABLE [dbo].[LC];
GO
IF OBJECT_ID(N'[dbo].[LOADBEARINGEQUIPMENT]', 'U') IS NOT NULL
  DROP TABLE [dbo].[LOADBEARINGEQUIPMENT];
GO

IF OBJECT_ID(N'[dbo].[sysdiagram]', 'U') IS NOT NULL
  DROP TABLE [dbo].[sysdiagram];
GO
IF OBJECT_ID(N'[dbo].[TL]', 'U') IS NOT NULL
  DROP TABLE [dbo].[TL];
GO
IF OBJECT_ID(N'[dbo].[TypeOfDamage]', 'U') IS NOT NULL
  DROP TABLE [dbo].[TypeOfDamage];
GO
IF OBJECT_ID(N'[dbo].[WEAPON]', 'U') IS NOT NULL
  DROP TABLE [dbo].[WEAPON];
GO
IF OBJECT_ID(N'[dbo].[WeaponClass]', 'U') IS NOT NULL
  DROP TABLE [dbo].[WeaponClass];
GO
IF OBJECT_ID(N'[dbo].[WeaponType]', 'U') IS NOT NULL
  DROP TABLE [dbo].[WeaponType];
GO

IF OBJECT_ID(N'[dbo].[AttachmentSystem]', 'u') IS NOT NULL
  DROP TABLE [dbo].[AttachmentSystem];
GO

IF OBJECT_ID(N'[dbo].[Battery]', 'u') IS NOT NULL
  DROP TABLE [dbo].[Battery];
GO

IF OBJECT_ID(N'[dbo].[LaserColorEf]', 'u') IS NOT NULL
  DROP TABLE [dbo].[LaserColorEf];
GO

IF OBJECT_ID(N'[dbo].[CharacterDB]', 'u') IS NOT NULL
  DROP TABLE [dbo].[CharacterDB];
GO
IF OBJECT_ID(N'[dbo].[WeaponDamage]', 'u') IS NOT NULL
  DROP TABLE [dbo].[WeaponDamage];
GO

IF OBJECT_ID(N'[dbo].[WeaponAttackType]', 'u') IS NOT NULL
  DROP TABLE [dbo].[WeaponAttackType];
GO
IF OBJECT_ID(N'[dbo].[BoxItem]', 'u') IS NOT NULL
  DROP TABLE [dbo].[BoxItem];
GO




IF OBJECT_ID(N'[dbo].[Type_of_Box]', 'u') IS NOT NULL
  DROP TABLE [dbo].[Type_of_Box];
GO

IF OBJECT_ID(N'dbo.NEW_ITEM', 'P') IS NOT NULL
  EXEC sp_executesql N'DROP PROCEDURE dbo.NEW_ITEM'
GO

IF OBJECT_ID(N'dbo.NEW_ITEM_att', 'P') IS NOT NULL
  EXEC sp_executesql N'DROP PROCEDURE dbo.NEW_ITEM_att'
GO



IF OBJECT_ID(N'[dbo].[CombineWeap]', 'u') IS NOT NULL
  DROP TABLE [dbo].[CombineWeap];
GO
IF OBJECT_ID(N'dbo.NEW_ITEMWeap', 'P') IS NOT NULL
  EXEC sp_executesql N'DROP PROCEDURE dbo.NEW_ITEMWeap'
GO
IF OBJECT_ID(N'dbo.NEW_ITEM_Ammo', 'P') IS NOT NULL
  EXEC sp_executesql N'DROP PROCEDURE dbo.NEW_ITEM_Ammo'
GO

IF OBJECT_ID(N'[dbo].[AnyBoxNameType]', 'u') IS NOT NULL
  DROP TABLE [dbo].[AnyBoxNameType];
GO

--
-- Создать таблицу "dbo.WeaponType"
--
PRINT (N'Создать таблицу "dbo.WeaponType"')
GO
IF OBJECT_ID(N'dbo.WeaponType', 'U') IS NULL
  CREATE TABLE dbo.WeaponType (
    id INT IDENTITY,
    name NVARCHAR(23) NOT NULL,
    Class INT NULL,
    CONSTRAINT PK_WeaponType PRIMARY KEY CLUSTERED (id)
  )
GO

--
-- Создать индекс "IX_FK_WeaponType_WeaponClass" для объекта типа таблица "dbo.WeaponType"
--
PRINT (N'Создать индекс "IX_FK_WeaponType_WeaponClass" для объекта типа таблица "dbo.WeaponType"')
GO
IF NOT EXISTS (SELECT
    1
  FROM sys.indexes
  WHERE name = N'IX_FK_WeaponType_WeaponClass'
  AND object_id = OBJECT_ID(N'dbo.WeaponType'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'Class'
  AND object_id = OBJECT_ID(N'dbo.WeaponType'))
  CREATE INDEX IX_FK_WeaponType_WeaponClass
  ON dbo.WeaponType (Class)
GO

--
-- Создать таблицу "dbo.WeaponDamage"
--
PRINT (N'Создать таблицу "dbo.WeaponDamage"')
GO
IF OBJECT_ID(N'dbo.WeaponDamage', 'U') IS NULL
  CREATE TABLE dbo.WeaponDamage (
    id INT IDENTITY,
    idWeapon INT NOT NULL,
    idWeaponAttackType INT NOT NULL,
    Damage NVARCHAR(50) NULL,
    ArmorDivision DECIMAL(5, 2) NOT NULL DEFAULT (1),
    idTypeOfDamage1 INT NULL,
    idTypeOfDamage2 INT NULL,
    TypeOfDamage1text NVARCHAR(50) NULL,
    TypeOfDamage2text NVARCHAR(50) NULL,
    Descrip NVARCHAR(50) NULL,
    CONSTRAINT PK_WeaponDamage PRIMARY KEY CLUSTERED (id),
    CONSTRAINT UK_WeaponattacktypeWeapon UNIQUE (idWeapon, idWeaponAttackType)
  )
GO

--
-- Создать таблицу "dbo.WeaponClass"
--
PRINT (N'Создать таблицу "dbo.WeaponClass"')
GO
IF OBJECT_ID(N'dbo.WeaponClass', 'U') IS NULL
  CREATE TABLE dbo.WeaponClass (
    id INT IDENTITY,
    name NVARCHAR(16) NOT NULL,
    CONSTRAINT PK_WeaponClass PRIMARY KEY CLUSTERED (id)
  )
GO

--
-- Создать таблицу "dbo.WeaponAttackType"
--
PRINT (N'Создать таблицу "dbo.WeaponAttackType"')
GO
IF OBJECT_ID(N'dbo.WeaponAttackType', 'U') IS NULL
  CREATE TABLE dbo.WeaponAttackType (
    id INT IDENTITY,
    name NVARCHAR(20) NULL,
    descr NVARCHAR(150) NULL,
    CONSTRAINT PK_WeaponAttackType PRIMARY KEY CLUSTERED (id)
  )
GO

--
-- Создать таблицу "dbo.WEAPON"
--
PRINT (N'Создать таблицу "dbo.WEAPON"')
GO
IF OBJECT_ID(N'dbo.WEAPON', 'U') IS NULL
  CREATE TABLE dbo.WEAPON (
    uiIndex INT NOT NULL,
    szWeaponName NVARCHAR(80) NOT NULL,
    ubWeaponClass INT NOT NULL DEFAULT (1),
    ubWeaponType INT NOT NULL DEFAULT (1),
    DefACC INT NOT NULL DEFAULT (1),
    ACCAddin INT NULL,
    Half_Range DECIMAL(10, 4) NOT NULL DEFAULT (1),
    FullRange DECIMAL(10, 4) NOT NULL DEFAULT (1),
    MinRange BIT NOT NULL DEFAULT (0),
    AWeight DECIMAL(5, 3) NOT NULL DEFAULT (1),
    ROF INT NOT NULL DEFAULT (1),
    Full_auto BIT NOT NULL DEFAULT (0),
    ROF_for_Sh INT NULL,
    Shots INT NOT NULL DEFAULT (1),
    Time_For_reload INT NOT NULL DEFAULT (3),
    single_reload BIT NOT NULL DEFAULT (0),
    Recoil INT NOT NULL DEFAULT (1),
    HeavyWeapon BIT NOT NULL DEFAULT (0),
    Add_in_Chamber BIT NOT NULL DEFAULT (0),
    CutOff_shots BIT NOT NULL DEFAULT (0),
    CutOff_shotsCount INT NOT NULL DEFAULT (0),
    GrenadeLauncher BIT NOT NULL DEFAULT (0),
    RocketLauncher BIT NOT NULL DEFAULT (0),
    Mortar BIT NOT NULL DEFAULT (0),
    Cannon BIT NOT NULL DEFAULT (0),
    SingleShot_RocketLauncher BIT NOT NULL DEFAULT (0),
    RocketRifle BIT NOT NULL DEFAULT (0),
    Bulkfolded BIT NOT NULL DEFAULT (0),
    HCROF BIT NOT NULL DEFAULT (0),
    HCROFValue INT NOT NULL DEFAULT (0),
    CONSTRAINT PK_WEAPON PRIMARY KEY CLUSTERED (uiIndex)
  )
GO

--
-- Создать индекс "IX_FK_WeaponType" для объекта типа таблица "dbo.WEAPON"
--
PRINT (N'Создать индекс "IX_FK_WeaponType" для объекта типа таблица "dbo.WEAPON"')
GO
IF NOT EXISTS (SELECT
    1
  FROM sys.indexes
  WHERE name = N'IX_FK_WeaponType'
  AND object_id = OBJECT_ID(N'dbo.WEAPON'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'ubWeaponType'
  AND object_id = OBJECT_ID(N'dbo.WEAPON'))
  CREATE INDEX IX_FK_WeaponType
  ON dbo.WEAPON (ubWeaponType)
GO

--
-- Создать таблицу "dbo.TypeOfDamage"
--
PRINT (N'Создать таблицу "dbo.TypeOfDamage"')
GO
IF OBJECT_ID(N'dbo.TypeOfDamage', 'U') IS NULL
  CREATE TABLE dbo.TypeOfDamage (
    id INT IDENTITY,
    name NVARCHAR(5) NOT NULL,
    LongName NVARCHAR(30) NULL,
    mDamage NVARCHAR(5) NOT NULL,
    CONSTRAINT PK_TypeOfDamage PRIMARY KEY CLUSTERED (id)
  )
GO

--
-- Создать таблицу "dbo.Type_of_Box"
--
PRINT (N'Создать таблицу "dbo.Type_of_Box"')
GO
IF OBJECT_ID(N'dbo.Type_of_Box', 'U') IS NULL
  CREATE TABLE dbo.Type_of_Box (
    id INT IDENTITY,
    nameOfType VARCHAR(50) NULL,
    CONSTRAINT PK_Type_of_Box PRIMARY KEY CLUSTERED (id)
  )
GO

--
-- Создать таблицу "dbo.TL"
--
PRINT (N'Создать таблицу "dbo.TL"')
GO
IF OBJECT_ID(N'dbo.TL', 'U') IS NULL
  CREATE TABLE dbo.TL (
    Id_Tl INT IDENTITY,
    name_TL NVARCHAR(50) NULL,
    Description NVARCHAR(60) NULL,
    StartMoney DECIMAL(19, 4) NULL,
    CONSTRAINT PK_TL PRIMARY KEY CLUSTERED (Id_Tl)
  )
GO

--
-- Создать таблицу "dbo.LC"
--
PRINT (N'Создать таблицу "dbo.LC"')
GO
IF OBJECT_ID(N'dbo.LC', 'U') IS NULL
  CREATE TABLE dbo.LC (
    Id_LC INT IDENTITY,
    Name_LC NVARCHAR(10) NULL,
    ShortDes NVARCHAR(15) NULL,
    Description NVARCHAR(300) NULL,
    CONSTRAINT PK_LC PRIMARY KEY CLUSTERED (Id_LC)
  )
GO

--
-- Создать таблицу "dbo.LBEClass"
--
PRINT (N'Создать таблицу "dbo.LBEClass"')
GO
IF OBJECT_ID(N'dbo.LBEClass', 'U') IS NULL
  CREATE TABLE dbo.LBEClass (
    id INT IDENTITY,
    name NVARCHAR(50) NOT NULL,
    CONSTRAINT PK_LBEClass PRIMARY KEY CLUSTERED (id)
  )
GO

--
-- Создать таблицу "dbo.LaserColorEf"
--
PRINT (N'Создать таблицу "dbo.LaserColorEf"')
GO
IF OBJECT_ID(N'dbo.LaserColorEf', 'U') IS NULL
  CREATE TABLE dbo.LaserColorEf (
    id INT IDENTITY,
    name NVARCHAR(10) NULL,
    LaserColorDayEfect DECIMAL(4, 2) NULL,
    CONSTRAINT PK_LaserColorEf PRIMARY KEY CLUSTERED (id)
  )
GO

--
-- Создать таблицу "dbo.ItemClass"
--
PRINT (N'Создать таблицу "dbo.ItemClass"')
GO
IF OBJECT_ID(N'dbo.ItemClass', 'U') IS NULL
  CREATE TABLE dbo.ItemClass (
    id INT IDENTITY,
    name NVARCHAR(70) NOT NULL,
    CONSTRAINT PK_ItemClass PRIMARY KEY CLUSTERED (id)
  )
GO

--
-- Создать таблицу "dbo.ITEM"
--
PRINT (N'Создать таблицу "dbo.ITEM"')
GO
IF OBJECT_ID(N'dbo.ITEM', 'U') IS NULL
  CREATE TABLE dbo.ITEM (
    uiIndex INT IDENTITY,
    szItemName NVARCHAR(80) NOT NULL DEFAULT (1),
    szLongItemName NVARCHAR(80) NULL,
    szItemDesc NVARCHAR(MAX) NULL,
    usItemClass INT NOT NULL DEFAULT (1),
    ubClassIndex INT NOT NULL DEFAULT (1),
    ubWeight DECIMAL(7, 3) NOT NULL DEFAULT (1),
    ItemSize NVARCHAR(80) NOT NULL DEFAULT (1),
    usPrice MONEY NOT NULL DEFAULT (1),
    ubCalibre INT NULL,
    Damageable BIT NOT NULL DEFAULT (1),
    Repairable BIT NOT NULL DEFAULT (1),
    WaterDamages BIT NOT NULL DEFAULT (1),
    Metal BIT NOT NULL DEFAULT (0),
    TwoHanded BIT NOT NULL DEFAULT (0),
    Electronic BIT NOT NULL DEFAULT (0),
    HT BIT NOT NULL DEFAULT (0),
    UT BIT NOT NULL DEFAULT (0),
    RemoteTrigger BIT NOT NULL DEFAULT (0),
    GasMask BIT NOT NULL DEFAULT (0),
    Alcohol BIT NOT NULL DEFAULT (0),
    Hardware BIT NOT NULL DEFAULT (0),
    Medical BIT NOT NULL DEFAULT (0),
    CamouflageKit BIT NOT NULL DEFAULT (0),
    LocksmithKit BIT NOT NULL DEFAULT (0),
    Toolkit BIT NOT NULL DEFAULT (0),
    FirstAidKit BIT NOT NULL DEFAULT (0),
    MedicalKit BIT NOT NULL DEFAULT (0),
    WireCutters BIT NOT NULL DEFAULT (0),
    Canteen BIT NOT NULL DEFAULT (0),
    GasCan BIT NOT NULL DEFAULT (0),
    Batteries BIT NOT NULL DEFAULT (0),
    NeedsBatteries BIT NOT NULL DEFAULT (0),
    ContainsLiquid BIT NOT NULL DEFAULT (0),
    MetalDetector BIT NOT NULL DEFAULT (0),
    FingerPrintID BIT NOT NULL DEFAULT (0),
    TripWireActivation BIT NOT NULL DEFAULT (0),
    TripWire BIT NOT NULL DEFAULT (0),
    Mount BIT NOT NULL DEFAULT (0),
    TL INT NOT NULL DEFAULT (2),
    LC INT NOT NULL DEFAULT (1),
    SizeBatteries NVARCHAR(4) NULL,
    FoodType INT NOT NULL DEFAULT (1),
    LockPickModifier INT NOT NULL DEFAULT (1),
    CrowbarModifier INT NOT NULL DEFAULT (1),
    DisarmModifier INT NOT NULL DEFAULT (1),
    RepairModifier INT NOT NULL DEFAULT (1),
    DamageChance INT NOT NULL DEFAULT (1),
    clothestype INT NOT NULL DEFAULT (1),
    DrugType INT NOT NULL DEFAULT (1),
    Item_Image VARBINARY(MAX) NULL,
    minST INT NOT NULL DEFAULT (1),
    Link NVARCHAR(MAX) NULL,
    used BIT NOT NULL DEFAULT (0),
    dt DATETIME NULL,
    Count_of_Bat INT NOT NULL DEFAULT (1),
    Works_on_Bat NVARCHAR(15) NOT NULL DEFAULT (1),
    CONSTRAINT PK_ITEM PRIMARY KEY CLUSTERED (uiIndex)
  )
GO

--
-- Создать индекс "IX_FK_Calibre" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать индекс "IX_FK_Calibre" для объекта типа таблица "dbo.ITEM"')
GO
IF NOT EXISTS (SELECT
    1
  FROM sys.indexes
  WHERE name = N'IX_FK_Calibre'
  AND object_id = OBJECT_ID(N'dbo.ITEM'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'ubCalibre'
  AND object_id = OBJECT_ID(N'dbo.ITEM'))
  CREATE INDEX IX_FK_Calibre
  ON dbo.ITEM (ubCalibre)
GO

--
-- Создать индекс "IX_FK_ITEM_Clothes" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать индекс "IX_FK_ITEM_Clothes" для объекта типа таблица "dbo.ITEM"')
GO
IF NOT EXISTS (SELECT
    1
  FROM sys.indexes
  WHERE name = N'IX_FK_ITEM_Clothes'
  AND object_id = OBJECT_ID(N'dbo.ITEM'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'clothestype'
  AND object_id = OBJECT_ID(N'dbo.ITEM'))
  CREATE INDEX IX_FK_ITEM_Clothes
  ON dbo.ITEM (clothestype)
GO

--
-- Создать индекс "IX_FK_ITEM_DrugType" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать индекс "IX_FK_ITEM_DrugType" для объекта типа таблица "dbo.ITEM"')
GO
IF NOT EXISTS (SELECT
    1
  FROM sys.indexes
  WHERE name = N'IX_FK_ITEM_DrugType'
  AND object_id = OBJECT_ID(N'dbo.ITEM'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'DrugType'
  AND object_id = OBJECT_ID(N'dbo.ITEM'))
  CREATE INDEX IX_FK_ITEM_DrugType
  ON dbo.ITEM (DrugType)
GO

--
-- Создать индекс "IX_FK_ITEM_Food" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать индекс "IX_FK_ITEM_Food" для объекта типа таблица "dbo.ITEM"')
GO
IF NOT EXISTS (SELECT
    1
  FROM sys.indexes
  WHERE name = N'IX_FK_ITEM_Food'
  AND object_id = OBJECT_ID(N'dbo.ITEM'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'FoodType'
  AND object_id = OBJECT_ID(N'dbo.ITEM'))
  CREATE INDEX IX_FK_ITEM_Food
  ON dbo.ITEM (FoodType)
GO

--
-- Создать индекс "IX_FK_Item_ItemClass" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать индекс "IX_FK_Item_ItemClass" для объекта типа таблица "dbo.ITEM"')
GO
IF NOT EXISTS (SELECT
    1
  FROM sys.indexes
  WHERE name = N'IX_FK_Item_ItemClass'
  AND object_id = OBJECT_ID(N'dbo.ITEM'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'usItemClass'
  AND object_id = OBJECT_ID(N'dbo.ITEM'))
  CREATE INDEX IX_FK_Item_ItemClass
  ON dbo.ITEM (usItemClass)
GO

--
-- Создать индекс "IX_FK_ITEM_LC" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать индекс "IX_FK_ITEM_LC" для объекта типа таблица "dbo.ITEM"')
GO
IF NOT EXISTS (SELECT
    1
  FROM sys.indexes
  WHERE name = N'IX_FK_ITEM_LC'
  AND object_id = OBJECT_ID(N'dbo.ITEM'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'LC'
  AND object_id = OBJECT_ID(N'dbo.ITEM'))
  CREATE INDEX IX_FK_ITEM_LC
  ON dbo.ITEM (LC)
GO

--
-- Создать индекс "IX_FK_ITEM_TL" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать индекс "IX_FK_ITEM_TL" для объекта типа таблица "dbo.ITEM"')
GO
IF NOT EXISTS (SELECT
    1
  FROM sys.indexes
  WHERE name = N'IX_FK_ITEM_TL'
  AND object_id = OBJECT_ID(N'dbo.ITEM'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'TL'
  AND object_id = OBJECT_ID(N'dbo.ITEM'))
  CREATE INDEX IX_FK_ITEM_TL
  ON dbo.ITEM (TL)
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

--
-- Создать процедуру "dbo.NEW_ITEMWeap"
--
GO
PRINT (N'Создать процедуру "dbo.NEW_ITEMWeap"')
GO
IF OBJECT_ID(N'dbo.NEW_ITEMWeap', 'P') IS NULL
  EXEC sp_executesql N'
CREATE PROCEDURE dbo.NEW_ITEMWeap (
--item
@name NVARCHAR(80), 	@class_ofItem NVARCHAR(80),
@Weight DECIMAL(7, 3), 			@ST INT,
@Bulk NVARCHAR(80), 	@Cost MONEY,
@Lcin NVARCHAR(10), 	@TLin NVARCHAR(10),
@Desc NVARCHAR(MAX), 	@TwoHanded bit,

@WeaponClass NVARCHAR(80), 
@WeaponType NVARCHAR(80),
@Full_auto bit,
@ACCAddin int,
@ROF_for_Sh int,

@ROF INT,
@Recoill INT,
@DefACCc INT,
@Half_Rangee INT,
@FullRangee INT,
@Damagee NVARCHAR(50),
--
@Shotss INT,
@AddinChamber BIT,
@TimeForreload INT,
@singlereload BIT,

@Damage NVARCHAR(80),
@ArmorDivision DECIMAL(5, 2),
@TypeOfDamage1 NVARCHAR(50),
@TypeOfDamage2 NVARCHAR(50),
@TypeOfDam1 NVARCHAR(50) ,
@TypeOfDam2 NVARCHAR(50) ,

--@ubCalibre NVARCHAR(MAX),
@Returns INT OUTPUT)

AS
BEGIN

  -- SET NOCOUNT ON added to prevent extra result sets from
  -- interfering with SELECT statements.
  SET NOCOUNT ON;

  DECLARE @newID INT
  
  DECLARE @IDClass INT		--item
  DECLARE @IDLCFind INT		--item	
  DECLARE @IDTLFind INT		--item
  
  DECLARE @idWeapAttackType INT
  
  DECLARE @idWeaponClass INT 
  DECLARE @idWeaponType INT
  
  DECLARE @IDubCalibre INT
  DECLARE @TypeOfDamageFind1 INT 
  DECLARE @TypeOfDamageFind2 INT 
  
  SET @IDLCFind = 	(SELECT TOP(1)   l.Id_LC	FROM LC l  			WHERE l.Name_LC = @Lcin)  
  SET @IDTLFind =	(SELECT TOP(1)   t.Id_Tl  FROM TL t  			WHERE t.name_TL = @TLin)  
  SET @IDClass = 	(SELECT TOP(1)   ic.id	FROM ItemClass ic  	WHERE ic.name = @class_ofItem)
  
  SET @idWeapAttackType = (SELECT   TOP(1) wat.id  FROM WeaponAttackType wat  WHERE wat.name LIKE (''prim%''))

  SET @idWeaponClass  =(SELECT TOP(1) id	from WeaponClass	WHERE	name LIKE(@WeaponClass))
  SET @idWeaponType =(SELECT TOP(1) id		from WeaponType		WHERE	name LIKE(@WeaponType))
  
  
  SET @TypeOfDamageFind1=(SELECT TOP(1) tod.id FROM TypeOfDamage tod WHERE tod.name=@TypeOfDamage1)
  SET @TypeOfDamageFind2=(SELECT TOP(1) tod.id FROM TypeOfDamage tod WHERE tod.name=@TypeOfDamage2)
  -- SET @IDubCalibre = (SELECT    a.id  FROM AMMO a  WHERE a.Caliber_name LIKE @ubCalibre)


  INSERT INTO ITEM (szItemName, usItemClass, ubWeight, minST, ItemSize, usPrice, LC, TL, szItemDesc,TwoHanded)
    VALUES (@name, @IDClass, @Weight, @ST, @Bulk, @Cost, @IDLCFind, @IDTLFind, @Desc,@TwoHanded)
  SELECT	@newID = @@identity
  
  
  INSERT INTO Item1.dbo.WEAPON 
  (uiIndex, 	
  szWeaponName, 	
  ubWeaponClass, 	
  ubWeaponType, 	
  ROF, 
  Full_auto,  
  Recoil, 
  DefACC, 
  ACCAddin, 
  ROF_for_Sh,  
  Half_Range,
  FullRange, Shots, Add_in_Chamber, Time_For_reload, single_reload)
 
 
 VALUES 						
  (@newID, 	
  @name, 			
  @idWeaponClass, 
  @idWeaponType, 	
  @ROF,
  @Full_auto,  
  @Recoill,   
  @DefACCc,
  @ACCAddin,
  @ROF_for_Sh,
  @Half_Rangee, 
  @FullRangee, @Shotss, @AddinChamber, @TimeForreload, @singlereload)
  
  
  INSERT INTO Item1.dbo.WeaponDamage 
  (idWeapon, 
  idWeaponAttackType, 
  Damage, 
  ArmorDivision,
  idTypeOfDamage1,
  idTypeOfDamage2,
  TypeOfDamage1text,
  TypeOfDamage2text)
  VALUES 
  (@newID, 
  @idWeapAttackType, 
  @Damagee, 
  @ArmorDivision,
  @TypeOfDamageFind1,
  @TypeOfDamageFind2,
  @TypeOfDam1,
  @TypeOfDam2
);
	  
  SET @Returns = @newID

END
--http://www.cyberguru.ru/dotnet/ado-net/entity-framework-faq.html
'
GO

--
-- Создать таблицу "dbo.G_SubAttachClass"
--
PRINT (N'Создать таблицу "dbo.G_SubAttachClass"')
GO
IF OBJECT_ID(N'dbo.G_SubAttachClass', 'U') IS NULL
  CREATE TABLE dbo.G_SubAttachClass (
    id INT IDENTITY,
    SubAttach_name NVARCHAR(50) NOT NULL,
    AttachClass INT NOT NULL,
    SubAttachDescription NVARCHAR(MAX) NULL,
    ATTACHMENTSLOT INT NOT NULL,
    CONSTRAINT PK_G_SubAttachClass PRIMARY KEY CLUSTERED (id)
  )
GO

--
-- Создать индекс "IX_FK_G_SubAttachClass_ATTACHMENTSLOT1" для объекта типа таблица "dbo.G_SubAttachClass"
--
PRINT (N'Создать индекс "IX_FK_G_SubAttachClass_ATTACHMENTSLOT1" для объекта типа таблица "dbo.G_SubAttachClass"')
GO
IF NOT EXISTS (SELECT
    1
  FROM sys.indexes
  WHERE name = N'IX_FK_G_SubAttachClass_ATTACHMENTSLOT1'
  AND object_id = OBJECT_ID(N'dbo.G_SubAttachClass'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'ATTACHMENTSLOT'
  AND object_id = OBJECT_ID(N'dbo.G_SubAttachClass'))
  CREATE INDEX IX_FK_G_SubAttachClass_ATTACHMENTSLOT1
  ON dbo.G_SubAttachClass (ATTACHMENTSLOT)
GO

--
-- Создать индекс "IX_FK_G_SubAttachClass_G_AttachClass" для объекта типа таблица "dbo.G_SubAttachClass"
--
PRINT (N'Создать индекс "IX_FK_G_SubAttachClass_G_AttachClass" для объекта типа таблица "dbo.G_SubAttachClass"')
GO
IF NOT EXISTS (SELECT
    1
  FROM sys.indexes
  WHERE name = N'IX_FK_G_SubAttachClass_G_AttachClass'
  AND object_id = OBJECT_ID(N'dbo.G_SubAttachClass'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'AttachClass'
  AND object_id = OBJECT_ID(N'dbo.G_SubAttachClass'))
  CREATE INDEX IX_FK_G_SubAttachClass_G_AttachClass
  ON dbo.G_SubAttachClass (AttachClass)
GO

--
-- Создать таблицу "dbo.G_AttachClass"
--
PRINT (N'Создать таблицу "dbo.G_AttachClass"')
GO
IF OBJECT_ID(N'dbo.G_AttachClass', 'U') IS NULL
  CREATE TABLE dbo.G_AttachClass (
    id INT IDENTITY,
    name_class NVARCHAR(50) NULL,
    CONSTRAINT PK_G_AttachClass PRIMARY KEY CLUSTERED (id)
  )
GO

--
-- Создать таблицу "dbo.FOOD"
--
PRINT (N'Создать таблицу "dbo.FOOD"')
GO
IF OBJECT_ID(N'dbo.FOOD', 'U') IS NULL
  CREATE TABLE dbo.FOOD (
    id INT IDENTITY,
    name NVARCHAR(50) NULL,
    CONSTRAINT PK_FOOD PRIMARY KEY CLUSTERED (id)
  )
GO

--
-- Создать таблицу "dbo.ExplosionType"
--
PRINT (N'Создать таблицу "dbo.ExplosionType"')
GO
IF OBJECT_ID(N'dbo.ExplosionType', 'U') IS NULL
  CREATE TABLE dbo.ExplosionType (
    id INT IDENTITY,
    name NVARCHAR(25) NOT NULL,
    CONSTRAINT PK_ExplosionType PRIMARY KEY CLUSTERED (id)
  )
GO

--
-- Создать таблицу "dbo.DrugType"
--
PRINT (N'Создать таблицу "dbo.DrugType"')
GO
IF OBJECT_ID(N'dbo.DrugType', 'U') IS NULL
  CREATE TABLE dbo.DrugType (
    id INT IDENTITY,
    name NVARCHAR(80) NULL,
    CONSTRAINT PK_DrugType PRIMARY KEY CLUSTERED (id)
  )
GO

--
-- Создать таблицу "dbo.Drug"
--
PRINT (N'Создать таблицу "dbo.Drug"')
GO
IF OBJECT_ID(N'dbo.Drug', 'U') IS NULL
  CREATE TABLE dbo.Drug (
    id INT IDENTITY,
    name NVARCHAR(255) NULL,
    CONSTRAINT PK_Drug PRIMARY KEY CLUSTERED (id)
  )
GO

--
-- Создать таблицу "dbo.Clothes"
--
PRINT (N'Создать таблицу "dbo.Clothes"')
GO
IF OBJECT_ID(N'dbo.Clothes', 'U') IS NULL
  CREATE TABLE dbo.Clothes (
    id INT IDENTITY,
    name NVARCHAR(255) NULL,
    CONSTRAINT PK_Clothes PRIMARY KEY CLUSTERED (id)
  )
GO

--
-- Создать таблицу "dbo.CharacterDB"
--
PRINT (N'Создать таблицу "dbo.CharacterDB"')
GO
IF OBJECT_ID(N'dbo.CharacterDB', 'U') IS NULL
  CREATE TABLE dbo.CharacterDB (
    id INT IDENTITY,
    name NVARCHAR(80) NULL,
    StrengthPoints INT NOT NULL,
    DexterityPoints INT NOT NULL,
    IntelligencePoints INT NOT NULL,
    HealthPoints INT NOT NULL,
    MaxHPPoints INT NOT NULL,
    MaxFPPoints INT NOT NULL,
    PerceptionPoints INT NOT NULL,
    WillpowerPoints INT NOT NULL,
    BasicSpeedPoints REAL NOT NULL,
    BasicMovePoints INT NOT NULL,
    CONSTRAINT PK_cha PRIMARY KEY CLUSTERED (id)
  )
GO

--
-- Создать таблицу "dbo.Caliber"
--
PRINT (N'Создать таблицу "dbo.Caliber"')
GO
IF OBJECT_ID(N'dbo.Caliber', 'U') IS NULL
  CREATE TABLE dbo.Caliber (
    id INT IDENTITY,
    Caliber_name NVARCHAR(255) NOT NULL,
    alt_caliber_name NVARCHAR(255) NULL,
    Class_of_Caliber NVARCHAR(50) NOT NULL,
    Dim_of_bullet_SI DECIMAL(8, 4) NULL,
    Dim_of_bullet_US DECIMAL(8, 4) NULL,
    CONSTRAINT PK_Caliber PRIMARY KEY CLUSTERED (id)
  )
GO

--
-- Создать таблицу "dbo.Battery"
--
PRINT (N'Создать таблицу "dbo.Battery"')
GO
IF OBJECT_ID(N'dbo.Battery', 'U') IS NULL
  CREATE TABLE dbo.Battery (
    id INT IDENTITY,
    name NVARCHAR(50) NOT NULL,
    SmolName NVARCHAR(50) NULL,
    Description NVARCHAR(500) NULL,
    CPP MONEY NULL,
    WPP DECIMAL(7, 3) NULL,
    CONSTRAINT PK_Battery PRIMARY KEY CLUSTERED (id)
  )
GO

--
-- Создать таблицу "dbo.ATTACHMENTSLOT"
--
PRINT (N'Создать таблицу "dbo.ATTACHMENTSLOT"')
GO
IF OBJECT_ID(N'dbo.ATTACHMENTSLOT', 'U') IS NULL
  CREATE TABLE dbo.ATTACHMENTSLOT (
    uiSlotIndex INT IDENTITY,
    szSlotName NVARCHAR(50) NOT NULL,
    CONSTRAINT PK_ATTACHMENTSLOT PRIMARY KEY CLUSTERED (uiSlotIndex)
  )
GO

--
-- Создать таблицу "dbo.Attachmentmount"
--
PRINT (N'Создать таблицу "dbo.Attachmentmount"')
GO
IF OBJECT_ID(N'dbo.Attachmentmount', 'U') IS NULL
  CREATE TABLE dbo.Attachmentmount (
    id INT IDENTITY,
    name NVARCHAR(50) NULL,
    idAttacClass INT NOT NULL DEFAULT (1),
    CONSTRAINT PK_Attachmentmount PRIMARY KEY CLUSTERED (id)
  )
GO

--
-- Создать индекс "IX_FK_Attachmentmount_NasAttachmentClass1" для объекта типа таблица "dbo.Attachmentmount"
--
PRINT (N'Создать индекс "IX_FK_Attachmentmount_NasAttachmentClass1" для объекта типа таблица "dbo.Attachmentmount"')
GO
IF NOT EXISTS (SELECT
    1
  FROM sys.indexes
  WHERE name = N'IX_FK_Attachmentmount_NasAttachmentClass1'
  AND object_id = OBJECT_ID(N'dbo.Attachmentmount'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'idAttacClass'
  AND object_id = OBJECT_ID(N'dbo.Attachmentmount'))
  CREATE INDEX IX_FK_Attachmentmount_NasAttachmentClass1
  ON dbo.Attachmentmount (idAttacClass)
GO

--
-- Создать таблицу "dbo.AttachmentClass"
--
PRINT (N'Создать таблицу "dbo.AttachmentClass"')
GO
IF OBJECT_ID(N'dbo.AttachmentClass', 'U') IS NULL
  CREATE TABLE dbo.AttachmentClass (
    id INT IDENTITY,
    name NVARCHAR(70) NOT NULL,
    CONSTRAINT PK_AttachmentClass PRIMARY KEY CLUSTERED (id)
  )
GO

--
-- Создать таблицу "dbo.Attachment"
--
PRINT (N'Создать таблицу "dbo.Attachment"')
GO
IF OBJECT_ID(N'dbo.Attachment', 'U') IS NULL
  CREATE TABLE dbo.Attachment (
    uiIndex INT NOT NULL,
    szAttName NVARCHAR(80) NOT NULL,
    rAttachmentClass INT NOT NULL DEFAULT (1),
    Attachmentmount NVARCHAR(50) NULL,
    HiddenAttachment BIT NOT NULL DEFAULT (0),
    NoiseReduction INT NULL,
    HideMuzzleFlash BIT NOT NULL DEFAULT (0),
    RangeBonus INT NULL,
    AimBonus INT NULL,
    MinRangeForAimBonus INT NULL,
    MagSizeBonus INT NULL,
    BurstSizeBonus INT NULL,
    RateOfFireBonus INT NULL,
    DamageBonus INT NULL,
    ScopeMagFactor DECIMAL(4, 2) NULL,
    HearingRangeBonus INT NULL,
    VisionRangeBonus INT NULL,
    NightVisionRangeBonus INT NULL,
    DayVisionRangeBonus INT NULL,
    CaveVisionRangeBonus INT NULL,
    BrightLightVisionRangeBonus INT NULL,
    PercentTunnelVision INT NULL,
    FlashLightRange INT NULL,
    RecoilModifier INT NULL,
    G_SubAttachClass INT NOT NULL DEFAULT (1),
    G_AttachClass INT NOT NULL DEFAULT (1),
    Darkness INT NULL,
    Bulk_add INT NULL,
    Fix BIT NOT NULL DEFAULT (0),
    BatTimeWork INT NULL,
    Tritium BIT NOT NULL DEFAULT (0),
    ScopeMagMin INT NULL,
    ScopeMagMax INT NULL,
    AccAddmax INT NULL,
    id_Attachmentmount INT NOT NULL DEFAULT (1),
    ImpVisSights BIT NOT NULL DEFAULT (0),
    BlockIronSight BIT NOT NULL DEFAULT (0),
    Collimator BIT NOT NULL DEFAULT (0),
    Reflex BIT NOT NULL DEFAULT (0),
    Targetingprogram BIT NOT NULL DEFAULT (0),
    Laserrangefinder BIT NOT NULL DEFAULT (0),
    LaserRFrange INT NULL,
    LaserRFAcc INT NULL,
    NightVision INT NULL,
    NeedIRillumination BIT NOT NULL DEFAULT (0),
    Infravision BIT NOT NULL DEFAULT (0),
    IRFilter BIT NOT NULL DEFAULT (0),
    LightRange INT NULL,
    IRLigRange INT NULL,
    LaserRange INT NULL,
    LaserColor NVARCHAR(10) NULL,
    LaserColorEf DECIMAL(4, 2) NULL,
    usedBatType INT NULL,
    CONSTRAINT PK_Attachment PRIMARY KEY CLUSTERED (uiIndex)
  )
GO

--
-- Создать индекс "IX_FK_Attachment_Attachmentmount" для объекта типа таблица "dbo.Attachment"
--
PRINT (N'Создать индекс "IX_FK_Attachment_Attachmentmount" для объекта типа таблица "dbo.Attachment"')
GO
IF NOT EXISTS (SELECT
    1
  FROM sys.indexes
  WHERE name = N'IX_FK_Attachment_Attachmentmount'
  AND object_id = OBJECT_ID(N'dbo.Attachment'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'id_Attachmentmount'
  AND object_id = OBJECT_ID(N'dbo.Attachment'))
  CREATE INDEX IX_FK_Attachment_Attachmentmount
  ON dbo.Attachment (id_Attachmentmount)
GO

--
-- Создать индекс "IX_FK_Attachment_G_AttachClass" для объекта типа таблица "dbo.Attachment"
--
PRINT (N'Создать индекс "IX_FK_Attachment_G_AttachClass" для объекта типа таблица "dbo.Attachment"')
GO
IF NOT EXISTS (SELECT
    1
  FROM sys.indexes
  WHERE name = N'IX_FK_Attachment_G_AttachClass'
  AND object_id = OBJECT_ID(N'dbo.Attachment'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'G_AttachClass'
  AND object_id = OBJECT_ID(N'dbo.Attachment'))
  CREATE INDEX IX_FK_Attachment_G_AttachClass
  ON dbo.Attachment (G_AttachClass)
GO

--
-- Создать индекс "IX_FK_rAttachmentClass" для объекта типа таблица "dbo.Attachment"
--
PRINT (N'Создать индекс "IX_FK_rAttachmentClass" для объекта типа таблица "dbo.Attachment"')
GO
IF NOT EXISTS (SELECT
    1
  FROM sys.indexes
  WHERE name = N'IX_FK_rAttachmentClass'
  AND object_id = OBJECT_ID(N'dbo.Attachment'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'rAttachmentClass'
  AND object_id = OBJECT_ID(N'dbo.Attachment'))
  CREATE INDEX IX_FK_rAttachmentClass
  ON dbo.Attachment (rAttachmentClass)
GO

--
-- Создать процедуру "dbo.NEW_ITEM"
--
GO
PRINT (N'Создать процедуру "dbo.NEW_ITEM"')
GO
IF OBJECT_ID(N'dbo.NEW_ITEM', 'P') IS NULL
  EXEC sp_executesql N'


CREATE PROCEDURE dbo.NEW_ITEM (@name NVARCHAR(80),
@class_ofItem NVARCHAR(80),
@Returns INT OUTPUT)

AS
BEGIN

  -- SET NOCOUNT ON added to prevent extra result sets from
  -- interfering with SELECT statements.
  SET NOCOUNT ON;

  DECLARE @newID INT
  DECLARE @IDClass INT
  DECLARE @idWeapAttackType INT

  SET @IDClass = (SELECT
    ic.id
  FROM ItemClass ic
  WHERE ic.name = @class_ofItem)

  SET @idWeapAttackType = (SELECT
    wat.id
  FROM WeaponAttackType wat
  WHERE wat.name LIKE (''prim%''))

  INSERT INTO ITEM (szItemName, usItemClass)
    VALUES (@name, @IDClass)
  SELECT
    @newID = @@identity

  IF (@class_ofItem = N''Gun'')
  BEGIN
    INSERT INTO Item1.dbo.WEAPON (uiIndex, szWeaponName, ubWeaponClass, ubWeaponType)
      VALUES (@newID, @name, 5, 23)

    INSERT INTO Item1.dbo.WeaponDamage (idWeapon, idWeaponAttackType, Damage, ArmorDivision)
      VALUES (@newID, @idWeapAttackType, ''d6'', DEFAULT);
  END

  ELSE
  IF (@class_ofItem = N''Attachment'')
  BEGIN
    INSERT INTO Item1.dbo.Attachment (uiIndex, szAttName)
      VALUES (@newID, @name)
  END

  SET @Returns = @newID

END
--http://www.cyberguru.ru/dotnet/ado-net/entity-framework-faq.html
'
GO

--
-- Создать таблицу "dbo.ArmourClass"
--
PRINT (N'Создать таблицу "dbo.ArmourClass"')
GO
IF OBJECT_ID(N'dbo.ArmourClass', 'U') IS NULL
  CREATE TABLE dbo.ArmourClass (
    id INT IDENTITY,
    name NVARCHAR(50) NOT NULL,
    CONSTRAINT PK_ArmourClass PRIMARY KEY CLUSTERED (id)
  )
GO

--
-- Создать таблицу "dbo.AnyBoxNameType"
--
PRINT (N'Создать таблицу "dbo.AnyBoxNameType"')
GO
IF OBJECT_ID(N'dbo.AnyBoxNameType', 'U') IS NULL
  CREATE TABLE dbo.AnyBoxNameType (
    id INT IDENTITY,
    nameOfBox VARCHAR(50) NULL,
    TypeOfBox INT NOT NULL,
    ParentBoxName INT NULL,
    CONSTRAINT PK_AnyBoxNameType PRIMARY KEY CLUSTERED (id)
  )
GO

--
-- Создать таблицу "dbo.AMMOUPGRATES"
--
PRINT (N'Создать таблицу "dbo.AMMOUPGRATES"')
GO
IF OBJECT_ID(N'dbo.AMMOUPGRATES', 'U') IS NULL
  CREATE TABLE dbo.AMMOUPGRATES (
    id INT IDENTITY,
    name NVARCHAR(150) NOT NULL,
    shortname NVARCHAR(20) NOT NULL,
    malf INT NOT NULL,
    AR_divX DECIMAL(4, 2) NOT NULL,
    ACC_add INT NOT NULL,
    ACC_x DECIMAL(4, 2) NOT NULL,
    damage_x DECIMAL(4, 2) NOT NULL,
    Dam_Type NVARCHAR(5) NULL,
    range_x12 DECIMAL(4, 2) NOT NULL,
    range_x DECIMAL(4, 2) NOT NULL,
    ST_x DECIMAL(4, 2) NOT NULL,
    WPS_x DECIMAL(4, 2) NOT NULL,
    CPS_x DECIMAL(4, 2) NOT NULL,
    Hearing INT NOT NULL,
    Ammo_Class NVARCHAR(15) NULL,
    min_Caliber DECIMAL(4, 2) NULL,
    Max_Calider DECIMAL(4, 2) NULL,
    DT_Min_Ammo_CAliber DECIMAL(4, 2) NULL,
    Condition_DT_Min_ammo_Cal NVARCHAR(3) NULL,
    hearing_table INT NOT NULL,
    Upgrates NVARCHAR(150) NOT NULL,
    Follow_Up NVARCHAR(50) NULL,
    Linked NVARCHAR(50) NULL,
    CONSTRAINT PK_AMMOUPGRATES PRIMARY KEY CLUSTERED (id)
  )
GO

--
-- Создать таблицу "dbo.AMMO"
--
PRINT (N'Создать таблицу "dbo.AMMO"')
GO
IF OBJECT_ID(N'dbo.AMMO', 'U') IS NULL
  CREATE TABLE dbo.AMMO (
    id INT NOT NULL,
    Caliber_name NVARCHAR(255) NOT NULL,
    alt_caliber_name NVARCHAR(255) NULL
  )
GO

--
-- Создать процедуру "dbo.NEW_ITEM_Ammo"
--
GO
PRINT (N'Создать процедуру "dbo.NEW_ITEM_Ammo"')
GO
IF OBJECT_ID(N'dbo.NEW_ITEM_Ammo', 'P') IS NULL
  EXEC sp_executesql N'
CREATE PROCEDURE dbo.NEW_ITEM_Ammo
  @name NVARCHAR(80), 
  @weigth DECIMAL(7,3), 
  @price  MONEY
AS
BEGIN
SET NOCOUNT ON;

  DECLARE @Class INT
  DECLARE @Call INT
DECLARE @newID INT
  SET @Class = (SELECT TOP (1)
    ic.id
  FROM ItemClass ic
  WHERE ic.name = ''Ammo'')

   SET @Call = (SELECT TOP (1)
    c.id
  FROM Caliber c 
  WHERE c.Caliber_name = @name)

  INSERT INTO ITEM (szItemName, usItemClass,ubWeight,usPrice,ubCalibre)
    VALUES (@name, @Class,@weigth,@price,@Call)
  SELECT
    @newID = @@identity
    INSERT INTO AMMO (id, Caliber_name, alt_caliber_name)
  VALUES (@newID, @name, N'''');


END
'
GO

--
-- Создать таблицу "dbo.G_AvAttachClass"
--
PRINT (N'Создать таблицу "dbo.G_AvAttachClass"')
GO
IF OBJECT_ID(N'dbo.G_AvAttachClass', 'U') IS NULL
  CREATE TABLE dbo.G_AvAttachClass (
    id_attach INT NOT NULL,
    id_GSubClass INT NOT NULL,
    id_AttachClass INT NULL,
    CONSTRAINT PK_G_AvAttachClass PRIMARY KEY CLUSTERED (id_attach, id_GSubClass)
  )
GO

--
-- Создать индекс "IX_FK_G_AvAttachClass_G_AttachClass" для объекта типа таблица "dbo.G_AvAttachClass"
--
PRINT (N'Создать индекс "IX_FK_G_AvAttachClass_G_AttachClass" для объекта типа таблица "dbo.G_AvAttachClass"')
GO
IF NOT EXISTS (SELECT
    1
  FROM sys.indexes
  WHERE name = N'IX_FK_G_AvAttachClass_G_AttachClass'
  AND object_id = OBJECT_ID(N'dbo.G_AvAttachClass'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'id_AttachClass'
  AND object_id = OBJECT_ID(N'dbo.G_AvAttachClass'))
  CREATE INDEX IX_FK_G_AvAttachClass_G_AttachClass
  ON dbo.G_AvAttachClass (id_AttachClass)
GO

--
-- Создать индекс "IX_FK_G_AvAttachClass_G_SubAttachClass" для объекта типа таблица "dbo.G_AvAttachClass"
--
PRINT (N'Создать индекс "IX_FK_G_AvAttachClass_G_SubAttachClass" для объекта типа таблица "dbo.G_AvAttachClass"')
GO
IF NOT EXISTS (SELECT
    1
  FROM sys.indexes
  WHERE name = N'IX_FK_G_AvAttachClass_G_SubAttachClass'
  AND object_id = OBJECT_ID(N'dbo.G_AvAttachClass'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'id_GSubClass'
  AND object_id = OBJECT_ID(N'dbo.G_AvAttachClass'))
  CREATE INDEX IX_FK_G_AvAttachClass_G_SubAttachClass
  ON dbo.G_AvAttachClass (id_GSubClass)
GO

--
-- Создать процедуру "dbo.NEW_ITEM_att"
--
GO
PRINT (N'Создать процедуру "dbo.NEW_ITEM_att"')
GO
IF OBJECT_ID(N'dbo.NEW_ITEM_att', 'P') IS NULL
  EXEC sp_executesql N'
CREATE PROCEDURE dbo.NEW_ITEM_att @name NVARCHAR(80), @G_att_class INT, @G_sub_att INT, @id_att_mount NVARCHAR(80)
AS
BEGIN
    SET NOCOUNT ON;

  DECLARE @newID INT
  DECLARE @mount INT

  SET @mount = (SELECT
    a.id
  FROM Attachmentmount a 
  WHERE a.name LIKE(@id_att_mount))

  INSERT INTO ITEM (szItemName, usItemClass)
    VALUES (@name, 4)
  SELECT
    @newID = @@identity

  INSERT INTO Item1.dbo.Attachment (uiIndex, szAttName, id_Attachmentmount)
    VALUES (@newID, @name, @mount)

INSERT INTO G_AvAttachClass (id_attach, id_GSubClass, id_AttachClass)
  VALUES (@newID, @G_sub_att, @G_att_class);


END
--http://www.cyberguru.ru/dotnet/ado-net/entity-framework-faq.html
'
GO

--
-- Создать таблицу "dbo.LOADBEARINGEQUIPMENT"
--
PRINT (N'Создать таблицу "dbo.LOADBEARINGEQUIPMENT"')
GO
IF OBJECT_ID(N'dbo.LOADBEARINGEQUIPMENT', 'U') IS NULL
  CREATE TABLE dbo.LOADBEARINGEQUIPMENT (
    lbeIndex INT NOT NULL,
    LBEClass INT NOT NULL,
    lbeCombo INT NOT NULL,
    lbeFilledSize INT NOT NULL,
    lbeAvailableVolume INT NOT NULL,
    lbePocketsAvailable INT NOT NULL,
    lbePocketIndex1 INT NOT NULL,
    lbePocketIndex2 INT NOT NULL,
    lbePocketIndex3 INT NOT NULL,
    lbePocketIndex4 INT NOT NULL,
    lbePocketIndex5 INT NOT NULL,
    lbePocketIndex6 INT NOT NULL,
    lbePocketIndex7 INT NOT NULL,
    lbePocketIndex8 INT NOT NULL,
    lbePocketIndex9 INT NOT NULL,
    lbePocketIndex10 INT NOT NULL,
    lbePocketIndex11 INT NOT NULL,
    lbePocketIndex12 INT NOT NULL,
    CONSTRAINT PK_LOADBEARINGEQUIPMENT PRIMARY KEY CLUSTERED (lbeIndex),
    UNIQUE (lbeIndex)
  )
GO

--
-- Создать индекс "IX_FK_LOADBEARINGEQUIPMENT" для объекта типа таблица "dbo.LOADBEARINGEQUIPMENT"
--
PRINT (N'Создать индекс "IX_FK_LOADBEARINGEQUIPMENT" для объекта типа таблица "dbo.LOADBEARINGEQUIPMENT"')
GO
IF NOT EXISTS (SELECT
    1
  FROM sys.indexes
  WHERE name = N'IX_FK_LOADBEARINGEQUIPMENT'
  AND object_id = OBJECT_ID(N'dbo.LOADBEARINGEQUIPMENT'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'LBEClass'
  AND object_id = OBJECT_ID(N'dbo.LOADBEARINGEQUIPMENT'))
  CREATE INDEX IX_FK_LOADBEARINGEQUIPMENT
  ON dbo.LOADBEARINGEQUIPMENT (LBEClass)
GO

--
-- Создать таблицу "dbo.EXPLOSIVE"
--
PRINT (N'Создать таблицу "dbo.EXPLOSIVE"')
GO
IF OBJECT_ID(N'dbo.EXPLOSIVE', 'U') IS NULL
  CREATE TABLE dbo.EXPLOSIVE (
    uiIndex INT NOT NULL,
    ubType INT NOT NULL,
    ubDamage INT NOT NULL,
    ubStunDamage INT NOT NULL,
    ubRadius INT NOT NULL,
    ubDuration INT NOT NULL,
    ubStartRadius INT NOT NULL,
    ubMagSize INT NOT NULL,
    usNumFragments INT NOT NULL,
    ubFragType INT NOT NULL,
    ubFragDamage INT NOT NULL,
    ubFragRange INT NOT NULL,
    ubHorizontalDegree INT NOT NULL,
    ubVerticalDegree INT NOT NULL,
    bIndoorModifier DECIMAL(38) NOT NULL,
    fExplodeOnImpact BIT NOT NULL,
    GLGrenade BIT NOT NULL,
    RLGrenade BIT NOT NULL,
    Mine BIT NOT NULL,
    Flare BIT NOT NULL,
    Directional BIT NOT NULL,
    ShapedCharge BIT NOT NULL,
    CONSTRAINT PK_EXPLOSIVE PRIMARY KEY CLUSTERED (uiIndex),
    UNIQUE (uiIndex)
  )
GO

--
-- Создать индекс "IX_FK_EXPLOSIVE" для объекта типа таблица "dbo.EXPLOSIVE"
--
PRINT (N'Создать индекс "IX_FK_EXPLOSIVE" для объекта типа таблица "dbo.EXPLOSIVE"')
GO
IF NOT EXISTS (SELECT
    1
  FROM sys.indexes
  WHERE name = N'IX_FK_EXPLOSIVE'
  AND object_id = OBJECT_ID(N'dbo.EXPLOSIVE'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'ubType'
  AND object_id = OBJECT_ID(N'dbo.EXPLOSIVE'))
  CREATE INDEX IX_FK_EXPLOSIVE
  ON dbo.EXPLOSIVE (ubType)
GO

--
-- Создать таблицу "dbo.CombineWeap"
--
PRINT (N'Создать таблицу "dbo.CombineWeap"')
GO
IF OBJECT_ID(N'dbo.CombineWeap', 'U') IS NULL
  CREATE TABLE dbo.CombineWeap (
    id INT IDENTITY,
    idWeapon INT NOT NULL,
    ScopeSelect INT NULL,
    LaserSelect INT NULL,
    LightSelect INT NULL,
    BipodSelect INT NULL,
    SilenserSelect INT NULL,
    LauncherSelect INT NULL,
    BayonetSelect INT NULL,
    MagazineSelect INT NULL,
    InternalSelect INT NULL,
    ExternalSelect INT NULL,
    StockSelect INT NULL,
    CONSTRAINT PK_CombineWeap PRIMARY KEY CLUSTERED (id)
  )
GO

--
-- Создать таблицу "dbo.BoxItem"
--
PRINT (N'Создать таблицу "dbo.BoxItem"')
GO
IF OBJECT_ID(N'dbo.BoxItem', 'U') IS NULL
  CREATE TABLE dbo.BoxItem (
    id INT IDENTITY,
    BoxName INT NOT NULL,
    Items INT NOT NULL,
    CountItems INT NOT NULL DEFAULT (0),
    CONSTRAINT PK_BoxItem PRIMARY KEY CLUSTERED (id)
  )
GO

--
-- Создать таблицу "dbo.AvailableAttachSlot"
--
PRINT (N'Создать таблицу "dbo.AvailableAttachSlot"')
GO
IF OBJECT_ID(N'dbo.AvailableAttachSlot', 'U') IS NULL
  CREATE TABLE dbo.AvailableAttachSlot (
    id INT IDENTITY,
    rItemId INT NOT NULL,
    rATTACHMENTSLOT INT NOT NULL,
    rAttachmentmount INT NOT NULL,
    CONSTRAINT PK_AvailableAttachSlot PRIMARY KEY CLUSTERED (id),
    CONSTRAINT UK_AvailableAttachSlot UNIQUE (rItemId, rATTACHMENTSLOT, rAttachmentmount)
  )
GO

--
-- Создать индекс "IX_FK_AVeAttachmentmount" для объекта типа таблица "dbo.AvailableAttachSlot"
--
PRINT (N'Создать индекс "IX_FK_AVeAttachmentmount" для объекта типа таблица "dbo.AvailableAttachSlot"')
GO
IF NOT EXISTS (SELECT
    1
  FROM sys.indexes
  WHERE name = N'IX_FK_AVeAttachmentmount'
  AND object_id = OBJECT_ID(N'dbo.AvailableAttachSlot'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'rAttachmentmount'
  AND object_id = OBJECT_ID(N'dbo.AvailableAttachSlot'))
  CREATE INDEX IX_FK_AVeAttachmentmount
  ON dbo.AvailableAttachSlot (rAttachmentmount)
GO

--
-- Создать таблицу "dbo.AttachmentSystem"
--
PRINT (N'Создать таблицу "dbo.AttachmentSystem"')
GO
IF OBJECT_ID(N'dbo.AttachmentSystem', 'U') IS NULL
  CREATE TABLE dbo.AttachmentSystem (
    id INT IDENTITY,
    name NVARCHAR(255) NULL,
    CONSTRAINT PK_AttachmentSystem PRIMARY KEY CLUSTERED (id),
    CONSTRAINT UK_AttachmentSystem UNIQUE (id)
  )
GO

--
-- Создать таблицу "dbo.ARMOUR"
--
PRINT (N'Создать таблицу "dbo.ARMOUR"')
GO
IF OBJECT_ID(N'dbo.ARMOUR', 'U') IS NULL
  CREATE TABLE dbo.ARMOUR (
    uiIndex INT NOT NULL,
    ubArmourClass INT NOT NULL,
    ubProtection INT NOT NULL,
    ubCoverage INT NOT NULL,
    ubDegradePercent INT NOT NULL,
    FlakJacket BIT NOT NULL DEFAULT (1),
    LeatherJacket BIT NOT NULL DEFAULT (1),
    CONSTRAINT PK_ARMOUR PRIMARY KEY CLUSTERED (uiIndex),
    UNIQUE (uiIndex)
  )
GO

--
-- Создать индекс "IX_FK_ARMOUR" для объекта типа таблица "dbo.ARMOUR"
--
PRINT (N'Создать индекс "IX_FK_ARMOUR" для объекта типа таблица "dbo.ARMOUR"')
GO
IF NOT EXISTS (SELECT
    1
  FROM sys.indexes
  WHERE name = N'IX_FK_ARMOUR'
  AND object_id = OBJECT_ID(N'dbo.ARMOUR'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'ubArmourClass'
  AND object_id = OBJECT_ID(N'dbo.ARMOUR'))
  CREATE INDEX IX_FK_ARMOUR
  ON dbo.ARMOUR (ubArmourClass)
GO
  
-- Создать внешний ключ "FK_WeaponType_WeaponClass" для объекта типа таблица "dbo.WeaponType"
--
PRINT (N'Создать внешний ключ "FK_WeaponType_WeaponClass" для объекта типа таблица "dbo.WeaponType"')
GO
IF OBJECT_ID('dbo.FK_WeaponType_WeaponClass', 'F') IS NULL
  AND OBJECT_ID('dbo.WeaponType', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.WeaponClass', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'Class'
  AND object_id = OBJECT_ID(N'dbo.WeaponType'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'id'
  AND object_id = OBJECT_ID(N'dbo.WeaponClass'))
  ALTER TABLE dbo.WeaponType
  ADD CONSTRAINT FK_WeaponType_WeaponClass FOREIGN KEY (Class) REFERENCES dbo.WeaponClass (id)
GO

--
-- Создать внешний ключ "FK_Calibre" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать внешний ключ "FK_Calibre" для объекта типа таблица "dbo.ITEM"')
GO
IF OBJECT_ID('dbo.FK_Calibre', 'F') IS NULL
  AND OBJECT_ID('dbo.ITEM', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.Caliber', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'ubCalibre'
  AND object_id = OBJECT_ID(N'dbo.ITEM'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'id'
  AND object_id = OBJECT_ID(N'dbo.Caliber'))
  ALTER TABLE dbo.ITEM
  ADD CONSTRAINT FK_Calibre FOREIGN KEY (ubCalibre) REFERENCES dbo.Caliber (id)
GO

--
-- Создать внешний ключ "FK_ITEM_Clothes" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать внешний ключ "FK_ITEM_Clothes" для объекта типа таблица "dbo.ITEM"')
GO
IF OBJECT_ID('dbo.FK_ITEM_Clothes', 'F') IS NULL
  AND OBJECT_ID('dbo.ITEM', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.Clothes', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'clothestype'
  AND object_id = OBJECT_ID(N'dbo.ITEM'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'id'
  AND object_id = OBJECT_ID(N'dbo.Clothes'))
  ALTER TABLE dbo.ITEM
  ADD CONSTRAINT FK_ITEM_Clothes FOREIGN KEY (clothestype) REFERENCES dbo.Clothes (id)
GO

--
-- Создать внешний ключ "FK_ITEM_DrugType" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать внешний ключ "FK_ITEM_DrugType" для объекта типа таблица "dbo.ITEM"')
GO
IF OBJECT_ID('dbo.FK_ITEM_DrugType', 'F') IS NULL
  AND OBJECT_ID('dbo.ITEM', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.DrugType', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'DrugType'
  AND object_id = OBJECT_ID(N'dbo.ITEM'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'id'
  AND object_id = OBJECT_ID(N'dbo.DrugType'))
  ALTER TABLE dbo.ITEM
  ADD CONSTRAINT FK_ITEM_DrugType FOREIGN KEY (DrugType) REFERENCES dbo.DrugType (id)
GO

--
-- Создать внешний ключ "FK_ITEM_Food" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать внешний ключ "FK_ITEM_Food" для объекта типа таблица "dbo.ITEM"')
GO
IF OBJECT_ID('dbo.FK_ITEM_Food', 'F') IS NULL
  AND OBJECT_ID('dbo.ITEM', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.FOOD', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'FoodType'
  AND object_id = OBJECT_ID(N'dbo.ITEM'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'id'
  AND object_id = OBJECT_ID(N'dbo.FOOD'))
  ALTER TABLE dbo.ITEM
  ADD CONSTRAINT FK_ITEM_Food FOREIGN KEY (FoodType) REFERENCES dbo.FOOD (id)
GO

--
-- Создать внешний ключ "FK_Item_ItemClass" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать внешний ключ "FK_Item_ItemClass" для объекта типа таблица "dbo.ITEM"')
GO
IF OBJECT_ID('dbo.FK_Item_ItemClass', 'F') IS NULL
  AND OBJECT_ID('dbo.ITEM', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.ItemClass', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'usItemClass'
  AND object_id = OBJECT_ID(N'dbo.ITEM'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'id'
  AND object_id = OBJECT_ID(N'dbo.ItemClass'))
  ALTER TABLE dbo.ITEM
  ADD CONSTRAINT FK_Item_ItemClass FOREIGN KEY (usItemClass) REFERENCES dbo.ItemClass (id)
GO

--
-- Создать внешний ключ "FK_ITEM_LC" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать внешний ключ "FK_ITEM_LC" для объекта типа таблица "dbo.ITEM"')
GO
IF OBJECT_ID('dbo.FK_ITEM_LC', 'F') IS NULL
  AND OBJECT_ID('dbo.ITEM', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.LC', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'LC'
  AND object_id = OBJECT_ID(N'dbo.ITEM'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'Id_LC'
  AND object_id = OBJECT_ID(N'dbo.LC'))
  ALTER TABLE dbo.ITEM
  ADD CONSTRAINT FK_ITEM_LC FOREIGN KEY (LC) REFERENCES dbo.LC (Id_LC)
GO

--
-- Создать внешний ключ "FK_ITEM_TL" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать внешний ключ "FK_ITEM_TL" для объекта типа таблица "dbo.ITEM"')
GO
IF OBJECT_ID('dbo.FK_ITEM_TL', 'F') IS NULL
  AND OBJECT_ID('dbo.ITEM', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.TL', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'TL'
  AND object_id = OBJECT_ID(N'dbo.ITEM'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'Id_Tl'
  AND object_id = OBJECT_ID(N'dbo.TL'))
  ALTER TABLE dbo.ITEM
  ADD CONSTRAINT FK_ITEM_TL FOREIGN KEY (TL) REFERENCES dbo.TL (Id_Tl)
GO

--
-- Создать внешний ключ "FK_WEAPON_ITEM_uiIndex" для объекта типа таблица "dbo.WEAPON"
--
PRINT (N'Создать внешний ключ "FK_WEAPON_ITEM_uiIndex" для объекта типа таблица "dbo.WEAPON"')
GO
IF OBJECT_ID('dbo.FK_WEAPON_ITEM_uiIndex', 'F') IS NULL
  AND OBJECT_ID('dbo.WEAPON', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.ITEM', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'uiIndex'
  AND object_id = OBJECT_ID(N'dbo.WEAPON'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'uiIndex'
  AND object_id = OBJECT_ID(N'dbo.ITEM'))
  ALTER TABLE dbo.WEAPON
  ADD CONSTRAINT FK_WEAPON_ITEM_uiIndex FOREIGN KEY (uiIndex) REFERENCES dbo.ITEM (uiIndex) ON DELETE CASCADE ON UPDATE CASCADE
GO

--
-- Создать внешний ключ "FK_WeaponType" для объекта типа таблица "dbo.WEAPON"
--
PRINT (N'Создать внешний ключ "FK_WeaponType" для объекта типа таблица "dbo.WEAPON"')
GO
IF OBJECT_ID('dbo.FK_WeaponType', 'F') IS NULL
  AND OBJECT_ID('dbo.WEAPON', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.WeaponType', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'ubWeaponType'
  AND object_id = OBJECT_ID(N'dbo.WEAPON'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'id'
  AND object_id = OBJECT_ID(N'dbo.WeaponType'))
  ALTER TABLE dbo.WEAPON
  ADD CONSTRAINT FK_WeaponType FOREIGN KEY (ubWeaponType) REFERENCES dbo.WeaponType (id)
GO

--
-- Создать внешний ключ "FK_WeaponDamage_TypeOfDamage_id1" для объекта типа таблица "dbo.WeaponDamage"
--
PRINT (N'Создать внешний ключ "FK_WeaponDamage_TypeOfDamage_id1" для объекта типа таблица "dbo.WeaponDamage"')
GO
IF OBJECT_ID('dbo.FK_WeaponDamage_TypeOfDamage_id1', 'F') IS NULL
  AND OBJECT_ID('dbo.WeaponDamage', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.TypeOfDamage', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'idTypeOfDamage1'
  AND object_id = OBJECT_ID(N'dbo.WeaponDamage'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'id'
  AND object_id = OBJECT_ID(N'dbo.TypeOfDamage'))
  ALTER TABLE dbo.WeaponDamage
  ADD CONSTRAINT FK_WeaponDamage_TypeOfDamage_id1 FOREIGN KEY (idTypeOfDamage1) REFERENCES dbo.TypeOfDamage (id)
GO

--
-- Создать внешний ключ "FK_WeaponDamage_TypeOfDamage_id2" для объекта типа таблица "dbo.WeaponDamage"
--
PRINT (N'Создать внешний ключ "FK_WeaponDamage_TypeOfDamage_id2" для объекта типа таблица "dbo.WeaponDamage"')
GO
IF OBJECT_ID('dbo.FK_WeaponDamage_TypeOfDamage_id2', 'F') IS NULL
  AND OBJECT_ID('dbo.WeaponDamage', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.TypeOfDamage', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'idTypeOfDamage2'
  AND object_id = OBJECT_ID(N'dbo.WeaponDamage'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'id'
  AND object_id = OBJECT_ID(N'dbo.TypeOfDamage'))
  ALTER TABLE dbo.WeaponDamage
  ADD CONSTRAINT FK_WeaponDamage_TypeOfDamage_id2 FOREIGN KEY (idTypeOfDamage2) REFERENCES dbo.TypeOfDamage (id)
GO

--
-- Создать внешний ключ "FK_WeaponDamage_WEAPON_uiIndex" для объекта типа таблица "dbo.WeaponDamage"
--
PRINT (N'Создать внешний ключ "FK_WeaponDamage_WEAPON_uiIndex" для объекта типа таблица "dbo.WeaponDamage"')
GO
IF OBJECT_ID('dbo.FK_WeaponDamage_WEAPON_uiIndex', 'F') IS NULL
  AND OBJECT_ID('dbo.WeaponDamage', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.WEAPON', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'idWeapon'
  AND object_id = OBJECT_ID(N'dbo.WeaponDamage'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'uiIndex'
  AND object_id = OBJECT_ID(N'dbo.WEAPON'))
  ALTER TABLE dbo.WeaponDamage
  ADD CONSTRAINT FK_WeaponDamage_WEAPON_uiIndex FOREIGN KEY (idWeapon) REFERENCES dbo.WEAPON (uiIndex) ON DELETE CASCADE ON UPDATE CASCADE
GO

--
-- Создать внешний ключ "FK_WeaponDamage_WeaponAttackType_id" для объекта типа таблица "dbo.WeaponDamage"
--
PRINT (N'Создать внешний ключ "FK_WeaponDamage_WeaponAttackType_id" для объекта типа таблица "dbo.WeaponDamage"')
GO
IF OBJECT_ID('dbo.FK_WeaponDamage_WeaponAttackType_id', 'F') IS NULL
  AND OBJECT_ID('dbo.WeaponDamage', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.WeaponAttackType', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'idWeaponAttackType'
  AND object_id = OBJECT_ID(N'dbo.WeaponDamage'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'id'
  AND object_id = OBJECT_ID(N'dbo.WeaponAttackType'))
  ALTER TABLE dbo.WeaponDamage
  ADD CONSTRAINT FK_WeaponDamage_WeaponAttackType_id FOREIGN KEY (idWeaponAttackType) REFERENCES dbo.WeaponAttackType (id)
GO

--
-- Создать внешний ключ "FK_LOADBEARINGEQUIPMENT" для объекта типа таблица "dbo.LOADBEARINGEQUIPMENT"
--
PRINT (N'Создать внешний ключ "FK_LOADBEARINGEQUIPMENT" для объекта типа таблица "dbo.LOADBEARINGEQUIPMENT"')
GO
IF OBJECT_ID('dbo.FK_LOADBEARINGEQUIPMENT', 'F') IS NULL
  AND OBJECT_ID('dbo.LOADBEARINGEQUIPMENT', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.LBEClass', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'LBEClass'
  AND object_id = OBJECT_ID(N'dbo.LOADBEARINGEQUIPMENT'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'id'
  AND object_id = OBJECT_ID(N'dbo.LBEClass'))
  ALTER TABLE dbo.LOADBEARINGEQUIPMENT
  ADD CONSTRAINT FK_LOADBEARINGEQUIPMENT FOREIGN KEY (LBEClass) REFERENCES dbo.LBEClass (id)
GO

--
-- Создать внешний ключ "FK_LOADBEARINGEQUIPMENT_ITEM_uiIndex" для объекта типа таблица "dbo.LOADBEARINGEQUIPMENT"
--
PRINT (N'Создать внешний ключ "FK_LOADBEARINGEQUIPMENT_ITEM_uiIndex" для объекта типа таблица "dbo.LOADBEARINGEQUIPMENT"')
GO
IF OBJECT_ID('dbo.FK_LOADBEARINGEQUIPMENT_ITEM_uiIndex', 'F') IS NULL
  AND OBJECT_ID('dbo.LOADBEARINGEQUIPMENT', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.ITEM', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'lbeIndex'
  AND object_id = OBJECT_ID(N'dbo.LOADBEARINGEQUIPMENT'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'uiIndex'
  AND object_id = OBJECT_ID(N'dbo.ITEM'))
  ALTER TABLE dbo.LOADBEARINGEQUIPMENT
  ADD CONSTRAINT FK_LOADBEARINGEQUIPMENT_ITEM_uiIndex FOREIGN KEY (lbeIndex) REFERENCES dbo.ITEM (uiIndex) ON DELETE CASCADE ON UPDATE CASCADE
GO

--
-- Создать внешний ключ "FK_EXPLOSIVE" для объекта типа таблица "dbo.EXPLOSIVE"
--
PRINT (N'Создать внешний ключ "FK_EXPLOSIVE" для объекта типа таблица "dbo.EXPLOSIVE"')
GO
IF OBJECT_ID('dbo.FK_EXPLOSIVE', 'F') IS NULL
  AND OBJECT_ID('dbo.EXPLOSIVE', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.ExplosionType', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'ubType'
  AND object_id = OBJECT_ID(N'dbo.EXPLOSIVE'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'id'
  AND object_id = OBJECT_ID(N'dbo.ExplosionType'))
  ALTER TABLE dbo.EXPLOSIVE
  ADD CONSTRAINT FK_EXPLOSIVE FOREIGN KEY (ubType) REFERENCES dbo.ExplosionType (id)
GO

--
-- Создать внешний ключ "FK_EXPLOSIVE_ITEM_uiIndex" для объекта типа таблица "dbo.EXPLOSIVE"
--
PRINT (N'Создать внешний ключ "FK_EXPLOSIVE_ITEM_uiIndex" для объекта типа таблица "dbo.EXPLOSIVE"')
GO
IF OBJECT_ID('dbo.FK_EXPLOSIVE_ITEM_uiIndex', 'F') IS NULL
  AND OBJECT_ID('dbo.EXPLOSIVE', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.ITEM', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'uiIndex'
  AND object_id = OBJECT_ID(N'dbo.EXPLOSIVE'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'uiIndex'
  AND object_id = OBJECT_ID(N'dbo.ITEM'))
  ALTER TABLE dbo.EXPLOSIVE
  ADD CONSTRAINT FK_EXPLOSIVE_ITEM_uiIndex FOREIGN KEY (uiIndex) REFERENCES dbo.ITEM (uiIndex) ON DELETE CASCADE ON UPDATE CASCADE
GO

--
-- Создать внешний ключ "FK_ARMOUR" для объекта типа таблица "dbo.ARMOUR"
--
PRINT (N'Создать внешний ключ "FK_ARMOUR" для объекта типа таблица "dbo.ARMOUR"')
GO
IF OBJECT_ID('dbo.FK_ARMOUR', 'F') IS NULL
  AND OBJECT_ID('dbo.ARMOUR', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.ArmourClass', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'ubArmourClass'
  AND object_id = OBJECT_ID(N'dbo.ARMOUR'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'id'
  AND object_id = OBJECT_ID(N'dbo.ArmourClass'))
  ALTER TABLE dbo.ARMOUR
  ADD CONSTRAINT FK_ARMOUR FOREIGN KEY (ubArmourClass) REFERENCES dbo.ArmourClass (id)
GO

--
-- Создать внешний ключ "FK_ARMOUR_ITEM_uiIndex" для объекта типа таблица "dbo.ARMOUR"
--
PRINT (N'Создать внешний ключ "FK_ARMOUR_ITEM_uiIndex" для объекта типа таблица "dbo.ARMOUR"')
GO
IF OBJECT_ID('dbo.FK_ARMOUR_ITEM_uiIndex', 'F') IS NULL
  AND OBJECT_ID('dbo.ARMOUR', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.ITEM', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'uiIndex'
  AND object_id = OBJECT_ID(N'dbo.ARMOUR'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'uiIndex'
  AND object_id = OBJECT_ID(N'dbo.ITEM'))
  ALTER TABLE dbo.ARMOUR
  ADD CONSTRAINT FK_ARMOUR_ITEM_uiIndex FOREIGN KEY (uiIndex) REFERENCES dbo.ITEM (uiIndex) ON DELETE CASCADE ON UPDATE CASCADE
GO

--
-- Создать внешний ключ "FK_AMMO_ITEM_uiIndex" для объекта типа таблица "dbo.AMMO"
--
PRINT (N'Создать внешний ключ "FK_AMMO_ITEM_uiIndex" для объекта типа таблица "dbo.AMMO"')
GO
IF OBJECT_ID('dbo.FK_AMMO_ITEM_uiIndex', 'F') IS NULL
  AND OBJECT_ID('dbo.AMMO', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.ITEM', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'id'
  AND object_id = OBJECT_ID(N'dbo.AMMO'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'uiIndex'
  AND object_id = OBJECT_ID(N'dbo.ITEM'))
  ALTER TABLE dbo.AMMO
  ADD CONSTRAINT FK_AMMO_ITEM_uiIndex FOREIGN KEY (id) REFERENCES dbo.ITEM (uiIndex) ON DELETE CASCADE ON UPDATE CASCADE
GO

--
-- Создать внешний ключ "FK_G_SubAttachClass_ATTACHMENTSLOT1" для объекта типа таблица "dbo.G_SubAttachClass"
--
PRINT (N'Создать внешний ключ "FK_G_SubAttachClass_ATTACHMENTSLOT1" для объекта типа таблица "dbo.G_SubAttachClass"')
GO
IF OBJECT_ID('dbo.FK_G_SubAttachClass_ATTACHMENTSLOT1', 'F') IS NULL
  AND OBJECT_ID('dbo.G_SubAttachClass', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.ATTACHMENTSLOT', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'ATTACHMENTSLOT'
  AND object_id = OBJECT_ID(N'dbo.G_SubAttachClass'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'uiSlotIndex'
  AND object_id = OBJECT_ID(N'dbo.ATTACHMENTSLOT'))
  ALTER TABLE dbo.G_SubAttachClass
  ADD CONSTRAINT FK_G_SubAttachClass_ATTACHMENTSLOT1 FOREIGN KEY (ATTACHMENTSLOT) REFERENCES dbo.ATTACHMENTSLOT (uiSlotIndex)
GO

--
-- Создать внешний ключ "FK_G_SubAttachClass_G_AttachClass" для объекта типа таблица "dbo.G_SubAttachClass"
--
PRINT (N'Создать внешний ключ "FK_G_SubAttachClass_G_AttachClass" для объекта типа таблица "dbo.G_SubAttachClass"')
GO
IF OBJECT_ID('dbo.FK_G_SubAttachClass_G_AttachClass', 'F') IS NULL
  AND OBJECT_ID('dbo.G_SubAttachClass', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.G_AttachClass', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'AttachClass'
  AND object_id = OBJECT_ID(N'dbo.G_SubAttachClass'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'id'
  AND object_id = OBJECT_ID(N'dbo.G_AttachClass'))
  ALTER TABLE dbo.G_SubAttachClass
  ADD CONSTRAINT FK_G_SubAttachClass_G_AttachClass FOREIGN KEY (AttachClass) REFERENCES dbo.G_AttachClass (id)
GO

--
-- Создать внешний ключ "FK_Attachmentmount_NasAttachmentClass1" для объекта типа таблица "dbo.Attachmentmount"
--
PRINT (N'Создать внешний ключ "FK_Attachmentmount_NasAttachmentClass1" для объекта типа таблица "dbo.Attachmentmount"')
GO
IF OBJECT_ID('dbo.FK_Attachmentmount_NasAttachmentClass1', 'F') IS NULL
  AND OBJECT_ID('dbo.Attachmentmount', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.ATTACHMENTSLOT', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'idAttacClass'
  AND object_id = OBJECT_ID(N'dbo.Attachmentmount'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'uiSlotIndex'
  AND object_id = OBJECT_ID(N'dbo.ATTACHMENTSLOT'))
  ALTER TABLE dbo.Attachmentmount
  ADD CONSTRAINT FK_Attachmentmount_NasAttachmentClass1 FOREIGN KEY (idAttacClass) REFERENCES dbo.ATTACHMENTSLOT (uiSlotIndex)
GO

--
-- Создать внешний ключ "FK_AvailableAttachSlot_ITEM_uiIndex" для объекта типа таблица "dbo.AvailableAttachSlot"
--
PRINT (N'Создать внешний ключ "FK_AvailableAttachSlot_ITEM_uiIndex" для объекта типа таблица "dbo.AvailableAttachSlot"')
GO
IF OBJECT_ID('dbo.FK_AvailableAttachSlot_ITEM_uiIndex', 'F') IS NULL
  AND OBJECT_ID('dbo.AvailableAttachSlot', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.ITEM', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'rItemId'
  AND object_id = OBJECT_ID(N'dbo.AvailableAttachSlot'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'uiIndex'
  AND object_id = OBJECT_ID(N'dbo.ITEM'))
  ALTER TABLE dbo.AvailableAttachSlot
  ADD CONSTRAINT FK_AvailableAttachSlot_ITEM_uiIndex FOREIGN KEY (rItemId) REFERENCES dbo.ITEM (uiIndex)
GO

--
-- Создать внешний ключ "FK_AVeAttachmentmount" для объекта типа таблица "dbo.AvailableAttachSlot"
--
PRINT (N'Создать внешний ключ "FK_AVeAttachmentmount" для объекта типа таблица "dbo.AvailableAttachSlot"')
GO
IF OBJECT_ID('dbo.FK_AVeAttachmentmount', 'F') IS NULL
  AND OBJECT_ID('dbo.AvailableAttachSlot', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.Attachmentmount', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'rAttachmentmount'
  AND object_id = OBJECT_ID(N'dbo.AvailableAttachSlot'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'id'
  AND object_id = OBJECT_ID(N'dbo.Attachmentmount'))
  ALTER TABLE dbo.AvailableAttachSlot
  ADD CONSTRAINT FK_AVeAttachmentmount FOREIGN KEY (rAttachmentmount) REFERENCES dbo.Attachmentmount (id)
GO

--
-- Создать внешний ключ "FK_Attachment_Attachmentmount" для объекта типа таблица "dbo.Attachment"
--
PRINT (N'Создать внешний ключ "FK_Attachment_Attachmentmount" для объекта типа таблица "dbo.Attachment"')
GO
IF OBJECT_ID('dbo.FK_Attachment_Attachmentmount', 'F') IS NULL
  AND OBJECT_ID('dbo.Attachment', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.Attachmentmount', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'id_Attachmentmount'
  AND object_id = OBJECT_ID(N'dbo.Attachment'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'id'
  AND object_id = OBJECT_ID(N'dbo.Attachmentmount'))
  ALTER TABLE dbo.Attachment
  ADD CONSTRAINT FK_Attachment_Attachmentmount FOREIGN KEY (id_Attachmentmount) REFERENCES dbo.Attachmentmount (id)
GO

--
-- Создать внешний ключ "FK_Attachment_ITEM_uiIndex" для объекта типа таблица "dbo.Attachment"
--
PRINT (N'Создать внешний ключ "FK_Attachment_ITEM_uiIndex" для объекта типа таблица "dbo.Attachment"')
GO
IF OBJECT_ID('dbo.FK_Attachment_ITEM_uiIndex', 'F') IS NULL
  AND OBJECT_ID('dbo.Attachment', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.ITEM', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'uiIndex'
  AND object_id = OBJECT_ID(N'dbo.Attachment'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'uiIndex'
  AND object_id = OBJECT_ID(N'dbo.ITEM'))
  ALTER TABLE dbo.Attachment
  ADD CONSTRAINT FK_Attachment_ITEM_uiIndex FOREIGN KEY (uiIndex) REFERENCES dbo.ITEM (uiIndex) ON DELETE CASCADE ON UPDATE CASCADE
GO

--
-- Создать внешний ключ "FK_rAttachmentClass" для объекта типа таблица "dbo.Attachment"
--
PRINT (N'Создать внешний ключ "FK_rAttachmentClass" для объекта типа таблица "dbo.Attachment"')
GO
IF OBJECT_ID('dbo.FK_rAttachmentClass', 'F') IS NULL
  AND OBJECT_ID('dbo.Attachment', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.AttachmentClass', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'rAttachmentClass'
  AND object_id = OBJECT_ID(N'dbo.Attachment'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'id'
  AND object_id = OBJECT_ID(N'dbo.AttachmentClass'))
  ALTER TABLE dbo.Attachment
  ADD CONSTRAINT FK_rAttachmentClass FOREIGN KEY (rAttachmentClass) REFERENCES dbo.AttachmentClass (id)
GO

--
-- Создать внешний ключ "FK_G_AvAttachClass_Attachment" для объекта типа таблица "dbo.G_AvAttachClass"
--
PRINT (N'Создать внешний ключ "FK_G_AvAttachClass_Attachment" для объекта типа таблица "dbo.G_AvAttachClass"')
GO
IF OBJECT_ID('dbo.FK_G_AvAttachClass_Attachment', 'F') IS NULL
  AND OBJECT_ID('dbo.G_AvAttachClass', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.Attachment', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'id_attach'
  AND object_id = OBJECT_ID(N'dbo.G_AvAttachClass'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'uiIndex'
  AND object_id = OBJECT_ID(N'dbo.Attachment'))
  ALTER TABLE dbo.G_AvAttachClass WITH CHECK
  ADD CONSTRAINT FK_G_AvAttachClass_Attachment FOREIGN KEY (id_attach) REFERENCES dbo.Attachment (uiIndex) ON DELETE CASCADE
GO

--
-- Создать внешний ключ "FK_G_AvAttachClass_G_SubAttachClass" для объекта типа таблица "dbo.G_AvAttachClass"
--
PRINT (N'Создать внешний ключ "FK_G_AvAttachClass_G_SubAttachClass" для объекта типа таблица "dbo.G_AvAttachClass"')
GO
IF OBJECT_ID('dbo.FK_G_AvAttachClass_G_SubAttachClass', 'F') IS NULL
  AND OBJECT_ID('dbo.G_AvAttachClass', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.G_SubAttachClass', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'id_GSubClass'
  AND object_id = OBJECT_ID(N'dbo.G_AvAttachClass'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'id'
  AND object_id = OBJECT_ID(N'dbo.G_SubAttachClass'))
  ALTER TABLE dbo.G_AvAttachClass WITH CHECK
  ADD CONSTRAINT FK_G_AvAttachClass_G_SubAttachClass FOREIGN KEY (id_GSubClass) REFERENCES dbo.G_SubAttachClass (id)
GO

--
-- Создать внешний ключ "FK_AnyBoxNameType_AnyBoxNameType_id" для объекта типа таблица "dbo.AnyBoxNameType"
--
PRINT (N'Создать внешний ключ "FK_AnyBoxNameType_AnyBoxNameType_id" для объекта типа таблица "dbo.AnyBoxNameType"')
GO
IF OBJECT_ID('dbo.FK_AnyBoxNameType_AnyBoxNameType_id', 'F') IS NULL
  AND OBJECT_ID('dbo.AnyBoxNameType', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.AnyBoxNameType', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'ParentBoxName'
  AND object_id = OBJECT_ID(N'dbo.AnyBoxNameType'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'id'
  AND object_id = OBJECT_ID(N'dbo.AnyBoxNameType'))
  ALTER TABLE dbo.AnyBoxNameType WITH CHECK
  ADD CONSTRAINT FK_AnyBoxNameType_AnyBoxNameType_id FOREIGN KEY (ParentBoxName) REFERENCES dbo.AnyBoxNameType (id)
GO

--
-- Создать внешний ключ "FK_AnyBoxNameType_Type_of_Box_id" для объекта типа таблица "dbo.AnyBoxNameType"
--
PRINT (N'Создать внешний ключ "FK_AnyBoxNameType_Type_of_Box_id" для объекта типа таблица "dbo.AnyBoxNameType"')
GO
IF OBJECT_ID('dbo.FK_AnyBoxNameType_Type_of_Box_id', 'F') IS NULL
  AND OBJECT_ID('dbo.AnyBoxNameType', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.Type_of_Box', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'TypeOfBox'
  AND object_id = OBJECT_ID(N'dbo.AnyBoxNameType'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'id'
  AND object_id = OBJECT_ID(N'dbo.Type_of_Box'))
  ALTER TABLE dbo.AnyBoxNameType
  ADD CONSTRAINT FK_AnyBoxNameType_Type_of_Box_id FOREIGN KEY (TypeOfBox) REFERENCES dbo.Type_of_Box (id) ON DELETE CASCADE
GO

--
-- Создать внешний ключ "FK_BoxItem_AnyBoxNameType_id" для объекта типа таблица "dbo.BoxItem"
--
PRINT (N'Создать внешний ключ "FK_BoxItem_AnyBoxNameType_id" для объекта типа таблица "dbo.BoxItem"')
GO
IF OBJECT_ID('dbo.FK_BoxItem_AnyBoxNameType_id', 'F') IS NULL
  AND OBJECT_ID('dbo.BoxItem', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.AnyBoxNameType', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'BoxName'
  AND object_id = OBJECT_ID(N'dbo.BoxItem'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'id'
  AND object_id = OBJECT_ID(N'dbo.AnyBoxNameType'))
  ALTER TABLE dbo.BoxItem
  ADD CONSTRAINT FK_BoxItem_AnyBoxNameType_id FOREIGN KEY (BoxName) REFERENCES dbo.AnyBoxNameType (id) ON DELETE CASCADE
GO

--
-- Создать внешний ключ "FK_BoxItem_ITEM_uiIndex" для объекта типа таблица "dbo.BoxItem"
--
PRINT (N'Создать внешний ключ "FK_BoxItem_ITEM_uiIndex" для объекта типа таблица "dbo.BoxItem"')
GO
IF OBJECT_ID('dbo.FK_BoxItem_ITEM_uiIndex', 'F') IS NULL
  AND OBJECT_ID('dbo.BoxItem', 'U') IS NOT NULL
  AND OBJECT_ID('dbo.ITEM', 'U') IS NOT NULL
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'Items'
  AND object_id = OBJECT_ID(N'dbo.BoxItem'))
  AND EXISTS (SELECT
    1
  FROM sys.columns
  WHERE name = N'uiIndex'
  AND object_id = OBJECT_ID(N'dbo.ITEM'))
  ALTER TABLE dbo.BoxItem
  ADD CONSTRAINT FK_BoxItem_ITEM_uiIndex FOREIGN KEY (Items) REFERENCES dbo.ITEM (uiIndex)
GO
SET NOEXEC OFF
GO


INSERT INTO WeaponAttackType (name, descr)
  VALUES (N'Primary', N'ee'), (N'Follow-up', N'ee'), (N'Linked', N'ee');


INSERT INTO G_AttachClass (name_class)
  VALUES 
  (N'Def'),
  (N'SIGHTS AND AIMING AIDS'), --2
  (N'SOUND SUPPRESSORS'),      --3
  (N'STOCKS, TRIPODS, AND BIPODS'),  --4
  (N'HOLSTERS, SCABBARDS, AND SLINGS'),  --5
  (N'MAGAZINE MODIFICATIONS AND RELOADING AIDS'),  --6
  (N'MISCELLANEOUS ACCESSORIES AND MODIFICATIONS');   --7 

INSERT INTO [ItemClass]
  VALUES
  (N'All'),
  (N'Gun'),
  --('Knife'), 
  --  ('Throwing Knife'), 
  --  ('Launcher'), 
  --  ('Thrown Weapon'), 
  -- ('Blunt Weapon'),
  --  ('Grenade'), 
  --  ('Bomb'), 
  ('Ammo'), 
  --  ('Armour'), 
  -- ('Medkit'), 
  --  ('Kit'), 
  --  ('Face Item'),
  --  ('Load Bearing Equipment'), 
  --('Misc'), 
  --('Money'), 
  (N'Attachment'),
  (N'Random Item');


INSERT INTO [AttachmentClass]
  VALUES 
  ('Default'), ('Bipod'), ('Suppressor'), ('Laser'), ('Sight'), ('Laser + Sight'), ('Scope'), ('Laser + Scope'),
  ('Sight + Scope'),
  ('Laser + Sight + Scope'),
  ('Stock'), ('Magwell'), ('Internal'), ('External'), ('Underbarrel'),
  ('Bipod + Underbarrel'), ('Grenade'), ('Rocket'), ('Foregrip'), ('Bipod + Foregrip'), ('Foregrip + Underbarrel'),
  ('Helmet'), ('Vest'), ('Pants'), ('Detonator'), ('Battery'), ('Extender'), ('Sling'), ('Remote Detonator'), ('Defuser'),
  ('Detonator + Defuser'), ('Remote Detonator + Defuser'), ('Iron Sight'), ('Feeder'), ('Modular Pouch'), ('Rifle Grenade');


--INSERT INTO [nasAttachmentClass]
--  VALUES ('None'), ('Default'), ('Barrel'), ('Laser'), ('Sight'), ('Scope'), ('Stock'), ('Ammo'), ('Internal'),
--  ('External'), ('Underbarrel'), ('Grenade'), ('Rocket'), ('MOLLE Small'), ('MOLLE Medium');

--INSERT INTO [nasLayoutClass]
--  VALUES ('None'), ('Weapons'), ('Multi-Shot Launchers'), ('Molle Leg Rigs'), ('Molle Vests'),
--  ('Molle Combat Packs'), ('Molle Backpacks');

INSERT INTO [ATTACHMENTSLOT] (szSlotName)
  VALUES 
  (N'Scope Attachments'),      --1
  (N'Laser Attachments'),      --2
  (N'Light Attachments'),      --3
  (N'Bipod Attachments'),      --4
  (N'Silenser Attachments'),   --5
  (N'Launcher Attachments'),   --6
  (N'Stock Attachments'),      --7
  (N'Bayonet Attachments'),    --8
  (N'Magazine Attachments'),   --9
  (N'Internal Attachments'),  --10
  (N'External Attachments'),  --11
  (N'Rifle Grenade'),
  (N'Rocket Launcher Slot');

INSERT INTO G_SubAttachClass (SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT)
  VALUES 
  (N'Telescopic Sights', 2, '', 1),                       --1
  (N'Improved-Visibility Sights', 2, '', 1),              --2
  (N'Collimating Sight', 2, '', 1),                       --3
  (N'Reflex Sight', 2, '', 1),                            --4
  (N'Night Sights', 2, '', 1),                            --5
  (N'Computer Sights', 2, '', 1),                         --6
  (N'Thermal-Imaging Sights', 2, '', 1),                  --7

  (N'Targeting Lasers', 2, '', 2),                        --8
  
  (N'Tactical Lights', 2, '', 3),                         --9
  
  (N'Tripods and Other Mounts', 4, '', 4),                --10
  (N'Bipods', 4, '', 4),                                  --11
  
  (N'Baffle Suppressors', 3, '', 5),                      --12
  (N'Wiper Suppressors', 3, '', 5),                       --13

  (N'Extended Magazines', 6, '', 9),                      --14
  (N'Drum magazines', 6, '', 9),                          --15
  (N'High-density magazines', 6, '', 9),                  --16
  (N'Speedloaders', 6, '', 9),                            --17
  (N'Clamped Magazines', 6, '', 9),                       --18


  (N'Pistol Stocks', 4, '', 7),   (N'Shooting Sticks', 4, '', 7),  
  (N'Folding Stock', 4, '', 7), 
  
  (N'Belt Holster (TL5)', 5, '', 11),       (N'Lanyard (TL5)', 5, '', 11),
  (N'Military Holster (TL5)', 5, '', 11),   (N'Rifle Sling (TL5)', 5, '', 11),
  (N'Scabbard (TL5)', 5, '', 11),           (N'Shoulder Holster (TL5)', 5, '', 11),
  (N'Sleeve Holster (TL6)', 5, '', 11),     (N'Fast-Draw Rig (TL7)', 5, '', 11),
  (N'Patrol Sling (TL7)', 5, '', 11),       (N'Undercover Holster (TL7)', 5, '', 11),
  (N'Retention Holster (TL8)', 5, '', 11),  (N'Gun-Cleaning Kit', 7, '', 11),
  (N'Gun Case', 7, '', 11),                 (N'Brass Catchers', 7, '', 11),
  (N'Slide-Lock', 7, '', 11),               (N'Accessory Rails', 7, '', 11),
  (N'Drag Bag', 7, '', 11);
 

INSERT INTO [LaserColorEf]
  VALUES 
  (N'Red', 0.33),
  (N'Orange', 0.50),
  (N'Green', 2.00),
  (N'Infrared', 1.00);


INSERT INTO [AttachmentSystem]
  VALUES ('Picatinny Rail Adapter'), ('M16'), ('AK'), ('30mm'), ('35mm');

INSERT INTO [dbo].[Attachmentmount]
  VALUES 
  (N'None', 1),  (N'None', 2),  (N'None', 3),  (N'None', 4),  (N'None', 5),  (N'None', 6),  (N'None', 7),  (N'None', 8),   (N'None', 9),  (N'None', 10),  (N'None', 11),

--  (N'Silenser Attachments'),   --5
  (N'.300 BLK', 5),    (N'5,7mm (FN)', 5),  (N'5,7mm (P90)', 5),   (N'VZ82', 5),    (N'Std 9mm Para', 5),  (N'APB', 5),           (N'Bizon 9x18', 5),    (N'GSh-18', 5),  (N'HK MP5-40', 5),
  (N'Std 45 ACP', 5),  (N'UMP45', 5),       (N'AEK919K', 5),       (N'M24x1,5', 5), (N'MAC', 5),           (N'PBS-7,62x39', 5),   (N'UZI', 5),           (N'RM', 5),      (N'QM', 5),
  (N'Supressor-5,56', 5),                  (N'L85A2', 5),         (N'SR25', 5),    (N'SIG - 7,62', 5),    (N'Saiga', 5),         (N'AK', 5),            (N'Galil', 5),   (N'M76', 5),
  (N'PBS - 5,45', 5),                      (N'Supressor-7,62', 5),(N'SV98', 5),    (N'built-in', 5),

--  (N'Bipod Attachments'),      --4
  (N'built-in', 4), (N'WR', 4),  (N'Г‘Г‚98', 4), (N'SniperBipod', 4),  (N'L96A1 bipod', 4), (N'L86_Bipod', 4),  (N'G36_bipod', 4), (N'BM1', 4),  (N'AssaultBipod', 4),
    
  --(N'Laser Attachments'),      --2
  (N'built-in', 2), (N'WR', 2),   (N'HK', 2), (N'Barrel Mount', 2),   (N'F2000 Laser', 2), 

  --(N'Stock Attachments'),      --7
   (N'WR', 7),   (N'built-in', 7),
  
--  (N'Launcher Attachments'),   --6
  (N'Scar', 6), (N'built-in', 6),   (N'M203PI', 6), (N'M203', 6),  (N'GP-30', 6), (N'hk', 6),  (N'F2000 Launcher', 6), (N'IMC40', 6),

  --(N'Bayonet Attachments'),    --8  
  (N'Knifes', 8), (N'StdBayonet', 8),   (N'built-in', 8), (N'Mosin_Bayonet', 8),   (N'M9', 8), (N'FAL', 8),  (N'HK', 8), (N'throw', 8),

--  (N'Light Attachments'),      --3
  (N'F2000 Light', 3),   (N'WR', 3),   (N'HK', 3),  (N'Barrel Mount', 3),
   
--  (N'Scope Attachments'),      --1
  (N'AK', 1),   (N'M16A1-A2', 1),   (N'm16a3', 1),  (N'Mini14 Scope', 1),  (N'HK G36 Scope', 1),
  (N'Galil', 1),  (N'M14_Scope', 1),  (N'Scout', 1),  (N'SIG551_Scope', 1),  (N'WR', 1),
  (N'HK MP5', 1),  (N'built-in', 1),  (N'SA80 Handle', 1), (N'SVD', 1), (N'L96A1 optic', 1),
  (N'M24_Scope', 1), (N'SIG Sniper Scope', 1), (N'L85A2 SCOPE', 1), (N'PSG', 1),
  (N'HK MSG-90', 1), (N'F2000 Scope', 1), (N'Zrak', 1), (N'Groza scope', 1), (N'Mosin_PU', 1),
  (N'G11 built-in', 1);

INSERT INTO [FOOD]
  VALUES (N'(none)'), (N'Canteen'), (N'Alcohol'), (N'Beer'), (N'Wine'), (N'Calory bars'), (N'MRE'), (N'EPA'), (N'Calorie Mate'),
  (N'Peak EPA'), (N'Hotdog'), (N'Hamburger'), (N'Fries'), (N'Pizza'), (N'Spam'), (N'Spam 2'), (N'C. vegetables'),
  (N'C. scorpions'), (N'Cat food'), (N'Baked beans'), (N'Steak'), (N'Bean stew'), (N'French toast'), (N'Crepes'),
  (N'Pasta'), (N'Omelet'), (N'Cow meat'), (N'Bloodcat meat'), (N'Bread'), (N'Applepie'), (N'Water drum'), (N'PET bottle'),
  (N'Vegetable juice'), (N'Milk'), (N'Energy drink'), (N'Energy drink 2'), (N'Coffee'), (N'Oatmeal'), (N'Bag of rice');


INSERT INTO [Clothes]
  VALUES (N'None'), (N'YELLOWVEST'), (N'BLACKSHIRT'), (N'REDVEST'), (N'GREENVEST'), (N'JEANVEST'), (N'BLUEVEST'),
  (N'grey shirt'), (N'light green'), (N'WHITEVEST'), (N'PURPLESHIRT'), (N'BROWNVEST'), (N'Army trousers'),
  (N'BLACKPANTS'), (N'BEIGEPANTS'), (N'TANPANTS'), (N'JEANPANTS'), (N'Bluejeans'), (N'white t-shirt and jeans');



INSERT INTO [DrugType]
  VALUES (N'None'), (N'Adrenaline'), (N'Alcohol'), (N'Regeneration'), (N'Damage Resistance'), (N'Strength'), (N'Agility'),
  (N'Dexterity'), (N'Wisdom'), (N'Perception'), (N'Psychosis'), (N'Nervousness'), (N'Reflex'), (N'Claustrophobia'),
  (N'Heat Intolerance'), (N'Fear of Insects'), (N'Forgetfulness'), (N'Stim'), (N'Blindness'), (N'Unconsciousness'),
  (N'Barrage'), (N'Vision'), (N'Tunnel Vision'), (N'Occulin'), (N'Cure'),
  (N'Cure+Regen+Dmg Resist+Agl+Dex+Wis+Per+Psycho+Nerv+Claus+Heat Int+Fear Ins+Forget');

INSERT INTO [Type_of_Box] (nameOfType)
  VALUES ('Type1'),('Type2'),('Type3');   

INSERT INTO [Drug]
  VALUES (N'None');


INSERT INTO [ArmourClass]
  VALUES (N'Helmet'), (N'Vest'), (N'Leggings'), (N'Plate'), (N'Vehicle'), (N'');


--INSERT INTO [ARMOUR] (uiIndex, [ubArmourClass], [ubProtection], [ubCoverage], [ubDegradePercent])
--  VALUES (1, 1, 20, 75, 25),
--  (2, 1, 22, 75, 20),
--  (3, 1, 24, 75, 15),
--  (4, 1, 25, 70, 15);

INSERT INTO [LBEClass]
  VALUES (N'Nothing'), (N'Thigh Pack'), (N'Vest'), (N'Combat Pack'), (N'Backpack');


--INSERT INTO [LOADBEARINGEQUIPMENT]
--  VALUES (1, 1, 0, 0, 0, 0, 16, 16, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0),
--  (2, 2, 0, 0, 0, 0, 16, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
--  (3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
--  (4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
--  (5, 2, 0, 29, 0, 0, 10, 10, 10, 10, 10, 10, 17, 17, 16, 0, 0, 0),
--  (6, 1, 0, 26, 0, 0, 13, 13, 13, 13, 0, 0, 0, 0, 0, 0, 0, 0);



INSERT INTO TypeOfDamage (name, LongName, mDamage)
  VALUES (N'pi+', 'piersing', '0.5'),
  (N'pi-', ' ', '0.5'),
  (N'pi', ' ', '1.0'),
  (N'pi++', ' ', '2.0'),
  (N'spec', ' ', '1.0'),
  (N'tox', ' ', '1.0'),
  (N'aff', ' ', '1.0'),
  (N'burn', ' ', '1.0'),
  (N'cor', ' ', '1.0'),
  (N'cr', ' ', '1.0'),
  (N'cut', ' ', '1.5'),
  (N'fat', ' ', '1.0'),
  (N'imp', ' ', '2.0'),
  (N'ex', ' ', '1.0');

INSERT INTO LC (Name_LC, ShortDes, Description)
  VALUES 
  ('LC4', N'Открытый',      N'Открытый. В большинстве обществ изделие свободно доступно, но в обществах с сильным контролем его доступ или использование могут быть ограничены. Примеры: компьютер; меч;ружьё; мотороллер'),
  ('LC3', N'Лицензируемый', N'Лицензируемый. В большинстве обществ изделие нуждается в государственной регистрации. Регистрация может включать в себя плату или освидетельствование и быть запрещенной для преступников, несовершеннолет них и т.д. Примеры: автомобиль; пистолет; охотничья винтовка'),
  ('LC2', N'Ограниченный',  N'Ограниченный. В большинстве обществ только представители военных, полицейских, или разведывательных служб могут владеть таким изделием, хотя некоторым гражданам с лицензией могут разрешить его получаение в частную собственность. Примеры: штурмовая винтовка, бронеавтомобиль.'),
  ('LC1', N'Военный',       N'Военный. В большинстве обществ изделие доступно только вооруженным силам или секретным разведслужбам. Примеры: противотанковое оружие; боевая техника.'),
  ('LC0', N'Запрещенный',   N'Запрещенный. Изделие ограничено вооруженными силами отдельных государств, которые очень постараются не допустить к нему частных лиц и страны «третьего мира». Примеры: ядерное и биологическое оружие.');

INSERT INTO TL (name_TL, Description, StartMoney)
  VALUES 
  ('TL0', N'Каменный век (доисторический период и далее). $250', 250),
  ('TL1', N'Бронзовый век (3500 лет до н.э. и позже). $500', 500),
  ('TL2', N'Железный век (1200 лет до н.э. и позже). $750', 750),
  ('TL3', N'Средневековье (600 г. н.э. и позже). $1.000', 1000),
  ('TL4', N'Эпоха парусов (1450 г. и позже). $2.000', 2000),
  ('TL5', N'Промышленный переворот (1730 г. и позже). $5.000', 5000),
  ('TL6', N'Эпоха механики (1880 г. и позже). $10.000', 10000),
  ('TL7', N'Атомная эпоха (1940 г. и позже). $15.000', 15000),
  ('TL8', N'Цифровая эпоха (1980 г. и позже). $20.000', 20000),
  ('TL9', N'Эпоха микротехники (2025 г. и позже?). $30.000', 30000),
  ('TL10', N'Эпоха роботизации (2070 г. и позже?) $50.000', 50000),
  ('TL11', N'Эпоха экзотических материалов. $75.000', 75000),
  ('TL12', N'Все что пожелает Мастер $100.000', 100000);


INSERT INTO [WeaponClass]
  VALUES ('None'),
  ('Artillery'),
  ('Beam Weapons'),
  ('Gunner'),
  ('Guns'),
  ('Liquid Projector'),
  ('Thrown Weapon');

INSERT INTO [WeaponType]
  VALUES ('Guided Missile', 2),
  ('Torpedoes', 2),
  ('Catapult', 2),
  ('Cannon', 2),
  ('Beams', 2),
  ('Bombs', 2),
  ('Projector', 3),
  ('Pistol', 3),
  ('Rifle', 3),
  ('Machine Gun', 4),
  ('Catapult', 4),
  ('Rockets', 4),
  ('Cannon', 4),
  ('Beams', 4),
  ('Light Anti-Armor Weapon', 5),
  ('Light Machine Gun', 5),
  ('Grenade Launcher', 5),
  ('Submachine Gun', 5),
  ('Shotgun', 5),
  ('Musket', 5),
  ('Pistol', 5),
  ('Gyroc', 5),
  ('Rifle', 5),
  ('Flamethrower', 6),
  ('Water Cannon', 6),
  ('Squirt Gun', 6),
  ('Sprayer', 6),
  ('Axe/Mace', 7),
  ('Shuriken', 7),
  ('Harpoon', 7),
  ('Knife', 7),
  ('Spear', 7),
  ('Stick', 7),
  ('Dart', 7);

INSERT INTO [AMMOUPGRATES] ([name], [shortname], [malf], [AR_divX], [ACC_add], [ACC_x], [damage_x], [Dam_Type], [range_x12], [range_x], [ST_x], [WPS_x], [CPS_x], [Hearing], [Ammo_Class], [min_Caliber], [Max_Calider], [DT_Min_Ammo_CAliber], [Condition_DT_Min_ammo_Cal], [hearing_table], [Upgrates], [Follow_Up], [Linked])
  VALUES ('Light Cased (TL5)', 'Lcas', 0, 1.000, 0, 1.000, 1.000, NULL, 1.000, 1.000, 1.000, 0.700, 2.000, 0, 'All', NULL, NULL, NULL, NULL, 0, 'CASED', NULL, NULL),
  ('Extra-Powerful Ammunition (TL4)', '+P', -1, 1.000, 0, 1.000, 1.100, NULL, 1.100, 1.100, 1.100, 1.000, 1.500, 0, 'All', NULL, NULL, NULL, NULL, 0, 'AMMUNITION UPGRADES', NULL, NULL),
  ('Match-Grade Ammunition (TL6)', 'Mga', 0, 1.000, 0, 1.250, 1.000, NULL, 1.000, 1.000, 1.000, 1.000, 2.000, 0, 'All', NULL, NULL, NULL, NULL, 0, 'AMMUNITION UPGRADES', NULL, NULL),
  ('Subsonic Ammunition (TL6)', 'SbA_P', 0, 1.000, 0, 1.000, 1.000, NULL, 0.800, 0.800, 1.000, 1.000, 1.300, -1, 'Pistol', NULL, NULL, NULL, NULL, 0, 'AMMUNITION UPGRADES', NULL, NULL),
  ('Subsonic Ammunition (TL6)', 'SbA_R', 0, 1.000, 0, 1.000, 1.000, NULL, 0.600, 0.600, 1.000, 1.000, 1.300, -2, 'PDW, rifle', NULL, NULL, NULL, NULL, 0, 'AMMUNITION UPGRADES', NULL, NULL),
  ('Silent Ammunition (TL7)', 'SA', 0, 1.000, 0, 1.000, 1.000, NULL, 1.000, 1.000, 1.000, 1.000, 10.000, 0, 'All', NULL, NULL, NULL, NULL, 16, 'AMMUNITION UPGRADES', NULL, NULL),
  ('Rifled Slug (TL6)', 'Rslug<20', 0, 1.0, 1, 1.0, 4.0, 'pi++', 2.5, 1.5, 1.0, 1.0, 1.2, 0, 'shotguns', NULL, NULL, 20, '<', 0, 'PROJECTILE OPTIONS', NULL, NULL),
  ('Rifled Slug (TL6)', 'Rslug>20', 0, 1.000, 1, 1.000, 4.000, 'pi+', 2.500, 1.500, 1.000, 1.000, 1.200, 0, 'shotguns', NULL, NULL, 20, '>', 0, 'PROJECTILE OPTIONS', NULL, NULL),
  ('Hollow-Point (HP) (TL5)', 'JHP', -1, 0.500, 0, 1.000, 1.000, 'pi>>', 1.000, 1.000, 1.000, 1.000, 1.000, 0, 'All', NULL, NULL, NULL, NULL, 0, 'PROJECTILE OPTIONS', NULL, NULL),
  ('Armor-Piercing (AP) (TL6)', 'AP', 0, 2.000, 0, 1.000, 0.700, 'pi<<', 1.000, 1.000, 1.000, 1.000, 2.000, 0, 'All', NULL, NULL, 20, '<', 0, 'PROJECTILE OPTIONS', NULL, NULL),
  ('Armor-Piercing (AP) (TL6)', 'AP', 0, 2.000, 0, 1.000, 0.700, NULL, 1.000, 1.000, 1.000, 1.000, 2.000, 0, 'All', NULL, NULL, 20, '>=', 0, 'PROJECTILE OPTIONS', NULL, NULL),
  ('Armor-Piercing Hardcore (APHC) (TL6)', 'APHC', 0, 2.000, 0, 1.000, 1.000, 'pi<<', 1.000, 1.000, 1.000, 1.000, 2.000, 0, 'All', NULL, NULL, 20, '<', 0, 'PROJECTILE OPTIONS', NULL, NULL),
  ('Armor-Piercing Hardcore (APHC) (TL6)', 'APHC', 0, 2.000, 0, 1.000, 1.000, NULL, 1.000, 1.000, 1.000, 1.000, 2.000, 0, 'All', NULL, NULL, 20, '>=', 0, 'PROJECTILE OPTIONS', NULL, NULL),
  ('Frangible (TL6)', 'Frl', 0, 2.000, 0, 1.000, 1.000, 'pi>>', 0.900, 0.900, 1.000, 1.000, 1.500, 0, 'All', NULL, NULL, NULL, NULL, 0, 'PROJECTILE OPTIONS', NULL, NULL),
  ('Armor-Piercing Discarding-Sabot (APDS) (TL7)', 'APDS', 0, 2.000, 0, 1.000, 1.300, 'pi<<', 1.500, 1.500, 1.000, 1.000, 3.000, 0, 'All', 5.56, NULL, 30, '<', 0, 'PROJECTILE OPTIONS', NULL, NULL),
  ('Armor-Piercing Discarding-Sabot (APDS) (TL7)', 'APDS', 0, 2.000, 0, 1.000, 1.300, NULL, 1.500, 1.500, 1.000, 1.000, 3.000, 0, 'All', 5.56, NULL, 30, '>=', 0, 'PROJECTILE OPTIONS', NULL, NULL),
  ('Armor-Piercing Fin-Stabilized Discarding-Sabot (APFSDS) (TL7)', 'APFSDS', 0, 2.000, 0, 1.000, 1.500, 'pi<<', 2.000, 2.000, 1.000, 1.000, 4.000, 0, 'All', 12.7, NULL, 40, '<', 0, 'PROJECTILE OPTIONS', NULL, NULL),
  ('Armor-Piercing Fin-Stabilized Discarding-Sabot (APFSDS) (TL7)', 'APFSDS', 0, 2.000, 0, 1.000, 1.500, NULL, 2.000, 2.000, 1.000, 1.000, 4.000, 0, 'All', 12.7, NULL, 40, '>=', 0, 'PROJECTILE OPTIONS', NULL, NULL),
  ('Semi-Armor-Piercing Fin-Stabilized Discarding-Sabot (SAPFSDS) (TL7)', 'SAPFSDS', 0, 2.000, 0, 1.000, 1.000, 'pi-', 1.500, 1.500, 1.000, 1.000, 2.000, 0, 'All', NULL, 10, NULL, NULL, 0, 'PROJECTILE OPTIONS', NULL, NULL),
  ('Armor-Piercing Depleted Uranium (APDU) (TL8)', 'APDU', 0, 2.000, 0, 1.000, 1.200, 'pi<<', 1.000, 1.000, 1.000, 1.000, 3.000, 0, 'All', NULL, NULL, 20, '<', 0, 'PROJECTILE OPTIONS', NULL, NULL),
  ('Armor-Piercing Depleted Uranium (APDU) (TL8)', 'APDU', 0, 2.000, 0, 1.000, 1.200, NULL, 1.000, 1.000, 1.000, 1.000, 3.000, 0, 'All', NULL, NULL, 20, '>=', 0, 'PROJECTILE OPTIONS', NULL, NULL),
  ('Armor-Piercing Discarding-Sabot Depleted Uranium (APDSDU) (TL8)', 'APDSDU', 0, 2.000, 0, 1.000, 1.500, 'pi<<', 1.500, 1.500, 1.000, 1.000, 4.000, 0, 'All', NULL, NULL, 30, '<', 0, 'PROJECTILE OPTIONS', NULL, NULL),
  ('Armor-Piercing Discarding-Sabot Depleted Uranium (APDSDU) (TL8)', 'APDSDU', 0, 2.000, 0, 1.000, 1.500, NULL, 1.500, 1.500, 1.000, 1.000, 4.000, 0, 'All', NULL, NULL, 30, '>=', 0, 'PROJECTILE OPTIONS', NULL, NULL),
  ('Armor-Piercing Fin-Stabilized Discarding-Sabot Depleted Uranium (APFSDSDU) (TL8)', 'APFSDSDU', 0, 2.000, 0, 1.000, 1.700, 'pi<<', 2.000, 2.000, 1.000, 1.000, 5.000, 0, 'All', 10, NULL, 40, '<', 0, 'PROJECTILE OPTIONS', NULL, NULL),
  ('Armor-Piercing Fin-Stabilized Discarding-Sabot Depleted Uranium (APFSDSDU) (TL8)', 'APFSDSDU', 0, 2.000, 0, 1.000, 1.700, NULL, 2.000, 2.000, 1.000, 1.000, 5.000, 0, 'All', 10, NULL, 40, '>=', 0, 'PROJECTILE OPTIONS', NULL, NULL),
  ('Low Explosive (LE) (TL4)', 'LE', 0, 0.500, 0, 1.000, 1.000, NULL, 1.000, 1.000, 1.000, 1.000, 2.000, 0, 'All', NULL, NULL, NULL, NULL, 0, 'PROJECTILE OPTIONS', NULL, 'crushing explosion with cutting fragmentation'),
  ('Semi-Armor-Piercing Low Explosive (SAPLE) (TL5)', 'SAPLE', 0, 1.000, 0, 1.000, 1.000, NULL, 1.000, 1.000, 1.000, 1.000, 2.000, 0, 'All', NULL, NULL, NULL, NULL, 0, 'PROJECTILE OPTIONS', 'crushing explosion with cutting fragmentation', NULL),
  ('Armor-Piercing Explosive (APEX) (TL6)', 'APEX', 0, 2.000, 0, 1.000, 0.700, 'pi<<', 1.000, 1.000, 1.000, 1.000, 3.000, 0, 'All', NULL, NULL, 20, '<', 0, 'PROJECTILE OPTIONS', 'crushing explosion with cutting fragmentation', NULL),
  ('Armor-Piercing Explosive (APEX) (TL6)', 'APEX', 0, 2.000, 0, 1.000, 0.700, NULL, 1.000, 1.000, 1.000, 1.000, 3.000, 0, 'All', NULL, NULL, 20, '>=', 0, 'PROJECTILE OPTIONS', 'crushing explosion with cutting fragmentation', NULL),
  ('High Explosive (HE) (TL6)', 'HE', 0, 0.500, 0, 1.000, 1.000, NULL, 1.000, 1.000, 1.000, 1.000, 2.000, 0, 'All', NULL, NULL, NULL, NULL, 0, 'PROJECTILE OPTIONS', NULL, 'crushing explosion with cutting fragmentation'),
  ('Semi-Armor-Piercing High Explosive (SAPHE) (TL6)', 'SAPHE', 0, 1.000, 0, 1.000, 1.000, NULL, 1.000, 1.000, 1.000, 1.000, 2.000, 0, 'All', NULL, NULL, NULL, NULL, 0, 'PROJECTILE OPTIONS', 'crushing explosion with cutting fragmentation', NULL),
  ('Semi-Armor-Piercing High-Explosive Concussion (SAPHEC) (TL6)', 'SAPHEC', 0, 1.000, 0, 1.000, 1.000, NULL, 1.000, 1.000, 1.000, 1.000, 2.000, 0, 'All', NULL, NULL, NULL, NULL, 0, 'PROJECTILE OPTIONS', 'crushing explosion with cutting fragmentation', NULL),
  ('High-Explosive Antitank (HEAT) (TL7)', 'HEAT', 0, 10.000, 0, 1.000, 1.000, NULL, 1.000, 1.000, 1.000, 1.000, 3.000, 0, 'All', 20, NULL, NULL, NULL, 0, 'PROJECTILE OPTIONS', NULL, 'crushing explosion'),
  ('High-Explosive Dual-Purpose (HEDP) (TL7)', 'HEDP', 0, 10.000, 0, 1.000, 1.000, NULL, 1.000, 1.000, 1.000, 1.000, 4.000, 0, 'All', 20, NULL, NULL, NULL, 0, 'PROJECTILE OPTIONS', NULL, 'crushing explosion with cutting fragmentation'),
  ('High-Explosive Squash-Head (HESH) (TL7)', 'HESH', 0, 0.500, 0, 1.000, 1.000, NULL, 1.000, 1.000, 1.000, 1.000, 3.000, 0, 'All', 50, NULL, NULL, NULL, 0, 'PROJECTILE OPTIONS', NULL, 'crushing explosion'),
  ('Multi-Stage High-Explosive Antitank (MS-HEAT) (TL8)', 'MS-HEAT', 0, 10.000, 0, 1.000, 1.000, NULL, 1.000, 1.000, 1.000, 1.000, 8.000, 0, 'All', 50, NULL, NULL, NULL, 0, 'PROJECTILE OPTIONS', NULL, 'crushing explosion'),
  ('Thermobaric (TL8)', 'Thmbar', 0, 0.500, 0, 1.000, 1.000, NULL, 1.000, 1.000, 1.000, 1.000, 8.000, 0, 'All', 20, NULL, NULL, NULL, 0, 'PROJECTILE OPTIONS', NULL, 'crushing explosion'),
  ('Airburst (-AB) (TL5)', '-AB', 0, 1.000, 0, 1.000, 1.000, NULL, 1.000, 1.000, 1.000, 1.000, 1.500, 0, 'All', NULL, NULL, NULL, NULL, 0, 'PROJECTILE UPGRADES', NULL, NULL),
  ('Incendiary (I) (TL5)', '-I', 0, 1.000, 0, 1.000, 1.000, '+inc', 1.000, 1.000, 1.000, 1.000, 1.500, 0, 'All', NULL, NULL, NULL, NULL, 0, 'PROJECTILE UPGRADES', NULL, NULL),
  ('Self-Destruct (-SD) (TL6)', '-SD', 0, 1.000, 0, 1.000, 1.000, NULL, 1.000, 1.000, 1.000, 1.000, 1.500, 0, 'All', NULL, NULL, NULL, NULL, 0, 'PROJECTILE UPGRADES', NULL, NULL),
  ('Tracer (-T) (TL6)', '-T', 0, 1.000, 0, 1.000, 1.000, '+inc', 1.000, 1.000, 1.000, 1.000, 1.500, 0, 'All', NULL, NULL, NULL, NULL, 0, 'PROJECTILE UPGRADES', NULL, NULL);
UPDATE [AMMOUPGRATES]
SET [Ammo_Class] = 'O_Shotguns'
WHERE [Ammo_Class] = 'Shotguns';




INSERT INTO [Caliber] ([Caliber_name],[Class_of_Caliber],Dim_of_bullet_SI, Dim_of_bullet_US)
  VALUES
 (N'.175 BB',N'винтовки',4.4,0.175),
(N'.22 Long Rifle (5.7x16mmR)',N'винтовки',5.6,0.22 ),
(N'.220 Swift (5.56x56mmSR)',N'винтовки',5.56,0.220),
(N'.223 Remington  (5.56x45mm NATO)',N'винтовки',5.56,0.223),
(N'.25 ACP (6.35x16mmSR Browning)',N'пистолет',6.35,.25 ),
(N'.28 Caplock (Colt Number 1)',N'пистолет',0,.28 ),
(N'.280 Remington (7x65mm Express)',N'винтовки',7,.280),
(N'.30 M1 Carbine (7.62x33mm)',N'винтовки',7.62,.30),
(N'.30 Remington (7.62x52mm)',N'винтовки',7.62,.30),
(N'.300 Remington Ultra Magnum (7.62x72mmRB)',N'винтовки',7.62,.30),
(N'.300 Winchester Magnum (7.62x66mmB)',N'винтовки',7.62,.30),
(N'.30-06 Springfield (7.62x63mm)',N'винтовки',7.62,.3006),
(N'.303 British (7.7x56mmR)',N'винтовки',7.7,.303),
(N'.30-30 Winchester (7.62x51mmR)',N'винтовки',7.62,.3030),
(N'.30-40 Krag (7.62x59mmR)',N'винтовки',7.62,.3040),
(N'.308 Winchester (7.62x51mm NATO)',N'винтовки',7.62,.308),
(N'.31 Caplock (Allen)',N'пистолет',0,.31),
(N'.32 Long Rifle (7.92x24mmR)',N'винтовки',7.92,.32),
(N'.338 Lapua Magnum (8.6x70mm)',N'винтовки',8.6,.338),
(N'.35 Remington (8.9x49mm)',N'винтовки',8.9,.35),
(N'.357 Magnum (9x33mmR)',N'пистолет',9,.357),
(N'.357 SIG (9x22mm)',N'пистолет',9,.357),
(N'.36 Caplock (M1851 Navy)',N'пистолет',9,.36),
(N'.375 H&H Magnum (9.35x72mmB)',N'винтовки',9.35,.375),
(N'.38 ACP (9x23mmSR)',N'пистолет',9,.38),
(N'.38 Long Colt (9x26mmR)',N'пистолет',9,.38),
(N'.38 S&W (9x20mmR)',N'пистолет',9,.38),
(N'.38 Special (9x29mmR)',N'пистолет',9,.38),
(N'.38 Super Auto (9x23mmSR)',N'пистолет',9,.38),
(N'.38 Volcanic',N'винтовки',9,.38),
(N'.380 ACP (9x17mm)',N'пистолет',9,.380),
(N'.38-40 Winchester (10x33mmR)',N'винтовки',10,.3840),
(N'.40 S&W (10x21mm)',N'пистолет',10,.40),
(N'.41 Long Colt (10x29mmR)',N'пистолет',10,.41),
(N'.41 Short Remington (10x12mmR)',N'пистолет',10,.41),
(N'.42 Caplock (LeMat)',N'пистолет',0,.42),
(N'.44 Colt (11.25x28mmR)',N'пистолет',11.25,.44),
(N'.44 Magnum (10.9x33mmR)',N'пистолет',10.9,.44),
(N'.442 Caplock (Adams)',N'пистолет',11.2,.442),
(N'.442 RIC (11.2x17mmR)',N'пистолет',11.2,.442),
(N'.444 Marlin (10.9x57mmR)',N'винтовки',10.9,.444),
(N'.44-40 Winchester (10.8x33mmR)',N'винтовки',10.8,.4440),
(N'.44-90 Remington Special (11.2x62mmR)',N'винтовки',11.2,.4490),
(N'.44-90 Sharps (11.3x61mmR)',N'винтовки',11.3,.4490),
(N'.45 ACP (11.43x23mm)',N'пистолет',11.43,.45),
(N'.45 Flintlock (Kentucky)',N'винтовки',11.43,.45),
(N'.45 Flintlock (Wogdon)',N'пистолет',11.43,.45),
(N'.45 GAP (11.43x19mm)',N'пистолет',11.43,.45),
(N'.45 Long Colt (11.43x33mmR)',N'пистолет',11.43,.45),
(N'.45 S&W (11.43x28mmR)',N'пистолет',11.43,.45),
(N'.450 Adams (12.05x17mmR)',N'пистолет',12.05,.450),
(N'.450 Gardner-Gatling (11.43x63mmR)',N'винтовки',11.43,.450),
(N'.450 Martini-Henry (11.43x59mmR)',N'винтовки',11.43,.450),
(N'.45-110 Sharps (11.43x73mmR)',N'винтовки',11.43,.45110),
(N'.454 Casull (11.43x35mmR)',N'пистолет',11.43,.454),
(N'.455 Webley (11.5x19mmR)',N'пистолет',11.5,.455),
(N'.45-55 Springfield (11.43x53mmR)',N'винтовки',11.43,.4555),
(N'.45-70 Springfield (11.43x53mmR)',N'винтовки',11.43,.4570),
(N'.45-75 Winchester (11.43x48mmR)',N'винтовки',11.43,.4575),
(N'.458 Winchester Magnum (11.63x64mmB)',N'винтовки',11.63,.458),
(N'.460 Weatherby Magnum (11.63x74mmB)',N'винтовки',11.63,.460),
(N'.470 Nitro Express (12x83mmR)',N'винтовки',12,.470),
(N'.476 Enfield (12.05x22mmR)',N'пистолет',12.05,.470),
(N'.50 Action Express (12.7x33mm)',N'пистолет',12.7,.50),
(N'.50 Flintlock (Collier)',N'пистолет',12.7,.50),
(N'.50 Flintlock (North West)',N'винтовки',12.7,.50),
(N'.50-140 Sharps (12.9x83mmR)',N'винтовки',12.9,.50140),
(N'.50-70 Government (13x44mmR)',N'винтовки',13,.5070),
(N'.50-90 Sharps (12.9x64mmR)',N'винтовки',12.9,.5090),
(N'.50-95 Winchester Express (12.7x49mmR)',N'винтовки',12.7,.5095),
(N'.50BMG (12.7x99mm)',N'винтовки',12.7,.50),
(N'.54 Caplock (Elgin Cutlass)',N'пистолет',0,.54),
(N'.54 Flintlock (Hall M1819)',N'винтовки',0,.54),
(N'.56 Flintlock (Tower Sea Service)',N'пистолет',0,.56),
(N'.56-50 Spencer (13x29mmR)',N'винтовки',13,.5650),
(N'.56-56 Spencer (14x22mmR)',N'винтовки',14,.5656),
(N'.577 Caplock (Enfield)',N'винтовки',14.6,.577),
(N'.577 Snider (14.6x51mmR)',N'винтовки',14.6,.577),
(N'.58 Berdan (15x44mmR)',N'винтовки',15,.58),
(N'.600 Nitro Express (15.2x76mmR)',N'винтовки',15.2,.600),
(N'.625 Flintlock (Baker)',N'винтовки',15.9,.62),
(N'.68 FN',N'винтовки',0,0.68),
(N'.68 Paintball',N'пистолет',0,.68),
(N'.700 Nitro Express (17.8x89mmR)',N'винтовки',17.8,.700),
(N'.75 Flintlock (Brown Bess)',N'винтовки',0,.75),
(N'.75 Flintlock (Rigby)',N'пистолет',0,.75),
(N'1" Flare (25.4x107mmR)',N'Гранатомёты',25.4,1),
(N'1" Gatling (25.5x97mmR)',N'Автоматические Пушки',25.5,1),
(N'1.5" Caplock (Greener)',N'Автоматические Пушки',0,1.5),
(N'10.75x58mmR Berdan',N'винтовки',12.75,10.75),
(N'10.75x68mm Mauser',N'винтовки',10.75,10.75),
(N'105x371mmR',N'Автоматические Пушки',105,0),
(N'106x607mmR',N'Автоматические Пушки',106,0),
(N'10-gauge 2.875" (19.7x73mmR)',N'дробовики',19.7,2.875),
(N'10x25mm Auto',N'пистолет',10,0),
(N'11.15x58mmR (.43 Spanish Remington)',N'винтовки',10.15,.43),
(N'11.4x50mmR (.43 Egyptian Remington)',N'винтовки',11.4,.43),
(N'11.75mm Girandoni',N'винтовки',11.75,0),
(N'11-gauge Flintlock',N'дробовики',11,0),
(N'11mm Syringe',N'винтовки',11,0),
(N'12.7x108mm',N'винтовки',12.7,0),
(N'12.7x77mm',N'винтовки',12.7,0),
(N'120mm',N'миномёты',120,0),
(N'125x408mmR',N'Автоматические Пушки',125,0),
(N'12-gauge 2.5" (18.5x63mmR)',N'дробовики',18.5,0),
(N'12-gauge 2.75" (18.5x70mmR)',N'дробовики',18.5,0),
(N'12-gauge 2.75" (18.5x70mmR)',N'дробовики',18.5,0),
(N'12-gauge 3" (18.5x76mmR)',N'дробовики',18.5,0),
(N'12-pounder Cannonlock',N'Автоматические Пушки',12,0),
(N'12x16mm Lefaucheux',N'пистолет',12,0),
(N'13x36mm Gyrojet',N'пистолет',13,0),
(N'13x92mmSR Mauser',N'винтовки',13,0),
(N'14.5х114 мм (М41/44)',N'винтовки',14.5,0),
(N'15.43x54mm Dreyse',N'винтовки',15.43,0),
(N'16-gauge 2.75" (16.8x70mmR)',N'дробовики',16.8,0),
(N'16-gauge Flintlock',N'дробовики',16,0),
(N'17.1mm Flintlock (AN IX)',N'пистолет',17.1,0),
(N'17.5mm Flintlock (Mle 1777)',N'винтовки',17.5,0),
(N'2"2.25',N'миномёты',0,2),
(N'2.5" Caplock (Screw-Gun)',N'Автоматические Пушки',63.5,2.5),
(N'20-gauge 2.5" (15.6x63mmR)',N'дробовики',15.6,0),
(N'20-gauge 2.75" (15.6x70mmR)',N'дробовики',15.6,0),
(N'20-gauge Caplock',N'дробовики',15.6,0),
(N'20x102mm',N'Автоматические Пушки',20,0),
(N'20x110mmRB Oerlikon',N'Автоматические Пушки',20,0),
(N'20x138mmB Solothurn',N'Автоматические Пушки',20,0),
(N'20x28mm',N'Гранатомёты',20,0),
(N'20x82mm Mauser',N'Автоматические Пушки',20,0),
(N'25x137mm Oerlikon',N'Автоматические Пушки',25,0),
(N'25x59mmB',N'Гранатомёты',25,0),
(N'26.5x103mmR',N'Гранатомёты',26,0),
(N'3"10',N'миномёты',0,0),
(N'30x28mmB',N'Гранатомёты',30,0),
(N'32-gauge 2.75" (12.5x70mmR)',N'дробовики',12.5,0),
(N'37x122mmR',N'Гранатомёты',37,0),
(N'37x249mmR',N'Автоматические Пушки',37,0),
(N'37x94mmR Hotchkiss',N'Автоматические Пушки',37,0),
(N'4.6x30mm Royal Ordnance',N'пистолет',4.6,0),
(N'4.73x33mm Dynamit-Nobel',N'винтовки',4.73,0),
(N'40mm VOG-25',N'Гранатомёты',40,0),
(N'40x53mmSR',N'Гранатомёты',40,0),
(N'5.45x39mm',N'винтовки',5.45,0),
(N'5.66x39mm',N'винтовки',5.66,0),
(N'5.6x57mmB',N'винтовки',5.6,0),
(N'5.7x26mm Usel',N'винтовки',5.7,0),
(N'5.7x28mm Fabrique Nationale',N'пистолет',5.7,0),
(N'5.8x42mm',N'винтовки',5.8,0),
(N'52mm',N'миномёты',52,0),
(N'57x305mmR',N'противотанковые пушки',57,0),
(N'6.5x55mm Mauser',N'винтовки',6.5,0),
(N'60mm',N'миномёты',60,0),
(N'6x60mm Lee (.236 Navy)',N'винтовки',6,0),
(N'7.5x54mm MAS',N'винтовки',7.5,0),
(N'7.62x25mm Tokarev',N'пистолет',7.62,0),
(N'7.62x39mm',N'винтовки',7.62,0),
(N'7.62x39mmR Nagant',N'пистолет',7.62,0),
(N'7.62x42mm',N'пистолет',7.62,0),
(N'7.62x54mmR Mosin',N'винтовки',7.62,0),
(N'7.63x25mm Mauser',N'пистолет',7.63,0),
(N'7.65x21mm Parabellum',N'пистолет',7.65,0),
(N'7.65x53mm Mauser',N'винтовки',7.65,0),
(N'7.7x58mm Arisaka',N'винтовки',7.7,0),
(N'7.7x58mmSR Arisaka',N'винтовки',7.7,0),
(N'7.92x33mm Kurz',N'винтовки',7.92,0),
(N'7.92x57mm Mauser',N'винтовки',7.92,0),
(N'75x350mmR',N'Автоматические Пушки',75,0),
(N'75x495mmR',N'Автоматические Пушки',75,0),
(N'76.2x539mmR (3")',N'Автоматические Пушки',76.2,0),
(N'7x57mm Mauser',N'винтовки',7,0),
(N'7x64mmB Remington Magnum',N'винтовки',7,0),
(N'81mm',N'миномёты',81,0),
(N'82mm',N'миномёты',82,0),
(N'84x250mmR',N'противотанковые пушки',84,0),
(N'8-bore (21.2x70mmR)',N'винтовки',21.2,0),
(N'8x21mm Nambu',N'пистолет',8.0,0),
(N'8x50mmR Lebel',N'винтовки',8,0),
(N'8x50mmR Mannlicher',N'винтовки',8,0),
(N'8x58mmR Krag',N'винтовки',8,0),
(N'8x60mm Mauser',N'винтовки',8,0),
(N'8x63mm Bofors',N'винтовки',8,0),
(N'9.3x74mmR',N'винтовки',9.3,0),
(N'9x18mm Makarov',N'пистолет',9,0),
(N'9x19mm Parabellum',N'пистолет',9,0),
(N'9x21mm Gyurza',N'пистолет',9,0),
(N'9x23mm Bergmann-Bayard',N'пистолет',9,0),
(N'9x25mm Mauser',N'пистолет',9,0),
(N'9x39mm',N'винтовки',9,0);


INSERT INTO Battery (name, SmolName, Description, [CPP], WPP)
  VALUES 
  ('Tiny', 'T', 'A button- or coin-sized battery for watches, mini-flashlights, hearing aids, laser sights, tiny bugs, etc.	', 0.25, 0.02),
  ('Extra-Small', 'XS', 'A battery used in such portable consumer electronics as audio recorders, CD/MP3 players, digital cameras, and night-vision goggles. Similar to a 9-volt or AA battery', 0.5, 0.1),
  ('Small', 'S', 'A standard battery for flashlights, portable radios, or cellular phones. Similar to a D-cell or C-cell battery.', 1, 0.33),
  ('Medium', 'M', 'common power source for lanterns or squad-level radios. More expensive rechargeable models are used in laptops, video cameras, and the like.', 5, 2),
  ('Large', 'L', 'A lunchbox-sized battery. At TL5, itВ’s used in telegraph stations. At TL6+, rechargeables are found in small vehicles (such as ATVs, motorcycles, and snowmobiles), base-camp radios, and the like	', 10, 10),
  ('Very Large', 'VL', 'A toolbox-sized battery found in cars, trucks, golf carts, etc. It can power radios or other heavyduty electronics for extended periods. A bank of these is often used for external power', 20, 50);

INSERT INTO [ExplosionType]
  VALUES ('Normal'), ('Stun'), ('Tear Gas'), ('Mustard Gas'), ('Flare'), ('Noise'), ('Smoke'), ('Creature Gas'),
  ('Fire'), ('Flashbang'), ('Signal Shell');

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
---- =============================================
--USE [Item1];
--GO
--
--CREATE PROCEDURE dbo.NEW_ITEM_Ammo
--  @name NVARCHAR(80), 
--  @weigth DECIMAL(7,3), 
--  @price  MONEY
--AS
--BEGIN
--SET NOCOUNT ON;
--
--  DECLARE @Class INT
--  DECLARE @Call INT
--DECLARE @newID INT
--  SET @Class = (SELECT TOP (1)
--    ic.id
--  FROM ItemClass ic
--  WHERE ic.name = 'Ammo')
--
--   SET @Call = (SELECT TOP (1)
--    c.id
--  FROM Caliber c 
--  WHERE c.Caliber_name = @name)
--
--  INSERT INTO ITEM (szItemName, usItemClass,ubWeight,usPrice,ubCalibre)
--    VALUES (@name, @Class,@weigth,@price,@Call)
--  SELECT
--    @newID = @@identity
--    INSERT INTO AMMO (id, Caliber_name, alt_caliber_name)
--  VALUES (@newID, @name, N'');
--
--
--END
--GO
--
--
--
--CREATE PROCEDURE dbo.NEW_ITEM (@name NVARCHAR(80),
--@class_ofItem NVARCHAR(80),
--@Returns INT OUTPUT)
--
--AS
--BEGIN
--
--  -- SET NOCOUNT ON added to prevent extra result sets from
--  -- interfering with SELECT statements.
--  SET NOCOUNT ON;
--
--  DECLARE @newID INT
--  DECLARE @IDClass INT
--  DECLARE @idWeapAttackType INT
--
--  SET @IDClass = (SELECT
--    ic.id
--  FROM ItemClass ic
--  WHERE ic.name = @class_ofItem)
--
--  SET @idWeapAttackType = (SELECT
--    wat.id
--  FROM WeaponAttackType wat
--  WHERE wat.name LIKE ('prim%'))
--
--  INSERT INTO ITEM (szItemName, usItemClass)
--    VALUES (@name, @IDClass)
--  SELECT
--    @newID = @@identity
--
--  IF (@class_ofItem = N'Gun')
--  BEGIN
--    INSERT INTO Item1.dbo.WEAPON (uiIndex, szWeaponName, ubWeaponClass, ubWeaponType)
--      VALUES (@newID, @name, 5, 23)
--
--    INSERT INTO Item1.dbo.WeaponDamage (idWeapon, idWeaponAttackType, Damage, ArmorDivision)
--      VALUES (@newID, @idWeapAttackType, 'd6', DEFAULT);
--  END
--
--  ELSE
--  IF (@class_ofItem = N'Attachment')
--  BEGIN
--    INSERT INTO Item1.dbo.Attachment (uiIndex, szAttName)
--      VALUES (@newID, @name)
--  END
--
--  SET @Returns = @newID
--
--END
----http://www.cyberguru.ru/dotnet/ado-net/entity-framework-faq.html
--GO
--
--CREATE PROCEDURE dbo.NEW_ITEM_att @name NVARCHAR(80), @G_att_class INT, @G_sub_att INT, @id_att_mount NVARCHAR(80)
--AS
--BEGIN
--    SET NOCOUNT ON;
--
--  DECLARE @newID INT
--  DECLARE @mount INT
--
--  SET @mount = (SELECT
--    a.id
--  FROM Attachmentmount a 
--  WHERE a.name LIKE(@id_att_mount))
--
--  INSERT INTO ITEM (szItemName, usItemClass)
--    VALUES (@name, 4)
--  SELECT
--    @newID = @@identity
--
--  INSERT INTO Item1.dbo.Attachment (uiIndex, szAttName, id_Attachmentmount)
--    VALUES (@newID, @name, @mount)
--
--INSERT INTO G_AvAttachClass (id_attach, id_GSubClass, id_AttachClass)
--  VALUES (@newID, @G_sub_att, @G_att_class);
--
--
--END
----http://www.cyberguru.ru/dotnet/ado-net/entity-framework-faq.html
--GO
--
--CREATE PROCEDURE dbo.NEW_ITEMWeap (
----item
--@name NVARCHAR(80), 	@class_ofItem NVARCHAR(80),
--@Weight DECIMAL(7, 3), 			@ST INT,
--@Bulk NVARCHAR(80), 	@Cost MONEY,
--@Lcin NVARCHAR(10), 	@TLin NVARCHAR(10),
--@Desc NVARCHAR(MAX), 	@TwoHanded bit,
--
--@WeaponClass NVARCHAR(80), 
--@WeaponType NVARCHAR(80),
--@Full_auto bit,
--@ACCAddin int,
--@ROF_for_Sh int,
--
--@ROF INT,
--@Recoill INT,
--@DefACCc INT,
--@Half_Rangee INT,
--@FullRangee INT,
--@Damagee NVARCHAR(50),
----
--@Shotss INT,
--@AddinChamber BIT,
--@TimeForreload INT,
--@singlereload BIT,
--
--@Damage NVARCHAR(80),
--@ArmorDivision DECIMAL(5, 2),
--@TypeOfDamage1 NVARCHAR(50),
--@TypeOfDamage2 NVARCHAR(50),
--@TypeOfDam1 NVARCHAR(50) ,
--@TypeOfDam2 NVARCHAR(50) ,
--
----@ubCalibre NVARCHAR(MAX),
--@Returns INT OUTPUT)
--
--AS
--BEGIN
--
--  -- SET NOCOUNT ON added to prevent extra result sets from
--  -- interfering with SELECT statements.
--  SET NOCOUNT ON;
--
--  DECLARE @newID INT
--  
--  DECLARE @IDClass INT		--item
--  DECLARE @IDLCFind INT		--item	
--  DECLARE @IDTLFind INT		--item
--  
--  DECLARE @idWeapAttackType INT
--  
--  DECLARE @idWeaponClass INT 
--  DECLARE @idWeaponType INT
--  
--  DECLARE @IDubCalibre INT
--  DECLARE @TypeOfDamageFind1 INT 
--  DECLARE @TypeOfDamageFind2 INT 
--  
--  SET @IDLCFind = 	(SELECT TOP(1)   l.Id_LC	FROM LC l  			WHERE l.Name_LC = @Lcin)  
--  SET @IDTLFind =	(SELECT TOP(1)   t.Id_Tl  FROM TL t  			WHERE t.name_TL = @TLin)  
--  SET @IDClass = 	(SELECT TOP(1)   ic.id	FROM ItemClass ic  	WHERE ic.name = @class_ofItem)
--  
--  SET @idWeapAttackType = (SELECT   TOP(1) wat.id  FROM WeaponAttackType wat  WHERE wat.name LIKE ('prim%'))
--
--  SET @idWeaponClass  =(SELECT TOP(1) id	from WeaponClass	WHERE	name LIKE(@WeaponClass))
--  SET @idWeaponType =(SELECT TOP(1) id		from WeaponType		WHERE	name LIKE(@WeaponType))
--  
--  
--  SET @TypeOfDamageFind1=(SELECT TOP(1) tod.id FROM TypeOfDamage tod WHERE tod.name=@TypeOfDamage1)
--  SET @TypeOfDamageFind2=(SELECT TOP(1) tod.id FROM TypeOfDamage tod WHERE tod.name=@TypeOfDamage2)
--  -- SET @IDubCalibre = (SELECT    a.id  FROM AMMO a  WHERE a.Caliber_name LIKE @ubCalibre)
--
--
--  INSERT INTO ITEM (szItemName, usItemClass, ubWeight, minST, ItemSize, usPrice, LC, TL, szItemDesc,TwoHanded)
--    VALUES (@name, @IDClass, @Weight, @ST, @Bulk, @Cost, @IDLCFind, @IDTLFind, @Desc,@TwoHanded)
--  SELECT	@newID = @@identity
--  
--  
--  INSERT INTO Item1.dbo.WEAPON 
--  (uiIndex, 	
--  szWeaponName, 	
--  ubWeaponClass, 	
--  ubWeaponType, 	
--  ROF, 
--  Full_auto,  
--  Recoil, 
--  DefACC, 
--  ACCAddin, 
--  ROF_for_Sh,  
--  Half_Range,
--  FullRange, Shots, Add_in_Chamber, Time_For_reload, single_reload)
-- 
-- 
-- VALUES 						
--  (@newID, 	
--  @name, 			
--  @idWeaponClass, 
--  @idWeaponType, 	
--  @ROF,
--  @Full_auto,  
--  @Recoill,   
--  @DefACCc,
--  @ACCAddin,
--  @ROF_for_Sh,
--  @Half_Rangee, 
--  @FullRangee, @Shotss, @AddinChamber, @TimeForreload, @singlereload)
--  
--  
--  INSERT INTO Item1.dbo.WeaponDamage 
--  (idWeapon, 
--  idWeaponAttackType, 
--  Damage, 
--  ArmorDivision,
--  idTypeOfDamage1,
--  idTypeOfDamage2,
--  TypeOfDamage1text,
--  TypeOfDamage2text)
--  VALUES 
--  (@newID, 
--  @idWeapAttackType, 
--  @Damagee, 
--  @ArmorDivision,
--  @TypeOfDamageFind1,
--  @TypeOfDamageFind2,
--  @TypeOfDam1,
--  @TypeOfDam2
--);
--	  
--  SET @Returns = @newID
--
--END
----http://www.cyberguru.ru/dotnet/ado-net/entity-framework-faq.html
--GO


--
DECLARE @RC INT
DECLARE @name NVARCHAR(80)
DECLARE @class_ofItem NVARCHAR(80)

DECLARE @Returns INT

DECLARE @asd INT
--
--
EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Silencer CYCLONE-K (.300 BLK)',
                               @G_att_class = 3,
                               @G_sub_att = 12,
                               @id_att_mount = '.300 BLK'
--
EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Silencer (5.7 mm FN)',
                               @G_att_class = 3,
                               @G_sub_att = 13,
                               @id_att_mount = '5,7mm (FN)'
EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Silencer (5.7 mm P90)',
                               @G_att_class = 3,
                               @G_sub_att = 12,
                               @id_att_mount = '5,7mm (P90)'
EXECUTE @RC = dbo.NEW_ITEM_att @name = 'AEK919K_silencer',
                               @G_att_class = 3,
                               @G_sub_att = 13,
                               @id_att_mount = 'AEK919K'
--
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Suppressor TGP-A',
--                               @G_att_class = 3,
--                               @G_sub_att = 12,
--                               @id_att_mount = 'TGP-A'
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'APB Silencer',
--                               @G_att_class = 3,
--                               @G_sub_att = 13,
--                               @id_att_mount = 'APB'
EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Bizon silencer',
                               @G_att_class = 3,
                               @G_sub_att = 12,
                               @id_att_mount = 'Bizon 9x18'
EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Groza silencer',
                               @G_att_class = 3,
                               @G_sub_att = 13,
                               @id_att_mount = 'GSh-18'
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Integrated Silencer (9x39 mm SP)',
--                               @G_att_class = 3,
--                               @G_sub_att = 12,
--                               @id_att_mount = '9x39'
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Integrated Silencer (MP5SD6)',
--                               @G_att_class = 3,
--                               @G_sub_att = 13,
--                               @id_att_mount = 31
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Integrated Silencer RJF (7.62x39mm)',
--                               @G_att_class = 3,
--                               @G_sub_att = 12,
--                               @id_att_mount = 31
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'PSS Silencer',
--                               @G_att_class = 3,
--                               @G_sub_att = 13,
--                               @id_att_mount = 31
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'SD5 silencer',
--                               @G_att_class = 3,
--                               @G_sub_att = 13,
--                               @id_att_mount = 31


EXECUTE @RC = dbo.NEW_ITEM @name= 'M21 Sniper Weapon System, .308 Win',
                           @class_ofItem= 'gun',
                           @Returns = @asd

EXECUTE @RC = dbo.NEW_ITEM @name= 'M24 SWS w/AN/PVS10, .308 Win',
                           @class_ofItem= 'gun',
                           @Returns = @asd
UPDATE ITEM
SET Item_Image = 0xFFD8FFE000104A46494600010201004800480000FFED0BA650686F746F73686F7020332E30003842494D03ED0A5265736F6C7574696F6E0000000010004800000001000200480000000100023842494D040D18465820476C6F62616C204C69676874696E6720416E676C6500000000040000001E3842494D041912465820476C6F62616C20416C74697475646500000000040000001E3842494D03F30B5072696E7420466C61677300000009000000000000000001003842494D040A0E436F7079726967687420466C6167000000000100003842494D2710144A6170616E657365205072696E7420466C616773000000000A000100000000000000023842494D03F517436F6C6F722048616C66746F6E652053657474696E677300000048002F66660001006C66660006000000000001002F6666000100A1999A0006000000000001003200000001005A00000006000000000001003500000001002D000000060000000000013842494D03F817436F6C6F72205472616E736665722053657474696E6773000000700000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800003842494D0408064775696465730000000010000000010000024000000240000000003842494D041E0D55524C206F766572726964657300000004000000003842494D041A06536C696365730000000075000000060000000000000000000000E9000002BC0000000A006A007300640066002D00330030002D007600310000000100000000000000000000000000000000000000010000000000000000000002BC000000E9000000000000000000000000000000000000000000000000000000000000000000003842494D04111149434320556E74616767656420466C61670000000101003842494D0414174C617965722049442047656E657261746F72204261736500000004000000013842494D040C154E65772057696E646F7773205468756D626E61696C000007FE0000000100000070000000250000015000003090000007E200180001FFD8FFE000104A46494600010201004800480000FFEE000E41646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080025007003012200021101031101FFDD00040007FFC4013F0000010501010101010100000000000000030001020405060708090A0B0100010501010101010100000000000000010002030405060708090A0B1000010401030204020507060805030C33010002110304211231054151611322718132061491A1B14223241552C16233347282D14307259253F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7B7C7D7E7F711000202010204040304050607070605350100021103213112044151617122130532819114A1B14223C152D1F0332462E1728292435315637334F1250616A2B283072635C2D2449354A317644555367465E2F2B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F62737475767778797A7B7C7FFDA000C03010002110311003F00C3CFB68C2CAABEC973AEC3737754CDDF40E9BD9B9C5DEA37E839967F39FE0BFC12337A8B6EE6E34B034F89064FF2195B773BFD27FE08A9526AAECDD1ED790E1DA0FF00A374CFF616C555D0F6C3DA24F2D223FE8A80D751F54F5ECC5FD2307218CB5A5C1E0EE1631C4127E07D4433EBE290C7BC5F8F3EE698F5009F73DAEB3D46D967F5BD357A965558DB5C37BEDE10F2BD1AD965B63AB0EDBA364179FF008B6FEF2035D1374D765E2F75643B3048DF564545C5C5AD3B1F87955EFB5EFDAEFDFF00B47FA5AEC67A8B4C5DD41BB7270A9B7D5690D0FB3731A1A7E94D82876EADCE6FE92AFE6D73CFEA6F2EF4AA6D8DDEE122AF63B4FA567B3F39BFCA5732FEB1E63596D1466DD40A1D1539B683B8CFB5CE7376BDEFDA3FC17E8BF7EBFA089C72B154BA338D1BB7A8E97D56CB6E731F4D346554007D61D0C748F76C6D31E9EC76CFA74FE7AE8B1AF6E433734169FCE1C8FECBDBED73579B37EB567FAB4F52B43ACBE91E8D72C009AAC0E73EB7E355B59656C7FEF3116CFF00181D60C0AAE38E644818CC03FF0004A6C4F842437AF14488E8FA4BBC920179BD1F5D3AC646662D777502DACE455BE1B5D4DDBBDBBFD5755533F45B377A9BD77CEEB9D0038C753C38931FA7AFFF00249C42DB6D907BA4A91EBBD0073D530C7047E9EBEFFDA513D7FA047FCAB85FFB115FFE4D04B74F877513E2A91EBDF57FFF002D30BFF622BFFC9A587D6BA4750B1F4E0E6D3916D73BEB63BDD0DFA76318E875956BFCF57FA2494FFFD0E57288AEEADCE2F2DDFF00443846D9F36BBE97BFE8AEADDD2BA5E3B1CC9AFD406432A3658D1C7B3D5366CD9639DFCED9E97FDD7F51626751D3FA8B3738BB03204B8D6F21C1CD74B2C735DED6FD36FF0036FF00FB73F9C5705C2B0EC7006C2D6879B0BA0BAB02BF56BAAAD9FF009F14562825D46F4A6B6B6BC53458F2D96B0B9F0D76AD2EB1DBFDCCF6FD1DAB1ADC4661C682CA990EBF2EC30FB5E776DAB1D83D5754CDCDFF00847FB3F96B46EA32B129AB2325D2FBE25CF606D75367F474DDB3DCE7DFBD8FB5EFFDFA6BF62C9CBEA2C3BB0C99B1EDF4EE05E6CED22CDFFE8EBDDB69AD007B6A90075D3442FB68DCD7566B2EB1E258CB4BDE46D733DCC79FEAFB76FF00C2A9BEBB4000D56344E803DCD1F2DAF0C6AB987875318D86B6401EEF2F2579AED601DCD1A3B779FEEA2729E88A70CEE060E3971300BDDEE8F3738EE7A8B98E06057559E300B7FB5EF6FD15B2FADC6C75659A83C8D647FD142B998B4D165D6B9B5B4FB0179D825DA344BFDA87B925539ACC516004B6B683CFB6504D37B5DB5B8F5974C6827CFBED6AD123D17B6B734EE2C0F311DFB6D9FDCDAE45ADEC793B5DA76F2F2734A5EE1177AAB42B613DD450CAACE858B9AF0D23D4B6AAC4B89DDBDF736EF55DFE6ADEFABDD38E66496752FAB9D3DB8EE0632B19B510C73773BF4F4FA963F6DBFCDD5ECDFF00E13F48B18585BA8773FC13B736EAFE8BCB63525A21E7F93EA7EEA5EE1EC134F6EEFAB9D01A60F4AC307CE867F16A9E3F4BE978761BB0F0B1B1AD20B0D94D4C63B69E59BEB6B5DB17178FD7BA863383A9C87D7D8B5C77B0F7F75766E67F9AB670BEB9D2FB1ACCCA096B9BB9B7D223EFA1EEFCEFDF6DA909DA9FFFD19BC7D57F5A8F7636DDCEF43ED0D66CDD0CFE6BDDB3E87A7F4FF43FCEFF00874DD5FECBE889141A27C5C0CFE7FF0035FCBFE6FD65E5092AA371BFD579FA3EA5D5B7EC7FDA371C7FB43BD62F80276D7A3FFE0FD1FB3FD3FF0001FF0008B0DBF679B7D4DA1BEA3037D38237C3773A8D91F9BFCEB2CF66CFFADAE252447F2A41DCF9BE99891B3533A1DC600FBB61DA8B4CFA3E7DFEF5E5C924A7D5ACFE79B1F4B4FCBFF90557AAEFF4E8E3D0F76E27F7A3F3C7D1DBE9EE5E66924A7D1BA59E9A1B8E72C60BF0439DF676DE5EC71F70F5BD0B3A7B6DCB633FD1FAF5D985FE8569752FF98E63EC672996E9BFD20E7B261BB87EB26AFF00A0BC9D24EFE5AFCDF4507D2F25BD13D2FD46CCC1700D3FA5AD86B3CEE6BF6DA2C63FF96CF519FF0006A8B3D6DFEFE7598E08FF00AA5C12487D8A7BF3FCD99D46BCE8898DB3D46EE9983B7C2345E789243653FFD93842494D04211A56657273696F6E20636F6D7061746962696C69747920696E666F000000005500000001010000000F00410064006F00620065002000500068006F0074006F00730068006F00700000001300410064006F00620065002000500068006F0074006F00730068006F007000200036002E003000000001003842494D04060C4A504547205175616C69747900000000070006000000010100FFEE000E41646F626500644000000001FFDB0084000202020202020202020203020202030403020203040504040404040506050505050505060607070807070609090A0A09090C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01030303050405090606090D0A090A0D0F0E0E0E0E0F0F0C0C0C0C0C0F0F0C0C0C0C0C0C0F0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800E902BC03011100021101031101FFDD00040058FFC401A20000000701010101010000000000000000040503020601000708090A0B0100020203010101010100000000000000010002030405060708090A0B1000020103030204020607030402060273010203110400052112314151061361227181143291A10715B14223C152D1E1331662F0247282F12543345392A2B26373C235442793A3B33617546474C3D2E2082683090A181984944546A4B456D355281AF2E3F3C4D4E4F465758595A5B5C5D5E5F566768696A6B6C6D6E6F637475767778797A7B7C7D7E7F738485868788898A8B8C8D8E8F82939495969798999A9B9C9D9E9F92A3A4A5A6A7A8A9AAABACADAEAFA110002020102030505040506040803036D0100021103042112314105511361220671819132A1B1F014C1D1E1234215526272F1332434438216925325A263B2C20773D235E2448317549308090A18192636451A2764745537F2A3B3C32829D3E3F38494A4B4C4D4E4F465758595A5B5C5D5E5F5465666768696A6B6C6D6E6F6475767778797A7B7C7D7E7F738485868788898A8B8C8D8E8F839495969798999A9B9C9D9E9F92A3A4A5A6A7A8A9AAABACADAEAFAFFDA000C03010002110311003F00F9E7E5CF365C699716CD632C91B69F5B04E0ADE94AE65A4CF2431955958AD29CC5796E0ED9AD9E2B507ABDAB47D760D4924BEB681AD213650D8DB2D2E965B6B4798C9777570D20FAB32811285743F61B83B371A662CB1D04DFDAF7487F32F50F2068B71ACACD2595D49A74647E9185AE6D6DFD671E959592AA2DF5B54481782CD2DAAB2B010F13B5070F190030C805507CE5A2F9F1EF6EB501AAEA37B1D9DD3DC269FA1C1A84D772C1EBC4EDF52D3C5D05984265AF155B8511B2EE0B715CCA9E2A02962044533FB6D3E29AFED2EEC2E505BDDDEEA22C268347BC4B6B992E2CC3D67951944C0C31FC069F0CA3D35F886F44E04834DB8A5C06FAB3AD17CB7E5BB7802CBE69D6357B30F04ED0C3A55C42628AF90CB09F52702A0856E44A0643459110BAD707269E66C8A67A994331E2A20FD8CBCEA1F9367519B4ED3A2D5F50BA810F186F2ED3EB131DAB22C714488AA2BB7166F9E614E121CDC4C903117186C898BC97E41D56596EE1FCB7B797EB0FCDDF53BDBA08D5DAAD14724740694A0C88CD3E4245B63DA1A884400400195EA1A86996903477561A2DB5BA80A96AB6C8634311F8405706A13B75C0388971B2EAA793EA95B05D4BCE7A36B6C9A54514777123094C3683EAD10949E0A2B1F1DDAB434FD9069D33230E124A74997209F144D26B06A304D098A11586125518EFCDC6E5BD803D874E9DB33B8387673CCAF7E6C3BCC1E73B5D2BD48A560CE800F4877D8F5A9CB44403B30B79ADD79F52EA42C6CB91A7C2D4154F1A1A577C26236459617AFCDA5EBED13CF1AFA90AAA88EF608AF202AB5F85A39543802BB15719210ADC1F93190B95F22C42EF4AD0E074B9F2FDFC9E55BD4219ED18B5F68CEC0EDF0B729EDC78D39A8EFB646A67697A87DACA5181DC6C58C6BDA3DBEA91CF75636D69653DC2FF00A65B5BB07B4F52A7F7B115A94463DD6AB5CB716530345848EF6371D5E7F7B7EE8934DAADC4D15E5BCD6F01D3965E3C1568847052471E0367F1A66C05486C88C80DD995A8D2B51BFB6D3E35ADDDEA98ADD38891E25A55A591C1A714504926998FE1C805007193F63E91B4FCF387F2FBCBB65E58F28DAFFB8649A53E62D0B5B962D722BB87D38A38BEB5677EA6DE40522AEF1AD0B7155A286CC196094E46F77651CF828002A97E9FF999F901AEA2ADD681A5FE585DDD2B45AA6A5E4BBBB9D16E009A81E586DF53B6D4AD5053E1060B9838826A294C91C39857334D90CB1036901F0DFE6F4FF2C68DA2FE5F5E47A9F943F3B7CEB1797B54B87D3AE61BDF2DC5AAE872DEA55D2C755B65793D0B91137C065B7FDF27C50CAC37144F24A628C45863F939465C5BFC0B39D57CA5A4F9BA1B59347B41A16BFA488A7D1B50F2FADCEA5A1DB4F187689A4D29A66D474676720ABE9B7F14828BC1071E2D0C6787EA1B3191983563E3B7F6A513697ADFE61E9B67E4F9F4DF2ADFF9EB5085E7B5F2EEB178BAB7937CEA115A036B7B65751D8EB5A36AFCE365B6D46DE18E59987A1733C8E51C8818C371757CC7D43F411EFF008756CF184B63B1AF8141DA35BDFF00E53CBA5DC792F5D783C85AA1D5EDFC91AB04F323F95FCBF25B4D6DA94FA2EB9692C779AAE982610CB2C492C17D64AB233A5D460D6523FBC0448511CF95FF0058743EEDBED612C64C361441EFF9575F9B12D2F49F307E5D596A9AE7E5979E350FCB981ED60D57CC90DEEA426D0F51D1DA52B2EABA5EA82DAB7F6D6B2C81E5865B45B9B5048237272C9D64204859FB5C4C73E01DC1E85F96DFF39472EB1AE43E50FCCDF2CC5E69D1AE9BEA971F985E5B64B7D45564978C92DE5830482EADA4088C1BF752AF604D54D397B3898DC4D17331EB77DFED7A1C31F943CEB0EBFA1D979B7CB7ABD9CD03197C97A56BF73E631671A298D2E34C866482E938491A168B519A08A394B14906ED98DC19215713EF35FA194A58E47D32BEF03F14F9A7F3134DFCB0F2C6A3E51D3D3F2E7CC9A15C3E8D3EA7A8F9A75FB5D165B5B96825591AE65B8BABEBA8AC238D99107A66553405599CFC59D88CE5641049E947ECFDAC783113B8355DFF007EDCFDD4A9A77E77F939E09A1D3BF367CBDA6AC7E994F2F5FDCEBEF6DFB95610DC8BDD33CB5049248AAE515448F0AAF42F53923A7CD7F47DA2DC730D3FF3C83EE343F5BD2340FCD9F2E4E5344BFF00CE5F2479F269FE2B5F5B5FB3B1D4F4F5406466B2B8BBF2E5816655A91F5A59D48EAB5DF29C9A699E78881F0FD6CC70C7E9CA3E225FA8B264BEBDBBBEB9B5FCB4FCEFFCABF3199E1FACD8796BCCC9E554BF939141F0CFA65B2C725082016B200D05641D0D22063F54080E4404642CCC5F90BFD0CA668FCD3A20B093CB51FE5EF9A2D62B684EADAFD8EBFE54D1E3BBBD60AD742D2DA086D92DA08242C8A64E72BF1F51F897F4C53CF9D8BEE0D9E111F48B1DE7FB1965BE9DA8DFDA4C75DF31EB767E629EC1E5D33CB5A5EA5A7B4768EE18DB2EA37B67AD9079AF09795BDB901594D59EA8224FCBDCC4E0E1FE2DFDFF00B3779E6ABE52F39DAF97B51D46F6EB5AF31DF69ACD772E831C7A9EB56B78D318ADE42CFA9E87ACAC6AB1722A89502AD40411438E70E31B579F2538F28162567A75E6C623FC86F2879AE1493F36FF002C63FF009C7DD6AE2F3D3D3F5C7F3068762EF705EA922E89BC4FCBFE61200C0F1923DB7C83A8944FEEE465EF06980858F588D9EE3BFD9B7DAFA83F2BECEE3F2E65D2B478BCFB15EC9AC585C1B4F223A4DA2E980DBCA64B9BAD2B4FBFFACAE84C1504AF6D0CAD6928123DA416EA72C8768CB63B6DB7E0F4F2D98CB4F0162FF5FF0067DAF75D13CF5F963AE5D6B9E50BA5BA3ACD8471DCF9AB4CF367976EED639E594D78FA9A85A9B7BC912BD22793E1A32129F166CF166C4623D4093CEF9FC5C5946703555F724DE61FC95FCA1F32D9DCC767F9773796257E4F6FE61F28DD3F93AEA09BB4A93DBCF6D136FF00171785D18EFC49C91C18666F87F47EC65F98C80513F3FC5BCDBCAFF93DABF92F41F372681E6EBBFCD9BA919E0D160F37798E3D22758F8F3FAA41A958D994322B1E2276F849142ABB93AE3A1139130A0396C6BF6370CF2A1B7CFD5FB5056BAA34167A558F98FCBBAFDE6A02149A0D06D62835392086DD43DCC565771DA5BDB5E8AF24DA22F2712C8DBAF2D6E41C52E131D8723D7E1D0B99844E8CB8BF57EB0C3F4EF345BDFF009F6C2C23FF009C928AF9B49E7750FE5AF9C3CA90695A8C8C030483D294DA330552141B48E524725316E6991C31BB3BC477D923C88E55EEDFC96194479820F23CA8F9895737D59692E997D6769ACC1A4436ABABCC908E31B593DD4D137A6F04B6F39F4A591002222B2330A0A000F1CCF8F04E1C5088DFE17F0E47C9A24251918124D7C7EDFBD35B25B2D24DC2E8DABDD594D74D1C434DD7AD6602268EAA4A199626155EDCDD7B81BEF3C5086327C3918DF4903FB3EF21AB24A5203885D7589FC7EB4FEDAE92E53D3B8D612E9D9F818B4F47009068DEA3C2012A29D0951FCD96C4896F2971F90E5F6312387611AF7A672A0A93463C8FEF0FD9069E34E94FC7361BB8CB510124AAFAA093C58EC1477A0A62022DA11A44247560D52018E334F50D681712B6BCB1654888E21D8726A7C541BF1F90C296FE3532B322948141D8F52DE23C7145A9716E5257E00E6AB53CA9EDF2C14908A48A28C06553C8AD58B1A0F7386E90BE270099153E05E89435DC76C169DF92C48DE7E6A40E06955514A7114AF2F1A9C039A48D9A45915C09430E29CA55269D456BE3D30DB1A5D2806B212A23320658001CA8D5200EF418EEAA63D30234E6432FC4EC3A0AD7E124FCB1295132FAF319F815B7849F4E33BD6840009F9F5C04AD528CCE3D58D775329F8C124D4B1DF6EDB6D824A42AF3134F282A5953EC529B05229F08F0ED8DED4A4522A7662FC5541997E10181228681811E14C7DE8F72E711C4A8B33A9F494B2D0755EDF40E98032D96A7A32FA7421C45CB7AD001DF7E9D4E1A410AA11E42CCA9FDE121797C25491F6411E34C7CD36BA4A9148DE8878FC47A8615F84FF1C1EE40DB9B40300AC002EEC38A8F8792D08269DB8EFBE34C872534411A4C81C0E63D460A457700D5CF5DA94FC30DDB1229517D30933F20CF508837E4C57726A3A05E3D7E8EF806CBD5498876E27A4A40206CB520125876C37B2400B8708CF24E2D1B6CAB43BD36208C363AB1F2559235897D295143D58BB9AB9A96A827A0DA98026A9451DE26F5E288968C7A7CC8A8A1EE06E0004F53802D5ABB7A5F57AAC541CE80546C3BD7C4ED885E6A16C932C7248CE38B3D0C40528A371B8DCD6A6B5C276B473449F4636608E5A91120824A86243713FEAE4598087AC865F58840248D58D47C4C2A455BB0AF5C2A3773D428776E424AF120538F6DFDBA038AC8DAE62A8EEF173741C50B3915042EF5A7E18A2BA284CC63B44540144A4B735156DBED9F7A922BF3F1C0903ADA9C11C6AAEC2393EB2C555B9EE41E20120F8576C58A9FA492D0856218BFA01870A34601FB27DFEFC3D17EF559DE15692661EA3215528775590A86E54EE5576AF8ED8958DB8C4D23DB2ACBC61B0E263E95AD39273AF87DAA0C95ECB54E1C15EAEE5DDCB166949A3B3D493B0EDE03DF05851C90724A269FEAB2A329655311E21642ACE4540DBF969406B82A96D772219A9116464A98D85633225569C8F53D80E951814943F1786EEF488DCA1851CDF96091C7274E06BD361D1709A5E6BE4085A158CC71DAC0084084C8F2B50722EBD80E216A7A549C455EEA47735EB3F0A51BD2F5397A15F8AB5EBC7AD396F4F0C17D5777FFD0F37FFCA98F2FF953CE7ACF933F305BCBBE45F396853FA53E91A1799E685A1731896068F4DF324303DC2DCA10D14B05F7A6C28D5D8D34A734A404A2090B3B8120F30F18B6F305E8B8D46DB4E640B692CD60B15BB2086E618597D4E3E999A1916668D4BA8728FF00B3D6B9698752806C328F335D49E6BB5934AD55A0B64B89E3B9BCBEF49ADA16910FA61AE1A5B842AB13BF26443551F6576AE460384D8DE93B31A1A2F93F4C8EF06BBAEC50DDCDCC5958C57221915B65B94578924F498B7FA424AF1B06F847C3CB90B099CB92A6FA2F98F4AD21A4B70B69716D62FEB6997AB6D71757B2341333593C7690CF6E41826903C8AB1812233297A05C84E264A367B541AE6B2E2D2E6CB4BB4B7D5EC4EA5616EA7EA9602F9E0417571662E2EA59EE52CEF64A4D118F71C372A14651C001AF8FC536CCF48FCC8BDF4A19DF4F3E63B78CE9A2C6EB49D325BD76D32E03456170D7723CAB3BC320916E5D5A4574A10A9F6B2B9608CB6FBD4CC9D91737E6BDB5EE9CABA9436B0CD0C89FE24BE8F50821D334D11DD49657504379146639E5511ADC3298C7067F4976A663CF4500D5E1464C4F5EF2FF009EAEADEF6EF4A11EA763666F62D4209C3DB4B6CDA6BA2DCC35B9F4C31895E376FD92ADF0BB6F9018631689E968301B886FECE6361340D63A85AAF3B88F746324CA0A50F420464508A83C891991863C2377271E3A09CE87E61974978A1BA99DD50FC45BB9AD4F23F79CB08B6E0764CDBCBAFE69D6E6BEB69165D3DE30CADC97690F55353D72132452C0009A4DF96FA5450F2BBD7ADB4F1C4F25622565F0E8C3AD0ED4C6323D029AEF4867FCBEF264B559FCF5709C8D1BEA96D1D37F0F51989DB262721BD20F0A591FE4D795B55982693E72D5B9250F292D61E3535E8636523243512AE89E00C5AFFF002435CD1DE57D07CC503C8240CD637A92C51963B174963E6632C3B8143DC6196612FA87C584B1026C6CC2BCDDF979E74D46C62B5BFF002CD8EA325BB036BAD6957B0C7708D4DC4B03AC3EAA11B30AD7B815C96094719B06BC9970CAA8D303B1D2759F2D5BDCBEB3E59D43CB7123017D7D35DBD6453F0921E3B5943A6FB2F3514EBE3999C5099D8DB094084CBCB1A7FE5AF9834ABD925D5ACF4AD560BB2B069BCE79A09EDD9C10E8E658915D54D020D8914E42A30653389E4CB1C626ACD77F7BDDFCB9F955F974D0C89E528347F3B6B17489FA3B50D43CC5A7DEC7037DA6E7A44B080AE694E33464A81B1AEF98B2964FE2DBDCEC7167D147A1F7C9EC17FA56B96F777C3CC5E5633E85E6112DB6B9A4EA006AB617F6972C267B155F5278C88A68C4D130785619551A38B9025B1651EA2C10E5E5D76198A146DE77E69F2D69F67A4699E73F2FE95AB430795666F2EF9BAE66BBB2D3AF74A499BFDC56ACA601664D9EA681E3E2BB47711F055FDEC7518EEC891E7B8D92724728AE107F427767E75F2AEAFA5DC795FF003575DB8B7D4D5BEBBE54F356A9A4AEA531B465A3242D28FDE1F5151D5A321C3121D2A43A89E395FA7E4C3260C408355EEFBFB9E9DAD5FF009EBCD72795FCDFF969F983A6EADF9AD3DF069F5BD2F4F3E5E1E64D46D1E3F48DB9D4CCF15B6AF46669ACDCAC775BB45496B14958108C8C651A1EFBAF36ACDA43F544FEDF921FCADF9C3A0EB90EB7E7197F2D167B7F25EA77F75FF3903E42B0B79EDB59F2C5B4D0C9A36ABE67D1B4F9598CFA7B5B5C4969AA5AC8A2E6D0D19D9E031B4370D318CB878B690F4F71F227BCF4EFF7B8997D71BA008E6F28B6FCA4F2A687F9EE3F2F35EF316B3AB793BCD1E5ED5648124BB8E3115F452451C31457312C438CB51344A5027A5245579376CB27A998C248A1289E8CF06284CEFBD8FB43CC35CFCBEFCE4FC9AFCAEB3BEB7D1AE74AD76C3F311B5EF326A30C6BA9C56967E5886DCE8515C7D544E56169EEAE1DE36A2B357D4207127221A8C39E7BD518D38F28CF1D0AE5BBEA9D13CC9A7FE74795F4AD23CB5A669FE7AD1BCCFA734BAD7E486A5756B37986D91CC6C6D62B4BFBAD3E1D6E0B79052DEF2CEFAD350E2ABCE6E48D1C9AFE0386677AAE47F1FA1CFF000E3A885D57E3F1CDE73E7EFF009F7679ABEA57FABFE5DEA6B7DA75B5AC1A9A7937599AE3F4E58A7D59E4B9B2F561B502EA9C15A12638E521B832B1512499787B48C8FA87BCFE97072E2103C24D9BE637FB9F0BE9FAF6996A86C6E74BB3BCBF54FAB5CDB6A3581E32828F6F2B4E939592A38B87E3DC1A6F9B0940CC583B792C7823B11BF9ECFA3BC95697F71168F6D27E5D797ED2EB518E110E96C901B843233FA5146608612923A8E6A165563D109739ACCF9200D592EC70E3E11F4D5F9BE82F2579684DE61B2B5BCB71A2699AB4D15DEB3730799F568E15B051EBCEEA356B690836F6F14927A6B257E02AC508DB1A59455F46719E481E57EFFD89FEAFA0F9F3CC7AE4BE696F38F950E9B7D2CB7F1CDAE7916D2E574C86E19E4B5B49753BE9E402429458DA3FB6CBF0293C46013870D08EFEF61F9E23690047B995795BFE573F9FE4D4E61AB691A07E425CCFF55D37F38758F31DF796ED350851817E1A76A46D67791A451485638A2462019B8EF9030C447A45CBECF9DB918F5108EF960223E3647E8FC73639E74FCAE9B40D4F5BB4D2FC95E62B6D3E19EDE407599628AE27B09009A39A0D4B4E8B53D3A747A7328DCE35561C640FF1640120D5B67E4619A1C78C0BEEBFEC28D4B4F317906CF4CB9D00F99EF7CC7E79B68A18B44BB9D2C0E85A0412D27BABA920134527D7658BD08A40EC3D257AF03282A2338EFC742BED75B3D1CCCAA23973DF93D8343D56F74DBAD0EF3CE9AF58E89A8E917765FA2BCC0CA259BCAB2EBED35B5B29D4A39088A2BA11324D1CC3D13EA54189DBD5CC6C790F18E0DBB9CA960118D124BE8A4FCCFF00239BEB9D062F2C5ABF9D44CDFA4F468125D5AEBEAF1B71FAFDA3BC37319B495E9E8CB2CEB102777E4A54EE71E6131F454BE7F270CE9A428DEDF266B0798EE353458ECBC93269F114682786C2EB4DBAD48DB26DF1DCDACAE96C8D5DD892C474284D72EF12F611A1F027F630943BE77F3AFB513FE2EB5D5B4EB9B19FF2D7CC3AB585842556D2C60B1D42D0FA402A450CF05DFA61F6007160569534A64FC48CE3C260481F10CA18640D89007CCD7D8C2350B9F2DF9D6293CB1AFEB315C5A0568FFC13A9D89D4755851C7128CFAC5A7D5AE781EB1A41CFA3091D9436609E1BD8D574FE21EEBE7EEFB5BCE4E0DA42EFFD21F97EBF820EC7F2D7468355BDB0D2B46B1BD1E67D2934CB97BDBC9664D36288F39350D3D2F23B8B98A66840592DB9C5561CD085AF1AFC212970708B90E7FA77DC1F2F93903576388CAB84F202AFFA26BA79FCDF43C3676C91002391BF903CF33B115E55662FB93D4D7BE6E46080154EA659257DDF00BA21C07A550BBFA8A8BB0507B003AFBE591000A1B060493CD12EA4F18812588DE86A02F524F7F6C92AF85792193602327847B856076FBF1B4345032A948F8C8EA4AB9140A8A7623C77EF8A68F37288F77E6644836504D2AD4A9351BED8508795EA270A4B7C439BF425B7F7D874C1CD6D131C680B4A54D4A8F8EB5048142062523B97335688A1999C1558CECBBF88F6A570A15E0AAC41A16F51C1A2AAB6FCBD81E94C8DDECCBDEDFA8E015E5CD6B59189D8393B8A8DFE7800DD04DA94A4932131B3A7F29EA09E82BE0461149928BA00CA6A08A710C48AD0D2A36DF6C2364136A084FAA64E5F006E31F23F157DE806DB625017DAC5C24612373521A508DD287B0F0DF23CD95A9C42579259D81428BC9250071009A52BBEF5184F245AAA08EDD645901E4EC6AC3AC7D76EF5C17D52AE2468F8A3153312AD2C84F702809F6C26AD880E6216532CB183CD8246AC28149150A7E8DCE4126D4E486957A008C9B3D4F26663B2D48D80EBB7D384735255D16506A4C52171C9AAC471A6DC77EBE188DD3B5391492D338ABD39488760AC4D48A0EBB531B51B2A4B19579256631C3113F11EA1180003015EA4D6830A1462472C0CC409243568D2BC8703B9FA7C31E6B617B1255FD3AC81C32841B16E66A2AD5A6D8A7CCAC6355E20D51D0066A77A0F857DC8EA7DB0201EAA60C4C13D3E23D1221755FB22A2ADF2EC4E2A452FBB64594A38695FE36562B50C400371D81EC0E1BA4735558E49978A48C5F8D6441D4A053D41F7C1E4A2AD734758E070DF081C9D88A01C454EDD6AD880CB620AD9646F5D4471D17982446490137FB23AD7E787920772C88A831B1238EEA3F6B9296DEA3C4114F6C8B292B2C8A9EA4D3A725954FEE68080186C4D3EF185007721CDB2C71ABA2330F4B948E03508635A8048AD40EB8A2D7451AA444F03CE465238ECBC083CC91D76A01F7E25473B72B2CD1D1A91988D39D0931AAFC43C401BD7E7814F340CAEEEB7143CC3322DBD0905C161C87207E1EF4FA30D279114AC0B28815999A6909758851986FF0008615DCF55DBE7811E6BAE8C4A2AC7D7916324440503120A0DF6AD435054E03BB28EEA8114D83471C7EA728964965720BA840080074A03B927AF4E9921DC8ADED0734BCAED164910044611A0A1DD78926BB000761DF1E4A021199838753EB02DE941239A538924485680D7AD3C324698F5573E8DBACA24502376494409B8D9BE2A1AF5FD55C833DD64B746400C73C7345BFA8A8CA0098AF2A12411B721C7DFE7849601417D6D39F941CD3902668B8925481C5835491C8D4B53EE18DD72488DABFA29E87D5F81FAB7A55F52ABCFF9F972AFF2F7FE382D343E0FFFD1E9F2687E4DFCEFD2E1F227E6FC5A179934CFD1E9FF002AC3F30EC605D375DB689A53796DA7DF5B00C85400E552200874729147C8A6720724B16F0240FBBF1DCF419F4F19731476E5B890F3EE2F843F397F2C3C9DF957AADE69BE4CD43CDF717DE5FD48D8F9EBCBDE6BF2F49636F67C40960B8B6D66198DBDF5BDDB3A1882FC4C94943F1201DA60CC25F590491F8EB7F60753A9C746E113C3677F77C1E1262D33CC579A843AA4135D6A36F750BCF763D38A086D182433B3CD2314014524E245582F1EA7324031DFA38ABB46F2FDB43AB5AC579A8C96F606690FAA8816332C327A33F30F1C7EA2248E8C3993C9370B45C94F21ADB9A2CD3DA3488F4B97408A2BD9D74FD3F4F6169AEC1733C56D0DAC37D149A65DD5D0DACAA2DE7892466691A540CA4723E9D316C892CA88D99B7966C2FE292DEFAE60806A16ADA53EA11E976D691B2EB5E5F5304D673492477930926B09408259A4F5482151F9C878894AF9720CB927907923F4B5A4FA0EA3ABA6A97761A7EA16A5AE6797500D613DDACBA5DFFD5A296DED7D212FFA33AAC1EA42EBE9D7D35924CAE53DBC8A07E864D35AC5F58D5A7645B7D7B513235F585DCED2FA16FA995B49F4F7BBD3A392E56CA49A33716D756AB145CE35695DB6C4936B62983DEEB7E62D2F549B51D2352D67527D2253A9798B46D71E0D4350B57904B05BDCDCDBC7398A2516D108965591D5D5ABC236D9A540EC5883495FF8FB4FD6B4A821F3DDB25AFD534E4FD1B776152565B376043FA5713B2FA707EE5FE16AB717E7505701C647D290543CCBE4EBDB3124D646E6F3CBD35CCB6FA7EAF2C06304C64101CAF28C92A41AAB153B8D882020D1F3660DB0B5F27F990372D3F5392DA272010095AFCC0A7E388CB1EEB49827561E42D5AE1F95F6A12CE41AD013C89D860966B1B244777A8687F9736CA6367469397C219AAC371EF94CA77B32AAE8F5ED3B43B2D1E25E08A18015D80FF6BDB2BB279A48A4835289AEA5631003D46156FB448AF8571BDF6420759D1A2FA944BE9AD59C02B4F01DE986EB74F54B60D18476AFC095500FC2694F91C78925E6DADFE58F947CC135D26A9E5DB6692720CB756DCAD2666A6C79DB9424FEBCBE3A9943916045BC3FCC7FF38EFA433ADCE85A9DCDB4C49E0B7812E02F4DC4A047253FD95732A3AD9751618980608BF979F9A3E51B8FAD797EFDC490D4C4DA55EB41CC135659ADA7FDDCCAD4DD5AA1BBE5FF0098C33147AB138CDF27A07913FE723BCF1E46F30A59F9BFCB569AAE8EF03E9FE61D0DECA8975A5DCF1FAD5A5D69B2C9E83C4CA81FF76108650E8C1C2B65797438F2C6E27DCCB1CCE395BD9BF45E99F989A2DDEA3F937E52B09FC8902243A8F91FC8BA747E61B9B50ECD5BDBBD1E466BFF0055D9024DEB5A2822863665E9851071911CA4D9EA7F5F7396336526F1D57F347EA29BF96F4BFCDAF24C91983F2CE2BBD03CC71AA79ABC9B2E85AE8B2BEB1B73CA2692D9AC21FAB5D1E548C3C6B221A95728572394E395827975FC7373F16799004A23CFF63DBBCCDF943E5DFCD085BCDD67A6EB5379EFC8DA3CADADF92E79D2C353F34E89F54623CBDE60BB2F0CACB1A2288AE9A923DB2C9692248C6064A3167962F41E4791EE3E4C73E9E32DF9D7E3E56F24FCC8D1F50FCC3FC92864D454D87E687E55E91A66A3736FA4C090B9D367B68EE2E6CAD2DE3641F57B582548D47EC988FC456996E0908E5B06C1E7FA1D76506360FE0B21FCA1F3B79EE5FCB9F239D43521A9F9A3CC31DEDD792F4DD3B598ECBCCB7BA0E972C96F71235B5EAADBDE4F6E21919619B69A088812AB26F56AF0C78C98F21CCF47331F1C0478A8990E5D594E9DAF597982D7CD10D9DEE95AEF9512DA45F3EDEF952CEE3C95E6EB2BA12716875FF2FDA68F7AD3C8B2206411C912B1AB043FB55CF1484788837D3AC48F7B386A8465C3B57506EFE1D0A549F967E4AFCC5D1756F34FE5F7E6FC3AD68D6745F382D9D9BDA2C76D3C6891CDA80D32E6C2EE28F9044320578D1978388C8C9472CE06A51FD29AC7937B1E56397EB4A35CF23E83E69BB864FCF89FF29BCEB181FA2E3FCC35D4FCDBA479B6E1614F861BED46D629E3B995141A35FA4D21028CCC06591D44A17E1890F2B15F005328E298DCC4FC3F4FEA34CF7CA5E49FF9C72BF96693CA9F993ABF99754FA9C70F1BCB0BFD6965B0B75E42271A6C7A3C06385797067889507762AC5729C92C8454A9BE38C1FA4FDA057CF9B3EB3D37CA69A66A77A9E60BD93CD3A844B69A8798FCB1E5687419469F46696DC5CDDD86B928695485919621C91788552F2BB562EF61691A507626FBFD5CFE447DEC8B51F38F9374ED2561D2BC9571ABF982DE1821B4B8D43536B09D56396395DA3B8BC86597D50179865B68406FB3E9AEF95F844EE4B7C7495BDC623E1F8FB585FE69F9BE1F3FEA3A6F98752FCBFF00266B3A8F93A478BCBF7DE709F5DBD86282FE4092C1E9E9BA888983003902B3991BE3E3B532DC51E11566BC8B09618C0831C91E2F30084BEC65F2B68FA74769A77E5F3683E6BD5AEE5D7F5ED6FC8FAE6B7F5BB914F45D65D2F537BFBD9237423E2912258C2AF0A0507124DF33418E081CB33EA8F99AFD4A7711FE8CBB8759D10F9BBC9326A9A8C36565E5DB7D3E68A69DBD3F56331DDA0D46E4200A40B976588B7EEE84918220EF7C3F3FD6CB513CB8E2057958AB3F00C3F57F23795FCC373E60D475EFCC0D4B496D3A7B8FF115A379974883D27F54098DC5BDBCF71335C7EEC294B8B32FC8014042D2C84A4378C6DD67E6FD6499107CC5B12F2679BB51D1ECF5ED3BC89E7DD1D3CB9A63CB61E5C02695BCC9E5BBBBF91638D1F4E9EC6C4EA16F7538884B0468190B0991598386B0938C826241FF00627E3D3F5B6CF3F8B1AB89F75DFCBABEB3F2E79E3F36FEAB611CDAC699F9C375636B6F3EA9F5FD33537D36D6731AFAD1DA5CDEBC167205906DE8CA7952BC54FC39396B40DC4AC771E8CC6389DB84C4F78ADFEF7A7D8FE78FE65DDC4DE8FE5BE83ABE976CE9649E60D2F51E1A6C5236DC1DA7BA291B295238092A3C2B92FE541CABEF603458F999100F7A23CC3F9B975751C1179A7CA5E5AD36289545E4FAA6B36D3871B931182568D590AAF204B96561552A77CA72F698C82AA3F16EC7A08476E3241E947EF4BAF3F39F48B0D663D174FD3351B2BD8A34925F2FDEC77DADDACB64AA5FD6B3B8B5B66BA8D5410C8D1CAEAA0B5570FE6E2240C7E20D9DBCBAB893D1CA171247C3F6BD1346FCECF2E6A9A8C9A5D934F3CF6ED0C634DD4246B1BFF526405121FAF5BDB99D49D8338461DCB546660ED280950E7F8EFF00D8E24B0CE22C866B1F9E8F3459BCBB240A43186EE6BFB328D4346511C2D24E1D48DD5E35A7E1978D5D9FA4FCC30A90649A2EA435CD3E1D55238E3124922B2AC921FB1B146596285D594D4142A694EA72FC5904E36BEF4E5F8B97A92AA0D510D41A506E7B6F960017938152C85895882115EDC7B81F4E4E9056733248517E3576612002A46D91E8A02D44E6AC4D6A9452E081F08EBB6DD7C71A484438794A166659225E2A07455A500A0C696D5590AC24B3FEF050F2A0E440A003DB1BA452D9A367689A32628D6A470A7224EC6BF218FB95D21086DD8A3B54B0F4E836A50257C6BDCE055262F4DE4A48C78B151B0603AA8FC30AF54335047248D270403802CA68AD5AD69E22988149EA85591DDD39280A14B4ACBBD5412475F13810984B12FA2DE8BBA88E30933A7C4439AF220D287AE01769D94AD8AF126B2C695A1824EA1AB415271BE9D1555232AD137A20B4552D5AF1A81D053B6FBE20AF9AA7059EB0801C35112702BB57B1EFF4E1E6A366F8D24A4527AA58A82A770029D8EDD3055A8202BAAB2C650B8505890EDF17EDD4EDF4627755842869A6841E12B5622481451BB31A03D7BE0E69ADD4DA4F57D15843B41CF891FB4D44269D3A13B938A92A803CB0BAC7284465A045153C81AFEBF1C3B85B05AE322894AA092430B371E5D053E215ED5C02D0B24DA4806E8CE5DA28396CA08A004D2BB1C690E8C2C660F8990BB1E51392454924D2B5DBE7921C92578403D56039EFC9652428F71BF4A603B6CA376D642619A50565F5579ABA8E8A6838D4FB9DF06CBEF4445CCF37DE299C5247028BC3ECF1FA0624A6A90FEA18F944ED53CC2C943B31DFEEA62A5596231B32C942A081105DABBD3BFDD80F248F241C8CA664B65E71AC7530AD374E4072A7857B9E98829ADD1263256352080EC626E55AF10B5E83735AD01C281F721E55F4C88E4632C09C9362684AD0D00EA078E2189A588D2C8028E4AF0FC3396A050A370BEFCABF40380A6A82C91B9D59226400111435A960080457C075C956C8B368A9615B4963B7B4B81335CA23DCB8A05A03F10A7CE982D35B5A11656F480460275732194282579902A5A943B6D41D3AE00116A32CE9CD4C91BC88851A2553F096604056EA41A0F0E86A4E1640F7227EB14926054CAABF04D121140362A8C770694C08E6855855A5927F57D3B89217E6A0740CD5A834EB5000A61BBE681610B1A214469E212C9CE58BD5238970694527BD5AA2A3BE3D556342D7427B0461578D8FA0AA58710C01A10C3E2F8B6A6C76AE4BDCAA935C41E93C9628AB2DC2130517882F146DC3884E3BA81D69DB010A3CD46266966BA86ED84D3C528E20A908EA8CACCC0F5606BB9F90182C85211BE80FAD7D4FEB127D529CBEAFC8F2F4FAD294FB55F8BAFBE3B55A2DFFD2F416BBE79B8D3B4CFF001DE81E5DD32F668C5949E69B1B1D1EDB5AD6AC048BEBDA4F6624F41EEAD2511C92A07915D783828D3C756E3462B35F27AD9E3940D091AF87C47E3E0AFAD79EAFFF0034FC93E66F2AC9E7BD4B47F28DB68D36B179E9796A3BFD0B5BD0AF205F5EC78D85CADDCBF52F8E72ABE93345CC932AA1A4F1CE58C8A1CFA79F9FED759AED20940937C23AF3D8D3F1E3F32BC93E58FCB0FCC25D0FCBDE7483CF9E56D4AD61BDB2F39DE69B77A5472BC8852F6316B27312FD5F96E54B23554F8D7798324B242E4288E8E9A663C4447979A0201AC0631B432492BCC2E99251CEF397116ED7D1C2AEC62B0B98C11F095E3F6BA64CD115F8F731A435A799751B1BA37B04104D4895279EE42DCC73465155FF0078E1832B88955E8416A02C397C58984695967F8FFCC576C90C907D79AD84303ADFC51DC1F4ADEE3D53048F3D63222E4AC95FDE00BC839A0A57E146F65E898C1E78D6EEAD74E6B8D41F54B2B1922BDB3BB7B9B97B78DCAC8C6E12480DB2FC7CC295560ADD1875AC7C31C8251BA0F9D7CDFA8DDC56F119F5C686E1A582CD3D59228E41088A48DA2B0E10F1E44F3855D93BB018CF0C63E4888EE7A7E8BA579DE79A066F2F59E83E5FB186484797AE56D6380DAC10C9EA5A5C2433C8F25BB991BD349E450246551221AB656447905208E6C5AD56C2CBCCCF6EF13CB1CB35B5FEAB0CB69A635D4D25D46B16AB6ECC1FD20A126432B2120712A866DF924150F5CF25685169DA65EEAF77773EA97C9EAC49677ED6D3296B38E6B04586D60B88200F732BC422F4831FD8318671C68C84909143DE98FE8E4B5B8B9496DFEAB1DA4E2D1D5A4663EB0891E411F348DD954BF10CE8A4FBF5C81D99037CD9558AD9AAEE818D41A0A1A8268065669B03238AE628D78C7424742BB0A77A646B709076527B8F545149029B54F6A8A771FAF0852AC90A92094059A945A004D7E4306EBC907AB22308A1A32B2EFEA01DFF005612BD7643AC4EB052450E3C01143B77AD318A9DD2496D4C933324679A9AF13D4D36E86871F24049351B28898AAA2AD56466A0EF5DBAFE38413D1481F1492EEC07A7D0B0F957707B7B61122BC987EBFE50D0FCCDA73586B7A6457912EF1C85692C4E6B47825421E323FC9232D8649C0D82B608A7CF9ABFE49EA1A4EA3FA4FCABE6196D6E63564865BA2D1DD47130A111DEDB0571515EABF4E668D6896D38D86061DC8717FF0098DE5EBB87501E76D57C91E668015B3D67509A5D4FCB17A38055174C16E52066A0E4B3C0607AD5C454E596838A62A811DCC0821FA0BA279A3C99AA68DA46BFE58BCF24796C2DA995ADDA2F5668EFE5A25D5BC571632C96B202C59048659219432BB246C08CD24F4F92068C76EF7651C98E62B8C8F24DEDF59D7744D6AE7CD563A958EADE548628EEE0D262B3B39E7D32D16145B9B3792D6DCB4F096434AF655AA9566187877AE45CA8E9716489848D4BA1BE6F07FF009C80F29E91E6CF3ED8F9EFF2B359BCF2BFE6CF97FCA36BE72FCB16FAC2369BAAD9E8FF0058BDBFD3AD43094C3A959373953E27B5BC859A3E31CBFDEE7E9324443827BC497539639314BD5B18B04F2C7E647903F31A6D27CD67578BC97F987E5DB2B6FAAE8F2DE6A1A48D3DA86ADA079BEC167BBB7B161565D3B5286E22B7FEEE09163F843931E4C4287D3F8E63BF96EDE270CBF573FC757BDF967CEDFA16EE1D6FFC47E59D635B9E599F4CD6B44B7D3F53D5668EED5A2985C4DA1682B15F7AE2A274BAB70640D492BD4604E1291FA69B0CA18FE99D8F9FF63D67CB561E4ABF996E3CB36C7C877F2C32CB71E53D723BC0A2127884B3998DCAADB2B7F7769A85BCD145C7882138F1AA432406FB80819B1CCD0A07EC51F34F96750934D9348BFD27CD16FA0BD668DBC8ECCA9CFAB4F73168B79768CE1C131B1B40ABB006951908658DF71F3673C13AA02C791B0C6B4EFCBD8ACE35B787CC3F9BDAC47E925D33F9865BF8A28528BF134F1BE96FE90206C192A476DCE5C72191E9F0463D3C8F41F14D6CAFF51904D047617AD6F197B7B2D4FCC3AA699E5F592DD978492086F2EE5D4248C1A8F864DFF9B212BE42CB64745396FB01EF5DA6EA92DFBEA779A7FE60E813FF0087A0E3AC41A2E9761AF5F2D9DBC6D2CB6ED6F696FA8DDAF05DD96A1B8D5C034C8CF8FA802FA96E8F67C2CFAB973DD251F9AFA3A49E61F2F691E56B3F32795249161B4F33794AEACB46B89E687F79389D2D349926823747F8658A17470C558AB86C1281201BA3EE671C118C888591E64FDDD5F0CFE68C7F980BE7DF32F9CF4B1E6C8B43D735498E83769AA4BA8DBC36711FABC1693DE58C86249045128E322A57B80736DA638F8044917EE1BBAECF865091F4F3EE615E54D0F54FCE5D7AD344F2CDBC5ABEBF7CFE95C4D74EAA90291248D35C5F4E484DD4D79B75DB73976510D3C788F2FC726AD3F892B8447CD9BF9974FF00347E5779B742D4271A7E99AEE9F7897B61E74FACFA914B7B66A8C4D9B710A1940E40AA339DF6A1CAF0E686A606B91E63F4B1CB8326020D7C5EBFF95FF9CDAA49E56B0F2FB59797F5AD16D2F6E2382DDA0BCD12EA7964984849D460951484E6CB1B950C0F14DD6AB98DA8ECD89912362DF875D28C68EE1E89E6EFCF0F2B1BCD0B47F336952EB7E5B9E26BBD2755BE51A82E82CCFF005775D474ED4159ED64329E4C61BB657016549594E6BA3A2991220D11F8D9CE96AE162C582FAF6E3CBFE50D1534CB3B8F2C6A9E405D52DEDAE2C2E60D4EF52CAF6DEEA38E413A5C5AA5EA481C51B888C807F6D72263C35C7122FA9E5F8F24F87C42E06FDDCC330B5F216AF796B1CBE4FD520F3FE80D2BACA05F45335BB4FB46608A092E25B6B856017D46488B6C0827E16BB2688C85E3DFDD5F731F14C854CD11DE39A49E69D3FCD16D0DAE977DADEBDA9DCC65D2C6CEE62B19AE0DB30E44CE9796B3485EA78FC12C47F6828A6F8B92521427C5F1E68188481E1AA59E5EF30F9EB4485BCC3A0693ACE9D69A8A4315E798F48E5A958FD621E31AC3756B6F72EBCA463475978CC29F0803E1CBB01C918F1C2C798DC7C43892041E190BFBFE0F6DD0BF39ADB56BC934DD5AD5ED7CC102A35C69DF58805B9249426292EBEAF229A8DD5F75268C074CCCC7DA32E2A973F857DB54938A3C37D3BFF5BDCE19E19443728C92DBCCAB22CB1BACB1100576916AA7E8EB9BB81E200B89B29CBC658E3A92DF11631D2B45AEC4788C9ABA2014A3825D5A941B827DFDB029575F4E18DEA814F30B1AF2A9007727A7C58551014D17912A1D549EDBD4835F91C1CD23643B06E440624A9AD5A82BDBB5701EFB5E6A8B19485B81E5EA26FF00E5034AEFDABED86B754289AA7D45908545D88342030EF514C4EC851E24047200A8E50103A6E477F9E3C9287B885A4478C16FDE6F210C6895EE2B5A9C4846E892231688AF5323A969C81B861B0DBB8A75C176A365DB2C0A4FC31C9B32D680D054FBEF4DB02A9DB49E9099A402B046C04477343DE9DE83F1C2ADC8DC238C444B16408772AFE96CCD5DAA295FA723C93CC2A5B3C62348FD3E0E6E19921634009A9151B6F4153E1842DAB87E6C50AA879AAC5695DFE780AEFCD595566E4A9F13FAC56346A9FB35A8A0A76DC0F1C54726CC8A618C9013D4AF11CAAEAAA68BCA9B0E54C56ED0B49032AA72E26BB576AEFC4EDEF4F6C2290AE3844C9F07190C80CF2EE1405140548276EE6B8484BA91F1FDEF2E5B4BC18501EC0B026982D08730CAD22CA1B9281FBCA915435DF8F857B613B849447A4547A7CC48495965E668456BDC7CB0285098B3978241F0321A06524D14F534F7C45F7AF35C25668DBE0E73000051F0EE0509FE99165BD79AA5C486249E30EE432F05902D5549F8A84F89A118A4F9B7094049E0A6440689FB3F0D2B5AFCF1E8815B5AE925610946FDEB86AC6493B2115F96EC09F1DB1421E38F9B10648DA6A0692BD28BD81E98A79734CAFDC892291A86428A645E55A39500D1BA72AF418A024D76164636E64E465EB1C60020725F8791AF4152715BA44C5C7D3BAE082305B70C6A49EBF1D06F4ED8790455A821171711C8B230F563AB071F118C8E2072A5011B36DDB07448EEEAA2816E26558247581032BCF4632713B17048A2834A8A75C6949D9110C71A09594923F78007A70665D99CD3EFFB861282812FE8981817486290C65DCF266E51AF5269535D81F014C0920736840D009A22DCD1D3D15884A03951562C7B72AED5E8061475D9796AA475F55665012511801791F8DB8D6BB0D86FE3E383DECAF7548DB8191DBE31EA1FAB8A73E31BAF204D7A126807864B662015249AB7122355A588BBC54DBE2A03C76EBB6E4601483C96BC6B7371F5C955625B689A38029F8AA286634A0005140A835EDD309A076506F9B717A9E9CFCE310AB82631B333A1E91EDD9DBAEE36EB91491D14BEAF272E5B53D5E5F54E07D4E9C6BCE95E5CBB7F2EDD70FC536FFFD307E44FCE4F20DB598D734BD045FDAE84E967E76D02CCB4524367ADDE28139596E1B9C26EFD2DBA45398658C26CC395C9A69F5F787ADC5ABC59A35CC020581B8EEFC776C94F9FFCD327E59EA7A16A7E5BD5351D3B5FD21EF27FC9BF3369EDA74D61359EA77D25D491ACF6EB17AAF6CC2648ED2E212A38CA8188DD5C38864279EE77F7B81DA128E3362EC6D5FC2473DFDFC879307FCE6D0FF2BFF31F50D0ECBC9FADDD69DE5ABDB65F3269BE4FD22D52DDFCAB7522B437FA559C26DC892013A725E1558D481FE4E65E2CB931EE46FDDBBA5C82266784D81C8FE8E9C9F167996CCF977CD5E63F2A8F314FACE8FA55FB410EA57A3D39C7A43D492BE8A90D24468DE98015C8D80CD8C0F144488DDA6DD61EA11242F2C49710942D793DBCAF2099C471453C76CA5A904F182AD565A37BE338A51F15D48A03FD51C23BBB44939FAC4D6B2C00CA494855D43C7CC32D5AA50D0EF90A57A1797ADAC75BB6F5F508A2885A125A6BC2CFEAC6255791F8C8FC78474A8545E6071E2E371909DC579A7717E66697E5F4E1E5FB6B6D76E3FBBBDBF9C88ED19959042FF0B06E3CD2A02F50D4690D48C878567745CBA21A4FCDFF00CC1BE13AC3A6D9E9D2092769E3D2F4F82EC97B994168FD58A453CD1873AF11FE5824532430C6D48247344E85E6BD31AFAF6FBCEF67790FE9393D39A782C98DAB428EBF5862A5643C4A47C68797235A50803232C75B05B7B5E8DF9A9E43D2E06B8FD3F1A6A37CF7334D1D9F38EECBCACF2B3ADBC96E62122B3F2676A5582BF73951C52E6B74B6DBF31FF2DB548D34FD1A6D474B506E0584D77631C96E95266952B10882BCF29AB97423C196B50F8320194657BD2662EAE6CAE0477015626A3453C3224D190E2ABF1A1205478D0FB6631810DA28EEC96CEE998210D563B3023AD7E54190AEF5B64D684C84315209FEEFBD3B7CB7C65E498F9A7B02466808AF43B9A6DD48E806479240405F80D3302DC82F4A003F0184DA001BA8D071202B74151D89A7B74C578902A082E4AD554FDB14A6FF0077CF13BEC546C915F07668F8AD798DC1EE2A7AF70312A955C4278011D496040A81B81D48C90A28E5B25AF6A78F3FB6D4250529D7AD46FB63235C92031FBC89789714341460A7700FBF5C79B1268B1ABAB35A33A17466A508D81F9D36DFDF26096428F378DF9A7F2E740D55DEF96C52D3500C1FEBB69FB890B03505F80E2F43B8E40EFBE65E2D44A3D766062C16DD7CF7E53D6345D5F49D6E4D46DBCB772B756DA248C638E4569019E18A3FEEC7AC8581AD013EF97DE398DC513D544A513B1E4FD23F246A7A06B9A65E6B1AACD6FF00E0CB4D326D475DB4B90540D2AE2095A1BB85846F2A4C87940B2214EAF14AC4C2B9A6C808DBA877073C7343D5F57D87C9F0B7993F2420B6BDD3FCB9E5EF3141E5CF334B0497D0791AF165F4AFC5C5429B1BE61C252EA80FA619AAA54C75E433638359303D62C77B56A740232001A245BCB6D3CA7F9A5E50D667B5834E9355FA94E61D76CADA5E71DABB6EEBA85BCA12E6CAB40C1EE228C1005091D738E6C59059DBDEEBCE29C0BEA0F294D3EA9A65A6B5A7799AEB456B4B7FA92584D34F6E86EA26E3C23BAB2B7B9F5387C4E5BF7616ABC556B9ACC92E134370E7C7144C019E37A359EA9E76B1D2DA087CEFACDBDF452C57B67E61B49E596E6348D1A36812EA48A13E89142E8EACC59410D4DB31E538C8EE131C508EE2240F7A4B27993CD5ACDC5DDEEBDA7F947F325EDC7D6A5BCD5BCB9669A8470C6CCCCD36A1A736957CA16BBBB4DBF52C7BC0C31DDEE1CB18A1CB88FC774049E60FCB33249A7EB1F96CBA7D8BC8B7769A4E93ABDF186DE689D38DF69C7548F535888A132AA4E8180F4E45756AE138E645C4B0F0A1135B6EC97CA763E4DB5D42DFCDBF96FE4B7F385E735957CCB717D736DE61B7909672B710797E2D3250F50E793FAE24FF0075B0A32E57332AE199AFB9B210809120517A34FE63F2379B6FA0F33799FC84F36B16376D2D96BBE5DD666D1EEA3963E41DE494C7750B33AB3091259897A9E4BBE43C39C45096CCE1985F21F7B86A7E52B3D65B53D065F3B69BA54CF6F38D4268745D562D32F02B4405D456F0A5C08E82A2448A501AA4A8AD721E14F96CC88E29710DEFBBF5337BEF2CF92BF335AE2FED22D2E7F325C2DBDDDE69DA5DC59797357D43EA92871710EA2DE8D95F2F135920D460048011248C9E7908194363C9864006E45321BDD2FCFF0005BEA369FA12E7CF7E53D43D5B51A3F9974F5B6D79A2650174CBDB6B9668AFC46194C575A65E3BB01CE3A302321C3027F9B21F26B329F0EDB83D3ABC4F55FC9CFF009C69F3AE92A8CDE68FCB67F295BBD8C76F737B15E26957009F516586FD6D91E147AD5E49D24ECE148A1CB1ABD463DEEC38FE1E196C63C27EDFB52FF337FCE314F6BA5E977DF9611FE9FD3AD6C3F46EB9A7CDAD24F26B0F29549AEE296651A7859622ECB1A4F1D056256761CCCB16B8D9F13E1E4B93491901E1D58FB5ED9F90FF009B9E69FCA9D134CFCA1FCDAD7BCCBE54287F47FE5F5EF9974B8F5BF2AEB5A4C51FFA3580BC54B8FAB5CC42A8DE9B491CC811C0472F992330312613F81008F80E75EE71E586503BC7E23A7BDEE03CFBF937E63F3459F94879A74BD13CCB7D6866B08ACEDE4BDB009CA88AF1C023B9B3F559240BF5592221A36E60F4CA4881167D23BEB6FC7BA9B219E575F57E3F1CEDED1079B469D1CFA279DE28BCC5A34692CB73AFDE14BAD3EE248B8FA8BF5D625E194294318B88C7A9F6565461536435718DC3291289EBCC1FD5F165931711E2C7B13D397D8A379E49D23CE57CBE63F276A2F7A9A717B39EE8DE245A944ECA018C5F4664B950118522BC12061C78D10EF1C9A58E63C784D579D1F9F3F81B40CBC1E8C83F57E3DCC3BCC1E5B8AF2DADAC35BB5B5D134CB4D5E0FAF6A1143F5D92DAF268C46AB756EE2390DBDC060C8D6925BFA6FC91A35742730B363E1373AD8807CAFA91D41F2AA67100FD1EFF0078FD9E7CDD15AEBBF9626E7529E65BAF2B7D7ED2DFFC636C249E086CE62E2E3EB4206866B796060AED25C5BB23AF2F5D9DE8ED99012C078A26E1DE3F1B3872C7C5CB9F73DF9B54D53496860F30D835BAC8ABE96AB194789830E43F791D2292ABB8A08988FB31366D86631FA9A29905B4F6F730C77DA7CC9796B700AC37513892371FB5475247CC751E19709090B0A8A863E6C8DC49500B4A49F848EE687B9A61B09AB55868F20AF10A82B1F21426B5353E14C56D60A188BD4460A951B6F514A9AFBE03CD6F653203F2923D9C1E02848524EDDF0F2420DF897ABFF7456921F606955EC4624ECABE60B4040628A4AC4BD7B6E7FCFA60E615033BBA704F48D4FC438D68A3A0AB1F0C6C2697F5544457640A42313F0C9DF6FA7124A11AC928112CFC490ABC81140438E95F61B571290B21565E4F2FA6C179730080C5DF65AB11DBDB142AC16EC19A47712B73353400AEC015F7AD2BBE27CD486AA1647429488052396E6A6A4961E14C1F05A5CB27A859E245A45402952016D9B63E23016437B74DCE14B63E9B54A702EBD642BB5541A6E71A41B5D3714B60609107A6DF0BD0076E9B30DC1A6F5C4295968D1BC324F1CDC94F2465E55AB2D78AF13B80BD69DF2568A56F4FD666668810C856305B615EBF09DFAE020268AE02696299A9CDE301642F41F08346A8EDB6C31E6A85676209963223603930A0FA47CCED8D84D22DD4F38A38E4E2281BA5010052BE27AED5C0C5B8903526462ED45604F46500AEE3DC9C6D20289526E8BB2A170A38302763B95DBA0037EB819100B733CA91AB9AB47CD788524D798F8CFD0462822F929A4878876409C8F08633F09624EE4D7C08C5354B96BB83F12020B72EC7E2D80F03FAF104F25ABDDC0AA45C2487D48D8091E5DC71E209507DBAE10A4A9C5233F032435A8758A322A79292C1CEFDFB571A63DEA60716555E4EB3A3C8118162BCB89652A3E54A9FA308D94EFBBAE91D52490102EB7AA9FB037A500E9520D09AED916542AD0A90BBDD3C85DE35B68C08137DD97902BDC53A0F7A0C930A57665E0648632D0ACC04F036C0050542D0EFB36F80D268D2A9B8818BAA53D50AE8A2A6B551B52A37E47BD71ADD692F92569202EF13A48C578C8C78A3348BF12B9E95E429B6DDF08D914AEE91BBB51FE00392B1FB344145507A6C47DFE3819DD0D9A54F5609C957115B80F298AA04600201AEDBF5DFA8C49A6310149E6E40298D962489559AB55DAA5B9506FB9EBE18024821BB78C9FACDC3B2B4572F1BCB1EDC555450710B422A06F535A64890514BB939B5124A8207B891A38E35A340029A8E20760C46F515EFBE453CD416616905FDC089A6BC69D61824725F9014E3F056A03354814A5149EF811EE6FEBE3EADF57FAC7C5E8D7D5E43D5FB7FDE72E34E5EDD6B878B64D07FFFD4F22F913F34B41D375E8B53BDF26689A4BC924ABFE2BF2D4B2DA25BFADFBA983D8C524B692C53212248960556425580EFA3CD8098ED77DCED74BDA118E4B9C40BE647EA66F179E7C9BE6AFCB0D5FCBC65B5F206B7E587D6EEA2F2FEB135DDDE93AAE857EBF59974CD17EAE92CF0DDDBDF4715CDB4133705F56E4C4FE9CAF12C238250C97DE3ED1FA29965D5432E3B00090B041EA0EF120F783F1DFB98AF95751365A52E9D7D70925ADF34533DBDD5BA4F6E8818AD231C4F0790935E640F8411BE5B90024901D49B028BE76D793589BCC3AF6A0E07A9A86A125CBD2A7ED3128C8C49A0AED46E9F2CCDC7F48A61C991689AE5A69D1C535FFA4896D55558817674956B2A29A28A92015054F125B71919C3B9368BBAF38CF7825934EF2F2476E8AB1BDD5D4A5A590D7E06210000D363BF4CACC6B99DD8D9EBC92ABDFD33ACC0D6B22A5A5939A3DAC55A71AD42D4EC2A454EC0B77C1E200C78C04759E8444768E0FA3731298E4E14E2E828509142083E07634C11989367D5BA7375A3CB2C6EF771412C8209E28A69ED891FE9229526DCA3A80402DD4B0D811419212A2A49561A258DC4F34BA7FA2E45C30B992387504144B5624C8DC9D45576A850B4F8482F4C3C67AAD23E7F2FDBCFA758DDAC8152D55265D45164BA808F46296469AE5159EDD482D45B88EAC2847515027BA0DF442C16625BABA4B5D4239DE5113C52DBAC97059192B04A7D38C22ACA951D4A85156A60487A3795F57D4ADBD4D3E0762918531E953B7EEE4599447EAA43555320D80247614232A9C4150777A4E9FE74D0AD6F63B1BA33DADDCAE556D14066650DC6A24668D4311BF17EDEFB663CB0C998907AE6997104D0ADD453C7223AF250D542518541E240AD476CC726DB06C9DA5C88F8F400F4AF6AEC4EF5F9629BA0819650D2BF2A103664EF5D8E146CAAAC083520D7BA9DFC69BF8623747251A290C6ABB9FB342294FA70148A482F3D369F8153F0FED50EE3AF5ED876A63D527BBB8B78C70734735E6C6BB9076DFBD30F25EAC6EEF502CA021000A87EC69EE70F02836C726BD50FC41A373A1A2D6A0F8D3B6484517DC80BC9635322B106342540A924107BFCF27103A24EE77635701F935090B2741D7DF6AEDF464A946EC6EEF4F122FA80067D884F135D87F1C903B522A8DBD0FF002D2E7CDB2FA5A2F93359FD07F98BE5696EF56FCB6B8B928D6BA9C77603EA9E5BBA85C70952E5E359E057A8F53D48C51A5045598441B3B83CFF005B918A52ADB623F149CFE66693E55F3F791B4EFCCAB7D175AF26DA2EB169E5DF35D9C6BEBFF81B5CB54083EAC972CA1F4C9A49608E0859D5516708AEAC0A98603284F8626C57CC39B3999C448FF62B1B5F306AFA679764F30796FCB7F9C361A05E886CB5717D7FA56AF6D6D0A97786D7598A282EEC0A9FEF6C35059101DE25A5555E2AB02E3F736C60326E46E3ED649E79FCB0D0BF34746F2DDFE93F98971A7C9A6DD5DCF6D1B0D3A69F4CB19D621F527B2D14C88EBEB0FEFEDD1964279390CD4CAB1EA25889D816CFCBC338E03608FC75493C97F903AADB1FD39E66D7351F315A69CE8744874BD462BAD33579DA4FDCD949386511AC74125D2C9E9BA2FEEA8096615E6D7488A1101BB06831095714AFCCF2F7BD2ACFF2F747D2BCBFAF7D6F599752D3353BB8EF7CE3E6892EA336FA94B6B324B0687A634288AB696F205FAC701499CF15E43D2AD31D413BF732D46111908C2C92791E67F57EA467917FE71A3C8FE62D37F496A89AACBA835D3DE192DB51480249393CD4A47130E3E29D065475D93A1FB03B5FE48C11C604C593E67EC652DFF38AFF00935A57993419D356F3569FE61D4BEB1169D143AA3CD0CB047E9FD63EBA896C516DF9488A4CB452CC0035E80EBF31063608F38858F6560D8F09DBAF11FC17A341FF0038F5A969FC4597E695EEA515B2AA5845E6CB5D3B5A9E04DC7A715FB4305EF1E3555579D828A506D944F5B33FCDBEFDC7E9A5FE4FD30E93F9DFDE12DD63F24356D36CFF0048CBE7BD1F4C3A6A7A8750BF8120B384F35094916E55E2AB506CFB9F1C31D7CF9100FC523410E7194BE40A45AAFE477E67ADBCC358D1349F3BE93745EE25B7D36E5ACEE1DCD5A378EE27B665E039914766254F5A64CEB227F8243DD47F52C3460EC6713EF047D9BFD88CBEF2A1B6B16D2759D33CE7E4CB7BEB56B47D5228AF66884400FDCAEA9E5FBF6B9856B555135B328A9E5C46563538AEF8803E62BEFD9A72F67E4ADA225FD520FD877601E61B3B4B98127B8D6F51B1F397966CADEDB40F33F9A6E6EA3B8B44F58CA5353F306988974F14A92351AEED8C48C15964505AB958A7207881F49E75CBE5DEEBB3E8C98D4872EFE8F2793CDBE76F265FCEFF0098DE4CF31F976EEEDCDF5979C7CAB7907A17CB3233A4D35FE9024B2BE848A15FAE2B72D8075EDB0963C597E9201F314EA787269F7E63E6F5BD03F3E6D6DED7D6B7BA7F3E794FCD4D058DD6A5ABCF6915934FC948D3AEECDEDDE18A4AB8ADBBCDC64DA58411F1E62E4D1CE3E54DB1D6C647E97AD7E5DEB1A16A31E9B65A2F92ADFF002D750BDF31CD71E79D175BB3FA9C8750B28A60EAFAB6931DC1314E250903BC246EC393C88434258E6242390FA7BF7F936C734260988DC74FD89DA7E6A7E4CCFAA6BFA379AECA6FC94D7FC836F6307981E4F324F3D9DA7D7A7686D6692FBEADC4C773F0873731DB85053D465126F97F97C33A1015DD47F66EC3C4CB28932DC477E5DFD5EA569E56D4898358F2279D879C2D5CFD66C934B327D7974E0811961B8D32E2E0DD5BABBF2531C92C2BB0F84FC06A3A29E3378E567EDFB39FDC88EA212DA439FE3F1D532D27CE373A5DFDDC1E69D3F4FD4DA6F4656BFD3443C6E2E2D1A95BC855E3843272A3B8602B412C3131A1A2194E39FEF403CB9778E44FE96D38B8A378EFE3E7DDF8F8B264B4B2D666F4F41D223B2B2BB8785DC7A7EB535ADBF056E6AA6CECAF99196A49E1E9953D08236CCE26394118C0DC77FE805C1E19C398E488D1BC83A9796EEED6DF4511C5A0CF2C716A1A51B7BCF52D6148E91CB15CCB2C6CF0823D37B600280C5D182F38DA38F479200106F96DFB6C364A78F25D8A3D0F7FEDF37B25AE89A4437F35FD9697696D79768C97F73046B019C0208695630AAC411F688E5DAB4CDD8C5106C016E103DE992857223208023EAA76E5D284E4F6085B1712C07160C89F12A0F0A83527C4624A40521C6350C28C8878B05144E47AEDEC710150D19996E0472A95210091280000EC4D7B6C71E8853914AC8E8A7E134610F6091F893FA86026D207556F858968948558C23213B8E66A69D695F6C422D4163019A3E526DDFA3160680124508A60BDD9008752BCD40431822429003F08E0C09FA77EA311BA2915CE57968F5ACCC42B1A83F0D40E5EDB60E6C86C1B8E36697E3556A8AABF203D227B93DC9C4062BA392448992253C828425C82FCC53F6F71527AE36901D58A6E6225780B92797ED115A0049AD3C7243642A91207E0AE4BCBB35C6D56702A6BC6836F7C046EC82C4460F0BC8DEAA45C0B29A9EE54D5BF66A49C3D18955AC3392B09529552E94E352050FBF5C16A130BBB7B78228ADAD904DC618CC8BB82243BB007AEC0E1A421B9FC48B0A8E7C6A6A6A401D7E9A646E99005419EB295662ACA0B053F112A7A6DDCEFD30DB158FE9158DD42EE11142B1208277AFD3829237E4A32BC6A1E27E28A68030AF2343BD77EA0D3124A40472C13C11AD5D78CE8C62A1A96A1F9F51BE2A0755A8C5A57E2AA7A7306BB507C35AD37EF813C42D49A46E3048493D4FA4766AD3AE25406B80E4AF223CA09E0620684577A93DB7EBEF8F24F35495631EB99AB541EAB13BA71406A76EFED8B0E654A6550E9347598B2C6D2934D8B5695153B01B6DDF0AF35B3926779273C63452D22F51CABB03C6B5E237DBBE049B0295D5ADDA09EFA694C1323247143182CEEB5AF4AFC002EFBEF538EEA39A05E4310666B659DC45F0C429C28E39A0E42A2A7F6B7C3451B142D0DB47CE523D78A7569CAD78EDD0283D45081B75C7921561BB127A5193E9470B30B829BB3063550D5F1A8F7AE3C492295102D6586ADC7886735E476DB839E84D3257481BB6E229195EE237785583C76CA6858A0F84127E7F7644B302C28C281DE35575589A5E4CDB1078B1248A50751B1C50429413F3D34D9BC86DC5E4DEB34B1B7C6C391F814D6953B57B038100587464C8AD1CC07EF2222D515EACECC020E7EE0EFF4E2521152075F4A465550A4C4B0AAF232C8C54296DE8AA82A49FBFA6214F2429924FABA40D7A2482CA3939BAB7D90840216BD7E2AD70F32C4D74424B13016F72E8637F490DC7A66A5550AF0A006BC549DFAEDB5713BA81684A8FABF2A4DC7FBDA715E7F58E7CF972FB54FE1BD2B82995ECFFFD5F9F6F77A74A6196F608833451C1749169E009647E51CC55650590B100F0E553BB36DB9D6007DEA4A95CC5A7709351B56BEA7A61259ADE248A20EAA5239578B52329C496041AA8DA806209E4A0AA43FA55F50D2AD25D4A7F4E6B9559218A60ECD00412F005C9342CD407971A11D0E1D882A9FD8E8363AD5CEA573A96AB7B35BC7EA4D71A7FF0075122034F8684920506C4E624F3CA1406CCE3C06FC9463F2F68CD322CD66D6B6C4FEEEE95CB4919E8091C48A53A8DF207532BD9AA39A32D88A1DECEF47F24A5817D42DA3835EB0A30B8B7898091878D1790257A9A6F4CA279A47C9B440C47147D43B951742D3E4265021B48669088A1E7C96AC4D115CEE7A6567348970788C8ED1B46A69221529122812B52A7715D86DE140332F1ED172E31A09A4560FB7EED42B568284D77E9E3F764BAB3BE4E9FCBD6B755F52D636D871752633F78DCE48644514B6E741D4ADE55B8B755BB789498A4E724332CBC4AABB4D132B48555A8049C97A74A0A4E39023858C6A715D2DD5BC53BEA9783D236FC249667B7556EB3C81044D24AD52A69407F6EBB93304303CD0D6FA449A7082EF4FBB8A0BF847A7147C9232AE87E0A0E6792953B863400D7E2386C1E69B45EA725C6AB36996C628AE2E219E222F5010A381A17593FBC46AD4540DF7EA0E408110531DCBE86D1EF9D9544956A014DB6208A6C450E60F036995339B494CB562E594814EBF2A0EE0E3CB65F355562CCDB75F7F1E9EF83709BDD1146642AB53E1DF73DF02F36BD0902900B7EB3D6BD7DA98DAA532AFC4FC9470078AC67A1DABFC71D8F240D987EB96F3F2478CFC0B5E7B9040EFBF864B928F262132492A14DF88F01BF5F0C374AA51594A25926A80C48EDD09ED5FA7C325295850A7FA16662FEAF20A5B96EBE3B6DFD063C6545293E8926C5D4EE7AF8EDDC0E9FED60E35ABDFAA0A5D05D393344C4B0A529B13D88FE99213056884926D26FE1B8B6BFB066B4D434FB949EC6ED3E2F42E216592272B51C802054771B6112E6B5C9EFDA5F9EA4D5EC75AB4BC6D3575AD65E0BAD434BF311F52C351B851225C5BDD4320884D1CB6D3343F588A63292B1493C1EB27D61F1278C8363FB1CBC39C554B6F3EF4D1BCA1F95BA9EAF61A6BF99F47F2CEA17D146BA6AE9BE7DB8B0D72194557EAE9A82DA496F7421E5C21F59E32EA427A6A1142806711745B4641297A643ED0CCDBC87A8F93F5D682593CE7E69E75BAB2D61744D327BEB290C64893FC472FD4A340C8CC92346F39E24AA8AE57C4242E9D8C35193F880AF7B50FE66DCE81AB87D5AEC5BCF0148354B083EAD37E94E5CD8CB73A69F52268023F00B7105BCC76612549395CC46B773610F1C6DF3EEF8A697FE6BFCB8F37DD797EC759D1A169AED1E6D0D099B4DA3DA3F030C72C2F1DB47C1187159A2947401D886A56623879ECDB1D34B11E206CF7D5FED7B9F952FED3495B3D3F4BD3B5299EE98816F3C56E48E476A4D14BE9CB53F08E2AA4F866288F09D8B993CFC43F782ABAFE397DACF74CD734FBBF375BE8D3796AF5754834D5BE875E9E084DB5BC33BB04812769048CD27A45888D59168BCD8315182411478098C853D2248639E85A4806D52A28D4DF6AD69BE090E2EE6989AEF611E6D7F25DA6ABE5CF2FF9CED97D5D525FD29A2BDC5BF0B381ACDD635B9B8BB668D23024902AD49A93D282A231C52E2B1D3B9BE190889902056C6C8F901D5944169637968ADA2DD5ACFA759A2A249A55D24C9005FB356B7760A001DCE5792347B98E3CBC5BDDAD918C1672193514B24895BD3BABC756B72D4D8C865236069505857C72BDF86AFF004B2E72E5692685E59D6FF435B43F9857DA279AFCCD6F2CFCB57B2D34E99008A4A0589600F285A0A82C3ED0A753526C30077A03F1E4B3CA2FD160799B7917E69E83FF0038EFF971A3E9AFE7484F92E2D6AEA46D234FF2BBDFC575F5AE23D6B9B68B4C684DBD362E470492B49164E999FA4D26A331BC5763CEC7DB4EB759A8C38C0F140DF96DFA9F0979B342FCBCB0F31C527E5CFE69E9FF009BD379FF0051B6D3EEFCA92796E6F2DEB56F07A8AD12B6BD17E8BB54963945639678B9AF262CCA9CF96EF4FA5D4C856402205EE0FF00BDFD20BA0D564D39378C926F91AAFF004DB11F11F1667FF38B7E64B4FF0095B33F977C95E46B75F397E61D9DF69573A7F993565D4F48D5E0854EA37EF26A16F6D6F7F61286B324CC63BE462472F85832D93C538CC0353121D4538E250DC7D24776EFD18D6FCD3A5794E1D074FF003A689A8FE5FD8BC44C5A92A5AEA1E590F230B736C2EDE1FA87326501565B783D4A91C11BE3CAB34E382898988BF23F6723F2723146792C44DFBAC31CD6BF26BCAF7B6F7FE72F26FE57E8E3CC5A39B84BCF2B58B49E57B1D565B560F341A869D6AC56D6F624F58DBDE5BB878DD9598CB13BA9BA238CF1088D8FB8F98AE87CEFE6D32342A46EFE3F6F566BE55F28F97B595B5F32F90BF337CD9ABE83A9E9765AAF95354D47571E618E04BF5768CC7737464B99C34002B7AB71230144594A7C3964F4E334EC488207DBE6C71E5E08D50FB7F0138D4F4ABDB4BEB43AFE8BA6EBF0165874EF34D85940B79EA30004375A7CCAD0B348790431BAB31A2AB97214D593098C871C44BFA400BF886D84EC1E124797ED661A769F65A794D4AC6CC4505EA09659748AB5BDD2328F4A692D587A8A40E852BE06B97C31C607880F975F7B59265B1FB59532B3055751096504337500D4ED4FBB7CCA1C9A146200C8855A88C40763FB23A83F4D71528A9FD35859D242AA5C968C8F8DD4015A7DF898A7C90056DD0851B07ABA2AFD90C7615F7FD589DD5629E531133D639092AA9BB6C3B93D81EB895AA536A05A9FB2CC41F86B57E9407E5914D6CD286810C8CA1E663FBB2ADB5000DB81DC8FBB08282BECE2B89D26860865B8955C348D1A33A9A824B1201DC7618F22AE8C2004889A9C0FA5B82411B103E7D7004C97165765695499032B283514AD684EFB74AE4ACA392A064A1450CF25C2B461A300952CBF68D7A9006D80DF552D6E5784343C96B1B815DDA9CCB6DB9C09214DCC914CE123725880035689DA95FF003A64800505511D5578CA6AB1A947702B4DFF001A53015E6A8B04DB188975F5392A39FB669B7102A36AF7386FC91B2C0C606A125DA49002A00F8428356AF53BE0B654BE13289E60D2F060A5848DC8B135269B75AD69865E480167AB2AB42AA40AC8C4826A283620EDF76469254E355F8A555A4684885FAB17FB551F4F53E23147453726201954B06A351480C48AD1BC3EFC522D551630F17AACB20E440E83E2620D29D3B1C6924EDBAADC30F48006BE902529FB0DCBAD3FCAE9895054A2B7484C6AA249150EE1482CD5F88D49EC37A62579074C5A489258C5080002760795294F1A0C14A17B1B8F5252B37A285150A29078861E34F727AE1E48BEAB0031C358D1D92300FC3BD5586D5AF89A7CF02F3B50059A331448C415A085800C65A558D7BEF51ED8516A6AAD1858C3701213EBC89D029A314E5D6A452B8D5279AAA957B88515F8DC07318A2FEED55816A9E9BD3C7B63D51650ED3A3D6D235E707AA794520359238C8151E228C2B879A905077854342A25570FC85CB528B2AD402054F5F1F0C04DA784AC92352BE8B976174A5248E224B155F89400082429A1E5D714F24743CA2570242798068DC6945A034029B10695C6D8816854597EAD6F044FC5103F2B8620F2F898A16DFECF1A938D5F2532A74B299F87EE96016B7522A002847D5D8026BD3653D08FA312BE4E9D5E6BA8790560BC9E3589490DCF6223DFE1AF88DA9849B14A079B690B916972C8EB1A1FDF46281A9C7E1614F888AB914269B5723CD4EDCD1D2CB1B4E237691D6547965B81B86F4405249E8578D074C53C5D52D444586082706660A81515A9F0024A950BB1D8807DBC712805DC82FACA93080C4A7D6AA0E4015277AFF2ED402BB76C79A4EC92D57D4FEF57EA9CFD1E7C1F97F27ADE9F5E3CF7A57EC77AE1B5DEDFFFD6F0FF00E60792F55FCB8D764D275AD2A6B29ECE74B6BA83D4B395ADE55F8943CB68D3C444E855D4827E061F65B61AAC72E31B209174952DD587EEEEEDEDADE5952E2791279566BA781668CA708D9F8A5B96651B287F83E11F131C4835CD2AF3D949A55D69B771C724B6D6EDE908C2A491B5382034504041C96887E202BC9462083B22E8B25BBFAB5B7D5A5B1F50497D6EF3BDC88C05B8B72424BCD54B2A30A82457C73132026ED651F4931E639AB42AB2460506E2BC0F4AF7AE631F4970CB2ED12E67D3E395AD5BEAAF3491A310836280B77A8FEA32B90B6CC792701717A0F992C2CB5EF2BE8735DFD593534BE496DA0408A6550C5671C10D78F1018F60D4F1C8E0FAB676B8735444A85D21D2D286A37653435F9569B666F100D1CD1D1D81614E0BBD694277A6FD46249BDB928AEBCD5058BB13C14D48A508141F4D47418DEC8037565B32BC8342C2B408287C3A1F7C00F7254FF46432D07A61B8D49665F87E471E2281CD4A6D2108A345CC30AA81B8A1EDDF0896CC48747A04327A6E62155DE325456BEC7E79194A8DB3036A4EAD2C1620BF08A1FB069DBC476EF809BE4802F9B2381590318DC3053404FDE4F438C4A0F923A10D4269C89D96A3E2AFBF4191A17E4CACA3A3942855A8DCD08F103C3E58D5F45E5C917EAA900F252773BFBF7C149439F468D51DAA6BD29FD063455856BD5726345E61856A0569BF6186C12C0EEC56DB4E95E434566321A500A8AFF61F7C32355491B866769A0A7A481A919A902ABED534DF7CAF9B3AA45DDC1676569757D721120B289E6B89A809091A9269BF5A76C9C60666873637437609AD79A62D0D3CBDACCF636D79E51D6E6B8B492F6CE42F750CF6B1412CD480D1C88BEB31870C803558C45B89A6D327674783D3CD809D96482EAC670A205B7B9F50551D47DA573B353AD0D7BE6AE58CC79B6096EAB3E8F2C68CC74C44AAFDB28402053A9351B647E149258E5DDA5B3D524B58D91FE268DE8694077C90979A2987CFE54F2CDDC72C2342B4804C496112086A6A7E2A2D01C9F1CA3D5400F32D5BF2F0AC4F1E8D77710400B32C10DCCB1A78FC4A8E147BD45326328EA37F7338F96CC3F47F320F23CC9A3EB76323DB3C87EAB7D2DD1B78450D444D50406F03D298E5D278DEA89F83B7D0F6B4700E198BF37D2FE4BFCCEF2922C40A797BD391C4AB1CFE6BB3B755703ED56E48E07DF6CD4E4ECECDEF7790EDBD3D6DC2F7ED2FF36342BA8166B1B0F2C3DB08C4B6F76BE71B00ECA9B99622914BCC2B29F88786631D1487BFED72BF94E1217B70FD9F37A12FE7BDD491EAD349A3F93AEA198CD73673C9E638E4823D4A3883492CC56C78AA38F8E6A3890722548EF2182F62E07A2204A12AF3F24A3CCBFF00396C34DF27F9A350D3E4FCB0B7D42D74A33689169BE748B53D44DC300A16D2D64D33D1B896A18C2ACE0578F2634CBB0F67994C020F0D8BD9AF36B463C64F89132AB1B55F73E7BF335F7E5EF99ACA6F367F8975CB8BFF00ABADC6AD71E68692EA790086397D595E7F54A9E328148E42B5AF1419DA434D1C62A228793C7E4CD2C86E7B9789DC79EEEBC93ADC771E5CBB1E5CD634F99506B5A6CF25B5D42ECA5BED5BF1DF88A90DC853A8ED95E6C1098E19807DEB8F2CB1EF1243EF7F26FE7AF917F34BF277CAF1FE78F91355F345BEACEFFA4B5082D2D5ED2FE4B4BB65B59E5B4B4BD8A55908452EBE8706219802A738FD568FC3CC44390E5CFEF7B1D0EB64718958E2EA2C7DC5EFFA3FE79FE4B5E5B59585AF9CEDF46F4628EDED74FD4D24D39D23891523441791C0B44501400C7A53304E19446F13F0A2E50C8246C9AB41FE72FE4DE8BF9FBE5BD3E2D3FCC5A7FAF62C5AC9E4E1756170D4E2A04F1190DB4DB95E4CB2C4C0D2488D11D361D9DAFF00CACCD7295583B72E441E87EC2E16B7463511A3771E447317E5FC43E47B9F943E73F296ABE5DD53CDFA0EAA915C4FE52BF834FD56732423D56BE4696D8ADBBC864904B1A966F4D5D53F6D802A5BB68648CA31239485878DC9865094A27F84D1FD8F48FC949FF313CB7AF45E62F227E5C9FCC4D3BCAD716B379B74C58D1BEA7729FE91697566C9CAEA1BB814931C96F13FC25D1D1D58AE697B56783D31C93309738C80269DC765E1CF2129638894761289205FCFF1F1A7E9A7E517FCE4DF90FF0036E2D534FF0046EB48F35E9B65716BE60F2C5EA456DAD58C1330B7B874002C72A722158A7A7229E3CE25F86B8A75D3C0478D5389BE19C7AF7EDDFEEA6FFE4E1941F081810471465D3F4D7773F7BDB340F2F68BA66950DB791F5096D2DAC57FDE59A79A7414EBEBC570CCF57FDB622BE07327063C5287EE255F1FBC170F39CB19FEFA3F8F223665126956D76CD35A0FA95F98D7EAD7F608A8D0955088A8389468D4003D365E046DC7333C3157C8B8865D39844DCE8F712E9AF06B616282EE0FABEA77920FA8C4E19472963F55CFA4037C4A3912A6942695C998D8A2C44A8DB0497CF7F975E4EB092DBCC5F9C3E58924825795AEAF756D36198991B93AADBDA48ED42DC9A8176269E195E3C462289B4CF24646F93CFEF3FE7293FE71EAD24027FCD0B7923327EF6EA0D2F599E0DEBB078EC4827C2997530E301BB7FF009CAEFF009C6E79457F33E0899C2AAB1D235951B569563634FA4E34BC6110BFF3939F901346D729F9A5652A13C5C2E9BABD12A0FDA22C8D06D8F095E30DDCFF00CE4A7FCE3DDB470DC1FCD2B17896A948AC7546A4800E5F0A5996FDA1B914C631211C612BFF00A1A5FF009C7A8CB14FCCC89BA2C6C348D5F8F81A7FA16D407070165E25041DFF00FCE587FCE3E58595E5CC5E7F935492D91A58F4EB4D2354FAC4E5054470FAF6D0C7CD8F4E6EABE2D8380D2F8A1844BFF39ADF93F6B35DFA9A0F9C2E160A2A9FAA69E81C9150EAED7D5A329041A771B64BC32189CB7D1F14FE6C7E73F997F316EB57D4BCFF00AE695E4FF2FF00996382C7F26FCB504D7F6D7BA1DC35E465B5992785A32B0B47C9679DC3165158D4AA8197888AE4C09B2FD1DFF9C73FCE6B7FCF4FCAEB5F355C90DE6AF2D5FBF973CFB15BC6D1C0DAAD9C4920BC81771C2F2DE58A75504F12EC8775CC7980376C812F7B102424B45189249EA23250902A7A93E029D7223CDB2D7B21A105838F843274A100D4D476AF6C6AD00A2D1DE3086387646F438291F0D078FBF5DB0268A04BBF12817D44132B2D5B7353F115EE7DFC30DD27A5AE89FF0078E426CE1BD43B7C4A1813403A64AAD85D2AB23461A749189E23D361BF0353D87B7DD91F7A4A8AA96F5249376FB4A9C790A8D8F4A6D83AA6BAB6B2B99244A951F0555854EEC390DBDB028D9B6901704AB48B1280F22A9E2DCAA4D3DA83A628E6B5016803AB2D60A855EDC58D54283EDDCF7C369AB2A7399F8470A441D09058D683E0F8801E26A3A601693CD4D104B247CC5016631EDBB12294DFA508EB85145309A312A02C00919AA5BBD050EE3F5E02CCA0AE5DE264B78DD5397C2A79004AD686B5F9F4EE3160792AFA619048CC2378412AC9B9F72078529B62C90CF591A45F53832F26576AA212478B57E5884144730269031545601142924295F8AA5476240C3BD31D820E0964F81915525503D0949D984C2B20A7634351F7605A51370EDC648E45F4636711A95F84D45147DE2830F0D24AF2617A46C2B246A4C8B4D94F1EA4EC4D3DB14105502B40D02730C88634B67415A823A313F89C696B643C8B199238DA301101758C8E2A58962C4375000EFF004624263B371C42213123F7A1159C8DCB2D37535E85A9434C79A09DED609E4284A9458DE2758E0E3F10201038923DCF5A7C86048EF5B22954B74B6B3F549DAAC68A4272E24D2943B01E18A3CD6C71C46052B3A99A5E73CCD423809581E2177A020127B93BD31290DB33CE932C4BEA6C62011B91591A8101EE052B5F6F9E498A8C970D7ADF5E8C2C924E7F793290ABC500556A9EC40E83AEC7B645203AE258EE9A10470372EB18756F48C6AD2A1E14A91B006BE35DBAE3C9217C720668A8AA84C0ED155429585E4055A94EA3E11F2C22884125089CA4E2A8A6208CCF5B8215A4A86AC9DCD154D361FAB032B417A517D8F48F1E1CBED37DBE3CF873AF5AFBF5DB15BEAFFFD7F26EB5AECFADEA3ABEB3E73BB6BFD475E821B8F30EB17491C62E2581974EF5EEEF205586599E0F4C8E71A484857672DC8AE8C03B08F45039FE39BC9755F2EDEF972E56DDE76D4AC1E364B5B999384C811B895950D429E47661F68781399319898BEA8BE8CA740D462D434F934FB9F4197D59DA76959AC9BD4684C2851406173CF881CA40BB508625464324483C4B5B330F27C497163A869E434D73A74BF5F820500448934319943B80547112900120B29EF4CA351BC6DB31120FBF64CACFCBA0EA62082E7D28C0E661981213976E4BD683B660CA7E9E493A2123B1A675789FE1FD19A5B2612CB3BA9BBB8295255CD032A8AFD91D2BF3CAA11E23BB7F83E162318F34169B346C4CC0000A03C8EFB56BB9EB5DB2FC58C82E1628F0DD86656A14A233500A331524D4F603C065863669BAE91C538BA8552A09076F1DBA53BE11BDA37B4C152A3714AFD943B509E83223B927BD142156A1DC8EABDBDFAF7C8D10A4AE118E439151C41A1A50B786F4DB10AB0DBA576404A9A1DFC7B803A56B892903A2E58A8BFE48D857D850EFDA95C32BB514AF1C341BA8F00C2A3C3F0C8D50B4A3563A39A6D5DF61DC57C77C20D0F35E4513128534A12C6A48EA3A7BFCF251E7CF6457CD6CAC15B8AFC3B9E246FD3C70EEA42AABB372A9FB43E2036DBAD7C062682F3530CA01AEC13615AF63E1DEB83C9796E974DE933B070A0D4B5548E9EFDF7C918DF262247B945A5B78872210006A474FA00F9FBE55C1B32BB445C6BF6917148987103B82C6A7C29E1928C0A09E8934BA9C1A9B45A7DC42B3DA5F48B6F3432EC2446FB40D287E23B6C732B4B02320F7B09CADE657BE46B0B1BC82E6DE54537E863951A3123848CD1504877A0076AE744435090453DB41689A4D94917D661B7B8F44B4A7948CA63928ACDD48534A0ED41E19196305026494A356616BA8B8B36B8B2431A1FF0045BA9A202ABBEC8E3739096289E619D942AEA3A92A844D5EFD11770AF289878F4955EB94CB498CF44F1AAA6B9AB466AB791DC0A6FEB5B46DB7BF0E194CBB3F19F265C6584799BCF96BA22E996F7F6725C5DEA96F2DE2C96EC91C4161708EAC92357B82054E55974175C3B77B28E5E9CD33F31F936EEFEDEE6DB506D3E78C2F231B31901F843AD09514DB7AD70C34328F229E31D5EED17FCE2FFE56E99A1E997A3421AB43A969F6D7A669F51BE3381730ACB4E08D14600E7B055A7B64C0975293182AC5E72D17CB8B279521F298167A1D9416BA0FD51EDEC5E92B7A924D793245F5A9C80BC624132286E4ED56A0CD71ECC9E591946557F3728EAC1888C8581CBBBE49BF983F35EE7CC7A2EABA24FA0DD259DFD9368F6F623587B7B2B7D2A689A1BCB78ADED21882CB73191019C7C6B134A437AAE19250EC69C660F1726235A0C4F10BBFBBB83E77D2BF2B350F33EA3A847A86A7A7DE3DC430A9B3B4D3E2B6B3D2EDA38CDB43FA3ADF937A62DD0AC6819C8E34AFC55276434D206C9DBED69C9963937ADFEC1EE466B3E58D5FCA9A33794752D327D526B8B5629AF595CA986EEDF91450F148E258DBE0008A1A506E56999D13B38B27846B7A079DEFFF00485CCBA5CD24F7323CD2DD49730C6A84295E6687A052760329940DB3B7A6F942F6D344D1574FD2A58A1D7A5D3BD1B8D5DCCB245EBD5424BE872038200689B72342C76A6604B4C724EEF6EE66651AE5489D334FF325841C7FE5626A577231E53ADC0F52DE43BB7C76CD58BED1D8D2A3F9B0CB41C47701B316A678BE99165DE5FF0033F98BCA1769A968FE618F4BBB8A457F5B4D8E5B4129028CB344AE5181A0FB2169F3A1CC5CBD8F19EC5D8E2ED99C47A85BDDEDE57FCCAF28E99E73F384963AF6ABAACD7536B45ACA3406F2D6E26B7692134E68AEA3970E4002C68299978B4FE0C44013E915F070F36A4E6249A166DE58DE66D4FF002DBCD90EB7F97FABEA5E44BFBEB6961BB92D2613417724322C89F58B4B9135BCB1D1C86475AD0F24653D49C18F50387244480F9FC1863CF3C06E06BEEF8BDEB4FF00CF90DA9DC79F20FCB8F27C3F98BE64D26D34FF003579E921BA173A9C56DC0C6B242AE9C501451C4CACD45542E515546AFF00D0E8AE13925C3760777E3DCED47B41303680BFC795FDB4BEEBFE722BF346471258EB361A13AFF752E95A6409220EE125BA6BA75AF700D0F8666E0EC5C388F10322479FEA713376C66CA38488807A55FDEC6B57FCEFFCE0D7D1E1D5FF0033FCD53DB3ED25BC1A9369F1D07629A72DA800E6CC620EAEFBDE65A8BC9ABC9EBEADCB5A9EB513EA92CB7EFF00F0774F29392F0C2D20522FABD45A4505A01BAFA31A27FC440C3C348291F9816F26D2AE03CF237031B0527C180D8FC8E48442DF479C3595C74F55F8F4DC9FEB91E1A4928DB68EE3D08D9E462CD10E641352683954F864B8420A253EB465F404E784DFBC2A4935658DD2B5AF83EFF46262A0A083DC1A7C4482031DF6C682F3468B7BDF45A7752625157653BFB9A7D391A5BA462C6D73696BF057FD0C47257A3342CF1F2F9F145193002DDA5175A325E4AD34AAF35C089522B93216631C628895A93451B01D00C57DCFD18FF9F755D3D97FCAEBF2AA516D6EBFC39E69B4895A8AB2CC9756172586D42C522A91E198BA9141B309B2FD2395FF007AAFC1F83C66328ADB9EC7A78F61940A6D3CD7B3298E2458829041DE81A9EE7C7126D46CDCD572442C2841F4C77040EA7C00C0A396EBE585238629607241FDD22D0027881C9946FB13B7BE10AABCAD4BC8DC4B3989999E945E6C76A77DA9D7101174107FBC8D594D0D450F124A80C074006E7DFBE36A436655280C9298963F824761D3A9A83EE30120A90434139465C3AAC25C51C1A8A8A953B7893534C24279A9D5EE1792C9C7D5291C72ECA5491560D51D4E3D10365C23243B004B23516314A1DCD7DB6C8A6DB58562444295E49B16340A59AA40EDB0DF0AF22E865A952EA1A315A907C0ED41D2B5EB80B2E8E9EE1D024910A3D7E25AD1687B1A75C424A19783894485C74E555A0A3823B834624F6C4AEEAA24E2CB2350467660A0B3514787CC76C6D154141D0D04B28F504C77858716445E95F115A9FEDC45531164AC8D19E4F57D2902B874415356D87C47B536C368A444F3CB25A8E11077A9505286AC6859C0F0A6DBE21692E1137EFCC9CA10037A928EA39027805DF7039107FA622CA9B0DC8F172F56252235855EDE291AA54B6C0BD7BD00A8EB83A324746EE55BD689D5F898ED47C24357666A0AF1A15A8AE4AD8D143293EA5C44B2FA8D1888469F6950105DC13DFE2FC77C8D323CF777A438ABACAE6795D636917A32747D86DB9FA40F6C51C8AC911A27E2555CF124390792AB35093D8D48A74C7A23ADA0EF0389EDAD622523B5B8596E8A3712D04311E66A6BCBE261B77237E98949EF558112DA000491C7320470F1A55144EFC213C37E4140A75DC0C41415F1AAABC90C7CE49156B184207351200DC88E8C695A53C474C69237D90AB1C94F4E25FABC1007172107112C4E09554142C054D0F4FBB1B1C9344B692505C5BBAF2B891394B2A803846BBAA81D0312474186E912538AE5034D3011BDBCDC0AF67ACAFCAACBFB25437D3D7015AB0A1796E2E5EE2D6074BB982C56C953CDB83296703A539F735A0037C53B2A7A31FABF56F5D3D4AFA94E3FB8E74A7F2FD8E5B72A52BBF4C1E48E8FFFD0F24E9B66D3B5A9B0B7F521B8658752D22F87A4E96D3892D5945B92DCD9DA3415B9529D583020668CCAB63B7B990E48558AD353B7854DB7D5A7FAB0BABDD2EF23092446ED5B989DAAEB5945BBD44678822A00A0C1661D516F2FD5226F266AB6BAAE9324B1E9F15F2C3771127D65567E32412903E34F86A848A1037CCCC678C6E825EBDA7EA16FA7D858CC970A05EBAA58DECD224AFB218D905BDB74A855E5562B5341C45466318924C4F732B019135FDCA49AAEB304459E6B385D64D9B8348D462476A6E76DB30243902E44B2118C91CD1DA04FAB5D4D1DAEA4BF5BB6B96492CEE24652406A8666200DB89E87226B984E8CCC8B9EE9AD845655912D507D56495C5BB03BFA5C8F015EFB6D974626ADA05726616D1C655B83541FB429B8236A53B61049356A7609AC69C40201278D011BD789EDF2C1C3E4A4EC8E8CA1207F7608DD7634F635FEB91AA55750630A89B56954EC76A8EB88472D8221581003151C4541F0A6C301FB92AA0235483F10156753B74D87CFE78DEC96843B30E355350E7B6DE23C4530594FB95E00057DDA94603AF5EBB77C2A8B3471C48A00770DD0A9D8D7E78479292DAA0008E05456ACC4D6A37DCFCBB63B928539220006A10C28AEF5247D3F7F5C6E92E76E08ED5A2D000DD854F4FE1922431AB4AEE6E24A3708A8DF66BC7C078F7C8D6C8E2DD227FAC3AB323922957277029D3E9AF6C9C77456D6816B6BB907C008E46A36D8B1E9CA8061131D5402A90E85712BA511DC35388A0069F3AE272288DA3AF346BBB0B71A87DA5D32582EA763D782C8A1A9E1B1ED96E972039623CD91C66983EA1AC2A9B277D833CCAA548A8E2F41BE74C4B8623B148B53D5D1E5B2A518C5768C597B928E0D3E939026D94056EC6753D5D24BE776A92234EBD853232671496E35C110E0A6AE40DC01B786F82D34BD75A16F0FA920E7D3803D47D03092BE6F0CFCCED416E2E3419F7E3F52BD504761CE334A602541DDF48EA1E624312B332CAAF6B017743FB46DD01AD3DB276C40E6FA374ED67565D02CAFF55FCCA11E81ADF93B4DB7F2BE871797D9EEF46BE6D3A28BD5F584862B9586647903350CB50AC140CC29FA4D97246FC9F346B9ADDED86B9676DAB6B50F987555D2E0FAF6AF6F64D611CCCB34CA9FB87776E5C7766DAA76A6D533D3E4046DDED7923BD266BE6484D5CD371E14A1E95A8CCAB6B2196F913CD091EBB73C1947ABA7CA8E4F6024898935F0A5701DD40A6B54D121F38CBFE37F34EA93CB64F13AE95A6C775259DBD8D8299122A71655123BFEF19E4E7C89E21400B80027DCBC9F3EEB9A0E8A92AFD4BCC1AB4D028659AFA2BC91C93BF163192A8695DC528D4ED95CCD32A497CAF7D269BADEAB6B7EEB3B24112C17080AA48BCC912A03B80C0F4EDB8C1020297A58D76D828F841DFAEC6B5F6CB6D0421750D6E01001E980790A77FC70A06CF49FCBDD4355B9D2BCADACDBF9B6FF004AF2EF96F56D55759F26416B0CD6BAAACD245286694CD1B23EE636E4AE02EE9C5C9398F939B31C9E7DE68BBBAD26565BAD7F50F31DB5E6B535CE90FA8C31473D95BCA92BC9034B1BBFA82A502ECA02AECB5270639EEB289E69DE99AF84B4B51B15094506A052A76AED9942886BEA9B0F31803603A01C8FF41D70D049046C17C5ADCB27268E332F1FB4505428FA3615C765BEF58DE6165045429068001D3DB146EA0DAFF5A36D5D87B63B21037FADF2B2B95F501511EE7AED514F9E025930F1AB2D547207714AF8D7C32376957B4D43D4B7B727BAB03DBF68ED920504128B8B5022E2D0C66AC5C0AEDF64B28A8AEDD32324808486E510292BC8014DFA6D8DA00460D4C142762CC3B6C7A7B6367AA696D9EA2C2CED406DBFD26BB753EB38A7E38A362B1355600AAEE4A104FF004F7C36B41F76FF00CFBEAEE57FCCEFCC88A46F491BF2F6D18B0FF23594553D81FB4731B36E3F1DED98FEA7EAC18C12780F45578FA609A54F4076398D45B4AC62DC99B89282A101DC9247CFA0F1C636943FC45E2D9048C3944A47DA037DC7618834A775668995BD577358E3E4A362AA1BF0AF8530816922BDED990CDC59502AF11420D5A9DE86941845315296501488D82713BB11CA9C40AB0AF514E983CD5468668E360BC0C84B2C8DBF201A83E13E2A0D6BF3C24F45A44B82CFF5549BD32DBC694E3D81343BF419129AB2B782FDAF4C1821AB2D49279F4A85F023AE281DCBA1263452D200CBBC694DFE2EDEE70245F35F76C9295400B820230515A0EA765D8138866A641864489953838E68F5A9048DC7B57A0C589D96D47C7C0D660802A15041E5D0D09E94AFD38A6E82D9BD37B853BAD18A040766E2A01EE06C308EF6265B215A02BE8056321E4C0212472A500A9F6FC71535DEAB1A4A58198D29EAF3643BF227E2247B01F2EF8ED4A3752792D696A91D2E225863E46A576A93B0EFC54D3DCE05E4BF982249E32230C878A55AB4DE83E8F7C354C79F342B83285A171EB2C8F6C797C4D1AA856707E6695071D9245B954F0E4E02A5BF161172DCB35684023BD00DBB62A7A232847A69CFD44B74DE4EA097A557DF6A7D38948DD00D70608E744879DC49468E373C1431DB94846E78FEAC0765E61558FA668ACD58DE89E98A1AB15AFB0206FB629BA6E26622DDCB32ADCB337A2410C41351CAA49A29A1DB638A2AD4644574A0022BB574855A501C9591A89C86FB0505CF86D8945A9233BCF753467D57A88E1B92455E38BAC800028390200F0F9E2BEE58F3335B1899239DD0B7D6618AAA68B523A10DD14923F1C4A4134A0C97366E8115E4B8B92640B0712DE8CA68C1D98EC15DB911B6DB6F828F35B1C959248DA457695915CB2B5CA924D295E494AD5AAA763D46FED84A3C9042090ADECF1BA3DB23908390346F4D579322D2851188A50014DC60ADD95AF44804D774565F4DFF00D26696A0825548553DFF0076057A8AE1281B35F59BDFADFD7F82FA9F51AD691F2E75F4FD0E5D295DBC3E8C362BCD1C25FFD1F0BE8DAD416C96706AB6EE16CA5B243A9DACB321A5B31B8781E650F288D4338E13B528080D539A9942F972640D337B69E3BCB2B392478F5147981B5B9822489E392E27B94568A38898A10B1CB5F5839DFA8CA36E23D18C81037EAC475BB68B55D25A0BD2EE2E2C2D7D2BF94F23CA28633148661FDE0AB37C5FB44B540196E3F49B0A4DB17D1AFE5B9D2E2D2D5A48AE2DA459040EA17F7AA09A01523A578D763BED5CBA428F12BD034EBB84DA4776F6F3490C355BEB752CB5463F012406202B9DEA69BED4DF30B538AF744BCF9324B04582C3519A3D665B391942FE8E07E09790A00841D8D2B5CC48D9900CE247091C547B93BB0465118B797E141568F7206FE1B53A66673E7CD4D0E5C99359EA0F1DC47C800EEC15909AF21D3E9F7CAA5DE366D1BB3DB695597897A92376FE66F0A7CF2BDF9B1DB92298AD40E0BC76A1EB5DE987DEC6D7005C7DBAA9A100EDD361F8E27646E5BE656B562D41B53ECB76AFF138280DD24AF59187107F9E953B1AF8F5DB08AE8A4F7A205C15AF6EF55DC1A76DB011B33BA341171C9556228596BF19AEFDB7E9BE46F7401DE8C068A1765A0007122841EF4AF5C27CB9240544207C35AB03FB5B75DFB7F0C32001516AECBC875A30A14DE9D3B7D3DF235BA6F643DC239878AA500A1E400A57D877DF0942AB5AA3C4AA1400ABF0D7F5F7FA305D26ADD6BA589128FC554B7C036EE3A11F3C7931E88A874F8D5C47C01E028AEBFC49F7C69369A2D9C51856562C2B46A0EA3DBA613BECBB0DD8D79DB51B3D37CA5E636681AEA5B8D36E20079148ADA30017B991C757E8B1C63AB12CD454393D393E3C474B769A2C7A58E973E7CF3F501C30C63EA94A7FC7FD5875FBB77C743574361A4C51C8144513FAC81948AB49C8034AF719D319BA211A295EA9AC7A76D133481516E620A39D457E2EDF460916490DD6B96EF2079254E5C1429277C16A96BEB1600FA8F326DF1135FBABF3C02CA50375E6CD282B096F53884F88D687E915180DD2BCF3CEF7D15FD8794AE6CCF3492DEFB8CA5A950D2A281BFF00AA698790DD88E6CD9F5BF30DC597AD0F95B596885A2B7AEB6B214F4D221C5D5E94E2556A0F8643C48DF3654FAEECB5AD30F91FC916E75B9E2BCB6F2FE9B0DE69D3F35304A2D503AFEF621400FF002923C36A651908A67105F3BFE61CDA8C9E63B4BAD0745D4FCC76E34D482EEFAC2079A24952595846CD41B80D5DBC71D3CE201B34B939B1DFD27E668D0BC9E4ED6E3441FBC66B47A0DAA6A694CBC66857360417379AF58F2ECF3CFA9E87A9E936F2C10C37F75736EEA91C17E488D8BFD91EA853E98247322837C9473C24681054C0D5D6C1EFBF9A3A81B8D434BD3237A69305B1B98E3002249372281994002A91850076E5B65D32C01DE9E52C097078F2424EC77EDBFE195166F33D4F537D3B533706D2E2E6DCDB247F59404C71D667E2A4F626B5A7BE46240D951565E61D4B5194DB69FA0EA17F3C685CC5047CD9631D58F4A0A6489039AA96A7AC6B96D0A4B77E5CD46D20900F4E799022B75038D5B7DC6F83C407AAF27D37F9532E911FE566972EAEB7BA7EA1797FA95C914BB48DE179B8C6CAD10311FB04788E872AC93DDB222C3C8FF38B5CD1B4E5D05AC1AE6E659EFA66954B4C42C491509026A2D79301B0AFD195E124C8DA275B300B6FCC3B548D625B778917689CA9E446FD48A8A9CCD896B22D318FF312C38D1A435E84114EFD71322B49E5879EB4DFDF4ABA9242638EA2167646941F878A900D4EFD0ED8F1A0ABFF008BAC2535B69D42D0543354FBD3A63C4534AB1799216A012820EC2A7700E0322B4AD71AA2CB04815A8580A6FB9A91FE75C32915012A5B83CB73F1034DF6395F15A51F6776A208AAC78F00CA3DC9AD724248A055FEB9C9E10ADC7E20687BD083DFA74C24ECB4A897294A34FCD76028361E3F860057DEDA6A16C4B0A95040008F1EC463694C6D82359E9A51C06FAADCCECE46D569662A0537AD00F9636842AEC0B2824528A7B0DBFCE986D69FA51FF3EE9D27EB7E64FCE4F303055874EF2DF96B460C07DB9EEAF2EEEDF7E84816E2A331F21B0CE1CDFA87FBB24C8C0A0735D86E428DF63D3C329A6D9143B6CDC021532206795B7F849E87BEC30835B2F3552910999561A563E009AB5789AD29F40DF23456D73C258234A4317FEF51AB41F09AFC3D3B53098ADA815A42F2189919002A00A902BEE7B9C97208EAA091FAAE44AA030AF2E4847000D081E35C0555A65280011A966AF02945E1B5371ED5FBF0512BC965B80AEAD22A81029565A96A291B9A9DC57BE242FB96117150C4520AFA69C8123F9A808DCF5DF055B2A6D2475F495D5B9151EA6C37E3D4F8034C2811DD32548638DCB955241624134E64507BEF813109613EAB86B80C10854E340B42A4EE37F1C578954B2B2F011193D331A348685DB9EE3614A62A7640840EE393B34684F28D8FC7C49D883EE450634C49B577F4E6E44031D085B688D4B54EC39374A0037C47249DD648612F4795A18A4154913E23422A4D3DF0A29AF4BF7A639236643431AB05E2AC07E1B1C09D82FB86545759A48E386D525AA15DD9B6A257B03D4F80C96CC7740CAE1A58087768604548222057D370DCBE1EC95229E380F9A4AB88825C1A0042C4559C124F03BEC3FCA6F84FB531DBAA690B1062F15F290B711C812644FF007502946041DAB56A11DF23CD20B45159658D8FA9EA481A58050715249E477AF1DA8478E15EBB2A3710ABC99A695C0F4E3EBC9C0A80BE02A6B538AF20A46381A5066F85AD2DDCA2F20ABCD815F43604D37DC8EB4C37B22B7591B09E1F43946974AC24959051DC6CA86A7A6E294EA40F7C8DA690977342A6D6D1DE971701E39243F01611901A2450451B7A7D3B613C98D522A58AF2C2DD0CC9E8C935C42144D4532CA68B2229268B40D4F6049C6AD20A83C132889668C88AD54FA8E14D08F50322FC35069C6A01EA2BB622A96ECECBDDA44B6E7C7D48D54F08D168DEA33172A0FB8EFDB6ED88D949B2828CFD5ECDEE122544B8066D41A4347590726604024721D5893FAF09DCA1314838CB316F4E4E6BF58962705A20B1A1A0E2DFB5E34EBD3B604D8E896724E1C3D597EAFF0054A5380E7C78FAB5F9D7E1E95C56853FFFD2F9EA6F6382429F5A1048545AADF4E424914722F194ADC95757F8C25126143B819AAE12432B0196E8B79159BFE908246B38A3612DD58B1E25D2DE2E16F140923FA76F2B92A0A1AABFDA02A2995E41BB132D9366164637B678D63B8854C371244155CCD6D611970F0B95143C513F74FC13D41BE01602B15D77CB8BE5C5BDD6B4D59D74C5941BDB4982ABC7EBA24F15CC0E4B170C1D4100FDA0C3C465D19716C79A8F4B21D0213A869B7C19D145FDB3BC4C1598F265E05782952DBD18785323900EA8912515E5E95AE2DADA2BF0F6D77105F53D4A2C4DB53987DC6E69DF310E223258DC318C68FB9E8B6960C65924B698AC840E31EC400A69BEFDF266446CDA038457CF745D9427D54D430E8478AFB646200BA6CBDB7E6CA74FD4803C6462AC3A9A906B5AF4DB19476D980EF6491EA6A09E52514753D7E8AE5640AB48E689172841AB0A301D4D45076AD71036F34115BA28CD456A1E551B8A8A0A0DC7875A640502C896DA5434A93CC1F8C31A723E07252636D7A8AA091452BD1A9F4D325CD48017457C82462482A767152280773F2CAF87B995AB7D7C5792C9B93F64ED42686B8EE577F7A656F748BB922B4AEF42287AFCEBD7229468BC4A800D76001A82091840E8AAA97019B9B3000745AD373DFEEDF1AF9ADA345EC6D4F52854D4569415AEFBF63BE023750895D4E18621C984641345D89151D2BD0D308DD89D9013F99B4D8D4FEF9168410A8DE1BF11DEBB54E4840953200F9A4B71E6AB331B39BB500FD98DA877FBF25E194713CFFCEDAB5AEBDE5BD6F401A92DAC3AE69D3D8CD7BC7D43109C712E1095E4478547CF2EC238242418CA887CD9FF002AEEDAC63B758FCD523AC2A178FD48296A54800098AEF5CD90D51EA18A1AFBC9BA55C45F56BCD7AEDA22E1C9B548E270C84D3E27320EFBED89D44BB969031F90BC8B6C4BEA1A86B576E6954379142403FF0018E1AB7DF9039E646D4122BAA6D3E83F96961686787CA6DA82D2AB3DEDCDCCD4276DCBCAABD7DB2AE3CA4D1926C773C9B51BFD1A0BCB85B4D2ECA28D647E012188FA6A4D4004D4F4F7FC336913B0B6B31259F7957F2F74FF003AE9126B57FE6993CBE44F2D92E9D069773A923FA68AC1B9DBC6E8BC8381406BDF224B34C34FF206A5A8E8CF2798F5DD4BC972D9C31DB5A68F67A6DF5EC6608E1D98BC7115143F0F0353B572900248AA7D73E6A9B598347F2858F2B9B3B0FD07A72C37860244AE96B182ABCD0F5EA13C32528DC56F7B0F90FF0031BCD177A2798A3B392EE4B195F4E82E1ED04727162EF20E4680F5E3D08DB31B1E0045B2C92B2F3F93CF774AA42EA0A5883D5245A7D3C37C98D306B7B87E4BFF00CE49F967C8979E6AD33F3074087CCFE45F3ED8C76BE74D163B417EB78D6B12476E25B5BA31ABA154A539AFA6C7D45F891730F59D9F2C94606A439393A7CFE1820F22F3FF00387E69FE587E93B5B5FCBD875DB4F285B5AA476961AD404DCDAC8AEEAD1C6ED7170CD098F815E4E594F25DC05CCDD30CE2359689EF0D590C49B8861F7BF991A3CD0CD1D9B4FEB712103C0EA8CDDB93062C07C8573225C4C1E737A61D4AE53511AB4D6378E14DE2C514AF048EB4E2C8B452B4E8010761918C4843D1BC929A18BB9A1D6FCDF3E816D716CD24BAD456A7F7B22BA04B64B701CD42B3396EF4A62719277564F6FF00E1ED52E353BCF30F9EA7D0A65290D9269D149345731A2B032C8A8A5518D17E1FBFA644412FA9FCB1677B0FE4E7927FC3B2DD5FE912C575E86B30C0E3D546BC9F8BC81158C65BC36DFEEC480122DF34FE74DA249169B6DACEAC348BF547B8B186781D84949910BC8B18AA304AD3615AD3218E3124EC995D3C2D346BC41CFF004A691329E3BC575C8D1B75A8E1507D8EE0ED990C17DCE9979002B335A8A9214B3B8DE81BF6A31BD0D7E5F3C20252A7818175296E450727476FBEA1698550AD58AA4958FB801CD7E81434C1CD42C1A84F090C9231F065AD36F1A818DAABC7E63D423042CB206AEDB902BEDB6D89554FF10DFB52B7BE956BF1B73DFE90A698F25655A76B9A5CD03B6A5E77FD153AD123863D26F2F414A6E4BA34201A8A528720491C82A2E3D4FCB04A4B3FE69BC3386FDDA0F2CEA12285A56B513AD4EFE1D30714FF009BF6AA629A9F91C9FDFF00E70DD291BD57C9FA838AD7C4DEAFEAC78A7D22914DDC5F7E5F98AE6483F37F519EE638A436B6C7C95788B2CA14944797F4937A6ACDB17E2D41BF13D3222531FC3F6AEC96AFE62D9436F1DBDBCF71C61856086B1BFD90284B2D29526A4D3C72E0C54A3FCC181F9A7D6248D996819E370A2BD49001DB157E9AFF00CE1EFF00CE497E55FE41691E7EB2F36D87992EE3F394BA0EA5693E85691DF0375656324178CED713DBFA6AECEBC146D4A9DAB94CC71244A8BEC89BFE7E1BFF0038F6E4D347FCC0A6C58368B665B7DC01FEE47A0F6E99030E94CB8FC9457FE7E19FF38E8ACB20D3FCFF0019552181D1AD5948F0A7E90269F3C784AF1F92CFFA2867FCE3B96F50E9FE7E3239A91FA0ED4106BDABA8627192BE22B49FF3F0FF00F9C74A9AD9F9F4AB9A331D12DDBE0A6E36BEAFD3804085E3F2583FE7E1FF00F38E41814B2F3E91CABC0E876F4343403FDEFED8F011BA38D4FF00E8A1FF00F38E3595CC1E7CE527DAAE830924786D7BBEFBE3C3209F1077373FFCFC0FFE71D6158A407CE7348E81F9C5A02D0961F6497BB5238F4E98881E4BC6C86D7FE735BF26AFBCA3AB79DF4FF2EFE605F79534BBA3A7EB5AC43A140FF55B8E2B35278C5EF3552B2292F4E22A2A77C4C4F5489F7063527FCFC2FF00E71C8C22364F3D02942CE7408C71248246D7B51B6D80E295F24F8BB2CB7FF9F867FCE354082223CF3B9243368318DBDBFD337FA71F0C8E8BE2352FFCFC47FE71B24503FE7791BD101F2FA529DAA05E035C780A3C5506FF009F887FCE34BCA5B8F9D63E46ACE34252D5140BFF001F7D363D7AE3E1CBB9272792E5FF009F897FCE34D0077F3B25231180BA00EBBEF5FADFBD7AF5C7C3281929CFFF003F11FF009C68319896EBCEEBC94F36FF000FA0351D00ADD1F7C4C25DCBE205A3FE7E23FF0038D010451CFE74562AB491BCBEA0540A501377B57A54E271947883B97CDFF3F11FF9C6800859FCE9CE461EA4A34042FC3AD052EC8DCFE18446412663B97AFF00CFC33FE71A4C5B4FE750E538175D0578863DC8FADF5C1C07B91C6A375FF3F10FF9C6696E0BC771E7258E46E5321D049E478AAD491727734FA30F867B9227B2927FCFC1FF00E71B086692FBCE6C7D345AAE83C18153551B5CFD9141DF018C8A890EE5F17FCFC3FF00E71A986D7DE70866323C8FE9681C83170403437237DC1F0AE3E19EE4F8AB1FFE7E05FF0038DB2A8417FE728645A02ABA16EE5B8FAB27FBD34A9A1A6DDF1188A0E45F27FCFC1BFE71A54878EEBCDC45599633A170039372208FAC1F138780F45E30571FF9F82FFCE3429410DEF9C8FA69FBB94E843763B7223EB43B1E9E391E0977278C52123FF9F81FFCE3852FCB6A9E72125D2A45CC682A40895F90007D67623E7BE271CB9A4640141FFE73FBFE71C39C2629FCD7C0029227E850A78B481AA3FD249F855401EF5387C395F263C4C67CD3FF0039DFFF0038E1A9797F52D317F4C6A7A8DE5B5D476D0EBDA2FA7A64B3346F34115DB8B866113CE555CA8E5D0D47513C7020EE1789F9B9A27E6741E5FB778749F34F92F4B82790DCDCD9DA696DF57599B7768A2925944609ECA7E75EB96F08604D9B7B47FCE3CFFCE42794BF29FCF8356D6BCDD059791751B7BD4F35681E4CD2434F7F73321FAB738E597847124A4C85A3A306002D39360947D3B313CC17DD87FE7E01FF0038DA8822FAC79BD82134FF007088CB4200F840BA1C880000331C40B6F181E6FA93CB5AFF00963CD9E57D0FCEBA16B70EADE53F3759DB6ADA6F98A0462934378A22E22165E6AE8EBE9BC6472470C1C7C2704EA3CCB2C67C4DC26F2492469737038CF1FD5C21080D6311D39159189D9998B13FAF2356CEC06F81A7A3F5B939F3F47F4951787ABC7FBCE9C69DBA70E58D6C9DAEDFFFD3F17D9DA8BCBA86D2FE12D7B227D55AACB1CA5D9DA4B88A458A32A3D28C01566E0FD2A09CD21C87A33A1BA22DFCB7652451CE7FD19E6850DB3C68E1656B87A2868EE1D4B1057918D85577E3E18F8C7A238502B62DEBDC26A4DCECE2490CF0B2C3730B5A25C18DE064988747B829C8158F880A3F949C9990A625886BDAA36A9A7DEDB37C505D4AD35D4D1A0432DCB15432B75A538D140FE5DBE1072D846A57D524F440E957D2E96CFF0058B82B616B1932AD582B2712847546A1E47E9F9658458F3475DD95DB797FCCBE5DB6FD27E4CD446BBA4B8573E5DBF02E45363FB891E85BD909E5E05B3184A3395487ABBDB4C68584E748FCD4D29E378356D16EF45BDD966BBB4512A47227DA06262AC0788E38678A5D082180A7AD695E63F2C6BB4FD1DAE5B3CED426D243C25A9E838C946DFBE506328F44C91F7B65710133C51F3F4C5415AB004D0F857A0C4481E48DFAA4E35492A2DCB1F5D7EDA0DAA6BB7EBC48E11613CF6578B549E06512920BD69F21D41AE102F9209213FB5D679A070CAAA7629D8788DFFCC640C3749975472EA96F20E1CD08028083BD4F6FBF21215BA828937A1EB5707F956BE029DF081453BF30849A520831B7135AF1AD6A2836C9736243A1BC948DDCA11D49DEBE18D515BD90435C659994CA415DDB7DBDFB9AE262906D368F5496452227AF40CDB528A7BF860A544CFAF2C110E47E2550A373F3AD32231F73124A4E7CC7701F97AC0EDD49140A0ED504F5CB0442F560BAEFE61CB0C9C239CBB0AB051B50FB7F1397470B1322184CDE71D4AEE61045C8967FB4A7A53AEE3A658200256493EA139521DC041554E4682BDA9F3386914879175A99F880791048048029EE4EC36DF1042530B6D1B5B92353EA852002180E8A4FBFF0A60E308AF3749E5B9E28DE6B9B8924740CD23A8352177A2F6C1E2029A416BFF941E67B5D5AE84BE7AB0B1825656B582D54CE153D38DA86500558339561FB2C0AF6CDA474E384169F1059D96DA7E4D5CEB492DBEB7E779350D2ADD9DAF92204140B04B2A100B52ACD185AF6AE4E18003B24E4DBB9857FCAB0F2BDBDE6B5656F79E6BD4A285ADC4379A7DBB4B6E1E6B3491A395D529C9598EC37E34F1C91001512910CE7CA5E45F248D0203A8DA4AD7C24963BE4325DD92A490B70F4C5BFAA0AF1A6F526A77E840C400A65636642FE4AFCBE534FD120D7ED72B9B920D45282B261E10826418ACDF975A746F22E97E7AF34E9766C4F1D3A1D52E1618C1E8883D4A0006C001B644C4164247AB20F2E7E44F95754B67D42EFF3174B811E668C5AEB36373A85FF00EEE80B4B71F5B883066A951C7606870011E4937D199C1F903E45E8DE7CD0992957E3A04A47CC56FF00242211EA416A9FF38FDE4F78AB63E6DD0EEA4515E234A36DB5283E269E6EBB1C784744F1303BAFF9C7EB6E4443A9E8EE4ECA7981DFC38ED91314836B6C3FE71FEDD6E13EB1AC694114FC48910B900027F608507EFC405BBE4CDE1FC8FF002BAC6867D5F49899686AFE5CB7940A6DDEE36392A018824ADD67F2ABCABE568F4ED5ADF55B7D644AB716975A7A6871E971C42B13249EA091F9B54D00A78EF88E149BA63CF65E56F853EA70782D1576EF86EC3120F26197BF97FE4DBDBA9EF21B8BED3DEE1B94E965772C4B5D857821005723C20B2051B6BE52F27E89A7C90416B25D19268E49A6B863348EDCD46ECE58F418C682917B22EDF45F27040C74E8393BCA480054FC6DB9C2290010BDF43F28B05E36114BB80BC1C11B81BD4B7861D9241423E83E48E055AC138B312BF1F7A52BD7C06048D820E4F2D791880458AF1D88065DBC41EA7BE3B150108FE54F24EEA6C81A9DA928EBDB06DC977429F2A7929142AC1F086036901AFCBAE02296D67F857C962BFBAF888156F506F4DBA7B61D926D6FF85FC9A77118E2A36AC806D8010A847F2AF92CB0668F96FBA19ABB7C86055093CA9E461526D872A50FEF47E34D8E362D6CA1DBCABE46634317A5D8FEFF007F90C55637953C8F5AAC68B527ACBD3C0EF8AA849E55F25A3068DD050D68D28229B6DBD31156ACA56F3CB76E88820B6728004E4E0EC3A77D8530834B4E1ACE84A6BF57B452052A1D761E3F6B093DC8A686A7E5C50690DA96200A97515FC71E24D2FF00D33A082070B4006E07A8BFD71E36262E6D6FCBA3626C8D681AAEBBFE3838A978544EBDE5B03ED588A1DBE34EFF004E1324F0A83798BCB03ACBA786A1A9E6809FC70712D297F89BCAF507D7D3CD41A3F34EFE1BE224BC2C974DF372C1A76A9A4693AAB368DAD88FF4CE97657045BDD18C7C1F58894F162A7F9876F96125023494BDC5B0A2AD85BA851D0460F5F018F1ECCA948CD6FB7FA1C3F420ED9133452C32426BFE8B0907AD100271324D2939B714ADAC67BD388A1F9F862642D6963C915286DA320743C7C7D80C1C61022029F382B5FAAC43A7C440DBF0C78BAA5633C6694B58880280D07E1B74C067452A44A0E5FE8F1AED4AF01FD3113B5AB5C87883C218C56848000A9F7DB019F72AF20104FA318A1EA5576EBBD30F1855D5047C31C6A0EDF646E30192F0D2918D011FB9881EDB28FE1838BAA28365109F89236A0A1A01F81A74C919A69C590B7F7715083C4951DBBF638F12D29B1881AFA49B9A82547D046D83882D35FBB63468D159A840551D7019AB8491C7FB08091B8A0FA7B7E3878D245735291E177DED9240BBFD9046DDFD863C4843BB475A2C11A823A05A6D91E2EE56E394A8AAC6A3B73E22A3DBC31E22A898E802728D1C750A16A47CFAE3C652FDD1FF009C02B696CFFE71AFCB338431CDAB7987CC9A8E981BA0B67BE7B60E8A46C1DA07DC6D5A9EB94E4D8AE2EBEF7D53AADB23EA77421BC716423B6B11A590AC92C85C19A57602AD41440A3E1A0AE5679B7F31E6A1F5C7FD27C397C5EBFA3E9EDEA7A1C387A7C694F4FF006EBE3ED836B57FFFD4F1179AAC7509A09354B0885D5ADDC0ABAFD915E4AA21E279051C0B291C7950FEC8DE99A78188D8FC13C94ACBCDD69346866BFF004AF9CBA42A3FBCE6C3D232AAA8211A28C3088576AD4F6C33C46D6C31BD7FCCD6E6082380FA86F02B711B90AAA55A85FE2E217E11CA80EE4E590C3BA2D8936AA174D744659E032C6CB46AA330600B55AAED22C6A56A02A53A536CB7845EEA532B7BAD3E78EFA0BA135C5994696E92D6495A468C55AB107A2D4015AB7DAA71A619034BB12C93CB973AEE906397CAB7C3CDBA2DC100E9912B34FF0019E210DB0AB862481F003BF6CAE6232FAB62CC58E5BB2CD72DA0D56E2E52F3CB5A9596B165C5350B27B4923D42D580FB2E1902CABBFD96DC7623A6000C7AA2AFA31E8FCBB25E2C6D06837DA9C7D6DAE60B2B93523DB87256F638DA380864D0797FF3834C1CF44F2DF9C96045F5042DA46A13C5C0753C4C0C78EDD7A65378BA96CF0E7DC59059DFFE72158FF49FE4D7997548FD37B81716DA2DF02615A1322562A91BEF41B6D9091C47F8990C3907429E4326B376F24771E42F3868B768CD14F1DD68D7BE8AC8A486527D3236EF4382E23A8218181F8AFB9F2DF9BC075B5D16F9A0450D7005BC913A8341F61E84D491D3C7019C49E6BC125BFE17F39D9D643E5ED603004F17B6615A6F5A577FE3933307AA380DEE13487CA5F9A9717263B7F256B52F38D66AC70863C5A841E2ADB5790143BD76EB959CB00CBC2912AD3683F98F697E6C2E3CBB770DCAB34725BDCC96F1B232371656ACB50C08DC6225122D1C1264D3796BCE56F6575713690AAB6D17A92B895082052A6A36AD0D7DC640648F16C9E0203087F2F79B67B9DB4D560582A38BBB6A1248E84C9BF5FC32D051E113D196E89E48FCC7D625821D03CAD79AE4B7337A103D8CB6D2A1940278B49EA8453404FC440A0AF4C84A710D9E04CEF491F9FB42FCC0FCBFB3D2AFBCF1E55BCF2FDB6B93496FA7BCEF0CB219A152F244C96F24A519577A365B08F1F2E8D7381873EAF0CD67CFAA2110C09346AD4E2783283E1B91E39911C45A922D260B8D66E1B9C6CACD42D34A6A40FBFBF8619D452F6BF2FF0095ACA24F51944859412EC36AF4008CC79E42ACC86831463D55D31E5A1AAB31014D06D42C46D5F6CA8489EADBC12AE492C7F576BC92158B918CF1982293403AD7C2986C91BB5EE0A2AF3CC5E5ED1EDA59F51BD8608A26E323FDA01EBB20E229C891B28DF0C74F39F20B63A3134F38DCF99AFB4BD23CB16512CFAE6A36DA5E9F77A9931C4B35D4E96EB25C01B4512B4818B39FB20900D33331690752A644BC83F35FC93E70F22F9DEF74B4F3C5BEB16973EBDCAEAB119AD2D2368E422E794778CA621CEAE093F12B0EE36D8007977358206EA1E43D2BF31F587B95D03CC5AA6B10BAC9CCE9D64CD68F2490BC0C12E2E82A3958DC8254507506B4208B1C949B65FE59D0FCCBA46A5E72D0EFE476BBD3755839AB959193D7B0B79115DD362C10AD7EEC201B4122ACA23CA5A6C3ACDEF9E6C350D4AFECAE3CB1ACFA324568C22576BD065AB92A4FD94D80F1C403651C5601657FE17D34B806FF0054E0EA4826EC9A50EFFB3DB7DEB86AC6EA64072737953479157FD2F532402A78DE30DE829FB15C00278BBDE51A9F97BCC569E64BEB6D1F5AD46DA268219EDC73E64D470724D3E2A114C8826D9B66CFF321176F325FF15D9487620546DFB3877635141CBFF2B2D5493E66BDD8F67726A6BB8F8287059A50004B2693F33106DE66BBE3212071763E3EDDC8A6369E10B229FCFEC949FCC9A812080C1252AA37D86EB8775E108C8ED7CE7764A1F31EA009228649D8EC3B502E02C40A1BB32F2CF936FEF350927D775ABFD56CE188ADFDB99E451C490D557003292540046E7A61E1B4D8E61977F833CB0A4B7D46E4803E21F5EB9635F0A97ED86829910A71790BC98249E48F459239AECABDE4C97974AD2320E2A5BF79B90A29F2C4442F11A4E64FCB6F29AC493AD95D51FF0067EBB724035EE0C94DA9844031E22977FCABBF261AB3584A0026A0DD4DB9AEE6BCEB43EF8F0829333561637E5D793471A690800F88A99A6AEC413D5FF0C14393216A6DF973E4DEFA4063CBE26F565FB55E8472A76C3C2106456FFCAB7F27375D216BB53F7B26F51E1CB120282A6DF971E4E0687468F95003F1CA01FF0086ED5C142936549BF2E3C9A2BFEE1E12C37D8BEF4FF658784209A533F96FE4A04D7468438068034943FF000DE1838536B4FE5BF93C2B5345B7A13FE556A7A57E2DC7CF1A4A8BFE5C794874D120E2DB00791A1A56BBB612031049531F979E51E4436896CB5DA9435041F9F5C149B527FCBDF28AFF00D296D56BBB7C27C7BEF8694153FF00957DE5105ABA15AD4FC4A4A9A003C37DB0505B5C3F2FBCA60B37E82B452176052840E94DCF8E3B522C9E4AC3C87E56E2ABFA0AC4D0D472852A476EA3C30D2775DFE0BF2A80ADFA074F5E3D296F19DBB576EB8ED6A49A54FF0006F9647127CBFA68E409DED6235A9F97BE3410245517CA1E57AAD3CAFA500D4A83690D37E94AAE00029B551E52F2B8A91E5AD2C3034AFD522AD76FF24E34120DABA79734189C15F2FE95CD1BE01F53B721946E410137EB86949571A3686807A7A1698A07DA02D61D9BB1FB040C141113610D269DA6A1654D32C14124F316D083515DC370AF7C3B2533F277E4B6B3F9DDE78D07F2EBC8DAAE8BE53F326A305FDFC7AB6A914C2CDA0D3E0F5668DC59C6F2162A6ABB5363BF4AC27B0B51CE9F49C1FF003EC7FCF99010DF9CDE40531ED332596B4C06C3A16B75EE731B8C7215F6FEA6DE0D9147FE7D87F9C952B37E7BF92E16501BE0D2757626BB50FD9A8EB4C9789BF4FB7F5278079A6907FCFAFF00F32BD3AC9FF3907E5542C09AAF97F536EBF640ADD2939033DFA7DBFA978479A16F7FE7DB5E62D3E78AD6F7FE725F4182E269228215FF0009DF1496597611C4E751A336FD3252911D031023E6C8FF00E897BADC71092F3FE725ECD01254FA5E4D98D180AD017D5D6B5C878859080F3574FF009F5BDD49E83A7FCE4E4ECB3AF22C9E494520D01A7C5AD1EDD77C4E42578439BFE7D7B0C6CC24FF009C9AD428BB724F2741524024815D6081F4E1193F1F82A6202BC3FF003EBDB04E724DFF00391FAEB7A7C4B04F2A59A0A50569EA6A6FD2B8064FC7E0A7807E3FB1348FFE7D9FE5A55663FF003903E609C44C79C8BE5AD380E23F6B7BB3DFA78F860E227FB3F6AD0FC1FD88CB7FF9F6B793E6E047E7C79A1D641F0C89A0692AAB4DCF23EBB76DE9D70716DCFEC4F08EE47AFF00CFB53F2F94C826FCEBF3B4DC4F10F1697A2C7BD0923898DEBB014F9E4B888E47EC408845AFFCFB6FF2A3E0AFE6F7E60BB7AC914AA20D0907C4406AB7D51B8F1EA7AE438E5DEC8C4772E4FF009F71FE50B3953F993F9912C723B182456D1634686A15096FD1C4862D5A8A1DA98448F7FD8A40EEA463FF00CFB9FF0023A21297F3E7E65B842A543EA3A32332EDEA3546914342695000C2652EF4547B91F3FF00CFB9FF00202DD487F357E674EF52604FD35A5A7242695A0D27AEE30091EFFB91C23B9CBFF3EF1FF9C74895C3798BF31DDE366055B5EB2155502AD55D2B6DCD298891EF4F08EE460FF9F787FCE37AD14DF7E614D23B10AA7CC712A000026A534F03A1AE4788F9FD9FA93C31F2FB7F5A2D7FE7DEFF00F38D68007B6F3DCAE50C8A8FE67604A29EBF0DA0DFBD0E1123E7F67EA5A03B9737FCE027FCE34C6033685E72B853305F48F9AEE83706A05E24440935AD7F5E3C47BCFE3E0A45EDB2DB7FF9C19FF9C615BC1632793BCD124B6D6E64BF967F355F70479856042632956E3F1D3C08070711077253B720136B4FF9C1BFF9C668248CDDF90357B9801F5663FE24D642FA4178042AB70AD566F8AA08DBC307193BDA48AEE7D49A0E83A2796347D3FCBFE5DD16DF42F2E796AD6DF4DF2D693A7A9486DED2DA2E29147524FC35A92CC4924B312C49249B6111DC995C09660AE670EAF21AC6C814F1938B2F0A549A28D877EF9104B349B98F5B9557D6F439FAF54F53D7F5A9CF9FDAAD76A7E14C576B7FFFD5F1DE93A04BA27D61FD50F2CAFC9A92BF1E0375015AA9515AFD9FC33432C825BB93C32228B0EF35687A3FD5752785CE9577103756D24245239CFF0076A40153C9A9B1CCAC3299A05C690AE4F1D7D0354BDB948BF792C442BCAC0557D426A6B41D8D33642007447BD71B66D2351974BBE6311982996B504B5030AEE0F46DBC32BC91E48BB0995DCF671F3BD8F882C8C05BC6AAC8797C3C4D3D33D4F874CAABA2D07A87E415A473FE6BF90AD56C9AF2E6E2FA4B7B5B74592494CA6D27643147110D2382BF025776A6472501BB6E0049207717E84D87E596B27439359BFB9B7D327D32137D71A4EAB7C96F773739991D62B17732B31773F6940EC849DB1F1224801998102CA71ADF977C83A3F97AC2EBCBDF981AA6A1E7170A6F3CB97B6B240A50A2C8DE9CCBC446B157672CFCB7AF1E4008465394AA436EF67923003D2527F2B79B2D3CBBAA59EA3A8E8C7CD9F555022B0D4B55BD8041387530DC44607059D08AFA6F54A569438E4C3C71A1B7E95C798C0D97D1171F9BD63E7AD20DB5BC779A2EB763AB4379AA28B832C0630B2BADC25DA889C319005756028C01A914CD7E5D31C7CF91659B3DC2C1DEDE17F9B9A8DFCBAFDB5E4973244BAA5AC5C16070239A6B7A5B4E22450A88D3AC4B23F11BBB123AE666921130A2E20CC72127AA55E5D5F27BCD743CEF36BF0C31440E95A7E8505BB5CCF32F3F5E273725552808A32A9E7DC80BBD9931CBF86BE2E5425017C49C6B971E4B827D324F2BDA6A76F611DBBB5DA6B37568D77713460205596D14D630A0921C75D8506D90C78081EAA6339C49DAD39D034BD2EE8D9EA327996782E3D23A55D9D3D57D610CF34B3CD717559A05104019548456766640836DABCA003F48FC773306308DC8F3D98D4375A5796FCC3A82D8CC9ABDAD9894797F5EB480C692C41F82B5C5934A5CAC8482A43545390A6E72F386338D115E4D56CBADFF0031346D3E774952D9BEB28F69F550A9750FA5340E260F0CCA2482B524BD1B73B1DC0CC69E86B78EE58C72CA12DB767563F915A55EE99697D6FE68B75D2B53B6B59F459EE7475475B7211C104DF7C4FC58AB1A03B1DB7CC7F1C0E63776B1121C8A40BF97BE6BD267D5B4EB3F28DBEA10C0D18B7D4609A19AD258E393981E94C63A195680AB21E218FC5435CBE193155B5CFC5228BC47F3ABCD3E5ABAF265AE8D1E890DA7D4BCC315C6A0F132C34BC105CC2A5D80264FDD2329A50014AEE37D8E080E2B75D9A76007C13E75F397970452436164199397AD399498C5492376041A76A665101A28DBE8AFC9BFC8AD7756D1D35BFCC6B7BAF29DB5E46B2687E5B89146B3710C8A196EA60C42DAAD0D55645691D4D59136274DA9CC38AA0E6434F43D7F27ACDCB794E3B98EC7CABA245A7E91A37AB041ABDCC8F713DFCC68259DA494D0AC6CA51388DFE27EEB94C71D9DF9B199EE14C535FD7F49D3ED66FAC4EAFC55BD37515A301D07D3977876764F191CDE07E44BB3F993ACEADA7C3752416D6D3339B357FDD0DC73A94E3CE8C3B9233618B0002FAB8F237BBE89B4FC95D361481EEB589AE22E61A2B61140F0ABA5406459519471048F97DF9902368B09A6A1E40D0A481E27D5AFE280C6C83D39922645752A4C7E9C68AAC3B6DE193114121E75A3FE4EFE567977EAF26A4DAA7E614F652996CBFC5F7697F0C0FBD1D208E28A3765A9A34A1CFCB6C90877B59CBDCCE756F38476B094B731431AA848A1882C71228E8046B4551EC061D8061B92F25FCBED2AFF0053B6D4FCDB7130327E606AF71AE401E802D9BAA5AD8B316E9CEDE0594F872F6C005EECC91115DCF38F20EAB6FAC6B1F9B5E64B225B4AD7FCD117E8AB9268258AD2078BD453B6CC38B7B061903B92CA23D21E886E15F8856A8AEC3A507B77C161910B839E5B96606A4F89DFAEF846DB208EAE498A37300ABC7F65FA0E4C28687F861E4800F32DFD7E52411338751CD1C351852809069D36F1C176922839751B90C0190C6A7606BD0F88DBA530928A206CE6BE919789919CEE399009AFF3114EB838B65A24A18DE482A44837522B400FC35D89A6DB9C37B2786CDAC6BDB86E5595AA295FD9DCF53B1AFB60E25214FEB523D2B2B52420005B6AF6AFBEE71E6BB06CCBCB6A115A8F99F9E369A548D86DD07224AF2A6DD8E2A0DB319083A4F22D40A405A9A6E76CB1AC922AD87B480C84F25635DC576245401BFEBC81932A0772D4972F19735003FC35AD4ED80CA9900A1F5D940F54B0552080452A2868413F4E2254820170BB6405F604AFC41BF681DC1A8DCE012490A4F7A3EC83D01AB9F73563E192E2EE5A59F5D52A2B53FC9F3AD057A6E70712D2B492B1AEE3954EC4D3E9A0FC705A69037178D1332115D87200900D77A72DFB61E25A505D4CB1614F8AA0732BB7CE94A01E3838969BFACB4940087614214900F2AFC24F7A815C36B48737A28CCA5839AD1883E35A7BFB647895BF5DB83C84B7C5B461A9DE84B1F6EDB75C4128A70BB524003C69C874EC3AF5F7C36534B3EB0CC19490A46DC8501AF5A8D8D0788C6ED697248F4462EBCC6CA181240E858FB1F0C789695C49232A3730C154F003B53A8A576A9C3C5DE8014D6E0F227903BF1A0A007E5D76C41B436F29880E642AC8C3972AFC3DA9B60BF34D053336F4F58055EBB76077C78B64D201AE5D0B13212C47C4A40A03D8FE180494051170B2287F5455AA15363400D3DFAE1E2408BD63FE71E3F35FCA1F933F9D5E58FCC1F3DCF790F96B49D3359B397F47C02E676B8D46D7EAD02A4459390F898B6E294CAF26E91B53F4767FF9F8EFFCE3914296369E72BC444078A69D6F186028452B7477AEDBE637826BCDB78F74AE4FF9F8C7E4F72B9961F22F9CAE911242CE3EA285E8A5B8A56527A0A75C7C228E37D03A3FFCE4479535483C95ABEABA70F297933F3175B6F2D7917CD5A96A7691B5C6AF6F03CCF657B6922C26D8BBC524513C72CDC9940611F318380DD57E3F432BF4DF73D9AEF42B796EE1B9BEB248A7B4BAFADAA33B2A23C47691A32683852B5DB7DF059BA09A0C7FCABE75F2579FEFF51D2FC8FE76D1BCE5AC690ECBAD697A5DEA4F3D9090948DA78490EB116A8E414AD411CAB87C33DC832174F92758FF009F807E4DE81E6DD43CBBFE0EF3B6A5E5AD0AFEEB4ED5BF31ACAD6CDECCC96B3B5BDCCF6FA7B5C2DE4F6C8CADFBC55E44025636D8131C77BA264C4D757DB76D1C7ACD9E99A9F977D4D4B44D5AD6DEFF004BD56DA379639ECEF55668E68CF11512237204F4AF4C898905971023662179E6BF2CE87E67D1BC8D7F7CD67E65F3345CF4AD2248D955645E462B56948E0B2CC8ACE884D5F8D0755A911320826B9B2696DD9A29DEE2523EBA50CCE145545028295F01B642CA41017344AD6F2C10C2A1620B0AA5080546F52052ACDB1DF1BB4D2DB89A38229A7466B9310AA228DF885DD40AD18D3BD7C0622A92429CA117D46AAAFA8BEAB20F84A973F0B13D40AEE7DF01A502C365BD2FAB4AEEAF3DBAF32ECB420AAD1178F4AD6BF764F90D98F3506575A96266B8581810E2A42AB0E950452A4FB77EC062765A5A94FACA7AD5792499B72C0068F882CC798AA914A000D0D2BB642A9912B2E1E39ADEE916B1DAC2C09939959195471E02876A50529D7E9C90D96AF9AE92E143C2246378230184AA0282C475A540EDB0182D8D05B17AE1E4628A4AABC6CB255B90241009F72694AE374CA9082559C35AB878919F8471D2923C6B52483D69F091D7BF8E145AA7E8DB5851A7B83EB5B720F72A183CD24D1FC0ADCB7AD1689BF41F21911BA7855E6E52B333A2A93218A4490A9468F62DC3E200A8A91BEFDE9B53084F443DDDD3C5042FEA877292820FC5F1A82C4D3A9A921403D71011C945C0304652B25C9966493724FA922559647A7C3124629D2A49A6D8916A035EBC9C3D1FAA7EDF0F5A9B56BF6AB4E95F87A569EDB635D196FCDFFFD6F2FEA725ADB5BCF7623BABC8EDC161059812C869D846DB9FBF39C80276E4E5CA9E5B717961E62BC5165717297133C22F2CAE9288C913555A32BC8060DD8FD19B0C20C480793465C663BB37F29A5A4DE539A494D6F2D2E8C6D11A0207346AD3F6B6276CDB47910E39DC82F34F39F97748D4FF0030261A86B3268B0C9656922CD0AAB31E71F0651F10029C37EB919441D961D53A83CA3F93D60CAFA8F99AFB55642A0892548D050ECC446B5AF860E18B2BDDE8DF979E71FCB5F2879D7CA3A879792DED357B3D6AD5F4DD48B2C8D0CD249E909017E40D39D0D47CF0648C251208678E738CAC6C5F45DD79BEF75437F75AC5F4D75ADDD398EEEFA658D81A54255A1458D4131F10A4003E1A663F0D6C19F15F3407982E75DD16DB41B8D4EC66D3347F335B1D47CB93CB22CB1DF5A0658DDE390348C083F6A3F818515B8D4E18D481A595C4EE1EBBF973F9591FE65F90F5CF312EB77369AC69D7973A679683329D3C4F6C11DDAF64E323B8959BD3A2FF00767E2F88D466366CE71CABA756F8E112C7C5D533D03CA7E6BF275CDC0F36E8CDA5A6AB1C6D60AB7505DC52242409123921919C70670583A806B519465CA327D3D1C6D444E3004BAADF39796F5BF3BDBE996FE5AD2E3D5BCCD15FFF00B8FB149560F5229E274951249648D3E00AAE4965D8115A9C70E68E3347934E0899CE875637ABFE570F22793F5CF317E63F9BB4BD175096CE54F25795F4FBA8EEE4BEBF66158669250A0A0DB988B9051577910015C98EA3C490111B757367844226F9F4792D8EB11B6996D6B0DE46E2D5B956348C841CC725146AB508DF651E3D32F6AB239BD33C8978F36A373692DC48E6E6247B8F50020A4655A864E34F86AA38AA91515DC82731353B005AF2C6E35DCC3BCD10A79775EBBB79E0B8B7B7B8371756A5CAC3288AE0FAA8801218AC6E4A74EB43EC2EC52E2882B8A551DF9A1CCA97B75EBDC48D0C173CDFEB6E4A42CE470969398A8480CE3E06E436AE48CC06D88F37A4F95747F39DF69D3EB9A4FE71DAF92B411796F6CD0DFEA375691AC9E8ACBE8FA68C23DD07C28283ED0E27ED1A324E04D70DB91184AAF8EAD8AF987CC1E7FF00266A96FA66A3E7AB7F34C57F677E20B8B4D59752B494205F4E3A95AA1692AC11AA02814E5DA58F1C0FA8469AE739C7D376F9B3F38E5D77CCB69A2690F6CBA86B571ACD8699E5ED1B4BB6613DC1483506BBE30C40732D2AA0048040FB4A9BE65C488EE760E398991006EF6BFCA3FF009C7DD27F2C5ECFCDFE73B1B4F33FE61B112695A14445C58E8ACDBA9E8527BC1B7EF685233B4556AC99ABD4EACE4F4C761F7B9D8F18C7EFFBBDDFADE95E7FF306A1656B058CE1ED753F3340EF34D2B32CEB6EB4FADDC8146A96E4224AD3E26E55DB29C78E87116ACB2DE83C4B57D5ECADF4F8249BD3820813D3892361C58FD90918EF40028A76197C4777369F7BE47F3AF9C2F7CD3AB4DA0E832FA923CA6092E20F8A3840EA8A47DA7F13D0667E2C3D4B091DDF47FE4FF93AC7C83A58B99DE31A8DD200E9B7EEB72154EFB9A7EBCCD106A33DE9E83ACFE6559D9968E4BD4A9A7C3CC135EC3C7F1C9F26B249D9E67A87E68584C594DFAD3EC8F880353E00F5A77391E309E0A63EFE7CB795978DC2508F8B72694EE77DC54E03348C63930BD775BB8F314B69E5CB2BE4B4B8F335CC3A4A5E1609E88B93C2496A4A81E94659FAF6DF012A2345E9DF9BFE70D3FCBDE41BCD33CA9736E754D7562F2DF96ADEDA4426DAD7D3F4E69895AF1115B214069F6987865B3970C683088E32F2EF24A5BE89E5ED3B45B70045680BC92AEDEA4AF4323D36A0E800F00331A32EE72366709715F8D0508F7EBEFF0048C35DCA6D13F592AA47A9535F1AD37F1EBB74C5696FD64721C28091D37E3B6C36C57777D6528BC59796E56A37EBFE7D71B455B9655A926A2BBF214AF854F87F1C09DD47EB0C4AFD90C2A4007A75036AF618569405EC6BB0003103A8AEDD08A7BD302D06DAE5C7C27ED0A8AF706A69B2D7B74C4C90D0B88C2A0AD15B6351B1DB6AFBED87925B4BA0F40AE6A3A0DA9EFBD474EE3002944457045548AAB6C3A135AD6848EF4C41EE414D2EF5902CA2B48C16901A924ED4AFB572466006022016362FA40C58F16A9A373EDB93B54F8F5CACCF60D9496EA9E6082CE1F56E6789235F8812453C0EDE3878AF92B004F3DCBA8DF47A66836571AEEA73FF0073A669D0B5CCCC3953ECC61A82BD49A0C97108EE51569FEA57BE70D02D167D77CB8F6B198F93B4334370C9434225589D8820835A02050F6CAFC5893569A63E9E72D6EFAD96EB4AF2F6A57F6C4FC33DBDB4AEADB53E160BF17FB1192240E6B4539D1BCE367785AD6EE5363A8C1FEF4E9B751BC332FB98DC29DFE59024F445B267D7AC116A6F6240454B13E3DF0F11E81296379834669093A845C8F50012295A52B4C1C5D116B86B7A572023BE0C5BE15A0246FDBEEC1C690563EAFA783C8DC3F2DC7C28E76E9BF114EB84CA96D6BEB3A7C6EE8CB721D3EDC661903286DFECB007E5B644CC7C1347B8FC97C3A99BBE22CEC753BB54A8516F6334A54D2B4A46A694C8CB2C6237207C59471CA5F4C49F70514D4D5F50B3D2A3D3F52B8D5F5060B61A3C76B23DEDC96AD0436A14CB21FF00514E484B8B9303B2677F16ADA442F71AB79575DD0EDA1A19AE352D2EEAC9402EB154B5C469B0775427A06207534CB082015B632FE68B2B6A4E4B2C2EEA1262366E668A01E8791341882AA0FE6E8A26127E8FB962C00506360A7B83551BFCF247647243379BE56E5C6C2652295E485405ED5E54A0C764A166F38CB2F2F563614A0A9651DC53AB50018360A857F3B1B7019E2228397DB4DEBE049F0C414254DF982EE68968C79D0162C287B8DCE15415BF9E6FEF3D45B6B3A08D7952656423D806A57E8C1497D09F911E73FF009C77B6B6F345C7FCE477E5CFE62F9EAF6EA7B5FF0007D8F92EE5B4FB4B5B7851FEB2F732C7AB69B2BC9348E050F255551C78B16AD73169068BE844FCCFFF009C118180D2BFE70EFF0036F596527D21A8F9A2EA363C454D40F31CB534F9E4463EFF00BD265E4894FCDDFF009C5450A74AFF009F786B37C01E51CB7DE658837120B0AB3DDCE4061534AD0D3DB0F047F04AF1532DF307FCE517E5FF00983F2F25FCB08FFE7016DE2F28AE8B79E5FD1747935CD2614D2ED754669256B071A64CD0C8D39F5C48A79FAA03F2A8AE4658C1F7FDDF63286531AEEB78B49FF399DF9CBA4FFCE3B5BFE47EA3E5BBFB8F3CF9066D3ACF59FCCF8AF659F50B4D274BBA8353B2B7BFB758245FDEC71AC7EBB4CB58D68C8C6ACD330BA36C62786EBE1E4F37F3CF9DE6F37F9CFF0032FCC7F9777FA8F90ADE277B9F356BF26A474D5B24BA96037D6966FA7486EE58E7BC94245122B108519D169C84CEE3931B637A6799FCB7E60B3BAB4FCC2D5AE74DFD0907A965E65D0F4FBE7B9D5DE43C25B7657864E0A17E362635E6C58D7931251B8DF641645AD7E6E59CBA04761E57FCCFFCCAB5BFB058A1B1D0EF66BBB1D121B6562AC2DC562604AFC7C54055624531F0C7416A937973CE3E687FD21671EBDAD497D21B5BDB2D455AEA49ADEFAC6512DB5D248E58A4B1308CA11FCA2B8D01C96ADFB61F96FF00F393DE50F375AFE5368BE6966D33F303F30342D3A5F334702A2E9DA6EBF788DFE8133C8E1A17B9914854A1F48C91A35398A63CB193C99C6551DDF4BBC4C8C5FE22C64922116FB18CAAEE4907A83DBDB2A6D0541D2ABC80916666FDCB1E3C5549E2AC3E9F6C06824174C05BDADD33CBC9628251CC74E11824BD3C36A0FBF24771681CD4AE11EF218551042D2BC32DD39DD17E12E46DB9DC8F638072452CA0B7981698F132993D26A319545548DBECD580341D705A40535964670B54670E64F58538554292083D5549A0C28518238E5595A290C410FAB32D09F8A36DD401BED5AD47B536C1765970ED6A25528E847A6AC04692A6FC3930E4188EC6BB6C77EB8696DAB99268AC5B84C2E5A565582A07C72BBFA680B74D81248ED4C495A44C2917A8190504863961B88EB49154F23F1903ED1A1E3415C42D29A34B6D146B213F59003BAFFBAD58BB70E1403727C7FA6285B088E4E30CCD4889649D5DF65E2A0BF115F1A8040ED8693681F47FD36C815FACDD4F472CC4B4702C618ABB8EA6A5A9D76EC3225429BDC0B95B7996431DBB89AE10F05F5407AF27E442B0E209514049EE708526D4BEB0B4F5FD46F4BEB1F53FABFA6FCEBE9F2E34EBCA9BD6986D7AD3FFD7F2C49AE15989974F8E38C39F56540564007465E9BD08A8CE6B841EAA35678A88D986CB6B6961AB4FAADBAFEE26B94B91221250287E4CA16951DEA0EF995199DBC984F24C9A276FC734024CBA65CF98AD5104EA6E67482747238F06628EA01A1A820F4CDD47927DCF2BFCD027D7D22FD873E70FA4E6A6ADE9C85A848ED47DF129077A63BA7E8D06A114FCE00B0C8B3488EBD7F7485C007AF503E632A893C54BBA63A4E83636FA1E97E65FAB992F60B6835457590D7D4B7E3302003F0D386C69DBBE5D56141A21FAE2DF913AEEBBAFA5E7963CD7A5DF791F559D6F21D7AE5E5FAFC505D566689ECA28CABC8AD232AF165562013C4569803540477E6E64B4DEA3BED6FA0FC95F953A0F96BCBF2F97AF649BCEF6ABA87E96B6B6F32595ADCC162FE8FA4ED690B2BAC624285A52AC013B37427318E5948D8D9C98E310001E9DEBBCDFAD7E869FCBF73F976BA4798FCE3A5DC4DA2E8FE5382E7D3D1EDACB5696DC5DC9756767E942D3811A9B7E4CB4F89BE2E8620448225B7DED73CE233881BDEC7C87922FF383CCDF955A46B7A3695E6BD6356D2EF9AD64FD026C209EE8159AE12264648629F933100AEDC980D80DCE578F14E891C919E18B2CC44F3E8CC748FCB1F2A5BDD473EA11DF6A8B1CF0B29BA978C7136CD13388444E8E85451891DC28041CA724894E2D263C66EAC87C6DA4FE71FE754BACF99B40D4ACB40F3AEA1A5CB7E9A9DBF9834B8160D26EA00E8618658FD078632CA691B73765029DCE6CE78F10025B805C6FCD4A237E6A9E60D63F3C3CDF66DA6DEEA1A6B6897D0A9B9B3D092DF4AB4B8476AFA772282671CB991CB6237A7D9A4639314776A3A83939954F29795354F2E5C8D7135666D6202CF169F623D48232C4D5FF0078819E54A2D1800A0D7A8DF28CFA913F4D6CC0191FA79BE82F3CDB681F98265F2879AAC227D43CBB656D7373E6C8EDEE25B5B4D4B8AB5EC176D082F1404AED206D8F22D45DCD38F24B1B93988C92AE4475FD08A9B5DD3FF2B343B6996FB40D5F56D55B9AB1BD57B5B5D36184A4096DC6AC222CDDB89353B31DC110390D94718C11A1BC8BE77D46FBCA3F98324DA3C2EBAF4315C497CF0C0B25B46B35C46544E8018CC87817553C5828DB7AD4DD18CF16E1C532990647930FD57F2C4469A7C3E563343756F7A2EEDED6F5E331DC227A312C31CC10953CC46A0C89C3AD2807C5910D413F52612B7A7F927CA3A5F907498355BE649FCE1A9DB2B6B1A9C94E709981796DADCA80234F8CAB94A73F719879B31CC7C9DA400C6287C4A5D73F9892C1771C7656F0471A44C65D490FD81249442D250F056E3D40FB3BE088A693225F2F7E73F9FBCD16BAFCF3D868179E63B396C62371A9D907BB3676F6DEAC9209C2AD555412F55AAD1B7A1AD32E1012A16E31B05F36BCDF9AFF009A1736ABE4EF2B5EDDE8A91FC1AF080C56A39F5293DC98A3AA835F8791E997C7C380B91620193D4BCB1F9337FF0097F630DCEB173A1585F5CA318D2E6EDE791280B122DAD219A4724EE68327F9EC71EF671D3CF21A02FDDBA789E5DD4BCDA9CFFE56CE85A7D84A780166215B8E20F100C77570B329AEDF1443E5825AFEE0C4E94C4FA811F04BE4FC98FCBDB6F5A5F31F9DA7D61E005E556BF852228F501DC40222012280B1A576CC796AE72228736431800D20A6F227E4CDB4124D258D8AA426AD7D2DC5CBAF12C12923726A54EC29D700CF32686E5408A9D8790BF2B757B1BAD474FB087EA36B722DAE6EA09F51411CA6800705C053B8D8FCF19EA32C0D1D896C186C710DC3D23F25BCB3F93FA6798FCCB6DACD80B9BA482DE688C97B2DC491E9AF14AB2C96F2B12C91FD6382CE53E2A18831E0C7361A691CA772E3649088613F99FE59F25C5AA6A73F94E411E9905BC93EB3A75A399ED52148D8C72EECEA92AB71E0C28C5E8B5219865B9888CA835E3248B78AE87A8EAFA6A416DE60B38AD4CF12B417A8FCA29761C97B1565AEE08F96D98DE2449DB986DE42D99AEB5614506F541F8542EFB966A2AF4EE7A532C0657C908D7D4ACA9FEF551D6BEA720DE3B8208EA294C8F1D14DA1CEA7A79405AECBC60104A2B36C4EDB01D8F7C8F1D31548F53B30C001733F21D7EAEE763DC1A7E389CC192AB6A7150B3DA5D92DD59A300935AF52C37CACE703994D1429D6231C48D3EE4AB1D998C6B4AF4EE71F1C1D81503A95AF7B74CCCD1698AC2A3E29270096A57910AA7A9391F1E254C48696FF00510030B2B78D8577E4E475A507C3D71F1822885192F356900506D6DC96A2AFA4F252A3C491BD3AE233772943C971AF2163F5889947150A9001C8357BF23D3AFBE019D0944FABEB51C8A7D709178A201B0AF527C70F8A9A486E752BE13C72DDCD2DDC35ACF6B1CCD1B53A6CDB80457C287A6113B410C8EC6D2D752D3EE66B0FAC1922BC78AD125760C502C641715EC5CD687A0C95AD33FF0024FE56E8170F71E60F38AAEAD6768C4D969D785BEAABC3A49320FB64B7ECB55478647264901419C477BD43474B1D0F41B7B9B4896D351F304D35DDE5D410A44E2186491618230A38AAC6AA2BC8D0339DB6CA246EFCBA338D8AAEAF30F31D8DB6BC2DAC751B7894DFEA76FEB56AA8AB10326ECA7910C5029A9E87E8C8E297AAD393BAB767091488AA3947672BC6082157E1E542AA849D942D3B54619CE37B6E98C280BD9E2FE78D0AE353D365D3E68C5D5EDC5E2496970E4C8FC049C9D92463C976DA84F4F1C71E6F583C9138D0F362D67E46802C4B340D1BB005F903CD76AD4D7F8E66126DA6BBD9969B6A74DF2E4F1C91AF386065B660A092B235109EF5F88E6BB2C8996CDD5C3CC5A67A6C46182355AA85A7ECEC3B576AE5465E6A22C8E10CC02A3F247EC0FD3DC6437014D5F932A8EFAD7545B087CD3A72F98E2D2D0A6957924EF6F7F691331668A2B90183C649AF0955C03F64AE63981893C26BEE73B16BA428487101F023DC5318D7C91A6B5D1F2C7928D9CD7D198B53D5756D4EF9AF6452A01447D36E2C9020A7470FF465D0CB2E1E1C918CFBB6E4C736A224F162328DF3DF9A07CBB05BF94F5F8FCDBE5884683E6586E22BCB6D661E73DCC1342088DA39AEDA69052A7A9EF9747513076DA9C39459C799FCF3E60F3BE9573A379C6E2D35DB6BD0D15D5CCB671477651DCBC8A2E21E069217656A8A90CD422A72D3ADCB2F4928F0C0DDE3FE65D274CB68E5BC1E5BD1B55492D92D6DE2D42DA4782DD5163549563B69AD8F38D23E2A4B950189E355CCAD164128F09E7E6C271A2F33B5D1F45F496D9FC8BE52E11A90B45D69797C5C83329D5594115A000014ED5DF33698A2ACFCB56FACEA167A2685F96DE5BD4756D4241058E9D6916A92CB348DBF158DAF8D4D054EF40054ED93E141281FD196114DE8CDE47F2A42EA03A34715DCA8EBD9E3952FA48E456036656607C6A31AEE472E696DC5D6A1A36ADA05DE8FF969A4EA7676376977AB7E89B294DDFA514D0CBF57492E279E3413FA5C58F0E456AA1802D51C2536CB2FBF3912D3EAE971F937ADDA3FA2948CDA5AAF2092B3D6BE156A569E191E150414CB4CFCE1D4F59673A1FE4FEA4CFA6BADDC8F7175A7DA222C932B28E5298C125D76152D4AED4AE4484DA6BA8FE69F99B48B117379F9688B692B4B68B1DA6ADA6DDCC82E8192863819D940229CA9D763B9C8C53BA097FE721BCCCBC9D7F2DE73399DA7695AE9509E71FA6EADC76228725C08B280FF0095F3E6F3C157C8491A88D237692F68596356451E2080E71E042CFF0095F3E7ED82F942D23502256125EB166F46BC6A41A8D8D0D31E04DA02EFF35BCE375650596ADA74177A04371717F7FA1D95E1B733DEDE705B9D42531AABCF77E8C31C28D33B208D163E3C2A0A6213652BD1B4E7B3F374F6EB7B6F77FA5B4BD66DE6B855759AEA3BAD364D42D2F19000AAECD044ECA09A0E43B64A10F3626555B2523948BEAAF986321A8DCD2DDDA95DE9B8192E203AA90A2D1460ABC9A90BE350812E2D1DC51BBAD1D0D476DFE8C8D8EF4EEF4BD3AFA6BFD1744BAD5751BBBD96E2C916492EE497F7DF57965B74918163B958C0AFB62000C7A320F2C8B44BBD52C20492D86A1664B461AB4750C5654706A185415237040C35B15ADDFB9BF917E74D73CFBF929F945E75F31319BCC3E69F2B595EEB7305E3F58B91CA19EEDC5053D629EA1A6D56246D9853E6DD0FA6DEABE9070D3F36FDFF00EF0965A706083882B5A9029ED95F0B3BB52122DCB005552D12309E822D39FF002EE0915A035C541E887621239054F15468A4A93C578296AB548214122A07CB1B293DEA73992EAFA1448805B29048E6A008D12836AEDC80F886F89348E6DDBDA2DD5E155910476B68C2056213615666F02C4000AE4C9B08AA2863198088D1DCB90269980550A85096240A1A9A0A506F95C480CC8B52760F14510965088E9EBC8AA2A55AAC456848049A788A648A2F647ABA45F0AAA0B7F53909157E345A10557B2815A54F8E2800206388DB2CC902B399E7FF004B9D9882A06C1CEE450034503EEAE22CFC136152E11672A8CE523B76669228B70E12A55191AA5B715007702B8ECB7F253B9669CCD37AAB14A857D575DDFE28C32AD53BD3A6FDC6208536BA5692D2096FA353717B711491DADB3ECA67855B82B36D4A9622A4D31BF2401E68208B17A56B248F22C16E96D3CCFF0017AC63A962A7A31AEC4F80A6237DD6A91FEA9FEE6A9FA43853D1E429CB8F2EBD69FC70F1143FFFD0F30EB8F35EDCC977244B0C4CAA388A9A851B396FDA3F2CE6232AF7B8D9A7C723B310D24DC5B6AB77FA4217B6B611B72F869D45506E05436C77E99913E5B39158F18891CFAB1BD6642BAC5DC8E541D404731E35A7278C06A7D23373827C58C1440DBCEBCE90CDA9E8FA3450D659DAF23B75A0058B48A5075DFED28CB697AAB797A1D5E39AD4DC69E6DEDC2FD5EE27E6BC4562E0945EBFB23EFC8C71D1B448F9B5A2AEB7A8693E5BD1E3B38E3D1A5D17EA8B72D0F259DD4CB0CE249F8908CA14D176FA6B921DC93479BF697FE71F3CD779AEFE477E52F9BF596834D96FFCBB6904D70F73185BA5B05369F59FB4BC4BB4241427906AD46696742463DC5DCCE40548902C5A0FF3175DB6F39DB1F26E9377A85DD9EA4EB1EA896558E5D40321296D1AAAB48D157ED020191A95AAEC65198C7BBAAD4679643C30DD3FFCA8F20795BF2FAFCE9D673472F9C6E266FF00709EBA33C32200A622DB47EA8534DB71B8505B2193299EE4B93A784227D44713C83F36FF0030359F2DFE68683E74F2F2D80B9B2FD29A7E9AB756FF0059511B2436D48E3D886542E5596947DC9A6D9938B1F88082E34339196447B9E61A3FE64F9CB46F3ABFE64C7AA3DEF9A6ECA9D664984661BC8DC2C66CEEE0468D4C5E9AAAA85A7062AC85786649C5194785B619A5037CEF9BDBAF3CFF00A179F759D42FB4FF002E5C79775DD76CABE62B27749ADAF2F0426D967B7B84E12BF38F803CD5587C3DC93981970CA039DB8DA9A97A80D919A25FFAB6B671BAAB52DD65532AB1A4C894F8890012A7DE9DB2822C38D1DA4CBF437BCB3F30E95736F37D4675BA8561D52011BA444B2464F076A3A805AA3DFB1CAA754E5E98119053D275CF225FCD068B7DA4F9F75BF29EAFE5DD66F75BD5759897D5B7D4E2B8E325E2DF69F1C8904D1F18405E6182A545181A6591C8458ABB76B0C51851BE5CFCD8EEA1ACFF00CE36FE71B5AE9905D796F58D5357668F4B482DFF0046EA7CD49A4B69752DBC2F2388C1E203372534286A406432E1DC020328C7165B88AFD2C7A7F2347E5B48A3BE1A65AE95A535B30BBB3922B08FD52EE90A9E31B328A48A4A9A8F7DF231CA647CDC13A3313EA3E953D0FCBBA3D9CC750B2B81A95C18E5860BCAA4C90A348AB334732D7D4E663E35A7634A65B39EDB338618C4D836124F312DBC6CC2546B992EFF00B9D3E327928FB639FECD59B893DB718044744936C2F5ABAB6D223533DC25BDADD1956DB4EB68D259E574A7ADC14935AD42F2000EC4E5A224F26B94803B961BAAEB463B199F53BCB4D374B9B927E86B5408F70643F02CCE115DDCAD0155D8927ED601B162770F36B8F39EB3AAF99744F2F5B5ADCF97ACE7D56CB4FBA8E48CA6A0D1CD3223A223FC50FC2DB13F1528401993F971E1CA77D090B87D7388E8487B46BBE5EFCBDD0AB21863D22EAC158CFA7D94AF24979154B2FAB23F39A56EE4B48188EB51BE73B294A5CCDBD2C35B1D3031141E0BE67F39E8FADC7A8D84DE51B1B8D723B4964D0F49B986165D416352D135ACCAA19668CD18A03534A577CBF0E220824D0BDFC9C41AF8E4BAFABA5F57CC3A1A4377AA5AE917B736DE5DFD272F0D4EF75046B284460F369650505389151B50353A75CEA27202171175DCE8C094A5B9ABEFD9E8735DEA5E798B4AB1B69AE63F2DA6A825B8D44C2423FA0CE610B23001A88BCAA7DCD3A66B71F0E9C711FA8F473A1A619E518C76EF2793DB3CA3E5674D2AF6F34EBEB53A15F5FC53B7D7AFA0B10A16A8F3DC895D154469C9852A7BF5A530B579B266903442462E01C3C40C6F7DFA249F989A2792AF2F7CA72F96E4315E69BF58E7E60D22EB8492FA8A4FD60CF0B73461528B46F8958AB03DACD1E5C98EC38BA838E52F44680FB58CC9A57E928638B5AD5AFF0055B4D3D8496505E4E044B228A2C8625081D853ED354F7AE67F8B290DCB8F42F96CF25F3E5E596951C6904B1C725896B8760C187D8344A82412E36A64B0D936B335B045476E6FAD92116E628AE1E165E6016E2CAB29E2E2A481B0DCE599664047265F17922C228030B5E52B8D982D6A450F7F73BE6BFC6323CD9510DFF82781AC482104D54AD411F46F5FA725E3792385190E897360922A5BA5D0535151C581F0AA8A7E18253E25D90F769693C415ADA5B79F9502952549F622A32BDED62484B9B4F2A125F46B09217983C810773D308DB914F15F34EE0D11648C8453CEA00DA9D37209F7C2096376B5B470B1B481C3BC4DE9B42776DFA8E94C8DD9662D053696621196B62282ACC0D3E55AFB1FA72409DD8ED4809AD094558D42B81B03B1A74EF4E992E3DD03924074D2642B27C519AB0049A81E1F864848F7249AD90F79A1C26362B0B034A071D77F978E5A2658D216CEC2EACEE52E2D256B59D372B5A8607F6593A11E35C788248D9EB961E6E921B482DA5B49E130127F72AAE8EEDFB3F11DD6A6BBE573C9B3640245FE21302A58C1A7C91E9B14EF75A7CBEA52682EA56E4E63A86528E492D1B6C6A7A572926CB32503AE6AF71A934622B11609C919E6043C9EA290415A28082A010454FBE364A2EBE28D83CC7A80B58AD2E6C2D6E5ADD044977578DB883501950D08FBB002A644744B67F56EDC4ACE7EB0D5E010700ABDB8F86FFDB8802D06479DA39A39E688A4F219148E22370096FE6A1A0D89C4E43DE9DF7085D62109A5A218F8B5CDD40A4D78FD8AB53AD69B60DC9080697DB47C913813503E2A64504F72751A056D803E2C41F0EA3E5958360809904DADF8B16002A03FDD72A50507603AED82CD6FF8F7A2F747C10AF103883C37E276E26B5A7DF89C83A6C911B44702194951B3555BA75F1F0C1126219733E6E300E5C9D6B2034057DFAD3DB2767A725E6AAD1DBCF0BDBDC4758251F1C66BB006A08AD3A13B64A339448239A0EEF38BDD19AC253B9785BE247DF6A1DC6F5A81E3F7D337B83347246C7C9C7216E957BAA681AA58EBDE5FD465D2359D324692C351868C50956461C583295656218114A1CC841096DED6E266BCBA5B483D28C470DAD95B4363690431D58470DBC0A9146A0966A28EA4E444424929559F9834AB0D6DB4492587F4A9557B90D3BA7D591954A0915627AB51C542D48AEF4A1CAB264E11C43929DF67A0EA9E48B8D765B4BB9354B5B58E18D9556047BA1223D183FA9CE107DA8335F2D7D1E4DA318A7695E4ED4F43FAFAD89D13594BCFAB98A6D405CDB344625915D42C62604317F1076C46BC114414F847BD327F266ADAFC4F61ADC7A468D6E248AE6CE4D205C5C4B248BC95925172B1AA2806BB027E43213D70AF48DD231D734CAD3F25B469EEB4CB63AEDF11A95DA5AD6286D9286446E04160E0FC6141F63E3959ED09F2A4F8605A09BF2AFCBAA2031EA3A9CCB3287218409B7886109AF8647F3F93C93E1C422ED3F2BFCAF41F5D6D5590EC4A4F0A56A40DA901A644F6864AE8BE1864F67F951F96A4C22F74FD62ED5183B3A6A4C15D14FD89112343C4F728CADE0C32BFCFE5BE94C8E30CDE0FC91F216A7E66F29EB7E5E82D7CA9A768B737A9E60B0D3F5BB89B579F439F48162963A62798D7EA7F5C8AE1E79A29A4BAFB12FA4C1C47183938BB447F1359C66B67A4DAFF00CE2D7FCE22697A7C577E6DF357E74F9334E5540BAAEBF6B6C9A6A21A2033EADA468D7F61110680FA93AD06FD37CBA3AA89DEC81EEFED531F27D03F979FF3849FF389DA95BC7E68D122D4BF373CBF2C5E8417B379A1354D303C8CA4CC8FA3ADBA89A3028BCDA8B527872A1177158B06FF001E4BD4305BCFF9F75F96E7B7B3874EFCEAD6ED34ED3ADD34ED36C9BCBF65308ADEDC1E0247FADA34923162D2484D5DCB3517A098C840418824D0A793EA5FF382BF981E5CFCC3F2B681A2EAF1F9C7F2FBCCAEB1799FF30E38A0D32EF4380F3FAEC773666E66959A4801FAB342CE1A4342A9C4B19C72DDDA278FD2083BF73F5634AD2B4FD1F4FB0D0745D3A2D2B43F2E6990DA68DA7C64FA56F6166A62B78A3AD4911C681413D7BE51566D90F48A0BE745968C92F2091FEF42AFC239935A03DF6A9F0C0BB84608F8BE9B0B702C583BA744AFA6594C87C00153808483B25C021B64F51CB95473F5B3F09FDEAABB33780A01D71F25E7BA1FEABEA130255AA2457DC0E21DB9485EB4E4CC45773DF1B502DB713C76C891BC6CD3A929EA2D63009A28E2B424F115C140A6CAD697D6681968D2346AD3D541509BB020F7E23E2184456C293C6672D2C702BBCE238CCADF123FA6C7E0A03B6C3723E8AE1545BA52462815A245E123B900A800569D8F4A1AE477E49A435CAFAB15ADA885E5546F5562D873908263A81E1D68761DF7C3D17CD5C054517E245731C8C933BA8550472577A0EA6B5DF6F0E992B60109206FAA8B385291C2EF35E481543372242C6D5A135008AFCA991E2655496DD249244D05BCBC87FA324521DD4FA802C2CC4FC5452413E23AE486CA485612F15B6685A491F904891507258BED17095AD4AD491D42EF90DC32E6BA97BEBD3D14F4F97A94AEFE9FAB4A72E9CBBFD9A576AE4BAB0A35CDFFD1F28EBB6FE62D22F9EEFD533DB49335C4B681244760CD4865B6924E4AD55A31E248DF751D33402309FBD8F0449B28B3E7ED1F5AB49ECF5253697B328FDF48B4355F8B72BB50D3A8C8781289DB70E4CC47246BA9797F9C21863B8D32F2DE4468EE217898AB06E0637E5B9F70D515CD9767C8F0907A38F1C66028B01D72479344D4CC0DC65B1952F2DD86E418DD65A83F49CCF2A91685733DE496FAA5CEAD722482F052C480C878B02B524F42B4EDB657C66EA969947966EE682D6F2C21778CE9BA95E44155BF6249BD7503C051F2D0698900BEA5FC98F39C1A47E528D221114DAD685E62D634BB28A48D5C5B40D70B791CF25482471BA21140DC8F00735F2C2659493C98CF1F1D773EA297F3DAE34FFCB7F2FF0096FC9F1DC5B79A24D1534FF34F9C258D229E1959184E2CE552ACF3C8DB996A1515A8073238D71D28E2B97C1D8E4CB1A11C62853E7D3AADDCAF0D85C6A37D25AC2D4339B8B8991083FB5C0B6D5151B8FBF32440070EA3DCF51FCB3FCA9B1FCD6B4F30C171ABEB1A2EA3A24719D1F538ED639E3B896E5A94B849DB94881915B8C6E86A454EC01A7267E0200AA72B1618CE27BC331F37FE4C685F971E54BED5FCE9E72927F33DEB1B7F25681A4DBA41F58950715FAC2DD879E48D4026464E0117ECB1720910D44A73A88DBAAE48471C28FD4F18D235B9B47D4AC352B3844F77A6BC728B60194CA142999541E46AEA6ABCA9F693AF1399338090A714D1D9F4168D2452BC8D6D3A3D84B7F2C96B2F2E6AF6D3959938904804ABD07874DE99AC22AC38841BDDA97CDBA058C979687CCF6BA75E5AABF39D2525A19544941C9542AD197A0E846E7624918244724C0481B0CEF53FCCAD66F346D2EE2FB5B3A5369929BA1AF4728B36999A20F1895AAA8CD16C4352A69523A56A8E2F2B7232EAF2485723E493D87E63DAD87D6FCC96BA5795F5ED62D2DDDDF5E169671EACAC9346CED26A16CBEA7C68191D98549FB47B64B26232144903EC6CC3AF9E21B8B4CFCC1E77D63CE3A51D0ED7418F47B6F3A07B4B0D5CDCCCF56B49A33EAC65D2353E9B827A5680D32023C3BB71D44F20A31A0538D735BD07CBC89686E440C8D125BE9F1234D3FA42A2BE9A292A187C5F18DCEF439288BE6CEC0D9E55AB79A6194CD068D61235D49237FB91BE6A462307950C1151C86D98872BE0332610EF6A94C304B7B2BC9354748606D6BCC770A9C3D561FBB8D8928642178C718FD9445249FB2AC791C8E6CB1C71DD8C63227664373E5DB2D12C92FE779F50FCC2B6573AD4B2A931E9E65148E2B38D8B04A21E5C816661B96E8A35B3CF2C87B87739F1C18C4F1C25B127D5F8E8C7BC95E5DB79FCF116BF1D809AEAC55EE751BE99CB2C2CD0B451C81589024248E24EFB13DB0E4D4CFC3F0EF67A2CDA3D3E3BC91001AFC7C543F3263D6FCCFA3EAF77E53D2CCB79631AC8B31E3EBC91820B380EC10B8404A2EE69E3D321A6E0190789C9E6F51296724C63B0E65F22F9DFCBBF98969A35BDC5DDAC17B64CC2596D635592E2D64AF256561C594D01354DD7C736B8CE94CCF09AFB9C10252351DCA4B0DC3EA5A0DC6B565E67B9BF8B4D6E565773063716B3C255AA1E64E41AA40A8D9BDF2891961C823557DCE7E1C1E26324CAFF0043CBF55FCC4FCC3D7A6BBD2AFF00CE7ABDFC52305B9B069B8DBC6AA388411C6AAAB4F003B9AE6C2386037A707265C9CACB7AAE8DADEB31E95E60D2635BFF003069502DBEAFA14E39FD623849093C3148C1581562AE1486FE37C240ECD54C6ACB58D4BCBEC6DBFC2573671A025602B7285541D857D324F11B57DB0CB109754A789E6AF355F811E9BE50BB9646D8563BA941AD3FC9407EFC87803A95B653A3F91752D7D22BEF3858C5A6BC732C8CB24959DA35355863B785DBD3AFED721C8D49A74224671C639A007D0BA368AD7531BC957D1404F08DC71DD88249A74A9EC36028335B9F2F1165D1EA567A6031F274E4A050B537EFD8F5CC4C92E8CA369C47A589018F8A82455871D8536AD7222566D3B856FD05052A13E37FDA5151507C3AEF899EC9114B2F3CB16F3C0C23500822AB4E2493D3C075C1C64208058C5D791DE383D58C7A5316039A164AFED1A8D81DBC464FC4B0802906748D474FB7694AC771122D6457AA3056DBA80413B8ED92E3DBCCA81F26A1B476546BAF5624040F55D796D4A0DD01FA76C3023BF741479D1A09A269639D2448D7917422A001E1D761ED80C881B8B48AB62874CFAD8E0A0C88F40091E07A8C1135CF92D58D91B1797221B18D94915DEB4076D81FE1938E4B5E12BA3F2E41C882A1C8EAC41DC8DFED1C878B7C93C348497CBD688C19A3506BF013535A8249AE23211B2D7553974B838165556DF6E2285BE81FC323C44ECCF6E64204E9913868E5A2A9E8D41B122A2A4EF40718921491B745B169B15024A2A631C58F4F115F63D3A61250083E6964DA67D5A7750BEA514329A1A30FC41AE11225208E5D1521B7839A99548602BD3FA65A06C58581B26F0C56FC406555AFD89A86A7C07C54DBB632E544281DC90F9A6348D747B75656F5669EE6BD4D155501277D8D4E42376CC1B0D5BAA2A820548EE055BA7715DF217D3A26AB709B46847C0240E1D6B210771415029F4E22542D84B9D046AD2A41AF153C5B88156DFF00553237567BD908DEC7A26A80015A903DAB4AE31BEF0C4F35403D4E408D81A78914EFF3C4C36BB4836AE4D16BC69E277AEFD883E34C14597D888B7892546E6C58B6CBB50EDEF5DF7C788A00B5196D849149F17A664A88E5E0AF434203716F84D3C0F5C98C9C0477A2B63DCC4EC7CA37F15CDBB5D5E585EE9D0504D1C76F2DACCE16A41215E44A9A8A914F619B11DA400DC3138EF926D0797F4F82E05C7A46F2646578239F8BA42E8D50C883882C29D5ABF7EF954FB4272E5413E1579A287963CBFF005C9B50FD0762D7F72024D7A2352EDE2412BC87CB97E38FF284AAA82F8613882D12D60822815638625114318AD3881B7DD98329126CB38D26115A48E76625A84B1E868BDA83C6B918D321C99058F050164AFC3F0034041F98C4DD2D809BDFDE8B4B65D463A25E6977305F5BC8A6B4FAB4C922850C3C1698DF44A2E5D26DA19E68221E9FD4EEA7B65461F696391803F3F849390314895EE9AA595AA0A145045681EB423A11FC712B68A82D34F0C1A38D91FA8E142A0F7A0A0CACC4ADA312CA104947FDDB02AC081C4D46FF004EFDB226D48B649E5AF31F983C9BABDBEBBE4ED66E341D5216562D0B1FABDD2020FA3751578CD19A5086151D54A900E1C79258CF144D2F0896CC8AEFF3B23D67CCDA97996E7F26BCB16FAFCAA615F30795759D4BC9DE645675E2FEA6A7670C915C2AF5559D9548A72AE660D6449B9445F96C58F0F4B7AE794FFE720B502B125D5EF9912D6378A392CBCEFA1DB6B5C5E242A123D6FC973BCA10EDFBDBBB191B7DCD6B9911D6C395D7BC7E91FA987097BAF923F32344F37C0E977A9F962CFCD0F732C07CBFA4EB8B7CF0C48CC219505EDBE9D705A64F88A35BA94E9BE64433465C88BF7A0821E8BA83A693A749A96B13A689A5C51A4BA9EA17D22DB5A468A01F8A694AA0DC8A576CB0FA4592BCD036F77A7DFDB2EA5A5DCC57FA56AD21B9B2D5AD2559E19E274528D1B8D9C3AD29C76A646EF709BB4CA48CAB89669853D589CA05242F35A80074AD376AFCB11CD25012237A0C4D47197D32F22F252AB571DA84EDF76121429C9CAE19521F84C6DEAB5C1FB2DEA50AB10057FBB38A0A9991C37A8AA648A11EA347C097654AEC286840EDFAB0DAF4A51F46552816AC5636E009A2A3CAC5789237AF1AB01F4603CD5156D18B582D47005A5122BAA741BD4B7D27AFB6293DE8197EB08C6285E31EA9E16908058125558B330A003ED0153B9A781C049B5AEF5FC5A6991A38DA39238C066268AAB22F22E412082388F90F9E11DCB2BA581A0F41926512C57812564E542A1788F55C9DB7A56807B9C04A7921E20EE64BB6DBD4666E05B95232A103A3FC42A78F5AF7C368A37B2C79F92ACA8818CACF71F5905BD088C602AC2C00E648DF6A6FBE0E2B3B2F0D051BDB6B5686E84566025B70B6B8811B8330B908D2716143F083BD3AF4ED92E1D978B756FDFF00E8FF004FD48FD5F43D4E1F1F1FB35F478F5FA3C323BD52F08BB7FFD288F9D745B7D6208356B5923D52F259008ACA09E6B8975296ECC5C6E6364F56B03420722B1FEECA82DF1BB2C7CEC48280384D3C0E5D1F48BDA5ADCE9D1D9DD58C4B16A514D7B1C7CE5E615DA056573421E3E346A7DA6A71A95B78A43AB3045F930EF3B792E3D23CB6BAFE99ABDBEABA60BBB785EDF92ADE5ACB2724293435276240E4A4A9D88343991A2D4094F84F36CC9022208E5DEF23E6B3A5CC2CC69731B230A6DBA95D87D39B56962BE5FBBB0B3B5BCB5BE7916479964B7088CFCBE108C28A0F74CA324493B05435FDDC4F7B7C5A4BF86C6F84539102346EF246BE9558501A15A1F9E5A2D5F547FCE2FDF79567BDD7E0F3BE9FAADDF96A3D6B4EBAB8D36DE3792E6F65B9B1B8B78A06652A4C53CD6D12C841AAF8804E636A3880F4FCDBF04A11DE4FA63F30C795EDF4DD24C7A1DAE85E739EEAE05EC5A040B6FA24BA754F02D13C8E8B7111648CBC62928064615398FA791913DCD7E2C67C86E39A03C8BE6A8F4291A3BA9E65D1EF66170D2A44EF710DC2803A7104A52809A1E205576A8C96784A5B8E6D7931890DB9BDFBF43B79CF411716FE759BC8BA6796BF486AFE6BF33585E5CDD4571A4C70A84454B79A151F5729CC86E4295A54D4661E298C72E131B91E4DBA787144DFA6B9BE7EF3943F97964F627C95F99F79F9897F74AA351BBBFD2DF4E11714011BEB12CA5E40C55940A507DAE46A466C71196F62939384CB636188DB5EC6F2999278E4E4C21B425C7150ADFCF4A8AA9D8F4AEDD172DE16B029EB3E43D7D66371A3CB2A599B34796CEDE12C9CB90A168BECB5119C354D2A187C3B0CC4D54083C41C7CD1BDD96DA7933F2E2F3CCFA35DF99B4665D16DEF8DC79974AB167B7B7BA33040ECF1C2C8E68FF131819188AAD77DE9F1F270D274F90425EADC25BA87E586B9E63D5AF750D49353BEB2B3B7927F2FE8F6D1ADBC4BA709196D96DA5BA594CD2C815482801620FD13867E11403318F26F51F37CFDE6DB9D13CB7E60D620F2C79806A8BE5DB391E7D56CEE1A6B75BC4B29649A24B9521654899383900A17E43A0CCD8FEF21EAEACE1C40EF45F4D79D7CE9F9A5F51F216BDAA796F4281F5B8B42D7E4D634CD5EDAF23B686FC179261A7FEEE78A111390C58B852689CD4573530C98C93089363C9D86A6338916000819DE392554323B2CB219249D8D59C30AF276AEE48A7C59910E4E19E681BFD5929E9E990234C77B9D76E3E0B18805A890B1149028FD94AFF954C84F3880EF2E7E97B372EA0EC38627A9FD0EF297E61F927C97E53F326A773ABC0D30D45638266945C6A3AA3C88034852301D52320B39E21403EEA0E04F4B9B3CFE93F1E4ED33E6C3A6808C0835C80DF7F363BF98DF9956B1E912EA7A7DEC675ABA821B5B0BCD3E365E50CDF17A8ECFC802B157D32DED93D0E9F8B2709E8E9B532C99E3E218D46EAFCDE7BF95F61AC68DE6BB5D50EA22CE5BCB796DD34E95A45FAEFD6E20213721995569CC48A1C96E417C77CDD7EA61287001B8FB1B74B8351472407103B7ED7BE6A3247E58D0F51B4D535785D1E166874DB68FD571212012D27C3C79538FC5B7874CD18B916EC78E501E1996F2E41E07E6DD5AEF52D2EEA58163B7B54ABC25AA49201DF97ED52BD7A0F7CC888A6D8F83A19804F1E4EB5C83E3DD54DFE9CBF52D36ED6CED6FE4FAD08615F8C3485BD5A9355524D0023A2F4E39B8C7523C44590E067E3C7C510685A3340D02DA3238A720496673BB31F124D6A6BDCE4A790D380012F46B7D320089FBA01909E1253E2AD3AEC3AE639C8793223B91E22D6D38A5BEAD7B0474F851666240EDC4357AFCB2632D0E6A6D38B4B0D763259F5EBF6F53934B1CB2B3235452850FC3F860F1C941149ED8E9F35ABD5F43B7B9E46B2DC59C860948A7F239743BFBAE526409E6904B34D32EAC3D430B5E0D3A68C55AD7508CC2BB76120AC67B7ED6F9123BF75E8CEED4CBE9ACCF6E65B77A149A02258DBA50865A8A7DF94E420F26401E65328AE2D56B2CB308234D98B9E26A45295245306E3A2281EA9AA057414150E09561DE9FD6B8DEF69BB0849A1916745A82AE40655A72FC7224A6A8225E19A4FD8238D0106941B52B41BEFDF1310026ED26D52226D5600AADCD873400D2A0F5DB6DAB87891EF4B5EC9BD311247D000549EC36AEE298C456F6A77D90B75A6C531AB8058D28EA3E3503A0E5B12373838C84D79A52BA64F67F1C52A39E478A38AB15FD9DF622B5C4EFEF5DC15E92CDEA179ED78A538BC628C091EDB53E9FA318D0EAB6508656FAC4923C6C236240551C788E9D3FA61A37DE8BA424F119244092F256249AEEC052A7E74DF240AA53776F2C72814014006B51DF61D00DF1200EF4D928196DA7236A82D51571BEDBD0B0C400BBFC52A9E3D44176DCAD685C0AB1A75240A54F6C99A051CD64B772ACB6E6788811AB932712C155582B027B1AEDEF921756C6407464760D149034917DAA72825095259BECD0FB9C918C9411D5379AD66978473DA20084F125406A0DBB1EC3222403221E67E6581EE3CC06D6134FD1F6B147E9A803E39AB29AD3BD0A8C844F0EECF7E4BA0B778E45F500DD6BF2A0ED91E2B52291F12BA229551FCDB022BE3B8A78E2773CDACA6513292B46A5178F1E3E1D4EFD7C3207D36CC6FD11EAD56E0C380A900D7AD3B50E4A8447362248E89507214A9248E036F90F707247709BA28FF4E35B7222791E69147AA0500EBD29DF71DB10470D2DEEA51A155AB72561D17A52A7C3217412D1432536A0153F09EB4E992E0B0B68C25228B8A1AC8DF6B91DC9ED5F91C1BD5165B5EC848BEDB711F137C25ABF0D075A83901DC549ADC23E301450AF26DB661B114FC709288DDA2D429DD94AF722A69D7607FB71B46D688498AB02DC0701B0FD5C7E8C0C95E372793B853C8540AD4F5A6F5046481E89B43EB5306D36FA0E9CAD650CA4D7F6180E9EFD8E0BDD6B66589AC3BC57132C8B24924D0B1661F695D11CF6A6E6A3E7F3C94822D506A1C83093772542C6C45541E86953E34EBF3C8B2504B9714A39E3DBA2F41D3AD3AE4792A3A0D49D29EB2A9614E4D55E4413D41D853E9C2421344D4394A141254D4247D000C6BF09E86A77DB22636CAD19736B3C2F1DF5B46B22380972CAB501C74AFCC7EACA8C482C8EE9CDA5DEB52214B540BCFE1A21E3B1FE635191A058A771E8977A95B95F315E5BDF5BA8A8B3BC10DD475FF52E014DA9D7B76383E0957923F28DBD87E87D56DAF35BD1E19FEB16DA0DC3ADC69C9300579A5BCAF344840240E2BD3A61B99156545065963F9AFE60D334DD3B49F28EB971A1E95A2DBC769A4E9F184586DE0B750B1431A323A8545015474CB466CA07D458F08E8180379C3CD7A57986E7CD561E66D6747D5751812DF59BFD2DAD1669EC9641235BC66F2D2E960E4DD5E10AC2B5DF250CB281BBDD4D9F83D3340FCEAB6F2DEA1A8F98E3B4D5FCC5A9EB3636F637DFA77CC3AA6A4225B790C85ADA0B96F421690902431462A06D41B65B1D6CE3FC377DE4A38433AB7FF9CAAF2C46E926B9E59D46C527240B9B2BA49D5599483C92710870140207306B5A65D1ED0E928FC8A98773DA3CA1F999E42F3898749F29F9974DD4EFAE7E393489A6FA9EA61402DF058CE12692953CBD3565E3BD4E66433432723BB036372CEE284AC896F199664B763F1A955ACCD43EAB107726BD3B13ED933CE994514648A45320148FD46943A50FEF05630BB7B1EBF4E481450A4B5924B88ED521088BF5B4171CD4B3304656F4CA82295DF8F639032216817491C892FA2F233233992DD06EFE99D9A494FC5425EA694D801921CD50A9131D224F5636BD3314569A943E9A2B1E6395482FC40A1F1DF11B0EF413BA9EB935DC3A1486CAD63B9B9E5C8AA9E0295E4EA056A684282076AD30D9E1D86E9005BAFE2B899A38E396558A3FABFAFE91A092456F51958ECCABC8D0922BC7B6440A4DABCF6F72D6FA8CD6D6E904D7442A2C8E020668C44D33134FB0093EFDB7C9449E8C480BFF0049DC53D6FAB6FF0051F4FEA1C4D3D0A7A5C3872AFA94EFE191A369E2154FFFD3BF3CF9735BD0F54D39AE83DAA5E4D35D59F99BD7FAFF000B695E08E3961FABBCD10D3EEE2412AC5EA074E4DF07A6BF1733C5B6DD53B89105E69AAF9720BDD2B4CD76D025B797EDE179244D285B2476F68E16211E9B7171FEF67AD21AB1A32A287472B552B6725DC3CEAEEC6F35FD3355B3D7268AE2EEE62963D595AEEDA3097162C397AF131F569E9F131904F27AFC7D54481E09090E6194652008BD8BE7AF36F95AF7CB2C974B2477BA3BCDE95BEA50B89111DD04891C8509DF89EA36276EB9B7D3EA63936E4430BDE9E716BA9DEE9DA85DDA5A5924BC18CC8E53912AC6B5DBA0196CA60050096410EBDAADD7C4979616CD181C5C2D5949EC40526BF460F150453DBFF21F5431F9EAE6D6F6F6D2FF00EBFA4DC35AF30418AE6D1D2759230D4DCC624534DE87313553918EDD1245C4BEACFCC0F2E798A7F275AF99A3D19CE956927D62DB5357591C5B4EC525668D4B9A168D4EE3B7B663696404E98C71CE20488F49EAF9F60BF8E25BAF4D67557F8EE9402C232B1A824B92481E276DBAE6CA5B337A97E55F9B258353D5747F2FDE466D35FD36E2C3538798659232C1DC14242D4AAF10D4AF13C7A1CC4D4C46C7A86529918E40757B9DA6996970A65D3F451710420B4E6C2C7D48E36E1C40AA44428A6C01A6DF3CC396420D92E1884E7CAE920D4BCB1A75E8FAB5EF94C020F0594E9D3452C4C5488CC6C91AB83F1103735DE94E5960CE4722A23906C016173FE5CEADE5ABAB6D634AD45B49B6B0712BA798223694555A92F3B7A424DEA7EC8D9A94E872F3A8E31521CDB7D55EA0D6A1F99FE4FD29278758F33598BE0A2510E991CBA8484B0207A4D6A8E9C59A857D475F87A8ED98E2049E4C461DB72C0F5AFF009C93BF8B4BBAF2BF94FCA1690E80E9324D7FAA4D3D2E04E08966365130085837D9691A872C8E2E1E65CAF136E11C935FF9C7EF2F799FF34FF31BEA5E75D49B43F237952C135FF35E89A55AC1689A8E9F15C4715BD8C1246ACEAB73732C31B90DBC25C540CAF579386151E67F05B74B881249DEBA779E9F07AFF9BF58D475592EAFF5AD4E2D535CD4E6FAD6AB7F14261B296E9A2114B73670257844C17922B7C41695634C7478A85F7AEB275211B26BEFEAC6FCBB7DA0AEAB059798255B7F2DB0A09AE09957D61411C2AF186291CAC0B732BB7603A87563208FA1C9ECCCD871C8CB20B3D2F97C9EA9E678B43D57CBFAE5A797FCBBA0D8EBED632C3A1DEDDBC96DE9DD30A44E6E249CF12A770CEB4AD2BB66AB0484660CEEBABB2CFDA9E244C633A3D3B9F2D9FCA7F3A5DDE69FA6DB9D045FDDCD14571A2BEB967F59B96A0661F58B7924B7457E2472F50124F6CDF9ED3C35566BBE9D2C34E44A818DF75B3FBAFCB0F31F9BB59B8BFF003B6A3E5FF2CE8FA4A4462F2979764892CE25E6D1AC4D7F2CAE5C80843152EC3A075E99AD3AD86104618D93FC45D962D2997F786A377C2395A61E77D0B4F4917538F5DD3A2B9B80127B18E4478F8A0244CB46D805014D76E94A6F98509196C45B9F2D643498B617BECF3EF2F79B7CBCBE67D2BCB16705D79C1B55BD51F5DD1515ED1241402BEA106444A1795940A0F103334E8E7E19912235D1D7E7D4C755A889AD80E9DFE6CCBCFBE5D7984A34758E49EF124FAEA49208E1854F59999C811A6E41EC36F9661E2249A63A8C10C73193CF77C65E68B0FABF98CE8E970975F548964BD9224A2895EAC1636A92C9C4820ED5AE6DF09F4D970B559FC5C848E44A79A669E22657EB5A8A1A53E63B64B8EC388F4AB0B24640CC9C54D3A6CD51DF6AEE331321ADBA967109FD9698A49665DC54569B827AD7E632279D2FBD3D82D1495A2540A9269D7E7E383E9414EE3B68E3548CA8AD4190EDB01D14F6DF22657E4B43E28F6B58AE38215F51A3AB0E63EC91B75F1DFEEC909903C969076FE5C5B391E4D3E6974C9A535692CE5688549FB4506C7E9DBF5644E4076EF4D14EA19F578554DFC36BAB14D84A3FD1AE08E87E240509DBBAE3C746D04144DAEB1A2DBBFA725CC9A2BB9E4E9771931487A001D015FA4818CA44F3642AB66411334DFE92AB1DEC4CA29776B22CA9B9A763F78CAF650774EE16825E22AA92720A031A7227A0DFE9EB924A83436C1D964215D450495E4390247C343BD4F7F7C54A572F0E4C891B92A3B528BEC7F560BB5F3639248AEEC88A19C577045076A57E5EF80D5AF4509D1DA4AB2D180E9F454541DB6F0C46CB682911B985AFDAA7D9DC5682BB1F6C4456CF45B202B6B2453229B7A1A861DC7DFF004611B72411691D842D34D205626DD4D56493E2F880D88277DB257451561182C5A6B968CEEFC5AAF16E0D7A6C7A1FF3030123E2C81A543616AC41A05604AB87A2914DC56A477C02FA29AEA931B69798E56D21895989655241001351E35C95D9DD48F9212FEC58E9D3502BA491A88E45DCB2CB23352829E03083D13668324B1D36058B4DB758239764E4A3AD235A91ED5237FEDC4932931E5B84C6E34C89E6AC56E614620145626837DEB5C26401E5C969E4BE9C57DAFEB93C6AC91FD69A3803724252201038E5BD1B8ED4DB222C469919DFC1395B44EA5C23BF7A56A3B9A7B75C89A504D735CF62071E3C5D49DA86A37F0A57BE3C8ADEDB29B5A347C3F762AA6A47881D7C323EF4D6DB2C71245C4AD4AF507B13D40FC7189A44822619181209DFBF73BF8F8F5DB2627E4801378D9969B002A548DB6A1E9DE9882084D5233D00E9CF914DC903F6B6F1F9E3C8A106E9E8A975A2EDF0537502A76DF7189369141BB5E33065A82C0901580D86FB77C883B265EF528E09D5D99A1E0A36AD695FA4D70D1526B608C52C921241641BA91DF6DB0F35DC2249A1A9229B5694A7E1E1806CA772DF30E495E9424D47534F1C4F9A844DA9F8793539B743D06DDB08F25254EFBD16B59D5C0F8D1D41E8576F11E35C892CA2A8934860A960EB2416ACC4F6FDC4440A77EBBE19020A01B0A96F37A720765E74142A41F99351BFDE31EB4CB9260EE934958D978B01C91B7208DC9141DC780DB1412A2F235BA907930D9955803B31AEE37600F6DF1212978BE68A5223895030A50127883BEC6BD7F1C16A6D9168BE609F4B314CB27D63D714BAB5918F071535047B9DFDB252A2143DAECBCDDA53E9DF5C8224446401B910191A83921500529EE77CAE81E8AF1EF3879CDDDF9C33357D4752DC94310294AA03B7514246F8F084F2623A5EA73C8C67124BC59BA47BB0F7C34C4964F6BAECB106130AB07A51F6AD4787F0AE44C4064192C3E614955ACE652A9228AB541046F414F1F0C1C215097D0DBB2892DAE14AD7E02ABC1B7AD2A37DFC2B89DD4048EF2F6296DCDB5CA5491C59C00BB8DC7D39022B74A5F2DBDBDC5BC124D6ED1CD60EAF6B7F01659EDA44DE3962910864208D994823C72775BA2BA17AB792FF00E72CBF37BCAD7979A4F986FAD7F312C62F4F847ADC663BC0B5A078B50B4E121057A09564F1EB9958F53311EFF7B030113E4FAC7CB1FF00393FE4BBEF406BDE54D5BCAE65E31B3D9CB16A7005008A6C2DE504577FDD9A8CB86B63D410C79BDAFCBDE73F24F99C4F3796BCCBA6EA37B1CC0FE8EF54C179233D1452DA6F4E56A01B505332639A131608B4F5A2CAAED2389228AF4BC5EB4E269A250CB2AAAAF208C08FB25B2C0475523B9259E68C47A7FD61CCB1B234D750C648582142244E5D6ACC42A53724F4E983905BBE88D86DC23402E1D8A4858DC5C5010188E6C00AFC5C7A540EBB6126D0052C8B94B713F0E51C724A944A85D955AA4D4750D423E584A9E6AD1C53DD0417339486695E458850F189178C409EA7A55BB0384149E687F4A3E7F5CA0FAED3977A7D9AD294FB54EFE3B64696FC9FFFD4E85E5AD5F5FF0025E907C9F68347F38C1E55D4C4FA8796FEB30E8F7D06857FF1CA60FADC76ED0399F890591E370FF0FB71913207BDD8F83C43825CC7CFF6A61A8F9426BB7B8F3B791747D42C6E7EB16F06A106AE5B4CBDB69AD163B3B78BD5B58E67912F23777170B27A7502A594B15C989B2E16484B1FB9E4BADDBF97B57934F9EE6D2E7C9FABD8DD69B25C6A96F69F59B484B093F46EA3231459123966448880AC495732271E9224D11D1881BECF2CF34F962FAC751D4B44F35D9DB5B4935D25BCDA635D69C7D34945495F5044AE864923E06264E285947D920591C841042001C9F315FF00E556A1A679A6D6E3CBF04DAD6957D1343E9C92DBA5E5BB9495DFD48CCF408AD0B8AC8C0AA8E4DB119B1194E48F0F56CD3C8465EAE5BB1A8FC9EFAB5D3333DABB5AB18A79A1A5CC7506A4A4F0B344C69B5519BC3964A798611C3CCB930D29CBEA1B0E8F49F20F94ED7CA7E7CF2A79A2F6D4CFA5E95A8C4FAADB0320F56D265305C460721B98E434A9EB98B93537021BF1E8A2246C6D4FBC4EABFE0DB2B8D16C6FB48BBB3BDBBFD31ACDE6A77490E9B1698EE6D2CE09A598A047B91F6883CB9502D77CA617771E6793835280F0C6FDFF00A922FD23F979F95B35C6A96241D66FEDFEB5E5FF002D8B7B3BA84CD200FF005B1736D70D1DC468BFDDC878EC6A4572CE09E622EE978062B2059E80BCDEF3FE720EC75AD785F79AEDB474B5B6B2965E124CA2E7D18FF661B4D3A10EE4163554727AF234DF2EFCA4C0D8B4837BCE8A7507FCE4979A352D3AC60F27DBA69BA504E5A7C314296311B773CC3B46DF587AF7DD8123AEE6B944B181B49B3C6C9FC2401E4C0B5CF3CFE6BF98259CDEFE616BDF5794F16D3EDEEE58A20AF52502A1155DCF5A9F7CB3880140063C723D4BCEAE7CB8F7929975492E3539E85567BC9249D8FCF9B37D192E2D989DF9B4BE5C8622562B7550BBB2A8A77AD283F5E1E3B4275E4AF26B6B7E71D2AD534D3AB456293EB177A437EED6F2DF4F8DE6680C8C02AAC8E8232C6A28C6B9565CA04486EC3865925439BEDDD5BCBBFF002ABFC9F73E585F3343AF799BCC77B63179DB52487D1664D2E013DE69B0230FF791350995390F89CC0F19341C570F4F1F1A77DCE7669474F1021F559DFBFA0FD2F11D4AE8CD2C1398DE6B98C32CA010AE23E61E4647660A78EEDB6F5E95AE6E0500EAAC936C46FAEEE6E11629AE4DC5B4A9F578E299C86085DE75811389E6ABD8D7AB1E2A4ED8477AB1FF0030F9CFCC5A1D9C0238ECEE6CE0AC725CEA1116B8B4352AB0CC5D9415006ED43C471E4D53B578F458E44895A9A7AC59DFF9335E9ADBCBFE54F315B6B1AAEA907AD2E9F1DC496E58AA8691111E0883B2EE78860D4AF519AACD83363B26269CDC5A31925426199F9A0DBA79466D135DD2E59EF65370961AADC40B2C93C8844B6D6D68D53C02841CD9857E437CC480248775E0F88381F33DC5BDFF00989EFD2DBCA91DFE8B086835416B37FA1202B4689A7D80AD7B1ED5F7CCBE2F0E40DD14CFB3F078663D475BB5D69A1C1A5599B9B4B53E5DB1F5072114BEB23500E456E1589AA8DC02DF81C13CD2C86E46DC2C7A8C9A4888E30243BE96F98B50D4B51D1FCCD6F7B7B74D1471D9DCD9CB75319898EDD6488C85D69CE864E436FDAA75DF2FD118C6754D7DA59B1E68C0C4FABA81D1E42D6B25E79A2EAF5D9A63259D9491BB6FD6DA3534EDD45733320A8BAEBF532858C8E3CBECAB51A80D06F4EDF8D32B800D64BD1F4A819E041C54A9F86BD00236DA8331F26C6D9C593AC71201BD48EA08A1076AD7E5DB2A0492BB754D6DE20179B8069D56B4DFA1DFB1FA713DC9E7BA256DCEC401C8EECA363BEC09C047463CF9232D941016847103E123C3E8ED5C3B26894D8472501E018827D5237E9FD36C8F0EEA2D7945938800B03B36DE06BE14C4D84AAB69D0CA099624701BE12541FF003FBF0D9ADF9A38523BDD3F4BB1067B68059CB5A096D1CC4FC8EDC815EFBF7C84F9A444520E1F3379AEC3E159EDF5985187083518165A71DCA92A518834FE7180037CD14475649A7F992DEF61F5352D2869F3A4C5F9E9F2B001180E5FBA9938AFC55207AAD4C99321D2D946BAAA19A1BEB4BAB7B2BFB7BC9667A3C01C4739049AED520B0F6CAC4C57716463D7A2125B5BF822F47D1681092A1D14B506FED53D3B6F93110C49B5B159B49127AF74A9395A965AD0007C4815A74DB2543E283683BD7B2B384CC226652E123B890D4330DA9B78F6C8DA484827692E0889E448D4EFC41AFC23B9F9E00CB6E48B8A311C4AB128603A91B935A904FD1DF251E74C4AA441D24E5C1C338E35DB91EFB9C0400A375ED1F11EAC9C431A9086BBD762057C31B09AEF4BF4C8E7FAD5C18DD92262A0A21DB97891B52B4EB4C41B49FB1ABFB4491E2B6F4EAD752FC741455F4940D8002BF68D6A299307745D065B630450B96951CC905BF07038962F2FC21C114A002B50718F334C6D7C90AC16B7770251225AC524A6BB1A2A72DAA0536FBF0116121E29684BDAC3EA2473A88CB2803EC127B1D88EB4D8E45C133A24B0FBAB7B9975DD3EDA2D52FA2B099DDF50B6243BAC30A17730CC07215D97752456B5CCDD3C41FA832FCC1EE665A3797B53D5FF004A4BA1E937B6D169B3B5BFE9586F2D0C3349092B320B7B89C4AFC4D55481F11F0CB2518486E98E4903B9545D46EF4CB8FD1BE64B36B4944BE92DC98D917D55FD8915E8D1BF829D8F62730F2E1E0DC6E1CB84C4991C76D04F117460EAC79061D6A7A91D331F7B16D848A414FA7382E63D8A8DD4EDBF87CF1E2EF40E5CF7510F3C4403B1048A13DCEDBD76C20D29369FD9C9F09268C00049E95AEC0507B7BE584ECC36B41DDFD962A01E94E5BD07F678E441666D2AB09BEAF314DE84FDAEA4608CB7DD48A1B32D85D1C538D0EC0B57A0DFAFBE4FC98735925B8E35A050C41E23707AD06D91BDD97442B42D4A1069D36EFF00776AE1EAA0DF35946F4CF253C8EE76A8AD7B8EF8A0AC32FA6BC012C6BBF515276DB1E7BA79ECB2ECFF00A2CB28E4418EA809EA69B75EBBE05DB74749EA405938D258B844C836A1855633B6F4DD7C70CC924A623659EA70A83F0B0A103A0A7CFBE0A3CD26D146E50AA934568A9E9B30E9424ED4F73845846DDCDABFA8682571C855491C857B8048DBAD6989B493494DE46F5A475E34F8D9949E47AF435A6064A0D3320119028000381A03EFE1F861076635D50775A9BDB80229E68D19BEC21AD7C09076C8926D2364A54CF7879CC59EA38BA914AD69BE449B4B38D26CD92240BB5772877FBB09284F278447196A0E7D416F13DBC7B786054B60A86F5177AF5AEE450F5AE3BA53533347B48CAD0B9A2B8ECC4753EC7BE00A839E488D7D42AE0ECAEBF66A3A104F51808DD2D5ADE7D59B8872117ECF8807AFD189F9A10DA8E9F6B7852E74F30DBDF2D080E7824A877E2ADD14D7C7E1AF85718931522C2D86E3594FDD86F4DD4F12A7AA9A7BD32CD8B5D56C9FD85BEA73B473CF70D72E94069B91F223F861201621EDFE55FCC7FCC9F2B0862D37CCF746C23A03A26A5FEE42CDD54F208639D8B22FFC63917231CD2C67D27F533E6F79D1BFE7213CB37F2E916BE74B2BCF2A5D594D24936A967CAEB4E999E17854C9E983731040C78D55D41352DB0CCC86B232152148E1907D1965A858EA7691EA9A2EA90EB9A15C43FEE3F51B4B98E6B779D55008C3C7C803B54F2A6F5A8AE67C4C642E3C904A312291A049DA20248D9CACCCC78B4877DEA2A2AD534A6D9100929245371A95610A34A8643E935C06E6E6A006E1514A2F1353BD4D7268BEF51FAB3FD6B87C1F5BA7ADCFFDD5CEBFEF3D2BFC9F172FF6F056EBE6FF00FFD5F2EE9DF999A6FE86F2FE81E63D2B4EFCC5D23418AFF4CD3B56D52FE7D1FCD5A40BA921942DAEA40B4573142A580B4998C52A908BC0D0E69B2E9B8ACC76BDE87273B1EB491184C58E40F51FAFEFF34458F9E7CD1F95FE7ED7FCB569A96AFE5AD67CB17F77A70D72DD5217BCB78A7F4CF2864AAF1944618C6D51D5482330CE9AE0263B9A3513ADA4793EC1F297E62F94BF367F45E8FAA5AC7A3EBD6B6F15BDEDEDBC8F69626F6E425B026C6D7D0F4217B68C88A1491E3498F25119E23290651A0511C5C70F106C1DE71D1EFAE3F44997545D13CCBA2AC12681AAB476B05B4F1A059E46819EE6E05E2CB24E100E2E89293149F0B039644D1A2D7C3BD8789368706A12DDC12681A8595DE9B03C1ADC2639EEA1FAD5ECAAF05B3595AE98D058B0923F4C2C8CC84B201C006CB04AB6607BD27D2ED3C9FA6BFE87F315C6A5A2EA31CCB1DACC6245B10A4FD9BA0B1096074143F638B0DFE1CAA513B90EEB4BAE890233347BFA3D6A3F214C968D77A0E8F79E70D4E33035B6936DA8E891C572AE15CC91DD4C5E02A8CDE9B29A1A8A8AF7A21937E74ECE58B64BF53F356ADA241AAD979F7F2D34DD13CB1AF5930B8B3BABCD36F66D42E8A0262FAA59FEF2670C6BCE7E023A7209DF3658B1F1478A321BF9EEE9B3C863263289F88E6F97AC2CEDF55D07CDB63A9BB69775757467F2F68DA63CF6B6A8B1AD2DDD9E2AC8ECAE0F2491CC6168A8AB4DB3B1CF18EBB875F2948A260D31FF00C3161E508F46B68EDACEFA2D4AEB5C79659AFAE6E9239232DCCD16256490A9451BAEC49DF20755B500C78597E95A3FD412321388A0A2014503A81ED4198929DA6E832D4B089F83529F175EB5DEA0506FF4E5665DCA2C36F63072E2284B0DEBD4536037EA46117CD8DA9BE9A6E1D228207BDB999D21B5B2897D492795D8245022965AB3B10A371D7133111BED4CE10339003ABEF993CBDA2792344D1FCB92B0BCD1FF002CADE1D234AD4DFE11A8DC9BB8F51D6B9CC0CAD1DA3DFA09AE8C75020892DE3ABB15CD664C92037EBF8FC793BA118C2424363F701B0F9F3F7BE61FCC7F314B75E6CD4E6D464B8769A47FAA41771FD5A716A9235246819D8C6642ED39527EDC86B426836BA0940E3F4F31CDD2E69714CEEF2CD46EA491A5696356BA408658A55A222D14B4A8AD5E486B414206DB1DB334B52B43E58F326B1669A95898AC2DA78D9E29E6BA5B779140255994473158C053BF25269EE32A9EA2303C277671812188F98B4AD534705B59B0FD1F637D3B88D6DE45B9B39A45223654A738C3AAFC4178AB2D0908F539762CC32726276E6C37CADA47E5758EAF6CBE66B73A3C02E0C8BE775B8B871A60DC719A05596A00E8F4A213BECACC29D678C62444D83D1BB10129447D3E6987E6DC8351D6C45A1F9AAEB57B191123B3965577B292031A82B048A41E2CDB921407EE7A661E8651C76651DDDD769433786008900732F46D297CBD73E43D3F45D3B4C974DB1D02CE1B2D5A579C6966E353B900C4D1D3D5570D2D5B8952E475A28CC4CD294B2191DEFF0014C31CA1970F08B1B53E77F38EA579E5CD64797E1D41EF35FB99C036ABE8DF592A1E410A5D23FA6EEC46C0A021776DCD3361A4D38C838E42A21AB26A460C431C3EA23728B5D43CC76B3DEC5E66B999E2D5F477B3D3F4E8D50340EFE94914CD1808003C080413F765C0E223F763917566320774F34AB24B7B632CE394AE8A9E3C638D68AA0F7DBBE63CB2CA72DB932E1006E9AC166D381C6BCF92914E809EF4F619683C0D65E93630A5B5AC4DC4AB500229BFE14CC3C96674D808AB46444492548A0007C54A83DE9EF80814A2FAA64AA662423803A9E23C3C074A635C239239A32DD2663C411C4F41F2EBBF7F9E3B047329BC56A683F642FDA3D29DF6EBBE310A6C26691708EA0808C6BBEDD7B93D69DE9809654AB1D2365460081B55B6343E1FEDE0AAEAA0A85EDEC76F018C8F889A084752056A69DBC6980EDBA698A7FA46A77147752AA6AC40EFD283C36C81DF72177B640964B0C078285E2B41B6FD3724FD393008E6B7D15B47B71223A95A08DC8503B035236EB51D30C4F341446A7A159DE7EF25B75F5360CECA3ED76A6DD053AE3200A0582F3ED7F41D5EDA3373A26BBA8E9F3254C6B6D75280B4DFFBB2E50F4F0C491DCCA3222D87E97E76F3E42E6DAFF52835C8E37FB17F6C8580E94E7188CF5DC64C40730894C967B1F9912F213F5EF2DA33303EB8B299A306849E5C640C2BBD3738231EE28B5D6FAF795AEA792C7D4BBD3AEDE3AC76F796A5E33B52892C458103DE980C6BA26C277141652432C3A65ED8DD33EE91457204C877AFEE5C893EF03207E49BB16983D8DD585BFEF6D668E478CB72923263602BCAAC3B81ED8D50A4DDEE97EAD1A7D5D16DC2CD3CCF18051C568DF6985772077F1C1C86FBA48DF9A576482DA5960958A5C9014B30E284B6C054EC2B88A0504267A9D95A8D7ADA1B0965B9B18A29255BD0012073E5F10150A41ED96C8004EEBCD37568E185E70AD2B5D38E4FB04E29B6C013CAA7C7203652527F33DDCB0797358B8894AB491ADB232D3633308CEDDCF127A7CF0C8DB097A417944411631CBEC85081FF0096B50429FF00655ED840DE8B8077094DBC50A6A979A91E4D6D63663D65752055DFD593EE484E67E1DA2D7116F5FF002D593689E4DD2E19A4134B2C5F58D4114FA7EAC970E6590122A5CD6A37CC6CB928EC9BB2F1BD5F5DFD2FE78BEF2E4E8EFA7C7E5E5372AA5780BA9AE5CC32306FB3C115A9C7F1CB34F113C649EF7238AA92ED1B57BCB448FF00BD74E20EFD06D5A577CC390ADC3B0AB0CDED3CC90CC556546E5D64FE6FA7C053B78641157CD3D5934FBDA10CBB2F15036A03DF1884F1A21204809649070DB8D3A1F9530F131ABDF928CCA5ABD493F154EFBF7E9806ECEE98F3C412405090C48F63D7B74AE0A3683549B595D333223D6A005DBA57DE9D32D26F9B0F727A2662B404F1068683B74EF808EAB65DCE88DC8AD24340C4500F6A9DF0D210ED1B124D4A93D169DA9D4F6C6CB2A0869620B4F840A6CA46C453AED8DAD58DFA3AE6112341030F8659159C1E9C53E36A9F90A6007EC53F7A35D3EC51B9312793915A9EE7EF38DA7972502158B1605B88EA4D478FE3E1847923AEE8260558A3720C7A6D4A1AF5C40EE4F36F9B01C8B515280A8EA2BD7BF7C2953336C5A460FB710DDC7D19190A2C82E68D1A377243301C8D0D49FBB07131402E951CEEB224A4A1AF095850004D7A780C093E48FB6D3ADADBACE25A1AD474FC7A62B49C2EA10DAAFEEA8475AD46DEC0E242FB90CDAD09237F56563C778EB507FCFE58D282912EAF2C929651C4C6480C011F2FBA988A5BDD51754993E2F509A78D0D6BFD71A5B591DF9667560287ECA93B7CF0D292A9EB28A1E4493D2A76353E3D462422FA14445776D22989A428456829B83DF7C89090510795B3A7D65C5C4306C97009A7A67AA9E9B6F515E98627A224CCB4D99E431AC2E40D82A0AD47C80EB92BA61B964177AB43A45AB996E3D6BA65A84EA149ED4AEE72A3BF267C2C0CEBF338796E64E1D4AAFF0001E392F0C2DA5BA6FE6BF9AFCA3AD43A8793358B8F2E5E4ECA2EE6B561E9CC83A2DCC2C0C53A8A749148F0A65B88189B89632DF9BF453F277FE727B45F3CDCD8E8BE7F4B1F27F9ADB8FE8CD4A37F4744D4A7A1E42B29AD9CE548E2923B44D4A23AB1E399F8F3891A96C7EC622C737AAB7E727E545BDCCF149F999A36A97174DF0DAE8F24BACC919078D38E9915D2D1371C49A0EA727E34073906641BE4C67FE57C7E51FD6FEABFE24BEFD29EAFD6BEAFFA03CC1C2BC7D3E5EA7E8DE3C7F639F4AE0F1A35CF6F8AD757FFD6F99DAD793B53B6FD276A225F30E8BF58913517D325373189227DD2E2114953850100AED98D0C91E6A477BE8778AC3CC3E49FCBAF316BD04F7CBAFF0097A4D3AFAF199DDE7D4740BD9F4B3C81F8925FA8AD9D587DAAF2209A93A9CB2963C928C3903CBDFBB6EB6523C13AFAC59F3236290DA25F790E7D467B45BABFD1AFCDB24B2CF459ED9617F5A32B2235376514E5C4ED97700CA01228AC334A30E07D39E5CFF9C839B59D2E48754B46F32B858E0BE81A58EDDE58437297D4916169A396550AB23C6E048A89C95A879634F4E6058920EEC9F508B47F3DC4755F2FC714DA94962BA76BFA36A56D68D3983841152DA4D427BAF5750023A2DC84A34751F0495AD57468F3531EBCC3CBF54D33CE7A8CBCEEBCA57FA6E9DA7491D9C724F60B6B65652CEC1CC0B0C5059DA40CEE64658C5391F8072A0ADA2511D58D75EF5971A379CBC8F0E9573AADDDDF96E5D5E08DB4DBAB69618ACE66764E52BBDA89182852599A84578AEDB815F04257B37C3519319E18C88F8A4FAD6A9ABF9964FAEEB1ABDF6B37769198B8DF4C6578509FB014ECA1A9B11B1CB314630DA3B232E59E5265324949B458D0CEE840427EC74A6C3AFD19399A60016456B0FF00A438900E34ABB6C36F9035DF01E5B31077DD3A12C4F271420AC7B7CB614AEFD3E8C8A6ACA31AE21807C44281D48DFBE0E7EE53BEC9725D89EE218ADE37BD9EE1921B3B7B65324D24D2B048D238C02CEECC40014126BB64AA98BE99FF009C7DF26E9C7CEBA86AFE6ABFB47BEF2001A85D698AD238D16FAD98846BFB888FA0D7114A507D5D0CB42C3D42B2523CC6CF2AF73B0D0C0012C95CB61EF3DCF6BF316A915CF9835432472CBA7E85A45B798757D1C10B30B5890C9A65A5D90BF0497D72AD7D2A9AF1021046D4CD5CF7E5D5CA38A532227BFF0003E0F8FF00F31BCADF98FE77D617CC92CF6F1DBCF6FC60D0AD3F72AA8ADCE1917972E5C58554B92C475D8D32EC3AAF088AE6EBBB4B2E284FC380B90E65E01E649FCC9E4EB9D2EDBCD9A6AE8F379896E5B43412ACD6F225B304758981239AAC8A5A32C480C3A039D1697530D403C0797370639012F7BF2A79AAD356D2ADAE2C9CB4A6C2D59A088A909E82C76B7311200DD58134EB4F63B60648F0CC82E5DD8D96DCA58EAD23D9DC5E45A4E9B7114926BB74D19B883EAB0C26E250607AF2670A42D686A41D89C96327A3121E51ACF953C99A82CDFA2FCABFA1AD1C28883EA5772DE1118A2B4B2F331F214DD78320E9BF5394734F6A2C862890F1FD4AC2F7C8FF0059853EB37FE4DBAA892B57BCD355C9AC8026CD18EADE98A7B03D61311CA6F94BEF761A5D64F4F1E097AA27ECFD89B79A6E0795B46D1B588AEAD7CE5A2EA07EB1A1DE5B1FACE9F33A45C78BC2D4572588E4597B7171D4662E181C9331FA48642B08E391B07953C2756F3016BED39BCBD67F567B7B58D2F3574B210B9948A044467994083758E6508CC0FD91C5736B8F11882246C773819F503248188AA0C9F44BBF5E78E5BBBA7B8B993FBFBA9A467909FB2393354EC32128462280D9C7E224DDEEF6DD29E368D164F8948E8295CC2E5B865EF649670C09702143556A49DB6F01B0C9126ACB1B0CBCA8450E410295404127A01B0EDB6511DCB2251B1C42440AA84349F10A1008506B5F118647EC4022D1D0DB3804AAD0290C1BA529EFD72BDC722CD398E33425803CBA8237DFB60248E6B411CAEC8DD2806CA3AD37EE30ADF244ACABC0F150BC46E4F8F8ED5DBA6007BD798B4BAEAE82444AB73228091B75AFDF894FBD8C492B5E353911D54F6F0A78E445F45E8C974F8162453B134A9A7627C2BED9211DD0764E1D3940DBEF43FBB028057C69E1879A8284D25D1269556B4AD77DB8F6DF7C458D9028B282011FBC8C94720514F4A8EFF4E15077A62DAA425A47E31D0300CCA40E35AF6028054F86437EF657D1E6D73A6C4DA94AC1380702A08EB53BFCBE9C6E97853382D6483765F858D15852868361E27E58F15AD042DDD9C5F5DB7BCF490707501A876EC7DFB572624422935D47CB76F7525B5FA41FBC8803CC815E3B0A1A8A819619F7B0882839EC357D22FE3BDD2B5BBEB182E0013D9AC8CF03352A1CC4FC936F9642C1E8A052164F397992C2F934EF32E9D63A9E9EEFFE85A8883D1752DFB2CD19E3D3FC9EB8903A1642D995B6A5A55C2B9F42EAD47A6A645DAE60655DBF67E2E9D7E1C8985165C5B222D92C6E25B99B4BB882FADCA18FD781BD32AAB5DCC277076EE3235BADD84F638614D2EC6DEE6578E66881F5E484F1F8AAC4B537A0A800D37C9DAD6CF37FCC1B9810E97A35A5D473FAB4BEB931F202375E49189390AED527E9C896ACF2118F362D6D17A9C23478F90FF76105A837EE37F0D8E487375D2DC25B7F6725C5A2DB0920373AD5FDBE96178D1889DD55DE9400AAC49257362054364C05597BFEABA6B1496232431456D198CA338464700804732475AF7EFED9AF90BB2CA1100BE3AD0A66D4756FCC6F304BF665BE6D32D645DEA96B1ADA92A7AEEEEE73323FBBC03CDB8EF31E4995947232B431CA1FD304AAFED32F415F0A77CC02439D03C439A3D82F13EBC35E26A587DA3B7CBBE0A5B6A39522E2D6F72DCB7FDDB7C54F01ED9290506B9A6317982F2D28B37C480FDB5EE3E58046D788965765ABC1751861423A541E8361BF7DE982A95172A40FCBD2604752577E801FBF0048E686B71E9C83F6013BB506F5DF63809DD955724F15B90AD2A2BEFF007FBE4C96002B8E2CBDEADD587857BF8FD1F2C2C6D748C225E0A4D48DC1DE8BF2E991648569A34AF326AB4343B529B75FA30AD1EAA105C99D9A64F8C3FEEAD80EE80F27724F8B0007C8F8E35DEB6B5DF831E9D2ABE007853F1C141364BA3B9454E2F272E6D50B5FB2A3FB70D23DCA6F3AC8B45A3F623AEC3C3BE134B11E6A0A5646200F880201D88FC6A30256300B1A853CC81D7B6E6A7F1C35D5374A13B3F1A066A0F8546F435DA9F47864579142472CCC038246DF12927723A74C42916BDE490D09623F9D7B50F41E1B8C49408D28CB72C0A8356A8AAD7A9F0191D996E95CD70E0AAAB956652682A7DBB7B1C79F24F444DAC7F0F20DF0D4135AF4E94DBF8E4831B16A86455214529FB23C2BEFDF09D94859EA70600F5A537D8F8D7DB08083BADB8B93E9554EEA402A0F5AF8635B28DCA16D26792E5D3972E14E2A7B863DC818D5EE93B6CC9C33C5043750B2C9CD144F13D1830A9520AF8114EB808081CAD25BEF33DEE9505CDA68D712583C17366269582B38B7BA47608A4D481CD684F5232D8C2F72C7926115F5DDEC0249BE27FDB3DFFCFBE09C0456C94B6EA798C5C3702A694FB89AE46E99C431A009BA8F8BD0AB6D5F7F7FC72D879A26F43B261E9F1608F0CABC6446DC11EE0D7EEC077E618722F5DF2E7E62F98F45D161F2DDAEACDA7E8B0967B7168A21F89C00167F4B8F355EB5A57C6A330353A6E33B136B232E1DB6B447E90D63EB5FA57EA7A7FD63D3A7F883D04F5387DAA7ADC7953FD96607853BE1DDC6B9DBFFD7F2F79C7CB1E50F2BF9FDF42D3AE0797F58BB57BAD7AD357B898C50EA13B1654656667B6D8ECA6570011BF8F3D8B3E4E1E231BA6FC908DD0D9E81A068DE53D5B43B7F2B79AF5FD4BCB7A3E8571A8F9874FF003169623BDD474ABDBD8AD6DF52B196C89437F05DFD5A1960920956549037C255E895CB29E2321B923707ECA650943240465B18DD1F291DC1F71DC53C37CD3772F913CF1E65FCB6D7A7F2E5C5CF947537B2956E64B8B78EE93E196DAE50DC2F1413C32A4895078F2A1DEB9B1C604E227BEED13898C8C4F3048F929CF65AB5EEB73F98BCBB15A5B5DC8911B786C6F61963710A0478DA3040647503A6E1B7EE725408A97463B865761E71B70C34ED734F7D2EFCAD1A0985080DB72427A8F966364C321B8DD9820B21F2A7992F3C89E67FF12E8770354D0B50E36FE6AF2EDCFF00A4596A96550D2D9DF5BC84A4B0C836DC7243F1C6CB22AB0AE71E2000D8A6246E242C3D9F46F34693E6DF2779C3CAD7DA745FA0AD2E17CC5A3E8B1DCC89169B69757A905C416124BEB4A7D0926B793F78CD501CB57931CA66382408DAD988F1E337CE3D7DEF15BCD0F4F8AE5AFF00CB1E646D5ED74E125C4B677ECB69A94766A39CB2CF03CA56455E1C19A2660BCD490BD72D39286E298709245B24F3E7937CC5F971AE6AF6FA9DACD75A6E877D1584FE6AB48A71A54F24F025DC4D6B753227AC9244E1D5D4712BBE0C73196224890E09709D8B179BCD3630C1EAAB82F27D9A1FA7A9C9C6049DD12DB92FD1F5C17D75069D6514FA96A77C49B4D3AD2369EE242373C234059A83A9A6328907B931AA4CE1F2D79EFCCDACC9A0E94BA641AC408B3DEE9775A8C7EADB407ACB762D85C1B750C2804BC598EC8AC76C3E98EF26ABB7B4FE53D9681E5FF31F9A74DB0D76D75CFCC4F28F96B51D4353D4AEEE4DA59E8E635856F2430384784476B3C8E5CB4B380A68B6F21543566276EE650129D8E4FB23C8569E5AF2D7E53F96ADBC91E5BB8F2EA799353B4F30E8DE598E393EB5791CF75245A3C4C924938885C4D6ED7C20491AB1DB7173F166BF34EC7BFF0015F3FB9DEC317070C2CD47BFA5FEA1F2B407E5DC169E7BD27F3B60B1D4E094EB3E679B49FD370B096397EAFA5E9E91CADC3EDAB9B7907C2C7E1E8731251A957933331110C839593F23FA98A79E20D5FC957563A55C5FE9DA87D434C8269244858F32E5938C8ACDCD58701400D0AD0D37C81C60736187B3306AB8F2481B27E4F2AFCCFF0029CFE7EFCAFB7F2579DC7E80BFB7D465D5B45BF8A246B9D2EE5A53C24110614778498E44E439210AFF0010DB274B90E9E5C5168CFA5C310230E43EF7C11E5BF31EB7E42F306ADE56F31401EE6DA67B7D46DD8D124F842A5F58B3328E4D1805431A11456E808E87D1A8871C79BAC20C4D17B649AFDA5DDADBDCADF09EC6759EDE5BB56644659A368A66647A3068958555A9D2A3B662F01873E6CAF74AB56D7A78F4B96E6DDFD3BDB72125516F25D548EB48E33CB89A720DB8032C8D13BB69EF0F9B7F30FF003275496C6E3CB915D71B8BD024B9B8F4FD29A187A15503ECFAA360681A95F1CCC86188DDA2794D53CDE5BBD564F27DCDBD8DC03A4D95CC126A11C6A39A34A19959241B8155F8852BEF4C20C6331C5D79248E28D8BD931F2E5E5F4A88B7AA2F556BC1E4AAC82BDC48943B57A1AE1C941AC0D9E9F6D6B0DF2A2C5223CA0545B5C708E5DBB25C2D01DFB3652655BA6993E9DA95C6952149D642231FBC81C71957634E3FCFF46553C7C5C9225DEF57F2E4B15C85BF0CB34773BA3035A822A00F96F94E7B1B058D33954F54A7EC84AB9A577AEDFEDE520F06E568129940EB1D78F12EE41239578A9E95A654644EED9C3499C4C0FC2490C08AB76AF5DBDB2440A517D51E8191B9B1AD36140187F9FCF204D240EF5A655280B12CC177A1DC9200E9FDB92E6A76506BA640FCB76703A0229C76191BE8A6CEEC7EFEE19F946A28DD881D0D37A7F5C8822BC92414C74C842AA31F84D03483B78ED5C90453244E3450FF00BBDA845685761E1923768E9E68F1410807E20A083E27DA94DF7EB8A3AA4168C05EBD40A93B283B7D1B6D80DDB20056ECDA1956450ABF0D760C7B9ED503AE11C981D8A0AFE3468D4A8E259B8B1E9F2D81DA9DF1E4C8300D46DF85C4878FDAA11502A7723B646E9286B13C4BC4F502BB034E3EC3F0186FE4A9B4B10923432865246D226E07BD3FA61E68BA64BA746DF5389270BCD0716A7ED53BFDC3C31E4A3750D46D55ADA48FD3AA2FD9FBF6FD58D6CB6912E9F6FABD8CB637310040A2B30E9DC1EBDB18A6486D1F4C7B797EAD2F20F6C7829A9A1526A3A6C6986322C6514EADB4B89E49DDE0F4999818F71B18F70C29D37350726646B74003A31DF3EEA9E61F26796B52D7345D6666D56D508D320BE1F5A81EE1E8B1ABA49B952D4E543D06D908D5807AB30097C4DE70FF009C83FCC06F340D6F55F2EE8FA7DAFD56DADE7F2BBC52CB632B4038B4D15C965B88E49093F664A0A01C4D33698F478A436F9B464F5F366FE5AFF9C8FF00CB6D4231179934ED6BC9576CADFBC8E21AC58F23F0D44B6E62B9002EFF001407C2B95CBB3E71FA4DB8D2C27A3E87B1B4D2757B2FCAFF003F7962E22D67C9AF6A6EDEEED39C8EF771A4B6CE648C80CAC8C49E2CA0F504065A19E58111AE45AAA81046ECEFCE3AB69F1F9475BD6ECF5CB6D76D74D8249F5268271CED88F888950D1D0856F85597E2EC37CC0C98C8DBBDBF144F32F95FCAB6B359791344FACD56EB582FA9DD96EED705EE189EFD651F765DAC20011EE6503649521A81B2BD824524867E32536A8340D9882161BA1B166CB756EE8C250016A863DF7D8FDD95B7D5A166B3B69903C44348C08A8A0008F1C9091BDD6B64BA7B4B8B7E4DC8C91B1248635DA9DC7864C4C772081D12A592E613CED9FD264F8A41BF127A56996FA49A63BD325D37CD2A1D62BA15634A0A6FDC1F9E567192C81A66316A16B77F12B0040AD0D0D36EDE195802F6E6C8EDB14CE29154A3B4A9BD6AAA48353D8035A7CF1211C5B38DF1815F8A92770894A8A53C7FCCE1414AA5BCB8766F4CAA87DC3BECD5EFBFB77C40DD2D56095D20123CA63A7D664276AD765AF62DF80DFC325C08E2469BB8E26289F029140ABD157A0A6DB6459536D30720720549A71A6C3C453129A43CCE006140A46C694E80F63B63C91CC79A89762371D86FD2BBF6C79229719F8AD1686BB547B7BEF8B2B3C90E666E60925553A0AEE7C7C305A8506988A7C5F677A0DC0C176BC90CD7B1A541018D6A08EFE18415AB568A7F576A10CE6AC0F7F6F7F6C3C3B20152955DEAA501A8DDB7AFF5C8109413C2417E278D08D9EB403F1A8AEF883BA4F244C93986DD9F6145DC8DC548FA7248884BEDE36A9918925A9503A57B127A6E3A648529473C6C4134E46B503DFA6020B115C8A0DC3140CE8CA2B5A0E877DF618396DDEC86EB6C88B686F6EF88AA06A375218ED4FC72C04F0A24013E6846BF9CCAB023156600941B9AFEC83F3C9708217E92C7B58D556EEEE4B3B68564676823BABBFDAE16CDC828A78B927E596E1893E4C26407A0E986B689C7E1620540F1C1962C6085BF574476078922B4F1F1C86CDA053118A429720124B9350A37F99393AD91CDE91A4CA8C8848EABD475AF41BE56457258EFCD90412328A6EA683E9EDDBBED80808467ACDE97A3CDFD0AF2F4797EEF978F1E9D32142D37B53FFFD0F0EF97F49BBB9D6ACBCBF6D6B3EBF757FB4115CDA7AE6E220DE97A88F22D5917BF26D85795334329903B92226F9329D67CB761A2C121965B3D126D3E511EA30E9577EA18D6421109B6859887495803C0FC35DE846E613F101E4D8408C83DDBF3CFF28FCCFAE6BD6FAE6B3A4E8379E5F9FCA9E5D2BE61D5356617FF0059B7D22D12E64B8B854B90CB230621DB90342DCBB662E9352210A049A27EF2DDADC7FBE913401AFB83E18D474FD3344BA9E2D26EA1B78617E265B48E491D59599599FD36552AA46CCA0F2041A76CDC633C42DC3E5B212EF56F365E285FAF43E6BD2AB1A59DE09E27B88F911F07A5315901AF414AE5A38623B979BD5BCB9F941F9D17BE5C87CD16765AA68EBA85FB585AE88FA65E34E802871737104A0561607664E41A940DCB6CC5C9A9C374776631CFA03BBEC6FCB5FC97FCDAB26D5997C8B7F6FA34DE5CBED3ADF51D434B792F75ABBBA558C5EBDB2C33AC50A12655B449F92220F515E5E446B3519E0688EF7270E39FAAC6C46C897FC83FCF4B6BA8AFECA3D7F47ACD2325CF93FC83F52BF4858302CB7B72905CBB5010684D1361190C065BF99C7B6CD1E0E4ADC7DACAB54D3BF32EC3C99A57E5C417BAF6A1E67F2A697A8EB0DA8F9BD92F4A5A492DB2CDA4EAD71A8D8BC3BDA992741222C70713029E44B2E289444EF902790FD4CE509E51B8DE23ECBEFEFEE78F6A7E40F20DCADBEA1E6FB3F2B497969109750D3FF2ED25B1B55FE59EEB5ABB7B4D32CE2DA8C4C3729237FBCCCC0F0CC8867990442FE2D661081F54BE4C5358F3BF9034486EEDBC93E42B7BCD124536FAAE81E5896F648B522E0317D435FBF266BB404D0C50C49071FB29E36421397D526A9C84CEC283CE74FF00377E71F9E67FF0EF957CB761E57F2DCE1A9E50F2AF2D1ACA0551C7EB17B7B0C682310AC658BC855156BF0119912863039D9630201DF77D3BF943E50B8D1EC6C2EA5D4AEBCCBA279DFCD834DF3279C6E358B7B67BAD22D17EAD2C53473B3492D95CDCDCBB7D5A04324AB6C0CF467544D767CDBDF7720ED34D838C01FCEFD1CBF1C9F72FE7D798DBC83A5EA7AB59CB0DAA797EDEEB47F23C92156FABEAEB6F069DA4C890B006E25B648AF6E47123D3F4C020FAB4CC68E3E2988F3AE7F8F7B95A8CBC10323B48F2F793BFD8F92FFE7107CE47CA9AB7E63FE5DC363737496B63A76A9A6CB72E2313DCE9B34AB3BAB4419048F6F383C0124713CC835006BEE1212EFF00D0D13D5446946DBC65FEC4F37D11F98B15A5E5CB79905CCE6532473DA4E8138345049EB5BA3A32BA9E0280EFE20E6BC64264E043B53361B8C4EC5F31EB7E7CBDD6750BEB6D4E5496750F72978AA14D390A8755014EE450FDF9902EAD3A2D51CA6A6F923F36D20D5AF9AF11967BBB055FAA03D5E12BC9A21FE5024B0FBB363A29CA07C8B29E5033112DE25E4505D7982D6C7F4C681F5CB9D3E89F5C9D216214A8F85643C7D3957E7B8CDB78D8E4786756D99B4A6038A06C1667A50FCD4D57488FCD5A6F94A38AC6F4482D249E7162B725010A62B6998314254FC42AA4F4A0AE09C318EAD22521B10F16B5F292EA1AD6A0BE6C9350B1D7AF2433CC3522C866989F884926D4A81442095A74DB2CC998C23E9E41AE144EEFA3FC8DA068BA4683A86849A54623D52D66B7BCB7983484A5C2F169448F5258D0508D80141B668F559A73C8244F2673D498C44631A0F29BFF002B9F2BEA92592733A7BB3369B3B81C8A03BA353BAFEACDAE2D478D1BEBD5AA32B4DA255A2310AC951527A7FB5849E63AB6137BB2ED2E63A830B1B9B75D42D154AF0949AAF7063914F25236A53223F77162777A168DA55EE9485B4D692E6291CBB59DC9F8D6BD42BF4353D8D329CB962480764807A6ECAA0D7655962B6BCB396D64278A24829EA31FE56D836F944B19AB1BB68EE4F166A98836D4A9DEAA3E5B651C99000B22B623E01D49A16A74DFAFCF6CBC0ADF9B5924A69239440388AAFD9353B0E9DB7EF91904840BCAA62E428C58003E5FAFF8E465698F9A55733EE115C302148006D41ED9032A6556A1E9B3C8AF5E21B71F21F4E310AC92D94C51A935423B53735A1EBFD72D1B86053087934C885BA034F1A8E9BFF1C08A3D1359B8AC2CA3E13C4FC3D0FD1857931AB57E13D0D03B1EFB9F0FD5D8E4799B4D1AA6616D2162106C3E1A83D9478509C2828A92327D46424311F0F2151BF87635C0429E6C3F548949E62A29F080401B03808640249E88E2C09F8D486A2D29BEC3A8C036490D2CEC5FD373F0A536A6C69F3EDB6D87A2906D9AE98E92DBA853C993653D77EF9206B76242BDE168EDDB9D56A694A52A6A3723A621145056B64BEA892360091F1B0A91503718D2414D22811CFA54FDEB9F89475A75AF4EDBE04D02999B710131F23C29F0AEE0AD7AEFF462117428BC13F393504B8BBD274284D4400DE5D71FE63F0460D2BEE46D83AB300014F1CBBF2DE97AA4061BAB38EE2398717470A76E9435EBB1EF974734A24D6CC0C41036788F9A7F24ED81927D0DDAD1C027EAE3E288F80E26B4FA336187B409D8B1963A79D7973CCFF991F93DAA35C68F7925AC124864BCD22E394BA6DD3350319230CA63760A07A91957FF002BB6677A328699C01E6FAF343FCC4FCBAFCE3F2C798D75E4FF0004EAA962B65E6092F6616E82299EB1AA5FAF049622EA08E6AAE0ECC8C0F2CC5CB8F8399B69E1313B35A9DFB5C5AE94741B3BBD6749082CACF5EB5B49CE9B3DC8A9F460BDE02DE475502AA8E4D07DD87963E24ACB742142982EB37375A6D5AFA20B756ECB2FE8E2CBCC01427D400D54537DF08C6006C1E93BAAE9DE718EF2554B81F502EA584DCB9A0005492A4AB536F7CC7C98787CDB232E23E6CCF4E99352B78EFF004ED422B985C06E6935240A7F9A37E2540F7DB2994C44D1DBDEDA71C884E2DC5E5EFA9F56496ED23A894AA8246E6A09A81B53B9C8994451B631065600E491DD5CD8D9148EEAEA38DE5F8828A312012A4D1436DD7AF5CB23204EC984252DA3BAC0D657FC9E02D72A6A23E0A4B123A92283A57EFCB0CE206EC25131951E61563FD216A15D7EB0F091D48208E8363B9AEFDF019425C8AD1EA1378B502C0299BE3E34F4E470A41EC0D4FF001CAA51356CB6424FAEC96ACA64134DC9885685790DBB29AF134F1E9EF9743158B62655B23C6B524E0B08DA1727779191E4A782468596BEEC763D8E43C3A29BB4747A8A856414880208854F2620F727B93E2704B9EC910EF4435F246AB248CC1491C79EE58FB0EB90ADF64F36EDF55691CF20454809C694FEDC970D152414C2798C854A283C00083E66B527AE46D8D6CA4F3713BB7C5D169B74EB80DA46EA91C8BB95AF4018FCBC078E591039941242949222B2A93FEA01BEFF00CA7E7959643925F25CC8CE0235588A3827615EA7E8C00165EF4B5DE3127251B1FB5213BFF9D32716B994C6D2EEAE14C8078826A0F5A91FAB2DE7B2135A86F1141F6BF1EF95109B415C4B1F2FB5C9231463EEC680018F932E8839DFD48C1523B1E44FC207F9ED83AA8EF0D42FC02216AF235A773B6C2B5C90E7C98EF49B349C541E3BF427DBF5E4AE8EC8F7A5770196A4A81CCD18EF507A8FD59021236505422D26727FBFB8414A6E40DE8711D2D3BDB17D4259ED8DCB807EB2C4450B2B548661B91EE0034F7CBA3BDD29B0425D616D4FAA48AA38C82ADBFEBEB993096C4344C9BB7A9D8288E2153C402083B500CA667AB28A5F2DF59DF5CFA16D2B4A6200CB2D2B186E845478E088219CB9531D91D22965919404505641B6D4E95ED845F54923A331D09BF751A3B80E29B11FB26B4DBB74C4862CC9182D38EE0EC1BBE544150AF4F8294DE95AD3DFA53AE1DAFA2BFFD1E810F963CC7F967E5AD6B49F2F699A79D3B54BD81BCBB2DC3B41A8BEB17770DFA42DF55BA32FAB70B10898AB23856723D3551C9071939F14AF9976F3C628089A88E5FB7CDE5DE6DFCB4F32F9D2D34FF3179A3517D066D2D65B4F34F956E9219DAD05E896160890CAD2159D544D019DD1ABF075E9918F50314B7F8389974DC7BC09977F9327B0F3068DE42FCA8FC9ED2FCDB77AC68FE57B2B4E507E624FA94B134373A15E5D699026A10D994736D7966F1152BEA18D928F1B03C9718832CB230DCDF21FA1CF9F0484465D8988DFECFD168483F203FE71F3F34B5FBCD674FF003BF97A4BF3C2F257F2EEB965E5F37CEF218D0DC58C8E896936D4916058E1958965E0C73206B7347D34E2C341089FAAFCB9B398FF002775FF00CA2D4643E40FC9DD0668DE66136A5ABF98ECFCB04C8CB440D750585C6A1748C4558AEA540092AB9039BC4DF2488FB43770708A80B7A0685FE2F9A584F987CF9E51F2B496B08177A6F9086A5A95C472CD21E75BD9184AC02A70577640CDFB6B424E3910E87F1F0483388264000C4FF31FCE9E42F216B3A6793749F2E6B7E7FF00CC6F30BDAEA23C8CB3DCEBFAB4EF7519FAA4D717B7571716F6C05B334856113100B069136396430F18E32687DEE34B3112F0E364F9F4406A7F997A468537E8BBDB1B6D52F2E7EAD36B7A07912E750BD8EDE296D927921D4753B7938DD10E78886CCD388F8A552DB42388C86DB369CE31CA8932FB9E99F9677FF9ABE7DD43CF1A0DD79AF4DF36F932CF409A31F97DE77F2DDCE9DA7594B34620B4B7B99255BA32C12B48C03C6DEB38AFC2DB9C9906276E9B9EBF8DDB38B8E249DFE1BDFF0063C53CD7A77E5CF9AB428E7D33F29F5ED0B5FD13537B5BC65B0BA586DAD84007D7AC64D5AD2FE2820497E08A24469C9FB2DC4151284F2C656642ABED70F2431480E189BFB5F3B5FF009D3F21747BED4A0F33F95FF3035CD47440D1DFEBB3DBC175069123A07F56EB4AFAB59829CB8BFEEC3D14D68C6919CC8472CBE93137D2DAF83101B93151F3F5841AAFE5AF9F3CCBF959E68D63CD906990585A3F963CBF6F652C16BA5DEDDC0D79786DACA3B3D4AD2631C6BC96F74C85446CDFBD7A8CBB0480C8219363E7FA1AB3690C05F317B91D1EC3FF0038F36169E7CF3EFE41F956E4DC491F94FC9BA36B3A6F9CF4C58D269FF48CD73A85DD95C24E87D500058FD551CE23CF9A7EF83262678D59EF9553BAC22A46B7E0037E9B877FCE617E625E79B7F3674DFCBF592E74FD07C957F36A725F69968D737536A77B77F148911A7251C846100268848573265FA4C55194EAEC9FB1D66A32194C46EA804D2DAEF4AF215DE9F6DA35CCCFAE6937EB69F983E79D274F16B617B3B40CAB7D77A53CC145EBD02CB1C4EA77E4FB8A1C5CF0864FAF994C709CA0888D8737AAFE65F9905AC167FA4207B486E6DD0DADC5AC327095044A3932179486207DDF4D3131E1C52E52FB1D6E638CCA8EC43E388E6F2BEBB69E7CD4E0F3D5E4E7CB92D925E8B6D1DA24852EC4A235596697F7DF147560BC4AA82D4614CD8C34D1006EE56387830040E7D583ADAF90EE74D86D60F31A583EB10CC9A86A779657973A95C5182B4492AB243145CD413E9AFC446E48CBC98C3771E463D4F3EAF4FF00AE5EF97B45B6D034FB8B8FD0D76F069B35EAD9CD148F2D01A4512543A2A920D1851878E61C74C329E2B73753319B1C23462475EF4AB5292E22BFD5BCCDE65BCBBB9D3F4912CBA7E9B7700B497D2424471188970A8D40AABCD890454E4757291988C5960C5B7193C9F29E83E799FCD7777DE50FCC3B882DCEA778EDE5EF33CC1524D22E1DB925ACB252AD0744566355A01F64D46FFC0E18031E81C53EAF27ABE9F712E86F1F95B57E5A76ADA6CFC213721BD1946E6B1CDF6551EBB6F41D0E6A35187F886E1B2553870F57A3BF921BCD9A3DEB5DC7F510F083A7DC37162B3AB55645DFEC8A5091D4139AF86638A629B34DA590049E4F9BE68E7D39AEF4FBB431DFD9CCD6F756DBECE0D0D0F836C41EE337D8E7C7521C8B54856DD5EB7E4ED17EA76A2FAFC059245E4396C1411D3FCF7CC3D4EA2CF0C7936C31F7B35935B58C08E1711F21450012483FCFB7623E8CC48C0CCB394B8452334DB9B9BCE0F2CFEA223728CB80C011D08046C6999328700DB9B5D93EE4FBF772CEAFC037A6761F3D8E4444ED68BD93EB3064A0703E1A7C8027BD3DF2C3C988B641E9964A540E3BB30E9BFBF6CAEEB924849AF220A3715209084F5E876E42A72290C6AE090C4C8EDCE9D3C68680642EBA5B2B298E9E9F58297278B051DABD0577FBB7EB92E6A3664AEE0C4DC7E16A5141EBFDB933603107AA2EC8026A5294EDF77423AE00A7C931B821A2615A5576607B7BF864A48058B834BDA31FDA018124AD7B74AF7C8326630EDC59941276EE683C3DF263762764CD19654602A7B8A002B5EA7AFF00660051D58E6A51AB2B15009E4C4D453E591290C7EDFF007C4A568549A13BD7C70165CD01756CCAC59492013D0D0814FBFAE1B484FF00CBD7C1BE073CCF2F86B5F1036C4162CAAED04913272E5403902694FA0FCB1AB48D92BD240669239012B1B0AD7B0EC483BE2364164E891996491954BAD6259057971D8935E95276384950159DE358669A5907A10A17762775402A4D7A5001839A8DB67C63AEEAEBE62D6B51D59DB88BB940B6404FC3047F0C541EEBB9C1E6CAAB642452943C57D42149DB620F7A8384F931277472DEA0A24919443B6FD877E24F863E1F9B2E3F2405EE8FA16B40C5770C4CEDB1AA823DC13928E49C06C8201288F23BF983F287CCF63E6EF25697E59D71ED590BE8DE6AD16DB5BB06546E4AC8B2F19ADDFA812DBCA8F4DAA576CBF1EB247EA6271C417E9FF923FE73ABF27FF34B49B9F20FFCE467926CBC896FAAC2B69796FAAC235DF265FA2F1016467803DA6E2B49E1F4D69B4D5CCC8EAE32FAB6FBBF586CF0EFE9FDBFB5E6DF9F3FF3819E51F3179174DD67FE71A3CB5A2EB3677974752B5D6ADB5877961D3493EA5AE9B3C0F2C3ABC527232451DC832C7C1912E28D1C425C247AA1B8F9FCBF16C7DFCFF1CD82D87FCFB5B48F36F922C7CCBF963FF3905A579CB4FBD8C8D1E5D4343B8B0866682430DC5BDD4B0DCDC4D6F2C32A3C72C4F07A91BA98E4447069138A665C42428F91408889DC3D67C9DFF38E3E61FCA392C96E7FE715358F31DF5AE9F259EB5F983F94FF009BF7715EEA514E019A27D3B517F2DB2C7F08A451B11FEB1DC91A7008EBDE6EBECDFEE533321B97CC3F975F97BF95BA9F99FCFF00E58FCFEF3FF99FFE7176F6F1A3BAFCB0F2DF9C2CCE8B6B6E6E2EEEDA5B33A86B3EAC1A9A5BC22D943FD643B92EDEA1D88C6FC8C09A96C6BA7E9BE83BCD313BED1E48BF367FCE1C79D74DBCD426D27CC5A27E6FE9D7255346D47C9FA9D92DD5BC3216F424934EB8B90EEF205255617941A30DCE624F0CF1FD3521DE08FB9CDC19618E3C2017CE16F14FE548AEEDAE2D2E34ED48A2456497D118CF1258C921E60296E9E3BE62CC19D5F5714E62272246E7929DA35FDFDFC12B159960A19AE248D40086A789240DDAB41DEBED89A0118E529C8594B6CB4AF3A5FEA7737D79AB8D13492E5AD747992DAF6615A8E04448235507FCA24E6678D871C000388F7B932C0646F9057B5BCFD1F3DD45ADDDE9F7D2502DC5C58432DA0E6BD433722ADC7A6C807B60C996C7A010E3CCF0CA8260D26896AC219351B7B4B90BEB3492CEB40AC360FC91789F9D4FB656334E5D2C360C75CC504E4586A91E9B0EB26076D1E720C5A9A7A4D6A031214FA84C75DD4EE7C08EA3232981CC1054823CC29CBA0DCB7A172DA969B7AD771FA88C350B703D20C47251CF75E4A47C3DC78E591CC3900479A4E227AA39742D66D228A79AD2EA186E286DDC5ACCE1D684F242ABF1569B1189CA3931F0CFC92F17EB03D1FEB5230AF12AAA3607AF1660C3AF7C3C04B1B016A6AFBFA91DA99481F69D80036A5282BF3C4633D5654AB1EA12C8C0B38453B851D76DE95EDEF8651DB7281CD5A59E47900FB08C69EB0EC295E3E3F4E5623B33BDE90D35C430F18848B43DB7EBD6BDF08DD688F341DC4DC7E153EA7A94A3914E83C324056FC988F57B90C928E6C5537040A83D2BFE7DB2D176376276BD99359CC4AFC5BD29F01FD951DF7C130988B579D0CC0863FBBA8A211D48F7F6272A06BDECB6212AB93C50AA8A568106E3C3EEAE0DAD3CC7B9D1A3A703C6A450004914F7EF4C973BDD1F04D1AE59949A17E3B0A1F1F0F7C200A051CB64087FDE17666E4A38AA1ED5F107260EF68BB4C12D987057A286065318D802DB28E837F9E544D8F34C4D243AAD918E49E4910AFD55D67E14A568389F97DAC9425C2374CB7D92CD1EDCCEB643AD4540A7424D4127BE65425C21AA5B9A4EB5DD43D131E91A78FF0048940371277443DFC37ED9591C5EE6C06859E6B2C6D9ACA3411B0F8855988EA4F5AFF9EF9215C9AC82542F618DBD4675A163B81B03DEB91E227932AEF651E598CCC8D3710228804E64D79537AE258F3F733EB7892A86A0A2F4AFBED5CAC9A1BECCA930F44F3E3BD69FDDF1EDFE7F4E57459F13FFD2F50DE279EED750F32796BCC3CB53FABBB69FE6AD7EF2D92F6D25BEB22F6FA75F5DD8BAB07D3B56B750D3706125B5F4723A851245CB8997A4EC797DA3F1FADDD80663886D7F212EB1F71E63E4C7F4AFCB87B7B48E7F2C5BDCFE5FEA87516B7D7744988D5ADFEAD259DE5AB7A5AA48AD2DF59C725D473C6B77CE68422C4DFBA68C027203BD5F97EA6001F0CC49E1EFFDAF28FCC1F31C13DD687E56F2EF946C3CD1F95F690BD86A7A85E31B5BBB8D46DD84F74F2E937B6AF6B14724B27AF046F244AD0D0AC9190CC8E10200904897732CF1864FAAABA5740C4B4FFCBAFCB8D32F4EA3E63F247953CD92DFC2F268FA368BAADF5A5ECD6B72547EF744BFBF92EA4B8937286DE578A25F8927706B969D4788386E9C318678FD5117F6BD93CB9E6CF34796346D4F599BF27BCE9F97FE4BD17D0B5F28F932D7589A0D4AFE17E0B35ECBA3D87D53EAF6368A794F75726E1CFD90CE54F18D44102279F56E03270F16426FB80E43BCA23CADF9EDE76FCC15D4F979E3459EE6C6D57589BC8DA6E89A9EB131D112368EE8BC1243A64424669150092F52BC790E6A68E0D83B82197108732243EDF267B61F9A327E63CF79677DF95111B7B594D93DA2CFA579B27B0B1FDDC6B1DD59C3651C917D73E332C1EB9550B52E6A170480DC583F6AF8809B20D9F2FB2DA92F3C8763E65D48DCDCF9C74A8AE6CE57B1D1AFBCC0B75A772814FACE7CB9E5DBA5BCB78F89A169E68C125568CC55709208157F8F21BB186C48FEDFD4C23F33B50D675A92CF51B685BF383CA9E499953CBFF94FF9796C2FF5BB779915BEBD7BA75E5EC3224815BE253A6DDCF10250F1F8E46B70C2245123E3CBFB7CDAF3F8A4D8D872B1BFCE9E4317FCE4DDBCD77AAD9798FCBDE64F2AEBDE578C5CC567A9DB6A32EAFA6AC2AEF2CD3E92753B6177146829215449214E2C15E256E367E5E43E800FE3DED661B5CE47DFFAD17A37E7C5C7E6159EA9E5EF2BC3AA79D6DBCE1A6DEE9BA9DF6B5A926B9A0DD598981F5A7D1A5BBBEB7D3ADAADC596E646609BF15344C8CA192279D1F2D9BA0315100F9FA85F2F377953CBFF00959A3693AF79F344D06CBC977BA04DA71B3F3B7E5AEAD36A115D431FABCE3D334CBCB996EAD634BA4107A025B77703EC2148D0091C93A13F57BD000B04DC7DDEEEA9CF927CD3AB597FCE42796356B2BEB6FCC0D5357B0179ABF9CE4B03A4DAD9C0F6AD6B0DC5CC0E8AD1DC44F0CF2B82583B471D2572E1B0487A3886D5F8FB39FBDC9D355C848ED2EEFD0F37FF009C99F27DF5BFE7C79EEF63FAE79674086DA75D3FCD36104935E5CEA7716A67B06822018B88846C6522822003C84280333B4B5C15E6EB7536257D59158F2F345A5DDF797522F3279CAC347F2F5F7993F2F646B7D2966D5AF34F8EF22BC905C224493356AE96C6B20A03434A634A10321C5CC7DBE4D739CA20F09D8F714525979C7CFDF971E4AF2E6B96EDA1F9FBCBF752687E681A82FA621B242D710EA52D4EE8B072A9048AA0507E21983E118E622B997032E3E39448DAF9BE68D63CE3A369C74FF27794F4A683F2E2CE4B865BB9D3FD3757BD9A8B2EA974C3AB0A6D1D00E1B28501466C89B8D44EEEE34BC397AD902804EFCA7F9596D25FE9DACD9A8BAF2DFA91DF5F5FA316586289C34848239715A7854771B66265C9296CE1E7D24A12B0360BBF303CCD6FE84779A5DC4DE9D95BB69DA6112160B3F031BDCC6DB29771466AFC4A361DB32B0C7861EA6DC2259662D8F68BE74F31EA7A6AE91ACE9963E6DB0850FD646A1C632D6CA142469E9AFC26360487A54F4394CB3709F2765AAD2C2EA3CDE4FE65FCB2F2EF9AB55B73E4AD61F42D66789A5BEF24EAFBB4AA95226B5BBDD5C0E9C09341F239B6D36AEB1EE1D44C189A4BB4CF306A7E5F74F22FE625A6A0349F4F8695ACBC2CF7DA6BF40CB4E4B34684741C881F676F872E942394710E7DCC632079ECFA0BCACD7BA147650C17ABAAC576DEA5A4819BF7A4461984448E20711CA877CD1E7C1B921D869A400E1E6C33F30BCBB16A3E6383CE9A1BC37DA4C96A0F9963B665B8369716CC1433C51167F894D0D06DC461D3E6E08181F8272E03C5C406CC5CF9AA1BB0163B868ECE35E5188CF20DBD0BB16037AF874E9974307C5A653DBB933B5BA8E440B0879B8B0E66BF10AFEACBA31B6925EA9A145C2DD43875AA80B4F735FE194E43B3209F7A14F8A31B9FB43BF87D341821B96324F6D58431568550A92C77040A787CF253974447629CE993091C2B9223929B9F03DFA54D3AE56225B0EED6A51056238D02FC5B786FF860218835C9E77AA7C32AAB54EFD7A7F6E43CC367927DA0CC1418EBD0F2A9A800FDDDF188A44F764EEA3816E2A4920827A2F5A834CB87CDAE8054819E251C495590D5929E03B53E5D32019FB916ED54F889563D01E9EE4F6CB3DEC18C4ABC6E6B18078EE1BFA9EBD32A2C8066B00611C6E451680015AFD14AE48053B236DE50CEDC4D0D2829D698029436A30B7A6DB7514A835D8F7FA32450C16DE7FABDFB02A4272A807A53C32BEACFCD3B9EDCCBCA45F8EA28680D0576D8E12188291E9CE6D756F4C5423539F8354F5A7DD839A793D19D395AB1277A0AF423DCFCF6C9128012FB2E11BC87930E46829424F4A01BFDD5C1CD3D193444C517A740DD79B75A96F8AB51EF86E91D5E69F9B7ACFE8CF26DCDADB4E219F5A916CA3A7DAF4DB7969D29445EB8386CD32887CC9691C4829B2D001B7F4E9B65861DC8E2B4ED4C6B435E4AD50D51D46D4AED9130D944882B99E228E555583280B1548A1A0AEFFD7056FB2ED5652F905948C5164F4255A9F88716AD32424791452AC5777366498CFA8847C0A5BB7D380889D8AC6C2B89F4ED5808E4884520D816DBE226A7AFCF054A374C891B32CFCBCF3B7E67FE49EA4DADFE53F9B27F2F9B9944FA9682C3EB3A36A47A1FAEE9CC4452161B191384C07D9957258F3701BE4D9C5E9DF77EA27E4E7FCE74FE55F9D12D747FCC88A0FC9AF384D2849CDE372F2EDFDCCA6B24F6FA9855580C8F5665BB086A682497ED66C21AA8CEB8B63F67CFA7C7E6C0476F4EFF007BEE8578DE28644659639E312C12A10E8E8FBAB2B0243291D181A664D6E8B425E4297B68F657F1477F613D52E34EB98D2E20910F45314AACA69F2C9126B762007986A5F913F92DAD46BFA47F26BC857339E2FF005897CAFA3CB2C4C3E2E4864B5615AEDB823AE55C103D07C87EA503662977F909F9371DAEB7631FE5C681A1DBF98591AF67D3ED56CE091A0056196CE46124368CBC883132706EF55A114CF4B8A60DC79FE36FC528910F96FF0030BFE718BCBDA4BC115D7E58E97E62B07B85FAA799BCA3612E9BE61B44647756D43448E596C7520085ACB6BC0900F21116E635FA8D3F86050E2F76D2F88DC16D870CAEF6FB9E0FE70FCB7D1B4ED2EC6EF4BF2BDC5A6AB235C43AAE91245733E9F771C8A3EAF75657772905CD9468E489D6E91D7910B0CD2D0938738815CEDBE392C104A48DF90BABE9DFA1F5FBBB2B4D1345F317A3068A2C624BDBFD335085C3B196CA14794A851CCFA9132B00071F8C64F78C413D7E3F631C308896E39263A87FCE3E7983CCF6775E57967FCBDF33CFA7A5E6BA7CDB17AFE54F35470ACB147359DDCE521580ACB27C305FD8ABAD0A820533231995F0C48EFF00C777C45B9528633112DE8EDF8FD68BFCB8F2EF9A3C837EBA26AC97E75BB3D574FD6744FCC1B9B797CC32E92B716DE8C7673DE5ADE5CD84969218B712471842C4F0327C2D0C9397102000475E7FB2BDEE460C0240EFC43BB91FC7B95BCD5FF388C3F377CD31EA7A7687F979F97FE7F79E09A6B8B3292E83ABCF3C2B219174F812768E2BB749019139C4EC1E07449916B97A6CB332ADA8FCBE0E1EB34F011B8DEDDE3EF62B7DFF0038A7E75F29F95F5C7F31DFFE63FE5CDC2DE437371E4EF27E9175AF791E78A3DDA1D3E6D0F51D5753B65258B7AB72901542C811790ADD9E0446F86CFBAC3878B635C541F3FEA567E52B078A5F266B16571A4C71410B7929AE59750B12418D9208751E337C0CBC9796CC0F1622A0E6040CA7B4B99EAD9920319DB7081B2B78EEDF5592647961D16C8EA1A9FE8B08B7305AA9A4D713D8DC3ABFA701FB6F1BB228FB441A61224362100465C8ECA7753E9565A5D8EA9279974886CB507586CEEAEFD4B68FD578D24F4848EA51E40185541EB83C394A4451B6321C23BC1492EFCC5A2C653D4D7F4994B92A8DF5C8D6269118A151CB89A83B1AF71928E39F4083C96DD5ADE27A72488544C825B799C9F4A407BC526EACBB6C4120E4A00034C245A124A228C221753550CEC389A6E69E38CA36B12B3E259549657915816A569BF6DFAFD39681439A2ECB29B6731AD7903CF65AF50478786DB53233E4A374C0BC4549A9DC91C5874EB5DBAE506D9016955DBD5CB6E684517A9FBCF8E01B5248DF75C85E879D78F7A74A0EB96000F2624F4E68F8955E3285694DFD4D88AD295F847861366A48F244DB46AC5EE1C13142BC8C9E3EC32225D792486E469E794710158D1857A01D40EE7A60B24DB2E10107E607F4AC0C5750D6FF005050D1CB5DFD28DEB2330EFC9A8A3A743960B2BB0DD26D3A74D3EC23BD65E4DE885823A825E46FB207EB3965FCDAE812ED3ED4194CD74E66BAB8AB4E4F89EA3D80AE2057241DFAB22F41405E204951D88209FEDC8837CD2763B2C6D266BD7F4CC823847DAA6E4FF99C225BDA00B669656715BC4B1449C1540502BB6DBED90E224B2A00A7B0A1E51825BE23B1E9ED91E615194FDF7A7FEEBE95DABF3F976C8D6CCBABFFD3FA25ACD8BDA49FA4F4F318BEB5D35ACA4BFBAFDEC6A443C235D42121AB0C810094D392B82DFB62BC4668709BE8EF4E53304DFD5B9F7FE371EF6376BA8E9FA4C7A73EA7A7DF7973CC1FA3D52DF53B7FADEA1A25EC92C45A0B796E1A4E324658058C492B381F0F2E8706335BF2F77265C5132AE60ED479FCD69D0B40F30587E94F2CEA3A46A9A74C56CAE61F54881E4903496904B1CCE0594D148DC92478F89E5F0805A849C40EFF00D9F2E8D5C33C5B738FDB7FD13FA1E34DF94BABEA305CE9D77E6AD6836A7A7C96977F95FE6B95355D2750D46294BDBCA6FBD183550ACE00956D230CE8A114F1AD47059A94791E8CE3A8B8DC77E5CFA14A3CB3E4EFCD9F206A07CD9E7ABBD0BCC5E698D5AEF4DF305A795AF2DEEF4D88029E8A6A979368F05B5ADBC6380450471D95074C964101C81F97F63580492413BF3F3B4E7CDB770F98BCACF259FE61EA11E9BA0C91C9E75D17CABA8D9417926A7C3D6815ACB4787568D12E6102E62B78E4457676AB99178884488F3EBDFF008FB594B09FAACD0E9E7D7E21474D8FC81A3449079DB53D7A2BA8A310C3A3F9B2FF00F4B4A2CDA65ADEDDE9B36A93DADB115722E6648BD34E2786C69200F2FC7DEC324633166D5BCDF6BA4795B43BDD4B535F27685A2EB1147A9E83E503A1EB7E5DBD8A3B69A4B7861BED5B46BFBA84C323EE1AE2336D211CE807122D84AB722C7E3A8FEC71A78872068F75FEB785F9D3CD1E4BF2E269BAC79CBF2D6C74F3AF46574FD62E7CC3777D0D85E39962E1A65EDE5CDB930485CCB1C315F091616091DB483ECE462BCBC86E3A38E612C12A048F3F7A13CD9F99565AEE97E46F27798FC99A5683AE7966E245FCACF3CF98F59D4BCD1E5EBCFAF2836F1DA6BF3DDC0F673B3A0F46D7578562E21A28E41FB77C74F7EB89B0398EEF87E96473711025CF9721F83E7D5F23EB3E7CF3CE9767A7693E6BD36C74B8B48F31AC3E7CFCA0D274EB5D0747D4418E64BFD3A4D2ECA2B4459750B626E60171C9D6EA29BD223D48332B8233BAEEE67BFA7EA463222403BFE3EF1CDEF3F91BE41697F353F37749F2F5DDCEA5A4DDF952DF5E86CC4A561BCBD7BB824B5BF3032153757315B091DB923559C90791E3899B21963893CDCF8445CAF991F6A6FF00915EB6ABFF003917E69934DD2EF8F9C21D035C93C9F7125DFA76F26A3A7456D1E9C67591E2824B78212CB34722FA7E97234E4149AB28E1C42BA9FD1FADAB49204924D501FA8FD9CBADF27B17FCE544ACFF00989E5AF3FF0096B5758FC8FE69F235F0D32FAD65747FAEDDD1EC64E46AE9F5936D0A2B3FDB8CB2D6BCB2580838E80EA6DA3558A71CA41EA055F7FEB635E74BED3FC8FE4B3F9ABA8C4AB2A5AC57DE77B7B740BF5AD567488C13C30B28E2DCE28C3AF20A03B347BFC26A8E23AA005FA834EAB0CB14844FE0B14B6FCCA9B54D06F6E352B3B8B6D2E5B0B9D52C6CA56F5B56B7D32445B7D56DED252BC2EE14B698DC428F52AC8C1680E650D24F01A278A3FA7B9A3808D8F2EF79637E5AE9516B4BE57D4F5CB58080B368FAECE40B3BAD39E312437714A366E511FB28492DB533032F1C25C51E45AF1C658E637A641A1E8DAEF96ADB57D3FCB1AFC3E63D26E6EE25B2B159E2B49E7F5D78A0BC85A404A820AB84F8580E44039107C493D060D760CB0F56E4304F375F687ABDF59DF8B14B2D311AF0E9F7CB1B0D3AF643352692C79D4C8A0AF0049269434DF2ECE6513C2393A91E24C918EDE6D3DD5BE997BA40B79825E297B9BF5472C05B5418D24E3EC3A65708CA7125C8D5662251B3B8E6C7FCC88BAF6A56A74875BDFAB6C6353C645E542A7E2E27B6FE199FA7F443D4E36A8F884181BA7AC6937FAA6AEDA5796B5CD00EBD69146914D7B70ACD708DC47EF166A00CAA48A92C09FE6F1AFC6E0F7303722235D39B43C9FAAF97E6BDB9F2BEA2DAAE8EF34A6FF45B87E71390C3D5A26CCB4A003607FCA6CB065121E97374E714BD12DABAAAD87E94D127B6F30791B4996E6499FD3BFD0612E97B17076426320C6CD1191597E1A82415236232994239459354DF9B2CF1910BBAE47BDEEF6161A77E604BA740745D2753B3F36CD72965A96ACFF51D6ACAE2C90C97DA754456B2C86D685F948250612B2060DD71E2251340D16194C48B22C311D5746FCB19349B27F25D9EBD657F7F27A97765ABC91DCAD8C2A5BF769731AA7ACD21A3062A084FB5F11DADC7972DFAAA9AF34315030BDFBD7D9D9ADBA27A95910B543710182D3607FB70CA565AA80E6C86086CC82E180A8FBBE7DCD7C3059418AF78609470F50AA6D56143402BD295C4024A9A5F6B0B5BCC11FEC75E7D87B9FA32C8847B990EAD6E1AD9675014B741E3B50134E876C9731C9883BDBC9F5746F55940076E9D2943E07283CDB41B0AFA5C8B198D880DBF1A0EC3F8EE7080C4F2A6736930923E141BA8A0EDBFFB796C0ECC2548DF4D47004F7141424102A7E8C4A83D5598A84353422B553D2B4E9DB002B54C7243C19D58D0AB1DE9D7F1C893BB2AA0CA2DA6ADAA547C4C02AB5363DB6EFF004E35DCBD1BB59384803B0E6C49527F557E8C26D1B2733A89216DCB3A0D9EA6A2A2A77C4F240AB7976A4860BE0F5E2031A9EB45FC0F8640ECD828B2ED364135B85356455EE687A50D7A5400325CD89637A9C46D75386E287D3660189E9B74A644B20CFC333D9AB47B2B0F9F1AEDB9EF9245D2CD3A108C0B28709526BB9AF63EFBD7B60E6BD1346982867FEF760C5E95E5F47B611B21F1AFE6A79B25D7BCDD3D8C2E64B1F2F93691A03B19DA8666A53A83F0FD072EC18EF7599A62D6C6E360AB4604507EBF0F1CB2831EBCD3A8E2B9734A1656350A6A6A29D282990057645ADADD4C384695045411B54FB572008059103906E4D1E79948606A3BD284536AD3BE1E3F92FB908C97BA79E32422488120135A8206D43E395D44A6AC2E416F7018C67D17D8C808E277F6C3C407B93451B0DDDDDB305279C7DBA91B7F4C0620A2CAFB84B5D461259549218B827ED72EA08F7E99120C500DBDE3F223FE7263F317F20DD346B065F37FE5E542CBE42D5669122B3AB726934AB9024366CD5358C23C26B5F4D5AAD97E1CF2C7B0DC1E9FABB9B2552E6FD6AFC9AFF9C91FCAAFCEE274FF002AEB4DA5F9CA2B6FAC5F7E5EEB5C2DB578E215ACB6F18668EEE11C4FEF6DDDD4746E2DF0E67E3CF1C9CB63DC7F477B1ADBC9EEAEBB06E5C103927D87837CA99684732862EEFE9C69234AD306E4CBB7C0C37DBA6D4D81EB84F2475405CE8B61716F716823F4A0BB72D3C7150C523302BF14120788914EBC411E35C8088293C984EB9E471E620F7763AA7E80D548329BCB7859E39245F8435C405DA30586C64844537849D41AF263133DDE6A360F06F3AFE4D5DB3EA8F1E8ABC2FDC35CA36A10C3A4DC3C215E39873B19A28E7342B22DD2C624426AFCBE2CD6E7D0937407CF6FBBEF6D86531ADD1FE52FCAFF002AF98068777E66B63AADC6AF6A27D1351BDB2D2AF4596A16652B6D6B756D6B7166EA8A8EA934572B2B82C25E6CAACB3C3A58D0E226FE1CFCB98AF8B3FCC4874EBE6F70BAF27BDDE9F6B647578ADD2D659E4B4B83A64135CDA96E2094796566A30F8583F20EBF0914A667CB1ED57F630C79380EC3ED2C135DFCBDD5F5FD4A1D5EF746F2BBEB3A55CCA12FE08EE6C85F40CBFBB72893C8B1924825AAAE92202BC80DF173690CCD8ABF95B9B8B571C63841951FB196795F521A2AA797B52813CBB269CE9259A4F753739924E448E4D6F04740C6B5491D69D294CBF1E4110207623EDFB1C5C9032B90377F63CC3F34BF23FC8BF9B027D4DED6CAFAE2661FA4665820D4A391AB5695A1A3B15A9219A22245A725E43921A72E8C4CF144D16CC7A8E11C32163EDF9BF323F387FE715EE7C96A932D94161611DEACDA335A5E7AB637AB29F4DA6B0FADACB1AC8A0D248A321B7154E3465C519B2E1DA75E451934D09FAB1FC4773E61D7FCA1E63789E2E326AD616E616B8B644B7825F4E22FE9CF19FABEED462AC0AD4EEAFBD332716A200F712E1184BA7279EEB9E5AB2BAB282137D75AA714FAD45A6EA9145048DCC538457856BEA47C7FBB7A11D81077C9865177CBCD874649E44F3D69FE5785BCB974D3AD85C492492E99A9DBC6D0C3706809458DE030F2E8CF19FF002991A8731F53A694CD87270668C0517AA5C8D275C6B4B8F2832BDDBD526D2EF296B71528AFFE8ECE44737A75A37A66BDE8577CC1E29E3345396225460934B652437296890FFB93B6E4F2DB1570EAABBBD15D57D4A772BF465F0CC0F9341E75D51564B34E034EDC55EAAAD4201DFB03B9A7DF84C88F8B302FE08F522A55CF10C29C8F5DF6CAB6E619F3F72849106626958FA96EF5E801C9C67658103E0B0D047520B39A053E24EC36EB8F5D90135B5532A048B704150FD7E227C3102D24D1A51BBBC8E3A4085648E1359189F859FAD0F881DF08DD7CD2B3A81F8E79490A87E37077246FC41A75A75C3C34117658D4BAEDD6A1752DCB80D23AAC71C680048A28C15441E000DCF726A4EE727106B7525176E934E613310442088611B041DFBEF9608D30241EAC92DA01210ED40815406E84D4EC46425B0D941B4F618CA8A9A165E209FD432B27A32EA9AC0CEC400A77D8A815E5DE82B8C6357682427B0236D52BE26BDBC6A3AE01B5EE93BD26D1AAFDA43CA9B303BEC3C3DB23454725DF598F970E5F1539537AF4A57E591A3749E8FF00FFD4FA892FFCA4BA57FDB46F3FEA163CE40F3F8FE876D8BF8FDCC5EDBFBCD03FD57FF93D9803A7C5C88FE8605FF94B3CE3FF008026ABFF0051336669EBEE3F7A755FDD7C43CA3F37BFF251693FF30107FC997C81FA43878BFBEF8BCE3FE70E3FE50CD43FF020B1FF00884F8FF1FC1DB66FA63EE2FACF56FF007AF53FFB62699FF514B90D4FD317131F5F7BE2D4FF00C9BF6DFF008181FF00A87B9C943E9672E52F73E9FD57FE52DFCB8FF98387FEE9D0E4B4FCCBA8D7FD47DCFCFC83FF0058D7F357FED9BA8FFD45A65D87FBF8FBDC897F71F00F10F207FEB35FE667FE011E69FF009391E6D47F8C8FC757173FF77143FE7DFF00CA316FFF009ACBC95FF5192E4749CFE69CFF00DEFC43F433FE71BFECE97FF6C2D17FEA022CD56A3EB7325FDD8F7BCEBCB5FF009383FE7237FF00007F34FF00DD21B2597E88FBDAF43F51FC750F7DFF009CA4FF00C969F985FF006C4D0BFEA28659A3E67DDFA1B35FCA1EF603E60FFC909F989FF6CCD4FF00EE9F6590D07F78D3DA5F5BE37F2F7FC75F43FF00CD7BADFF00DD1EF33A1C9F407132F23EE503FF009203F297FED96DFF00515719A78723EF71F2F2F830CF217FC75F5BFF00C07B59FF00A80971C3F506BC1C8BD2BF32FF00E387E47FF8C76DFF005050E0D4F377BD9BF5FC1F3AC5FF001D5D53FD47FD63043E80EA337D47DE932FFBD927FACDFF0011397CB9B8F17DB1E4BFF8E7693FF182D3FE22B9AAC9F53B9C7F4FC182E97FF292E95FF31737EA930E1E6E1E93EA9FB8A69ACFFCA41E46FF00C077CC1FF750B5CD843AB67F0C53DFCD0FFC92DA77FE063A4FFD404F98D8BFBD3EE6D97F743DE528F2CFFC73B4DFF8C49FA864B27562CD57A37FA87FE2432A1CD649B5B7F712FCCFEACB3A23AA0CFF0079FF0005FA97243986B3C97F78FF00D87FC4B2D3C91D59B5EFFBC117FC636FF88E3D123ABC6B59FEF3FE7A37EA198D2671E4542CFA45FF0018FF008E48A966FA67D88FFD56C94581E49F1FB07E43FE22726C62D7EC9F9B7EAC833EAC6AEFFBF4FA704BAAB28B5FF7817FD4FE186092878FED9F9B7EBC65D543273F65FF00D8FEA38035CB9BCC35FF00EFC7FC64FE270E6E419E2EAC8743FF007947D3FAF00E49EE42EBFF00DDC5FEB7F5C895E8594E97FF001C66FF008C6BFA8E31E489AADA7F7777F25FD472689281FB52FCDBF59C8742CBB9F062FF00C75754FF0098EBBFF938F99B0FA07B989E6CCACBAA7CC7EBCA8F30C8726476FD23F98FE1864D09E9FF0079E2FF0054FEACC687D4E4CB90571D07F9F7C65CFE6BFC212BBCE92FFAE7FE22307563260179FDFA7FAA7F5E4B1F349E5F04DAD3F6BFD53FC70CF9A7173F82C8FA2FD3864D6B5FFBF87FD61FF12190E9F167D0A2B42FF94EFF002CBFEDAD1FFD45DBE1D4FF00743DEDBA5FACFB9FD2C3FD87FF00517FE2033723A34F4534EB2FFAA7FE4DAE13C98855FDB1FEBB7F1C88E4CCF34AF48FEF27FF00521FF889C23A213ED2FF00DEF9BFE323FEA1863CD0C72C7FE38B7DFF006D097FEA2DB02C392A5BFF00BCB7DFF19AEBF8E10B241CBF6E1FFA34FD6D80B21CD395FEEB4CFF0098B9FF00E20313C831EF78F6B9FF001D493FE6207F0CA65CDCA8F378B79BBFF59C3F31BFEDB87FEA2F30B27F8BCBDEE647FBE8FB9F016A9FEF727FC611FAD33598B92CBEB2F9FBCD3FDEDE7FCC4BFF00C99CCED3F2759A9FA9E3DE6AFEE87FA9FC0E6D34FD5A67CDE5FA57F75A87D1FADB2EC9C961CDF737E5E7D8B5FF008C49FF0011CE7F3F572E1CD8FF0099BFE5234FF8CA727879225CD2FBCFEFDFFD63FAB08E4D52E61B1D13FE3264932FD2A6FF00DC37CDFF005611F4A23CCA69A5FF00BCC3FD53FA864F272F8318F34865FF00795BFE32CBFAF271E4191E6527D57FDE05FF008C127FC4F0CF9B01CBE296D97F7327FA83251484EACBB7FAA7FE2032DE8D70E6C922FB23FD4FE2F949E8D813287F63FD6FE072B3CD039321D37AFDFF00A8E3FC5F2643927F1741FE7E1909F309E88B7FB0BFEA3FF0C4F2F8B1EAC6FF00E975FEC7F861FE26CFE17FFFD9
WHERE szItemName = 'M24 SWS w/AN/PVS10, .308 Win'

--
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'SVU Silencer',
--                               @G_att_class = 3,
--                               @G_sub_att = 11,
--                               @id_att_mount = 31
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Galil Suppressor',
--                               @G_att_class = 3,
--                               @G_sub_att = 10,
--                               @id_att_mount = 26
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'GSh-18 Silenser',
--                               @G_att_class = 3,
--                               @G_sub_att = 11,
--                               @id_att_mount = 8
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'sil_bottle_selfmade',
--                               @G_att_class = 3,
--                               @G_sub_att = 10,
--                               @id_att_mount = 18
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Silencer (.40 S&W)',
--                               @G_att_class = 3,
--                               @G_sub_att = 11,
--                               @id_att_mount = 9
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'L85A2 silencer',
--                               @G_att_class = 3,
--                               @G_sub_att = 10,
--                               @id_att_mount = 21
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Silencer PBS-1 M24x1.5 (7.62x39 mm)',
--                               @G_att_class = 3,
--                               @G_sub_att = 11,
--                               @id_att_mount = 13
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Suppressor ZA-N-M76',
--                               @G_att_class = 3,
--                               @G_sub_att = 10,
--                               @id_att_mount = 27
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Silencer (MAC/.45)',
--                               @G_att_class = 3,
--                               @G_sub_att = 11,
--                               @id_att_mount = 14
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Silencer PBS-4 (5.45 mm)',
--                               @G_att_class = 3,
--                               @G_sub_att = 10,
--                               @id_att_mount = 28
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Silencer PBS-4m (5.45 mm)',
--                               @G_att_class = 3,
--                               @G_sub_att = 11,
--                               @id_att_mount = 28
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Silencer PBS-1 (7.62x39 mm)',
--                               @G_att_class = 3,
--                               @G_sub_att = 10,
--                               @id_att_mount = 15
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'GemtechM4-96D Suppressor (5.56 mm)',
--                               @G_att_class = 3,
--                               @G_sub_att = 11,
--                               @id_att_mount = 19
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Suppressor M4-2000 (5.56 mm)',
--                               @G_att_class = 3,
--                               @G_sub_att = 10,
--                               @id_att_mount = 17
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Saiga Suppressor (12ga)',
--                               @G_att_class = 3,
--                               @G_sub_att = 11,
--                               @id_att_mount = 24
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'SIG551 Silencer',
--                               @G_att_class = 3,
--                               @G_sub_att = 10,
--                               @id_att_mount = 23
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'SR25_silencer',
--                               @G_att_class = 3,
--                               @G_sub_att = 11,
--                               @id_att_mount = 22
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Mk23 Silencer',
--                               @G_att_class = 3,
--                               @G_sub_att = 10,
--                               @id_att_mount = 10
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Silencer Blackside (45 ACP)',
--                               @G_att_class = 3,
--                               @G_sub_att = 11,
--                               @id_att_mount = 10
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Silencer Ti-RANT 45',
--                               @G_att_class = 3,
--                               @G_sub_att = 10,
--                               @id_att_mount = 10
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'USP Silencer',
--                               @G_att_class = 3,
--                               @G_sub_att = 11,
--                               @id_att_mount = 10
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Silencer (9 mm Para)',
--                               @G_att_class = 3,
--                               @G_sub_att = 10,
--                               @id_att_mount = 5
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Silencer Ti-RANT 9mm',
--                               @G_att_class = 3,
--                               @G_sub_att = 11,
--                               @id_att_mount = 5
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Silencer Trident (9 mm Para)',
--                               @G_att_class = 3,
--                               @G_sub_att = 10,
--                               @id_att_mount = 5
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Silencer Tundra (9 mm Para)',
--                               @G_att_class = 3,
--                               @G_sub_att = 11,
--                               @id_att_mount = 5
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'GemtechM4-96D Suppressor adapted',
--                               @G_att_class = 3,
--                               @G_sub_att = 10,
--                               @id_att_mount = 20

EXECUTE @RC = dbo.NEW_ITEM @name = 'M14 U.S. Army Sniper Rifle, .308 Win',
                           @class_ofItem = 'gun',
                           @Returns = @asd OUTPUT
UPDATE ITEM
SET Item_Image = 0xFFD8FFE000104A46494600010100000100010000FFFE003B43524541544F523A2067642D6A7065672076312E3020287573696E6720494A47204A50454720763632292C207175616C697479203D2039350AFFDB0043000201010101010201010102020202020403020202020504040304060506060605060606070908060709070606080B08090A0A0A0A0A06080B0C0B0A0C090A0A0AFFDB004301020202020202050303050A0706070A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0AFFC0001108008B019003012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FD124CE301BAD4888DD4B639E845363439CFA54C23518208ACCE01554B1C11DAA44002E0E33D7814C54CE4002A6278C673C73CD02D855624E319FC29E107180339E94228037139F6CD491E08C04039E79A004D854E003522823A2F5E869C89B863233DEA41182DF414011AB6DE4FA9E9DA9E9267AB719A1A10463DCD02155036F4EE28112C790383D7BD4D1A11D0F3F5A8A21F3738FCEA788A819C720FA74A04F7268CE00DDFFEAA90636EE04E3F2A8D70C475FCE970402C0E4039EB4087331072B4E5E0E401F5CD337A2AE4103340917774E94089B18038CF1E942E36E76F7EE6A1170A49E3FF00AD4AB7049E0D004BF29C1E285218ECFF003D6A137383D714D1740F0C795A00B21E350029EA39E2972304AB9181DC5575B942304E28F3D42F2D9C8C0A009D9DBAFB76A6F270324546D3AAA8257AFBD209800491DE8024CAE0AEEE946E5DBBB8F6A87CFC648279A67980AE09CFE14013B31200C63D40AF2FFDA2FE3A7887F67C9B44F1DEAFE198AF3C0826962F19EAD0C8DF69D163DA0C779B3A3C0A4379807CE010C01DA457A3B4D8E403CFD2AA6BDA6E9FE25D1AE741D6ACE3B8B5BC85A29E191010CA460839E2A27CEE0F9771C6D7D762DD95FD86A56716A3A6DE45716F7112CB6F7104A1D25461957561C30208208E08344920039EF5F2FF00ECC3E22F127ECB3F192E3F61EF895A8CB2E817FE7EA1F06759BC9B734D64BFBCB8D1D99B9692DB7178BA930E573FBA19FA5A667DBCA9FC7B514E6E71BBDC728F2BB05D4CA78000E2AA7DAC2B609CD25C6E1D3A815549248603AF06AC92DB5E8C8393CFD6986FCA8350F94E48CF614C92DCF7EBED40C7CD7EC47DEEFEB489785CE7F4A88DAEEE08E4F4A45B7D9D7F4140D123B90DC81D3B543331CE7D6A47DC7A9E9D38A89C903DF3D0D03440FB89E3AF638A8998F51EBC54C473F2FD6A265E3A0E3BD03216DDD8FE3514A47A1CD4D229EA474F6A8A407A0E7D78A0B2BB727041E0D4128DA0FD6AD4992C5401F854122E063D28195DC00391F5A85D475C74E9561D339C0FCC541229073EF4D1488641938C0FCAAB48A338F53F954F283BB6E71EF55E66C1E3DF9A698D104A07F09FD2ABC80B1247A76AB6CA3764B0E7B9A8E4400E43679AA19E868C01C11F5E6A642A7EE9FD2A2507AEEC9A505C64F4C56663B93A32E3391D7D2A453BB231CE2ABA33118240E79A99074C927F1A05A132ED0724F34E41B0F19FC2A2DA338EA734FE031CFE9408B08E7939E9D69E1F68E4D56460095CE69CA4803007D73401643EECE33F8D0436721B18ED55F73EDC6453D1E4DA082393EB4012AB640CFE952C72ECE71919EB55C1C9FBA0D391991B6EDEFCE05022CF9AD8C83F852877C91BAA35619C806BE7FF00DAD7FE0A63FB337EC7BA96A5E16F893AAEA13F88ECB494BDB4D12D2C5F75E190858916423680CC402FC85C367952293690ACDE88F65F8A3F16FE1C7C14F055DFC43F8ADE33B1D0B46B05CCF7F7F2855C9E88A07CD239E81141663C004D50F81DF1AFC35F1FBC010FC4AF07E8FACD8E9F753C91DB26B9A635ACD22A9E2408C73B181C8279F5008207C93E05FD94BE36FED5BF14B4DFDA8FF6D1F8AD0695A558B2CDE1EF04E9D7111B7D3083CC4BE60291B0E8F310D331C0568D5149FB4749D7BC0F6361169DA3EBBA6476F0A04821B7BA8C2A281C0001E28F51B8A8A350B1539193EBCD39A46DC0AFE58AE7359F8C3F09FC39A343E20D77E27F87ED2C6E9DD2D6F2E758812299918AB8462D862ACAC0819C1041E959EFFB447C005D3E3D59BE37F8452DE4CF9733788ED82B63838CBF3CD174C9B33B31293DFA1E78A5421B8C8F6CF15E45AFFEDBDFB3BE8772D6B61E35FEDB2AA0BCBA022DD46A493F2970DB77719C678047AD63BFFC144FF6651631DF5AEB1AE4ED242AE6087C3972590919DA4940848E870C4647048E695D0F965D8F13F8B1FF0005DAFD9CFE1AEBFAA787ADBE1478C6FEE34AD424B2B812C705B032C7218DBABB155DC08CB007A71935EB9FB167FC1437C05FB60FC2BF14FC5B9FC1F73E0DD3BC27AA9B3D49B57BF5955711AC858B055DB80C015238C8E79AFC8AFDA1BE327ECFBF14FF00687F1F6BDE27D6B50B2F0FEB5E30D4352B01F632F745649B76DC00760DC80FA825867AD773FB21FEDB9E02F83FE18F8ADFB374BF0F1FC47E1EF895A3DC4EF34DAD2E97240CE86170BBE0955094B8565CA1C14070471556D2E6CE9C7934DCFD6CBCFDB97F649B0B3BABCBAF8F3A04696708966592E0A315242FC8180321C91C2E4E3271804D71FE31FF0082A87EC2FE0D5BC493E3BE95A94B672449E468F3A4ED36F5DD98F0C1582E30DCF04E3AD7E30AD8FC23B3F18BE9FAF7865B4CD36F3E5D2C59F89D3539566193E54AC96D6FF7BA2B04C67824646753C6F1FC30F036812DFBF84E48EE1A516F64FAA484A094E06F75DC18C63713C727630F9782451BF50F6313F52A7FF82DDFEC7A7ED3069F67E29B8962B767B58D7472DF6890636C60C65C2E7FBC7818AD0D17FE0A9D3FC41B4BABBF855FB2878CEFED628ADCC5AD6B4F0E95A6A48DB7CD49AEAE8A4510405F69DC77ED1C286E3F2E3C09FB5D78BFE13785A6F08F81BF681D6342D3EE63417C3C11A359E8D3DD32020349750442E5C8DCD826538DC40C66B98F147C73F873E22D5FFE122F10E877BE26D55467FB5BC5BAB4DA95C1F7DF70EE68B15EC627EDFEB1FB7E7ECAFE14D02D6FFC4DF16F477BE96D637B9D3B42B83AA79531505E3125B0646DA723764038CF7AF2FF0018FF00C1603E07E8A253E13F84FE32D71635CEF4B48600DF4CC8C71F502BF20AF7F6AED6A34FB368F69696AA1708A8A005FA573FACFED49F112187CCB4D6C0909C1110E80D1C92B6E25462B73EE3FDABFF006D0FDA2BF6FCB5D03C01E14FD9F2CFC0165A6F89E1D534BF18DCF8889D42C6485648D8C642A6DDCB2306001E3D457D99FF0004AFF1E6AFAC7C05D47E11F8C3C5536B7AFF008175C9ADB51D56E751374F7515C3BCF1396206D032F185ECB10E99C0FC329BF696F89F750366FAE256321C92EE3AE3FBA457E86FFC1B95E3BD7B5FF8A3F13F4DD5FCE57BED0EC6EE747662A5E299E30C0B127244C734B97950548A50D0FD55921DFF007BD7DEA136677E727157CC61012C3F5A81A488311D307A834CE622300EE07B714C78625E49A98CF1EDC01EF9CD4324DF3723B75A0089D5718C0FA66A3902F404FE1533B6E5C807F3A80993A038E7D682AE46E38CF627D6A2742C33BBFF00AD523C8CA85B1D6ABC92E067340D0D200380DFAD4520C818FC695A7566C92339F4A6B49BB8E3E940C8E4567CF279E9513A12718ED5349200BC8FC6A23373D79A0A4C864808009EA3DB15118CE0E48F6C9A9A69B0BC91503CA0E4951D28284751B8F1D7D2AB4D1E06475F7352C93367A75EB9C57CF1FF000515FDAB7C6DFB2AFC2AD23C4BF0D6DF48B8D6F54D792D92CF5889D91ED963779597632F2088C1C9E8C7033D1C62E4F41AD59EEB20001CB71F4AAEF939E3B719AF27FD887F68FD63F6A2FD9FAC7E25F8A21D3E1D64DE5C5AEAF6BA5DBCB1C10488FB9157CD662730BC4C486232C4704103D5E438190073D69464A5AA2F62373CE4FE351B138200E735230D89BD87CBEA6AB47796774CE96F751CA5080E237076FD71D2AF603D3554B6176823DCD28048C11C53953041E49E9D7AD48A80927181EB9A832688F68DB809D6A445049F94F271D38A708C38C9381F4A904601DC09A05A0D551BB031C0A70001E703EB4F4524609FC49A5DA1320A8FAF1485618881B9040E39C0A94424820761428C0C719CD4B1E0A0527A9F5A622168DC00AA14F6CE69D246C0646781C018E6AC18B76589ED4AB0FF007864E38F7A04C8154E3B114F42DCF038A9FECC33903BE7A528B7008C29FCA80224573C81DEBF20FF00E0B0FE3AF0BAFEDB5E22F0EFC4CD1A6D42CEDF42D3ED74D491F2B1235B24CC8BCFCABBA576C0FE2663DCD7EC2AC381C2FE75F957FF0005D0FD8B7E3AFC44FDA0FC3DF18BE0E7C21D6FC4D65AC6831595FF00F61D93DCC90DF40F272E899601A0688038C1F29BD285F122A0FDED4FCF5B3B8FD98FC3BAC9D42EFC0F7375B26DEB6F3DE3185707A05CF0315E9B07EDCBF0DB41D27EC9E1BF84DA7222AE11445C8AD2F875FF00046CFF0082877C597B8BCB4F8032E87128425FC53771D8B3641E5565219B1B79C0E323D6BDA7E1B7FC1B7DFB50F889525F8A9F1AFC25E1A80B7CF06990CB7D3A8FA6113FF1FAB6A26EE515BB3E58F067ED364690F69A84B25AC3632A29BB8D99BCCF337CA176804E705867803673C914C9BF6E4F88B757129B5B5B354DD8498DAAAB6146C1CFD141FC6BF473C1FF00F06D6FECF1A5F862EF4AF177ED03E2EBDD525BE1241AAE976B6D6AA9008D0796D0C826CBEF121DE180C328DBF2E4FAE7C18FF8213FFC13A7E14E8AB65E24F85B7BE38D404A649356F16EAF33C87FD911DB98A20A3D3613EA4D4DE247B58267E46E8FFB54FC58F10DADCDDCBE3FD3B4FF009C47225CD8B4E5936E4E151D4019FCFF00015E6DAC7ED3FF0016BEDB71A5DCFC5296558A668E329332EE00E01DA49238EC726BE99FF82B4CFF00B2569DF1AA4F845FB397C1FD13C096DE0ABBBBD375D8B4FD2A0B1B9BFBF498A3C8F282C678362A797BB054F987037F3C6FECD1FB74FC57FD95FC3834DF839F18934E80432C72D9EA1E10B4D52DD7E6592392169E44F2E52ED28620850A549590F0A2B5AE689DE3748F00D67557F1AEA305ED9D9BBCE2D628AE2348897F342E19F18CFCE7E6CF72D5DEC3FB38FED1FF0010F4AD36D7E177C0CF196BA96565BAF35AB5F0E4F1DAC11AABBB6EB87458D557701B9D87118ED8AFA4FC01FF0005EFFDA57E11E81E2EB2BFD42D3C73AE7887CBBDD33C43E23B186DBFB1AF488E37856DED5FCB92D4471655018DBCC919C9E483E6FF0014FF00E0B83FB6E7C6DF06EB9F0C7E2AFC41F0F4DE1DF11699369FAB691A7F85ED9167B7950A489BD95E45CA9232AEAC3A820F34EEFB07BFD8E13E257FC13F3F6D5F843E15B6F889F183E0F0F0AE96D78915ADC6BDE28B0825B89C86758E28167334ADB519B08848552C70013557E0DFC33F12FED79F13348F827E188FC2BE12BFD6AF123D3B59F12C335ADBB4C4ED4B7F3608A472EE4855057048C64579FE9BF1DBC1DE1BB52BA1F8274A8EF54BAA6A13696D3CA23788C663066B875030720840C090C0E5571F53FC39FF0082547FC14F35BD1B49F8ABE0DF82B616D0EB56F6F77A6DC5B78C74E1308258BCC8E619BAC202AC3B6ECB0C8EB8636F956ACF56BAFF008374BF697D1B497BDF12FED45F0CAC05BC6AF74D31BC11C2A48018BBC4B804F1920735725FF836EFF6A709987F68AF87CF91F2E62BD1FF00B44D531FF048AFF82A278FE05B7F1F78DB49D3616D220D2E61AE78E9D916C6220C501168B2298D0A82A98C0233D79AFD53F097C4FF00037C31F86DE1FF000EFC51F8B3E14B4D534ED0AD2DB5494EBB1244F711C28B2B47E6156285D58824038C640A9BB5B98CA725B3B9F95577FF0006E27ED870E1AD7E387C3A988278F3EF97FF006DAAA5A7FC1BA1FB6A4B7696F71F16FE1EC719FBF71F6ABB6C0FA7D9F26BF4F3C53FF050EFD89FC15263C49FB4FF0083A06DD8C26B2929CFFDB3DD5E7FE2EFF82C97EC07E14D46E3485F8C93EAD716D2B47247A168577760B0241C3247B5871D41C1EC68E662E7AA7C356BFF0006E3FED6D06A0F045FB41F8005B92A45C3417858FCA3385F27A0391D7B66BED3FF00825FFF00C132354FD81E5F1378ABC73F146D7C4BE20F115BC168BFD9D6661B6B3B689D9C85DDF33B3B14249000D8001DEB95F13FFC1783F661D214CBE1DF847F14B5641D268BC226046F7CCB20C0FA8AE7C7FC1787E167886E2ED7C25F0D20B2B6867D96F73E2EF18D9E9B25C2E321C40D9700823DBD091824777A584FDAC96A7DFD3DD2797D790BDAB3E6B90CD91915F9EFA9FF00C1687C47A9964F0B689E11673F752DACF58D50FE06D2DCA9FC0D70BE2BFF0082BE7ED1F2C7737E34E1A329B8616F059F82DC81167018BDFC9105EFC361863903228B312A523F5012E632396238F5A46B85E70F9FC6BF19FC65FF000575FDA6EF4346FF00172E6D811F2AA5D689647F38249987E59AF2EF19FF00C14D7F685F11ABBEA5FB44EAB2492EF69E387C4576B126588540904014E1402581504B10146325F2B63F64CFDE696F16252646017B96ACAD4BC75E15D1D99757F13E9D6BB786FB45EC69B7FEFA22BF9D4F14FED65F1135D9376A5F10EFEE9E46386F2EEA5CFE32DC2FFE835CDF887E3478BF5DB786DE593539A4895BCDB9658C3CE5989C92771C0521401D36FBD3506CAF64BAB3FA32BEF8FBF046CF22FBE3278561239225F115B2E3F37AA3A5FED05F033C45E2083C29E1EF8C9E17D4353BB602DAC2CB5EB7965949CE02AA39249C1E3BE2BF9CCD3B52F166AB2910F862FAF7CC006EFB59564E472B84C67008E411CF4AECFC25A5F8F3C07E2E9BC476767AAD9E91A8D93468B7D1179ED9F890731AFEF363A0C48140C302429240992E55B8FD9AEE7F454A198E5578CF6AE2BC65FB437C0DF006A33E8BE31F8B5A069F7D698FB4D8CFA9C7E7C5950C374609604A90471C820D7E48FC1BF83BFB63FED3BE10B8F107C2AF1FE8D0E81A75D0B6BD9F5CF18AD9DBC33346929DB1E19B1B2452582E09C8EA0D79FF00C50F07FC60F835F10AFBE1D78A7C71E18F13496F044C6FFC33E206BBB35675DE53CC289F30DD8618E0E684AE0A9ABDAE7ECA45FB62FECBD269ABAA7FC2FCF0BC70B16012E35448A5E0E0FEEDF0E067A1DBCF515CC788FF00E0A31FB18F870117BF1CF4F9987F0D8D9DCCFF00AA4647EB5F9AFF00003F66EF80FF001B3C1D378DFF00680FDB57C3FF000E2EAD3516B487C3F72B6EF3DCC2238DC4EA659D0ED25D9384600C679EC3EA7F82DFF0485FD8F7E22786C78BBC29FB48F897C5BA73CC617BDD0F50B3485A45C6532B0B90464719CE08F5A5EEF71F2456E7A2EBFF00F057FF00D8DF4B461A76ABE21D5187DD5B1D180DDFF7F5D2B86F107FC16D7E0B59AB7FC23DF087C4D7840F97ED77105BEEFC8C98AF44D17FE0905FB1268FB7EDDE0CD6F542B8C9D47C4D75CFD444C82BAFD17FE09D5FB13F86F074FF00D9D3C3F291C13A8C725E1FFC9877A7A07B88F93FC51FF05CAD5371FF008463E0158C0A3A36A5E26127E6A91A7F3AF9ABE3E7EDC7F127F6B9D1D74FF8B1E21D221B6D2AFE6934C86CED51120774EA08059C05217E624657A735FAEBA17ECE9F00BC24CAFE16F821E10D39D7A4965E1BB589BF358C1AF0FF00DB5BFE09FB6BF1EDB44BCF841E12F06E877B697176FAB5E5C40D6A6E9660B90C2081BCD259492CE72327AEE245C796FBD8A4E37D8FCCFF00D96BF68FFDA97C31E1ED5FC23F067E22F89BCAB8D4FCD96DB47D2FCF63218D070238FE538503030718CE6BD96C352FF8287F8CEC14DEDA7C77D4DE451BB1617F6F1F3FF6DA05FD4FD6BF47FF00663FD9E7C3BFB3AFC26D37C0BA4786746B1D416D621AEDCE896DB23BEB955DA6624AA9627D5866BD01A12A73B7AFB566AD6D8AE73F27354FD8EFF6DEF891A54F6F27C23F1ECB71326126D7BC511DBE0F6C99EFA52BF82935F4B7FC1393F64CFDA0FE0278CF57F12FC57D06C345B1BBD185B258DA6B2B76F7137988C1DCA71F205700924FEF081D4D7D8ED09248C118F6A478B68C01D289454907336AC7A2A26402481F853B6065C123DA9FE4BB10B9E00F5A5DACA338CFD05231B5C68076E1718FA53C2E383DFA52905460A7514F48C6D0E46066992308CE029EF8A7343990367A761522A646E18E077A710361381D78E69086468581047E46ACADB8CE05451A22B12A704F5AB308E7248E3B50842988290A3F9D3C2C7D4707B520519DE3AE69CB1973B4213F8D300CAB0C13DBD2852A18951C0AA5AC788FC3DE1F88DCEBDAED958C63EF4979769128FC588159BE1EF8B3F0B7C5BAE1F0CF84FE26787F54D4961699AC34DD6A09E611A900B94472DB4161938E323D6825DEE741B9BB29EBE94ABBB1C1FC8D0C49EA7BD349C1EBCD01B8E0300B753E9D69A5884C9FE75C97C74F8CDE16F801F08B5CF8C5E33866934DD06D04F7315B01E63E5D51557240C96703935F037C49FF008386FC19A34925BF827E11DAAB282124D4F5879893EF1C3181FF009128DCA8C5CB63AEFF0082F27ED57F187F676F833E14F097C2FF00103E896BE30BBBE5D7757B6C8B910DBADBEDB688E463CC371962304AC78C852D9F02FD833FE0B8F69F0BBE1DCFE10FDA7FC53AF78C22B3BA26DB5DBC88BDFC08EC31148DBE433264360BB6F5CE3732ED0BF267FC142BFE0A7BF13FF6F7BCD2BC3BE30FECBB4D2340B8966B0B1D374DD8825915031323BB393840305B19CFE1F31EA565ABEB564FA75B6AD736EAF80FF6688B6F5073B4E08279E7AD3515D4DE34D725A47D17FF000504F883F0D3F691FDB0FC5BF1CBE186ABA858784FC49F65B8805D34293A5D7D9D52E370C3ED53221600E0E1B3DABE7FF880BF0BB4FF000F4E96DAD497BAA6156CD7EDCF2184E41662AA428F94107233923F0CAB5F857115336AB61A9DCE47CAF337969D7DC7F5ADDD37C39069132DFDA693A5432C2A155E69A22C30303E566393C75C1A6AC8D568B43CC65790FCE62918773CE3F956B685E1DD4355B67163A45ECF3E479290DA310C39CFCDDABD0B50D5FC41A9A8FED0F1369D1807EEC50283F41B1315A1E138EE258F50B3B8B89AF9A6D2D85A651F724C248CAF97D3E7201000EA09E28728A1DD9CCD8FC1DF12D9ADBDEF8927D352DA6954BDBDB6A4B25D2AEC27055095419C021BE607B57D117DFB73FED412F83F47F02EA9F1E7C5A745D06CA2B4B1D2ECFC5579608608E358D2126D248CB28440A01CE30718EB5E3D7765E35B6B78EE350F0B6B81422A665D2263B481D381D33DE947877C61AA1464F06EAAFB1C149174A9881EF9DB8FC7DEA5CE0FA83D56A7A3E9FF001A7E1DEBFAAC57FF00117E08DFF89E66495F538B57F145DC6B7570CC31334C5CBCA46588DC4921CE493C9B9AF7C63F00EB571B6CBE0D59F876D63816386D2C21B6D44C872725E6D4127C7F0801171C1AE7BE18FC0AF18DFDADE5DFC5BBDD434E85A51FD9306937D6464784827749959991B9036B2A91CF1E9DA47F02BE16441775AEBB78C3A9BFD6C8079FFA778E1AE6963B0F4DDAFF007072EA7390FC4DD3AC100D17C3A55F3F23C7AA4568E9ED8B3B3B7C7E06AA37C57BFB0D3E1D32C342D32CAD218F6456F35F5FDC4483A9DB135D08D72724E1392493C926BBFB4F84DF08EC4EF5F87B692311CB5E5FDDDCFF00E3B34EEBFA55CB5F07FC3DD3984F61F0F3C39148A78922F0F5A861FF0002F2F359BCC69B5A458729E2D79F10AD99BF77378521909C968345B2F33EB9911C8FCEB675793E38DEF868EBDF0BFC79E2C9D92DC4834FD274E2EA4E70503DBA2853E95ECF16B325926DD3EE1E118FB90B6C51F40B81514DAA492B179A42E7D5D89A8798CBA47F10E55B9E7127ECEDF18BC44A27F19FED057931703CD8C5E5DCCCA7BA912ECE454D6DFB18784548B9D6FE256A57AFBB3E5AE9E883FEFA32BFF2AF401A93F2067D48DD48DA8CA4FE1C1AC1E3310FA8ED1D8E5AD7F654F8376D817375ABCDC72A2F22407F2873FAD6B5A7C04F823607E5F09897DE7BF9C93FF7CB815766D51E38CB13C01C9DB5CEEB3F16743D1AE8DADCCB27983AA4703311F5C0E297B7C4C9E9261689D3C1F0FBE16DA2AFD9FC09A5607DDF32D565CFE2FB89AD0B3D3BC2BA7C826D33C3DA75B30030D6F631A1FCD54579AAFC68B5BC629A6E9B7770EA33B23400FE4483505C7C64D42D6DCDC5D78725B45032AD7F308BCC00E0ED1C96F7C0FE74D53C449EB77F78687AF1D62345C79AC00E837550D57C4D6B671A6A1292A911324EC0E1446073927D4E3F2ADAFD8FFF0067EF8CFF00B68DA6AD7DF09F47B268B439E18B519AEB538E25432AB32150D867042B7201C639ED9FD11FD8B3FE09CFE12F815A35CEB9F1B345F0F789FC47737314B6A66D392EA1D2C47BB6985A64C89096C9700636A8078C9BA7426E7B112A8A28F887E167FC11AFF6BDD76CA1F114BA7F8574583508D2EA04D6B56732C4920DE14A431394601B907041E3B57A5E9DFF000454FDA1A791575AF8D5E0E82261F37D9EDAEEE0A9F60E899E3DC57E988C67241CD2ED8C021BB1E7A715EA2BA461ED267C21F0EFFE0873F07E3B5373F1CFE26EB5E21B949336B16851A69B0C69FC4AD9123C9938E432E31D0D7D65F02BF67EF865FB397823FE15EFC27D065B0D35AE9AE6549EF249DE59995559D9E4624921178E071C015DE90B8E0FA530953FC239E943D497294B72B9814F1D78C726A39ED573C60E2AD3EDC8E3B715148393C63D78A068A8F6CBCE57B546D6E8003B78C7356589EC878EF513E49C91D4F7A0642D6E801F97AFB5579635DDC255A74C8CE6A09146324F38A7B948A728542588C7AF39AAD2BA9185F5F4AB93C11B210F939EF55C5B05185031D68BEA51E90212CD903A0E48A9A28800DCF7A7AC5185E57F1F7A916204E40183D2A3A999098437E5DE9AA8146338FC2A791E1B785E7B995238D3ABB9C003EA6B1F54F885F0F34ADCDA9F8E745B6FFAEFAAC298FCDA8BA426AE7CFBFB647FC1487C19FB23F8F2D3E1A2FC3BBBF11EAD369AB7B7422D456DA2B647665452C51CB31DA491818054E4E78F03D6FF00E0B81E3294B0F0F7C00D320CFDDFB6EB924D8FA858D3F9D783FF00C15A7C77A16ABFB69EB1A8F86BC4967AA59CFA358186E34EBC49A3056008CBB909190CAD91EF5F2BF8C7E21CDE17F0EDE788638849F648449B5CF6DC01E9E80E7F0A705CD1BB34508F2ABA3EEDD77FE0B43FB505EBB0D2BC2FE0ED3411C797A74F232FE2F3107F2AE375EFF82B0FED9FADB32C5F166DB4F4C6365868768BFAB46CDFAD7C79078D2E359D1A3D56C02937168258413D32B900D73BF0C3E207883C61E07B4D77590AB752348B28890AAE55D874278E00AD14115CA9743EB4D6FF00E0A0DFB586B79FB7FED1BE275049DC2CF526B707F08B6D717AB7ED2BF11FC4859BC4DF147C437E5F258DEEB33CBBBFEFA635E32FA9DDB8CF9E4F3C91CD4267BA739129C1F7E9428A0B2B9E9979F11ED9C9926B86763C966727F5AE97F641FDA5FC41E03FF8286FC0DD3B40D58C361AD78C869DA9DBA283E78BA4FB1AE4F5C2FDA5CE338CE0F618F9E75BF1469FA3482DAF2E9A59D87C96B0299256FF00808E9F53815E85FB357873579FC516FF0011E0D07FB3755D2A759BC3FAC4B34B1DDE98E012D2C251C22B9181B98332601428DCD6556BD3A11E67AF90D2723FA06F1FFC61F861F0BAD4DDF8FBC71A769615777977138F3587A88D72E47D057817C45FF82A7FC0DF0D7996FE0ED2AF75992324099DD6DE26F70D873F985AFCD5F1178D6F2E2E6496FB5ABBD52F246265BABDB9690963DC9624B1F7AE72FF0050BEBD426E6E98FF00B2381F957913CC2BBF855BF108E1E096ACFA77F6DAFF00828A6BFF00B4B7C12D73E0AE93A758D85AEB2B02C82DE3632911CF1CB8323C9B7F807615F9B5ADFC1DF88D6E1E28FC2B0DD3AC857CD4BBB60ACBBCE18967CE718CE3E95EEF22B6D2179E31C541220C7CC0119E0E3A5610CC310A5ABB9AAA718AD0F9775CD1B55B89BC1FE19B0D1E0B1D42E6516F7975144ED23996524332B36308BB86405F9579CF51ECD65FB3C7812DA302FF0054D6AED9861CC97EAA8DF82203FAD76572D79A95EADCEAB74F726D604B6B432B9630C0A4B2C6BE8A0B3103A726A63BD9BCB0B5589CC2A4DA50D0A515D4E5AC7E0AFC2BB366C784166C9E4DC5E4ED93EE37E3F4AD183C01E02B6F9ADFC11A50C74DFA7A39FCDC1AD9589FAE39CD23C5231DFB4E39CE2B89E23112DE4C768905B69DA5D9204B2D32DADC2F016DED923FD140A66A45E5285A42446723BD32F756D1AC72D7DABDAC1B7A896755C7E66B9FD53E2C781EC498A0D424BB931F76D20273FF00026C0FD69D38E26A3B24D83E548EBA25F31376474E0E3A538955E4F5C7F9E2BCEB53F8C5AA4730B6D27C3F14699F965B998B64671F75718FCEBF62BF606FD92FF645F147ECE3E09F8CCBF07B4DD5B56D6744867D42F35A2D76A6ED331CFB639498D144C926005C80075AEBA797E264AF3D0CE756315DCFCC4D3B48D635BBA5B1D1747B8BA99FEEC56F133B1FC0735DAE83FB277ED3BE29559340F803E31B8463F2CABE1CB9087FE04531FAD7ED9689A2F87FC3F00B4F0FE8B676312AE045656E91281E98400568C2109F9411EE6BB16021BB6733C44BA23F1D741FF8262FEDBBAF2ABC5F052E2D95BBDF6AB67063EA1E60C3F2AEDB41FF0082347ED67AAA2BEA97DE14D2C37DE4BBD624765FFBF3138FD6BF568181D3040CFD7A54334A807CBF956CB074628975E6D9F9BFE1FF00F82207C459CEEF15FC72D0AD01FBDFD9DA6CF724FF00DF662AECB47FF82217C3DB5507C41F1DF56BBC7DE167A2456FF916924AFB9249931819FCAA069B232A3F3F5AB587A2BA0BDAD47D4F96342FF823AFEC95A422FF00695F78B35271F7BED5AB448A7F08E1523F3AEC342FF826A7EC5BA02810FC1586E9D7FE5A5FEAB772EEFA832EDFD2BDDD2499BE655E9DA8CB9273C13C56AA9D3E889E79F73C0BE337FC138BF661F8ABF09757F865A1FC3AD37C2B75A85B1161E23D06CD62BDB19C72920718675CE37464E1D7238C823F15FF00694FD987F681FD957C56B37C47D361B5BABF96F96CAF34EBC8E44BE16D36CB8E14878DE376523728DC8EA46405793FA2460DC6D19C9E6BE37FDBE3C7BF04FC17FB417847E0DFED07F0374ED5BC33F1563FB3E99E2DD4194A689AF206B65982F97B90BA49631BC8B22E1234C8211AB44D451709352B1F89EBE381A86957D69E27D53509AE250AD6330BA6610101F2369703E663182C436006C0C9AF66FF0082797C7DD4FE14F893C43E12F06FECBDA37C47F167893EC7FF0008B5C6ADE1DFED2934A68BED0259238D632CFBF72E70EA3310241C62B9CD2BE03695F117C3FAFF008DA3D567B0D2F45D6A0B4D5ADE475F2EDE59C5C38201188D47D9DC71D4B20CF2457EB47FC1343E047C16F197C1FF0085BFB56FC3E0747D634AF085D787B5383C3F6D6B6B67AC3C52FD9A69AE5638B74EECD6B1B86DFD514F5CE5CF4D0DA524A37397FF00826AFEC5BFB5E7803E38F8A7F6A5FDABFC682D26F14C523DAF8534ABF16FB666973BEEADED55602A1492A9B9B0CECCCA18E6BEE20172431EDC6697C9CF249C0A3C8041241E9D7D6A52B3B9CEDB93B91305CE77F7A6E0E36852DED532DA8E829EB69819AA110E5B6E08E7DBB1A6919246726ACFD9131CF5A69B40A325714022A13C64823FA5348C6477CD5A78B03247EB51B479F7FC682915CC44AF20E3E9D6A19212A738FC2AE3C4C3F87F4A86456DB92A4D05149D581218557299206DFA935766195271C63BD46620473C71DA829151E227D48A8FC8182A477CE7357DE01B4E0D406DC839E33EB4147CFDFF000582FDA8FE36FECDDF0E3C2B69F04BC40FA45D6BB7978FA8EA705B2492C70DBA45F22EF042E7CE2C4819F9060819CFE6CEBFFB6EFED87E21B46B6D57F693F1A4C3698A48D35E9A25219B7AE7630CE7D4F2071D38AFD16FF82EA78264D63F65BD0FC636EAC26D2FC4FF00666915B1882E6D660E3F178A2AFC6B7BBB895A28A59DCABA44CC0BF1924807AF606A695A5CD7EFFA21C363E8AF841F13BC71E3AD4754BFF17F8F356D55C6C6CEA9AC4B37CEC4876F9D8FCC4A804F5200AED67BC8DA33BAE63E4739909AF9E7F673D4443E2ABFD38B63CEB5790027B89171FA3135EC45C6DC1C1FC2BC7C7D38BC4B6D1D307EED8F2EF8E7682CBC5115DADC2B89E0EA3B104FF88AE36EF4E6F1258CFA190B89E160CCEB9007B8EFDABBDF8DF6BBD6C6EC76674273EA011FCAB8747B9B5C4F66D875EB95C861F857A98477C3C5194B728C8B1E83ADC1E178490A6D83DAB05C028A02B0C7620E38F423DF15AE22B7F0D3D858DAC24C32B792D8383BF692180F42060FF3AB56F617BA8CABAD6BCF1FDBBC9F2888490910CE7299E79E339E7B6702A1B6D3E4FED17BBD4EE8DCB47233599F2F1E5295008C0E09EBF375C1C7D7A57416E68AA0881940EA3A9AB5E1EF0FEA1E2EBA6B1B07304111DB7578AB9287BA2647DEF73C0CFAD47A4687AAF8AAFD74AD394A0DC0DC4F8E204EE4FF00B5D703D7935E996561A5784F488B4BD3E2091C29807A9CF727D493C935C38CC5FB25C90DCA8C7B953C39E04F08784ADD574DD1E057EB24F28DF2487D598F24D6CAEAD34922DAE9F1B12DF288A25C9391D3DEBEADFD81FF00E095DE30FDA7AC2DFE2D7C6CBDBFF0EF8326F9F4EB5B750B7DABAFF7D37822287FDB2096C7CA30778FD2EF833FB2C7ECFDFB3D6991E9BF09BE16691A4322E0DF476C24BA938EAF3C9995BE85B1CF00571C30956AAE69BB113AF183B23F19BC0FFB20FED6DF12EC1B54F04FECF3E28BAB5DBB92EA7D34DB44E319F91A7D824FF80935E67A943E22D2F50B8D2356D266B4BAB49DA0B9B6B8429245229C323291956041041E411ED5FD0AEA33DB410C973737291C71A16964760154019249EC31CD7E177ED19E29D1BE257C6CF19FC47D001161AF78BAFEF34F6DB82F0BCEEC8D8F75209FAD46230D0A4972B0A7525393B9E632CF788A5E50A0639041AF6AFD917F647BFF00DA4BC61E19D3BC53E229BC37A1F8B66D5AD345D645889CDD5E584304F242A85D3868E59487CF581C007071E44746D4359D4EDBC3DA45BB4D757D731DBDAC4A39791D82AA8FA9207E35FB23A8FEC4DA047FB34F82FE0BF81FC492787F5EF87CF6FA87857C4D690090DAEAD1A3F993BC670258E56966F3232406590F208043C2E1E336E525A055A9C8B43E48F87BFF0004A2F87BE23FDA8FC5DF09B56F891AD49E1AF03E85A5BEA3771430C1777DA8DF2CD2AAC64ABAC70C70C684E43333B900A806B86FDBE3F629FD9DBF675F1F7837C2563F1BF53F03697AEF8735CBB3AD6A9A43EB52DF5FDAFD97C8B458A154F2C3099DB7E0E48DBD48AFB2743B4FDB4BC3DF10B50F1DDFFECC3E11BCF146A7A45B697AB6BFA5FC467B7D26FE3B792578266B692D5E6574F3A519009DAE572405C7A5FC22F85BF12ACBC417BF153E36F8834CBDF14DFD9A58DBD96810C89A768D66AC5CC16E65FDE4AEEE434933052FB2201104633DEA8515F65187B495F73C73E02FEC1FFB28EA9F04FC27E25D5FE03D9BEA1AB785AC2EF513A94B70F309E6B749240C1E4F918331180060FA62B90F18FF00C131BF67FD67E34CBA3786FE06DAD9F87EEFE18EAF6D25F49E6DC44BABCF736A96D28333B113451ACECA4638739CF18FB45F4EE0F19E3B8AACF6213185AA518C75489E695EF73F99BBFF000C369978F6975691C52C3298E75DBF3075241073DEADB787A1955A6403007230300F4AF66FDBCFE1AB7C2CFDAFFE22F8516C45BDBAF8AEEAEEC625180B6F3C8D34781D86D7000F6AF2EB592336A632C73D867A1AEA5AA4CDD3BA4CCDBAB18BCB43B01238231EC07FECA6BF67BFE089FE335F1C7EC4165E1F121F33C31E21BDD3F04E4ED729740FD3370C3FE026BF1BE58E292DC6178C7CD9EF83FF00D735FA5FFF0006F5F8D6664F889F0CA59F2A23B1D4ED20CFDDDA658E66FC7CC801FA0A535EE9353581FA351D9BC2C410455A456553B40CF6AB12AA88F6B45C8F4E6ABB07070B19208E805637B1CF6237775E8067BD413099F1CFE3560A1381B7F3A956C25231B4F3DC1A60668B7959B6F6EBC54D1D99F4CF7E4D5D1A6B83CF7EB52A593C672074F5A019456D8AF45EBD79A55B3561D4F4E991CD5E16E7D7F0A72DA63F87269DC4671B30C00008C5781FFC14A3F63E87F6C2FD95F5DF877A741FF1516980EABE14B85E196FA1562B183D40914B47E80BAB7F0D7D20B62AA4161FA552F11E916FAE6837BA14970F0ADEDA49034D1F0E9BD4AEE19EE339AA8BD46AE9DD1FCE2FC32F0AF8E3C53E18F899A0E817723DB58A4775E268E3626E3ECA2711FDA08209648A692267E782CAE47C9B97EFFF00F83793E2DEA1A77C34F177ECA5E36BD51A9E8DAA36B9A04664DC26B2942453ECC740B32A3ED3827ED39F5AF25FD80FE137C32F81FF00F050EF887FB106A5AB4EFA66A7A26B9E0A9755BD8C09EEA39772C2FF0020C798CA898C85504F1DB36FF67CF87177FB00FF00C1507C3BF0D7E2578F10C3A45DA59DDF886283ECF0DFDADED9111B32B96091F9B2C618163B7631DDF26EA9A97577DBFAFF0033A5B534D1FAE0D6D85EC4F6A61870768233C56B8D32570485C7A669AFA3CC092141E3A559CE66244430E869EB1600DA455F1A615209519E3BF4A71B5D9DE80282DBB67924FE14AD68C7A1AB9E410718FCE93685CFCA280283598C649EFE94D7B3500E17A55D95406C1CED3D7151C88AA3049FA9A0B4529EDC04DA4554921191B4F1DC0ABB3BB13B548E2A05809E7140CA8F6C3A918F4E2A336E70715A06D4BF55238A6B4088410BD3D68295CCF688E38CD40E84360F4FA56A4908EE9F9D579E1C9E075EB41479B7FC157FC1D1F8B3F60DF1CA183749A7259DFC040FBA63BB84B1FF00BE0B8AFC07BB4111909E362BE327A6D7C57F46FF00B6CE86DE21FD8F7E2769414333781B539235FF00692D9DD7F5515FCEAEB56ACBAC5DC4A7005D3AAF1D72BBBF99A8A5A5492F40A66E7C1BB9167F12ED0F459A49A2273D8C248FD457BAB2646739AF9C3C0D7CD65E2DD26F6697012F2D59CFA0DC158FE44D7D24EA42F1DFF9D79F98AB548B3A20B4317C57E1CB5F1269E2CAEB70C36E4753CA9F5FE75CC43F08EDA37CBEA5373D02AAFF00F5EBBD6C74EF513839CE3BD7243115A9AE58BD0A718B38C8FE146888732DC4F277C1703F9015347F0C7C32846EB2763FEDCCC47E59C575133C71292F2639FEF550BED6513296F9DC471DE93C45797DA62E5895D2D34BF0F598B6B0B78A203F8234C01F957D4DFF0004C1FD812EBF69BF1D47F197E2DE92E9E02D0AE83476F3A606B5748722119EB129C190F7E1075256D7EC4BFF0004B7F1FF00C79D42CBE24FC79B3BAF0F783832CB1584B98EF7565EA0229E6188F790E091F7073B87EA4F84FC2BE17F04F876C7C23E10D1EDB4ED2F4DB65B7B1B2B45DB1C31A8C0503FAF53924F24D7561B0CEFED266156A25EEC4DD8A4B3B1863B2B08638E28D02471468155140C0000E0003B0A8A5B89663C9C54612153CCA3A555D735CD13C31A1DEF88B5DD423B6B2D3ED24B8BBB890FCB1C48A5DD8FB0009AF42FDCE53E55FF0082ACFED2973F0DFE19C1F01BC15AA797AF78CE071A84B13FCD67A5825656E3A194E631FEC893B815F983AEDCC1BFC880810DBA6C8C7D3BD7A57ED1DF1A757F8DDF143C43F1835A7759B5FBC65D3ADDFF00E5D2C13E48621E98455C91D4EE3DEBC8B5994C7190A7EB9E95E5569B9CAE76D3872C4D6F867E0EF885F103C6763A37C27F0B6A9ABEB91DD4535941A4DB3CB246EAE0873B47C8A0F563803A922BF7A34BB3BF3A5DBB6AC91A5D9810DCAC67E5126D1BB1ED9CD7CF9FF04CEF80FA77C03FD9534195B4E8E3D6FC536B1EB3AE5C345891CCCBBA1889EA0471145DBD031738058D7D02FA998F3B987E06BBA85374A1639EACF99D8B4B660E48619FA52FD80371C63E95523D4F770A0FD08A9A3D4190670063AE4F4AD75DCC893FB3B3D801D86291B4B465E579A46D5A3032D328E7BD4136BD6EA769949E38C53F511F8F1FF05E3F86F3F84FF6C8B6F139B66F23C49E10B3B95900183242F240CBF5023427FDFAF87FE688E14924E7191FE15FABBFF05F7F02E9DE24F86DE09F8AB14375F68D1F51B9D36478620C856E044EBE61EAA0792E01FEF3E3BD7E6F7813F66FF8F5F152F7FB3BE1B7C1CF136B32100B1D3F469A45404020B305DAA0820E5881CD6D06B90DE0D72EA717671EF8D90B649193919ED8FF000AFB1BFE086BE3A4F06FEDC9A768335D08E3F136817FA6B65B0AC420B9518F52D6CA07D6A6F817FF000445FDADFE223FDB3E24BE93E05B331AB2B6A574B7772F93DA1B766008EE1DD0F3F5C7D89FB277FC11A3E117ECD7F10F46F8B7AB7C5CF10EBDE20D0EE85C5998618ACACFCC1D3310F31C8C6411E6739391DA94A71B58253859A3EDB92C617EBD6A36D2D40C2608FE75596FDE11966DE339EB4F5D621C6D64C1F7AC5986C3C69A80E7A54B1428BC3906AB7F6AC0DCA483DC669ADAA41DCF43D8D09017BECF0BE577F53D0D20B252318FD3A550FED7871F293F9D31B5894729263EB4D30B1A7F61C2E4818F6A71B7B653D012075ACAFEDA9F1972187B1C50BAEC24E25423D78A774C563464B657F6CFA1A8A4B152BF3B54116B3030012403EA6A4FED487F89C7A5328FC409FE23F84FE0BFFC174F5EF883F167E2058CBA569FE2DBBB9BEBBD22D1A479A458DFCAB648FE5FDE07D8AC727051BAD7BDFF00C17B3C076371E1AF06FED63E012B7D67A9E88B1C935BE00BA8EDCB5DC2C33D736973A84BD89FB320E9C57C63FB6F5E786FE24FFC15C7C596B7965FD91A6EA9E3C5D3750D4F4DBA8A368A1F392DE4BB49581018C61A4248382C410475FD74FF00828D7C28F85573FF0004F9D7FC356DA7D859E85E11D3E0D474DB58CAA402DE160B25BA6385135B493DBA85C63CF017B0AD53B622DD1EE6CEC9C5985FF0474FDB1B51FDAABF6763A0789EE27BBD5FC1C96F6AFABCA4B0D42D6446F21D9CF595550A3E4924047249738FAF2480152548CFB57E5BFF00C1BFD378B3569B56D2B5AF1A192C3E13E893F86ADB49CECDED7F7ED7C662AAE5580685D03101B0AABC6D35FA7326B303747FCAB18DE2DC5F433A8973E85936DC92587BE290DBC2C3A75F4AA87542C06D8CE3D8531B509C9DAA98FA9AAB925992DA1C7F74F718AA9346AA32307D29AF753B1C339FCA99E7B907229DC7610BC441EBEC73C556B855907CADCE7F3AB4D312000A3DF9ED55E689DC1655C7A114D32D102DA7CE1F3F414F16617273DB9A631BF846E43BFD01151B6A6D190B343B7D71FE34C095A11B701BF1A89E2273D7E94A3508A41C1C0A469FA10C0D05A445247F29C827D322A19A305785E7DEA67B8DDCA8AAF2C8AC09CFE140C97F68DD4F4F9BE01F8E6C9E64266F06EA91ED07AE6D2515FCE1F8BF50B5B0D7A646922C178E55624F2790DFA62BFA3DF1BFC164F16E9375A63F895E28AEA168A642BB95918104119E841C7E35F9CDE3CFF836F2DFC4BAE3EA1A57ED59716F0798E61B76F0F29658C9CEC2DE67CD81DF02A2178D46C22D44FCBE5D76CAD0616E79CE00C7FB5B87D31815F4D43E2CD2AEECE2BB826DCB222BA15E8411907F5AFA8B47FF00836E7C31A6A7FC4D7E2E4DAA1D80334CEF16E39CE7098E7B7D3F3AF40D1BFE088DA5F87EDE3B482EECE58625DB146FA85D3051E9CBF23EBDAB1C5D075D2E57B1A46AC56E7C277BE2DB28412BB781DDA8BA5F1E5DF862FF00C61A4782F56BAD334CB492E6FAFADB4F91A1822452CCCD2636801413D7B57E8FF85FFE097371E10952EB45D2FC3F0CB1FDC9D6C14C80FB391BBF5ADCF1E7EC1BE3DF1BF836FF00C19E20D523BEB3BE83CB96DBCC650C010C3073C10C011EE0572472FF00E690DD68F43F3B3E017C08F157C5EF19685A37C4CBFBCF03697E27B5F3BC3BABEA7A24F2A6A6705BCA88AE116428A5C2CAC859794DC2BF41BF678FD903F65AFD9FEE20F1069BA249E20D76160D1EB7E204599E270721A28F0238883C860A5C7F7AA97C37FF008273FC64B1F14DB78BFE24FC54BBD7E7D26130F8786A889FE83B810F2058F0AD291F2994FCC40C71CE7D9B47FD953C51126DBEF13DC4C7F8896AEB861A952D919CAA5FA9D1A7C5ED25383A9B7FDF278AB56DF15F4F9398EE9DBE886A969BFB35DED97CD2EA53923FDAFF00EBD6CD97C0E9EDF1FE9739C7B8AD6C65788B07C4849F98C4FCF7D95C07ED747C73F133F66DF167813E1E4065D5352D3D62821F3021953CD46923049C65A30EA01EB9C77AF4B8FE145E440AACF743DF68ACFF00107C34F123593A68D7F32CB8F94C838CFE14A50528DAE4DD5CFC8ED7FE007ED1577A93427E01F8C1162511C6BFF08FCFB401E876E3F2AB5E04FD8A7F688F889E2AB3D12FBE18EA7A3594D7282F352D661FB3C76F1646F721F0CD819F954126BF47EFFE0AFC7EB89582EAD6F22E4E199DFF00C2ACE8BF00BE30DCC9E56B5ADC11C59F9844ACC48FC715CD1C2454AED9BBADA1DC5B7C48D1F4BB68B4FB4953CA82358E340738551803F214D97E29CF2366DAC377BF6A834DFD9FE4B44125C5DCEEC072C63279FCEB5EDFE0EDC5B26F8EE66033D7C915D5630BC4CE7F8ADAAA2948B4B19EC7934C1F113C433F2F60CB91DF815BA3E17EAB8C8BE980F6840FE9487E17EACC30B7D3F23BC745BCC2F130FF00E130D6641F300BEA3A9A7378A2E02705C91EF5AAFF000B6FA320497F373D8C75149F0B26604FDB261F44A3950B430751F11DA5EAC4753D260BAFB3CC2580DCC4AFE5C80101D77676B609191CF27D6A75F89772DB548518E321B34CD77E09DF5F47B22D45949E8590D622FECF1AF45C1F1038EF80A47F4A2C83DDB1D347F12665C156391D88AB16FF0011EFE66C224673EB5CDDAFECFBAAA1127FC2413123AF0D5B3A6FC0CBEB591669B569DFFDD04516B0FDD3697C5BAA4B16F5B54C9F6A61F12EBCFF00F2C131EE2AFDAF80AEA08844B2CE71DC8FFEB5594F04DC01B479E79E3E5E28B226E8C56D4353B83992351F4269F1DCEA0BF76EB6FB15CD6D0F06DD22E1A29FDCEDA3FE1109C70639BDF20D0A2857463ADEDE4721795CB8C67E51ED52A6B5084C4AF22FFBC2B53FE11193FE794DCF7C1E94D6F09BB655EDA6383FDDA124174548B56B41F32876CF7DD5247AFDB0237424F6E0E29EFE0DDC4E2D6407D54544FE10BF46CC0251ECC9FF00D6A690EE86CFAF69CC087B266F521B158FE21F12C0BA74B05BC1247BE364C894E46463B7D6B466F0D6B48086B22E3D55066B3AF7C23753A91247327B14C53560563F1FFE297FC1197E2DDCFC577D77C3FF00162CA5D31EE0969A45912E9533C71B586EC6327763209007007E9D7C09BFB5F0AFC16F0FFC24F10587DB2D745F0FDB692DF6893CC3711430AC5F3EEEA485E7B73DBA574DAAFC3213B9631CFF0055ACA7F064FA61C059F00F523A53776EE68DA923F1DFC0BFB55FC4CFF8261FED2DE3797E18F836D2E25D6E29346B8B2F1148D24101B4BA30472B242CA5A6021CE7CC2A45C96FE2E3F64BF646F8DDE28F8CDFB35782BE2A7C4BF0DDB69DAE6BFA0C179A85B597FA92CE32B2463736D475DB20058901C038208AFC9AFF0082AD7C38D3A0FDAAF5BD59BC37B63B7934FBF96DE49729742E2D92396721554AA192DE2461B89DD960C37903F4FBFE09E7F11749F8D7FB1FF81FC67E0FD2AC2C228F485B0BDD374CB648A1B4BAB6261963441C22EF42CABD95968AA97B44D752A6938A67B88F115A0E63B5638A7AEB7037DCB1909ED8A48B4CD60103C80077DD8A9459EAAABF3141F952B1968463550DD34D94FA7141BF918F160FD6A510EA2CBB54A7BFCBD28167AC0E77C60F63B281AB15DEF65209FB0373EF51B6A132A90B664FFC0AAE7F666A2DCBDDA8247FCF3A4FECDBF41B4DDAE3D4474D0EE67B5E5F49F72C80FA9A8267D424E0D9A56B7F66DF103376BF8474C3A6DE1C8FB58C679C474C7B9852D8DF31DC2DC03EC6A190DE5BF13C2E07A819ADF7D3AE5B86BD3FF7C0A8E5D22665C1BC623FDD14149986B7A5C654823B9A569433162783FCEAEDF78619F2E928DC0752B8FE55997561A9D8B729BC0E87D6828F4F96D410405CFB7AD55934E1B8978CE41ED5B6C8BBB38A8C804E48A09B68642D900D8618F6C9A70B2CF196CD6A3AA95C914D1147953B052EA163385930E0A93E87D2A516583F74F3D2AFB47196195EF4DFBA7E5E326926DB24ACB6879C9C6075A92380AB1C639AB68AB93C539154B6D238DB9A1E816440AB18518EB9E7EB4F119EDEBC53D386031D4D4855423300323A516B0B96E44431CF14C312B923D3F5AB28AAC8A48EA79A5D8B9E952C8291B45273D7F1A54B64073B7EBCD5A55566E476A558D01FBA3BD0042A83038FA629EAEA07078F7A79E7248F4A09CA8340B4B8864C724FBE680C31C3714840320C8A74DF2FCA07AD032394458F9987BF1519584FCA8073D7352100E011FC24D22228C0DBFE78A0085ADE0DD978C120F5229AF69096DA557AFA55A2AA4F4ED43AAAC2580E47434015859421B0225EBD36D4B0DBA4780625C74EB4FDC7791C7A74A713D0FBFA502EA2A2AEDEA0FE34F4DBBB9EDEFD69AA0171903AD28EB8A04F61D85C807039E94A235241C0E7AD313960A7A64D397FD6EDED8A0124C19A24C29C0C7B5211131C0EFE944C02A923B2D22286CE474A02D60F2E355C95C807AEEA8DA356FE1E0F7A9149D847B8A4909DA79EF4261CA57786361900FAF5A824B2864CEE8C1FA8CD5D2A08DC4739EB51313927D1722AD0CCEB8F0FDA4A091191FEE8AC8D57C15F6C468E37C03C0241CD74ADC608A85D8960A4F04D21A3F2B7FE0A9BFB0A7EDABF173E3E47E2DF833F0713C43A2AE830D8ADCDB6A3046CFB65694AC8934ABD1D8E0818E057B7FF00C121BF65BF8E1FB35F84F57B7F8BBE14D7748BDD5A5DE34B935847D36D87197582393679EE546E936642A85071BB3F6DCB9C81B8F51DE9155449C0A257958A736D588BEC5705B0D8C1EB834E8AC10121C67D306A5600900F7A58BE727773C51612DEC446DE3182171EC450C9BBE60A07D454DB411D3B5464E1F038CE734D0F42230E46E0467AF4A6BC4339383C7E1533121F6F6C535C600C532AC406053EC7D8F5A6342B82A3F3A9CAAE7A546EAA3903A91401135BAB2E4806A1680AF415642AF071D4F34D6500903DE82924556897A303CF5E2A296C6394608CFD455EDA186D23834C28A1B18E39A0A3FFD9
WHERE szItemName = 'M14 U.S. Army Sniper Rifle, .308 Win'
EXECUTE @RC = dbo.NEW_ITEM @name = 'M14, .308 Win',
                           @class_ofItem = 'gun',
                           @Returns = @asd OUTPUT
UPDATE ITEM
SET Item_Image = 0xFFD8FFE000104A46494600010100000100010000FFDB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FFC00011080280054C03012200021101031101FFC4001C0001000203010101000000000000000000000506030407020108FFC400511000010303020306030406080306050207010002030405110621123141071322516171148191233242A1155272B1C1D1243343628292E1F01653B225344463C2F117262754A27393B30836377483A3FFC40017010101010100000000000000000000000000010203FFC4001F1101010100020301010101000000000000000111213102125141716181FFDA000C03010002110311003F00EF8888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808B52BEE9416A87BDAFAC8299876065786E7DBCD4447ADEC739229A6A9A8C7FCAA4948FAF0E14D82C48A062D65627CDDCCB58EA693CAAA27C43EAE007E6A7239192C6248DED7B1C321CD3907E69A3D2222A088880888808888088880888808888088880888808888088880888808888088880B5EAEBE8E823125655C14CC2701D3481809F7295B33E0A391F170F7B8E18F88647113819F4C90B9BEB582D163A165557D4B2AEE123887D4D49E3767F55AC1B347A01852D4B5D3219E1A985B3412B2589E32D7C6E0E691E842C8B97F6755EE8AF6EA181C4D254C067EEFA35C31E203A6738FA2E8F5F71A2B5D23AAABEAA2A681BB19257068CF924BA4AD945176DD4766BC3B82DF73A5A87FEA3241C5F4E6A512597A51111504444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444058DB135B3BE505DC4F686905C48DB3C874E6B2220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022F2C6F002389CEC9272E39E672BD2022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222208DBD5FEDD60A68E6B8CFDD895E23898D6973E471E8D68DCAA0EA2ED50D3D4B68A928EA6DED77DFADAC809E0FD960FDE7E8BC6BCAB96FDABADF65B78EEDD6C789E6AB0DE231BC8C868F9609FF0045BD5971B8FC337F48D8686ECD0DFB47C4782477AE0FF359ACDACD60A0D3D594C6F3555C6E354F3FD7CD207BFE43F0FB0529354C11B4B29E12067639DD71DBA496865D5B258A6ACB33E77667866F0C51E3D08DD4EB2F371BB0345649088F80367AF2DC67CC460F9F9A826EF7AB6D968718EAE46CB2F5A7038DC7D085566EA1BD1A8353A66DD516C05C0BB8E602378F331118F985294DA768AD638A38FBC9CEEE96477139C7CF292BDE0F840DB98C744C12F47AD758C4C6FC4D2DA2A384788091CC71FE0A669BB4B8203C17DB5D4DB8E702561EFA33EE40C8FA2A0544AE6E486EFC86161F8F959E191D9DB91DC610D772B75E2DB77844B6FAE82A59E713C123DC730B757E772CA3351F11171D2540DDB352BCC6E07CF6560A0D73AA6D8CE06D4D35D226EDC354DE1931FB6D2327DC2BB575DA11506D5DAC592A5EC82E8C96D95279894659FE61D15E29AAE9AB611352CF14F11E4F8DE1C0FCC2B2CAACC888A8222202222022220222202222022220222202222022220C73CF15353C93CEF6C7146D2F7BDC701AD03249556A7D5577BB42EABB25863A8A1CE2396A6B040E97D43784E07B90B5FB52AD75268FEE43835B5753153C87FB84E4FF00D38F9AA3D4D7D3DB591B8D6B69880033C78F6C2CDA8E9366D470EA23596AADA29ADD71899F6D492B813C276E263BA8F5C792A4DFA2A2BFD5DCE8AAE9C3EE569393500786A1A07323A380382BDDDEE55370D19FF12504C1B79B33C62A5983C71BB620F98C1FC94259EC1557AB6D6DC69AA6B05D2506673A43986A01192D76DB1445BBB2CA689CCBBD6FD93E5EFDB0B5CDDCB581A0F0FD4AACEB2D59154F686609AA29C5259F68E39376BE523C448E591F77EAA06DD435740C756DAEBEA682A261979824D893CC11D70B5E8EC1353543E4AA862AB8E47714D51237C6DCF3273B73EAA7386AED0545AF564B0C7DDC14B700E0EA5AFA300163C6E33857CD277E7DF6D92FC4B0475D4733A9AA983F5DBF887A1183FF00B2E634DA6A8ADD5D0DC68350DBADF335C0963A705AF6F963F250578B8575DB58DF64B0D5D43AD3386C952DA771609081838F3DD34E9FA15B3C2E90C6D9632F1CDA1C33F459171FB4E8AD3F7DB1C771D3D70ACA5BA52B78E42D7F8BBCC7239F5F257DD15A85DA86C2D92A0B457407BAA96B79710EBF3E6ACAB2AC6888B4A22220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202F8E7358C2E7101AD1924F40BEA84D5F50FA6D25727C5FD63E2EE5BBE37790CFF00D482B344C6C3648EE0E03BFB94D25639DD7C6E3C23E4DC05E9B3B5EF6E1D96E3AAF77DFB0922A48816C7044C8835BB0000F25071B9C1C7723F8AC329E315355619534D13CE7F100461658E8A2822747046D637F0343760A199518C7524E719E4B6A2B80765AE73B96339C74574657D331D07138F88E4713828FA8A22EE5C272373EBEDD14BC3333BA2C0F240D8F9AF618D7B5D90D07A90829B5140E68E58F4C284A9A5938F71872E8135207672D2319DF2A2AA6DC09D80CE33941439232013B8F3C735804D230F1716E473569A8B4107C2D273CF651535B4B7271B7928237E299335D1CAC649C7B10E00FF00ECBD5BCBEDB377D68AFA8B74DC8189E4B4FB8EABCCD44F69D9A4F980B5BBA9233939F98CA22F16CED5350DADA1B76A28AE900E73C1863F1EA06DF9057EB0F68BA6F5070B21AE6D3D41DBB8A9F03B3E9D0FC8AE131D44F1FDC2437DD1CCA6A8CBEA2263BFBD8C1FAA6ACAFD42082323708BF385B2FD7EB2703AD178A8EEC6E29AA1FC71FB60ABFD97B62A4796417FA1928A6E4668C71464FB730AFB7D5D75045A36DBD5B6F10F7B6EAD86A59D7BB7648F70B796A5D5111101111011110111101111011147DE2F96CB0519ABB9D5C74F1670388E4B8F9003727D90482A36B5D6B3DAEADB65B308DD73733BC9A6906594CCE848EAE3D07CCA88BAF6C0191CAEB358AA2A638C1266A87774D2073C0DC9541A5B85C6A2CB5FAA2A4C4D9EAEA8191EF3E16711D8639E001B059B535B5AA2DB5B7CA086A2A2EF5773A871C18E4788C46EF36B00C2E7B4B34B4BA8238AEFC5501BF660C8ECF0AEA7A2ABCD46A1A6655318E736568CF0F8646BB9100A81EDB2C94F6BBED3CF47053D3C4EDF86200124EE4E06FE6A66B37EB6DD65BA0A69A8ECF5AD82DB5CD1F131B865A7AE42B4C34D74F868A88DD2A5D441819DCC7863401EC327EAA2F4E56472E95A294B9D9E0E1393CC852ADAFE061E12363F508A90A5B65352D23218A1E06B4E411BE16F474548633148C698E4182DE608EAABDFA60609EF725DD07EF46DCEA65EF0C45CE6C6C2F760FDD68E64AAAB0D2E95D354ECC456DA739FBC48CFE656D494747471F0D3431431E376B00190AA6DBB4EC8F8993640DC63C96582E9255BDB0CD3B59C646EEFC29B51AF63AE834CF695F0B1BB828AB9B924BB60E3FEB852FA5EB6383B56BDD1D34AD7535530BC35B80039B83B01EE5491D25A7646C7595F7112C8D66048256B70BEC5A4AD94F522AEC5728E3AC2D3C2EE36973811BEE3D14395E517309EF1AA34E557DACAE9DA5DBC7539735DE8D7730AC369ED06DB5D3329EBA2928277F2321E28DC7D1E3F8E16B7EAEADC8BE35C1CD0E6905A4641076217D5544444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444054AD6176F88D4364D2F030BE4AA9D95350719E0898EE21F52DFA0F55755CAEDD38B876E15D5249736958F89BE818C00FF00F912A5E92B7AED5225BA553C11BBDDCBD36FE0A35D3B47092E1803030B6A76C5254CAF39C124EE7CCAD195AC6E1CD241CFE6B28C664797600390761E67D97A3248D91DC4D20F5C8585CE7671B8C750BC38973011CC73CAA36A3AC731C7C59CF9A90A6AF71661D20C9F355D938F23638CEF85F1B298C60B8731B282E11D634C45A71BEFCFA2F61AC791FAD8E6AA91DC30478B7F227AADD82E1183C2E241F43B22A65F460F8720E7C9684B6B043C319EEB6A0AD6B9BFD66703CD6EC32090701FDEAA2B13DA5C772067A6CA22AAD7B9CB772AF8606C9FEA792C52500737C4CFA20E6F25B1DC4700823AA8F9E85CD67173F4239AE8D2DA72D7E5A00CEC144D5DA1C0670396396C50519D13A23C58FDEBE0A89384B772D27182DC83F25629ED441248DF0B424A07716397D144C4444CA7EF5B2464C138FBB2424B482ADF67ED0754DA70C7554574A76FE0A9DA4C7ED73FAE5569F42F613E11BEDECBC86969C9279ED8E8A0EC767ED5AC95CE115C9935AE7FFCF1967F987F1015D69AB296B6212D2D4C33C6793E27870FA85F9ABE27C1C0E6B5C3910E19F45EE82A65B74E27A0AA9E8661B87C52100FB8576AEBF4CA2E4B68ED52B68F10DE2905644303E269B677CDBD7E4AFB65D6361BFBFBAA1AF619FAC32831BC7C8F3F92D7B46B53A888A8222202222080D5D7F96C36B88D1C1F1171AC99B4D4911E46476773E800257349ACF5D15C0D4DF9F2545CDFF7A59C671E8C1C837CB1B29CED42E0FA6D49A5D90BBED607CB5383CB60D03F8ADFA7D7363BAD188EF94FDDCCDCEE232E1EE08DC2CDED2A9771A6135055467C04C2E0091E8AB16D9A4AAECF3F47C30099E266C83AF096939C8EBB10AED77B9D818E6FE8DF8999A77225D9AA916AADA5D377AAB8EBA277E8BA925D148D19EE9C7D9444E51DE2BEE37792ED5340CA473444C635AC2CCF00555ED5B50BAFD798A79222C7001AD6E7C200575A1A9B55DA664305DA90070E27492C81A1AD1CC9CFA2E4D7F7FE94D532C34D51F13031FC11C8D18046798089571B2553E2D2B4ADE27349C9047A95214D5CE7F0C59F083ECB6AF56075AA86DD471714CD7D23641C2DCF4DF6F4F350105C69E295ADDB846C1DFEFA209DCE46CFC3B6E614BD8A7AEB7B6AAEB4D402BC410B9B2C01DC3E03B177A80ABA2AA0A8C3A2783B6E3A8539A5EE8CB6DD382793FA2D4B1D04DE8D70C67E4AAA1A80D40A668786C4467001C80DCEDBABA58B4CC95940DAFAFAB8A8291FF71D26039DED921547BA7DBABA4B654B8B8D2BCC60E7EF37F09FA2BABA8582CB0DDB555C1F496F89A1B4F4EDDDCE18F21D4E1049BF41D8EE96F7FC3DDE5706EEE9E391A437CD732D433D2DA3558B3DB2B8D5D2B2304CA5D9735D8DF71B29B3DAAD0414F35AB4CDB64771ECE96A9D86E31B9C2A951DBD94F3CB57515026AC94F117670067CBFDF92767F1698B54DC69EDB3534FFD2E9F80E239B7236DB07A29CD237AADBB6899EE1554D4D34D6E708A10E8B6E0C6327CFF00D151EAE4E0A1A8901C0E03BE7CC2B4767C3E03B34BE4F2ECD9A70C613B64E00FE2A7E8BCE83B8D4DC61B9C9505BE1A91C2D6370D6F81B9007456F546ECC83BF46DD1C4601ADC0DF3CA362BCAD4E9A82222A0888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808B13E495B51131B0F146FE2E37F17DCC72DBAE56540444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444405C93483B8FB42BF4EE2061D584FF00FB9FE8BADAE41A20F16AABD1703F76AB73CF794A9E497B6D3E61C5B339755AD24A00C701F2DCADE95EC8DAE000E13E4A3A461712EC818E45651E5F21E1DD806D924158A4AA79606E23C71733CC2F8E1E0278C7CBAAC208C7093903E6A8C33543DED0D2FCFA05AE003E1EBCF395F5ED707118010781BC8671BEDD107D181C8E4F92F6D7B9ADC9C9DF92C2720641DBC96505E199182D3D08419E2AB2DC788E54AD2DCC3460C9CB9E4FEE55FE1237E43CBD56463B1C8EC982DB05CF3824870CE0636C29386B58E60E224FCD51E3A9E16EE787076C2DC82E45AE0DE2CF5C9515737776E05A38707C82C1253B4C679119FA28282E84733B9F25BB15C83F20B8007D551E6A2DEDF100390CE792869ED6E0EF0E1C474C2B2B2A59230EC39752BCB831C08E59F64452EA2D6F19241E5951EFB6E0E0372ECEC72AF6FA4638BB24818F45A52513323618F6455226B7BA3182D39F4EBEEB4E680B5AE0DCE77D82B9D45078B27E78E8A36AE83841D8262629AE73E1C6C723D7FDFF00B2B13AB5DDEB64764B9BBB5ED3C2E6FCD49D652B8025DBFA61434D4EE6BDC385DB735311D2F49F6A3596D7C34B7A93E2A85DB0A827ED22F7F30BB35354C3574F1D453CAD961907131EC390E0BF2753073E50DE1E20EDB84732AF7A135D4DA5AB5B417173CDA2676013B981DE7EC92E2CAEF68B1C1510D540C9E9E564B13C65AF61C823DD6BDCEE94567A2755D7D432185BB65DCC9E800E64FA05B69B64868249000DC92AB15FAE6DF04D2C16EA7A8BA4917F58EA500C6C3E45E4E33ED95CEBB41D655D73B2D4F8DF416E73711420F0CB31E85FE43D3F7A691D435963B252C547DC88E46364735ECCE4E3759B5350FADB52D7DDB51D35CA5B33E9E1A7A730B5A25123B72493B0DBD943D3DD23A9FBA08DB7079AE995375B16A0637F4B5B9F0D40DCCB46402EF4395CFAAEC36782A1DDE553E27CAF2E639F30040CEC392959E58DB2B1AFF13F85A39EFC963AFAA8EDB4F13EE10C8219C7130BD9E178F35AF7CA0B8E95AC860AB70A8A79DA1D1CA06789A7A83C8AE83AA05BB5069BA1AE8E78656368A38DB0756107C47D3CBE4ACEC516DB6ED3173735E2089E09C9EEE42D3F456C8B4A69F640EA8B4BA38DF8DE39461EDF62B9F54D82901649452494D367EF31DB7D1796DDAFF6A004F132B601F8C0F161391DDAFB2FE8DECF5B708183E2CD332984B9DD8D270707A2FCC376BBCE2BA48A13DDB18E23185D6B4FEBEB75CF4ED6586E7298DB23731076CE63F981BF31950D37651FF1053BAB2D77285B58EDDF4D2ED93E85272AE5D1DD2B6277132A1E0E72A6E9B5A56C4DE19A28E5DF9EE0AC17DD1B7DD392965C6DF344DCECFE1CB4FB15024169C1182AE0E9963D5D477CD556D96F155F0D0C4D644F3263058D3D4FB292ED17B43A3D437C30D24BC7434BE0878793BCDDFEFC972057BECB34BC5A9355D34553BD3B1FC4F1E606E47E4B398366D560D45534F3DD296D8E65235A0F7D378463D3CD6E496DD42D8B8854D190067870AE9DA16B16475F25BA9DED652527D9470C7C891CC9FF007D173937EABA87969761A76C0F255186AE4BEC8D6B26A712363E919D95C6A356D6D4695A0B1D9AC2F8041E398CB2643DF8E7D140525734B8073B6E5C95868A46BB078F3D4F5504CF671AA996DA1A8A1ABBCFC1DD6798C9DC57418A72EF470208C8C75F915D261D5FF0AE0CBF503EDED3F76AD8EEFA99FEBDE01E1FF100B99D450515DE28DB531B251C38C91820FBAC9410DF6C11F0D8EE266A5232EA2AC1DE4447A7924576C82786A616CD04AC96270CB5EC707023D0859171FB5DFADADA9026755E94B9BCEE623C5492BBD5A72DFDC55C60BFDFEDF1F7B71A1A7BA501DC565A8F880F374649FC8FC96B5756F451D6ABEDB6F713A4B7D53252CD9ECDDAF61F2734EE3E614812073215D57D458E5A88208CC934D1C6C1CDCF70007CCA8E66A6B14950D81978A1748E38004ED393E5CF9A9B04AA222A08888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088BE1E2E26E00E1EA49DC20FA88880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880B8CE8E97BBD577B1807FEF23FF00FA15D99718D3A3BBD617F6B4E009EA5800FF00F57FD54F24BDA424244BC8E77F92C6F2D6341F0E791CEEB6E78D81C00F3F3DCAD29784103CB72565182467147C41D9F4CAD530F03B8DA0EFCB2760B6E6258DC6470E3AEC1630F69C0DC9F35468CACC9E277113E5C930D0F381B63182B6257073B0E69DCE36DF658DED2C24608FDD8EBFC1063EE9AE6646373E685AD68C740BD35A791C60733E4B23A18C0C17027F720D4CB180B5C323D17D0D246DBE7A657BEEDA77E1F9A47868C01B0DB04E107C781DD86F10C2F2D21BE118CF3042CCE1C5BE1BFCD7C0E1BE5A074D915E1B3708712EE9D7AACCCA92D7FBAC0EE30EE4DC676C725F1A1D9C82371BEC88906DCA469C34708EB95BD0D739C013E1F2DF9A8221EE200E2711D07459E3930D05C0E31E65156265630B880E1BFE6B604D1C8D238865569AF702060FBE7070B28964C92641C23CCECA0977B987A8C677DB92D2AA8439A416ED8E64AD61560641775FF7B2CA2A8B870B88231E7FBD1109594CC0E7708C01B00A226A30F25A5BE2C7895AE7884833C3C27CC2D76DB8F37333D3CB2A8ABC56A1C4D7005A7A11918560B559A8E7FB3A96B4C67EF83D56E8A3E1C0E100E32167652B9A3C2DDFCC1C20F7F053E9C87FF96B5154D2F13B26964609621FE6CE178743355D432B6ED58FAEAA6EED7C87C11FECB46C3E8B3C74EE63812CDB1BA5486479C6FBFD1414CD6B475174A070872F918F0FE1CF3036D82CD66AA826B653C714A0C9146D6BDBC88E9C94EC9092D279E3F350973B65196C955333BA746D2E3346785C3E7D506F1A8828A99F3D44CD8E366E49E414553D4DB6E976A863A582A04B18EE5C71B01CC7A2D0FF0087AFD7CB0C924933A4A067DA968199430722EF455D769F6D2F098DD2B0B87369C64226ADF5F7065F6C54F6471639D6F739B0548767C1B103E4BC59E1752D7491DE6ADD434B334086A047C719775E2EA151E2AAAFB156BA3A6671B5E321AE562B76B3A49DA20AE6985FC887EEC413578D3D7AB61756C31C372B73B76D4521E3007B288A6B853CD86B896BB970F2214D50BDF4C7E22CB70968F8B91A79331BCFF799C8ADA91F4375219A82D71C531E570A06F0FCDED1FC155C566A6D96FAD7FDAC4DE23B710F09CAF10C178B496C96BAF73E268C88E53CBD015295BA3AF14B9ACB54EDB9D19DC3D8788E3D5464774EEC886A6292097CA40A22D16AED5AA6060A3BF53F1348E12DA967134FCF190B7EAEC1D9EEAF85D24510B5D53B94B03B3193EA33855473A9EB20C48C64CD2393DB95A0EB33633DEDBEA25A693C9AEF0FD1399D0DBBCF6257BA585D51699E0B9C00717D8BB0EC7B28CD317DAFECFEAE474946F8EB5A1CD6B66696E32319DC2DEA3D59A874FBC779DEB98394B03C8FA8E4AE143AFECFA8E1F87BEDBA92BDBCB32303650537E8E455F71A8B856CB5751271CB338B9C7CC95E23A92D6E06D8EA1756AEECD34D5F1AE974E5D4D15491914B544E0FA02B9F5FB44EA1D332715C281FDC83B4CCF1308F70AA72D6A7AFE139240EBBA9CA0BA3C1C970DCE388F30A97C678864F45BB4B5201C39C7D0E56575D2A8AEBC4F1870C8E43CD58282BC105A490073DF0B99D256EED24F09680D04394F525C1CD232E2EDB1B155757D9E4A4AA8BBA9628E48CEC5AEDFF002F65A51D055D9DDDF69DBA4D40E27C517171C47FC2ECE14253D6BC86F0649CE460F25B86F70D30CD44EC673D8BC0CA2B1DC758BA2987FC57A7A39E46803E3A89C6279F72DC7D16949AB7B3A004CEB65D6A1E3711C954FC67DF8960B86B1B710695B00AA2ED8B787C27E679A80A3D310D65649595307C342E771369C1E5EE7A2769CA524ED460A4CB6CDA5ADB4ECCE43A68FBD77D5CB729BB4075F69CD2D7E9A85F21690D92923E0DFD472C2B9E9B7E8C92D91DBAEB68A3A59E3F0B6A3BA1E2F52EC6C7DF65A5A9AE169D395069E09A399CE00C6D8307881E5CB927FD4CACB64BBDEAC94907C1D710CC65F4751F6918F404F89BF238576B5F68341396437689D6D9C90D0E79E285C7D1FD3E785C929EE175B8380EF60A08CF4238DEAE966D1573B841DE4B758A7A673704494F86B811EE93FC57560410083907910BEAAFE9982AED1462D15D511CE20DA9A66BF25D1F46B81DC11CBD463D55816A342222A088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880B8DDAC16EBFD4119DCFC4CE71E85C0FF15D9171DA3063ED3AF60EDC73C8DDFF0065A54F2E92A6A42D6B8B78797EB2D7948931E000F92DBA88F7DB07A9CAD4796632EDC6796CB288E9A177781BC381B90B1093B968692D20EC3D56ECE1B212788EEB4C067160870F2DB395461E373E424388DB7C85F4C45E72F7E47995E5EFE173B0D3B82739C2CCC739F101C232DDB73FEFD1158B8400497E09DB9AF6F6931F31EE178731C7CF8B3B12506780F1118F641E7BBE200741D02C2F87C59C007C97B123721A1DB0E9E4BE91C408249F74461747876011CF7017D645C2EFBD8F75943232C0F713E7E4BE0E12E1CFDFA20FB86EF92D1EDBAC4C21AEC0192B618C6E00E79DB1E4BD70B40276249D81E48AC96BB83A86A8CF873BC2E6101D8E63CD69B016B890723A1CAC8F01CD3B00472C7EF5E034359E7B75288F85EFE03C2360563323C63206D8FA792F6F76DBB30790C9585DC4E70DB618083E199E09C1DBDD678EA1C5A371EA0F5583076C37E4B246DF1B475F328246399FC6C05A303D790526C60078090F0770E6A85A78DCEE12C073B6D9E8A568650FE18A5C8DF2D703FEFD106D3A94341040E1D88F55E3BA18193E204E71C965127D9819C798EAB0F13B878C8DFCD07B0E21B97F0918C139DD6191CC7458CFA8F55F257031F103B792D09A43C45A3033CB3D4283E1731C4E0E08F3503A90B5D6FE09301A6460711E5C4A51D97E33CB7DC28EAFA16D5D34D039C4718D8FAF43F554740D274EDB2D81B7DAB3C46A9F8900765A2227036F30A0EE9A374E43769E7ACD450D2531709638091C5C0E1918F31927A72551A2BDDCED36592D1709A410BA4183F7A3C138273F87037519AD2F126A1D5157536EA79AA29C70C7139AC382D68C03EDFCD0AF7ACCE989AE16EA5D35DFCB2C6E266924396B86D823F35945B28AE54E1B5B0B1E40EBB1FAA8EB069CAC0F7D55543DD39E406871DF0AD0C8594E3186E71B9289151A8D213524BDFD9ABDF0BBA45238E0FCD20D4972B548D8EF7412359C84D18D8FF02AE2F2D706800602776D9DA592B1AE616E0B5CDC828AD0B7DCE82ADE2A6DB5BDDCF8DDD0C9C0EF98EAA66A6E8FAF884778B6C57160DBBC8C064B8FDC554AE5A4686A2633503DF4351F7818CF873EDD16936AB52D800F8B87E3E907F68C3923F8FD5391237FA5D374B4664B3BEE1054348F054331F9284A1B9C91C7F6ACE319C71346DFEF929AA2D5168BA62395E2194EC5930EBE85649F4DC4F99B5547335B20707776EDD8EFA29DA35054C528C82001E4B56AECF45592719670BB6C3E3D8856FA9A1D2B5F4EC155154586B88FBF82F81C7DC6703DF0ABD74B25CEC507C4B0C55544E706B67A77870713C86C73F255510D8EF16A707412FC542DFC0FE6ACF61ED26A68DE29A77C91EF83054EED77D564B6690D617389B353D9C430BFFB5AC91B18C7EC93C5F929A83B18ADAE2DFD2B7FA38F7CB994F1F191F338531396A57DBB476A769755D11B5D53BFB783EE64F98557B9766172A685D3D9E686E907306039781EAD5D4E0EC8B4FD0537795979B8CB14437C4A183E80146E85D22E9DB0DAF505651D7101CC70A9DCF96C40CFB2BFD5C7E7F2C9E86730D44324323762C91A5A47D548C556191716718EA0F25D56F5A7B55C15268AEB61A7D49438C32B230192EFE6739042A5DC3B31BCC314D5F534A6D76D691C314F3B5EF3E831FC52C460D2CDA6BCDD192DF1D531DABEEE2138713D0FB2EA14DD9B69DA880D5582AA0ADEA5B2B83CFD7A1F70B9F53C2CA6863823C70B0616E52CF3D04CD9A92A248646EE1D1B883F929D2C4CDDF4D42F71A5B8DBCB1CD1E12E18C7B155FF00F876E76D39B74E6A62CE053CBF7BD9A5762D0D79ACBF5A677DC7BB99F4F286B5DC3BF2CE4FAA98BE561B759EA6BA086174F03389BC4DEAAF147E79B957D4C623A3651545357C9B704CC238079EFCFF00D17AA2B7C54BC009324CEFBCF76E49DF92F3ABEF970B8DD28ABAAE6E39B8CB5B8000E1F20158B4BF734D453EA1AD883A0A33C30464FF005D507EEB7E5B15049C54147A5E9E3AAB8C0DA9BA4BE2A7A027EE0FD793C828E9EB6EBA86B5BF17513553C9C474B092231E81A39AD72CACB8573A69A43515B55265E473738EC00F41C82B2575CA0ECFE9596FA08E3ABD5154CE2793BB699A7CFF00DEFED8412B4D4D69D2D6F6CFA8EAA968839BC4DA4660BDFF0021B9F97D56ED376914D53F676FB357CAC6ECD74C447C43E6495CB2081D5358EACB84EEABAF97C4EA897720F90F20A5A91EE8A50E0E040D8841D7E97535BE7005417D1BCF4A91C20FB3B91FAA986BDAF607B1C1CD2320839042E574376746C0C7B43E371F107F5535475B4B1BB345552504871968398CFF0084ECAEAEAF68ABF4D7EA889A7E32064F18FEDE90E47CD84E47CB2A568AE9457007E16A19216F36EE1C3DC1DC2BAADB4445411110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101721AC6FC376A75E388713EA5A40F47400FF0005D79729D58D147DA952CBCBBF8E0909F3397B3F929E5D254C54B1BC5D771B95A6E8620C23201EBB6549563046DD86C0E3DD69BB272E7381E830A234886E376EC0F92C2F6F0ED801C7CD6DC81C3880C1C8E656949C4E1976091939515AB3B07DEDF1CB04253B9841DB217B95AE11F18CFA91D5618806E5DC3BFF00154799B79787BC2D67AAF18DB87393FC16CF0B4F3072796560734EE3841193CCA0D710805AE24019F7CAF71B46E470E07E4BD901A4671EB9F25E5C4F888C0C941E63209E1700091E69C0D0784B865646B7203806E064E3C97CE37100903206C501AE01C417617D1C23858771E5E8BD47CC93807747BB11920E7E5BA0F8EE0E071C3788FF007771F3582438EB927F5775B19CB9A1DB34F3C7558C0617609237E7D50606BB88E7381ECBEB80391C5D738E857AE2DDD81E5BAF1C67F173EA327741E413BEFE11E639ACF1F0F3E16EFD578639AF71F0EC7A1F35E9A1AD07273EDF441B103DDDF3591603DC790E7959FBC8D983C6EEF0839C8E4569326641551491ECE664E0EE0E7CC2FAD9448FCBB07C801D7D90489ABEF9C5DC448E472B23AB086C6C2470E703651227E120630391C7459BBF048E227846F8F3446F0A885AF0F2D739A4720569CF346F77163001E4B131C5C5C4905A7703CBCD060E7C409C64041E1CF631E5DB1F63CBD56B38F1C870EE1E9ECBD3C16B8E360BC6ED7EF819E64A0CB146388B5C0387507AAD997BA80E21686FA00B5E1796B882EDB8B6C1E656E4C78E36BB233B67741AE40931C59CE3658E789BC5C409E5C80C85943A28F024C938E41629E48C9D9A71B6C4A0C1DD10FE6DF3C2F4226B5A79824E46D95F5CECF840F9FA2F278A3C6464F3C8EA80F682F0449B918E4BC3C39AC700320745E0B88764970EBCD7D6B9A5D8279EC1041DC74E5BEE2E2F9A1E07F4918307E6A29B6CBF594836EAC35300FEC641BFB2B6BB1921BCCFFBF9AF8E8CF01FBBCF6C20AE526AF8B8FB8BA533E9643B12E196956BECEA3A3AFED183600C7D353D399431A7ECDD263638E5900FE4A32A68E9EAA2EEEA626C918CEEE19C7F2593B25822A4ED0668E9C911B247300F4E12A0B0BAF95F74BAB9B70A87E448EFB3CE1ACC74C056BB4CCD7B98E04E7963A1547243B51D61903435B51265C76FC44EEADD6C9C38C607007003979AA25EEF299E8447FF0030E0B572DD56D31DE4B388B5CC00023A6CBAB54B592363CB88EBB2E5BACA17CBA86A3BA639C001923A6DD5066B5F687A82DD48206D4B27637C2DF886F111F358AF1A9AE77EE015D501CD6EED8D8DE1683EDD557E063B8B05C763C82D92DC1DF85DC3D01520F6C71E1D8F5E785F41C8F0F0E1796C679EE47A85EE41C0C00636DF283A4F65736686E713B01CD7B1F8F707F92B06AF9BBAD2F5BBE3899C23EAB9B68DD491E9FAEA87CC58D64B4E5A0BB38E21B8CFEE562AED5949A9F4C5453BA5823B833ED046C7F85E0731CF9AB15C7F53BE386BE8E273388F017649E4A72AB50D254DAACD6BA371315134CD39E5C5338E397A0550D53512C9788A5730B616B7843B1B7AAC2E9BE0DF18EF58F2E68766376719F351975ED315B05874EDCF55D531AF8E987754D19C1EF253CB7F98FA954CA3A892A249AE55B3192BAB5E6599DCC80770DFF45E3526A0A7ACD29A76C94527145107CF540733267033F9A868AB5AE7F13A4E003C93F15658AA19DE06673FC16F433F0F092463A023655C8AE34CC3E16E5C7AB9CB621BB44F7701031E7D4269AB3415C1ADC6091E5CB0B38AD2EC9CE3A2AEB2AB39EEF040DC6FBACA2A1ED00003DFCD05AA92F32C392D7E31B0C9DB2A5E3BD5354B99F1116240416CB1BB85CDF98F75438AAB38243723704656FC5560100673EBD5074CA1BC5C19183054475CCC7F573F81FF00278E7F30A62975151CAF6C5541F4539E4C9C601F67722B9653DC1F1EDC593EA70158AD35755719853361F8838F135C3200F327A744D5D748E68ABC18CD3F4E27ACBAC74B0FFCA79CB3D803BFD30BED9F57DB6ED1CBF6AD6491BCB43773C63A39BB6E16B7E9AB022C34F574F56D2E8256BF1CC03B8F71CC2CCAA8888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880B96F6A38A4D4960ACC11C61F193FB2F6387EF2BA92E77DAD5217DBAD358067B9AA7467FC6C207E60297A4A93AB61EEF607849D89FAA8B2D70C710181B0C2DEA49855DA69A40ECF79135C0FCB7584C4D3CCE72B28D57C603B770C8E816AC8C0E79DF0D2B7260D660B5A03FAAD573F67710C6472250689180E1C649E43D1788F85CFC83CB7C91ECBDC8E635AD702739C65626B8C790003E651596400119071CB8BA15E70D69C868CF9E17C7CEF730020F08C1016174C403904E371E488F923417E384E3CC158DA463383B1E8BE71B8BB230DCF5CE17963B9E5DB2A361B2307131CD1C24753EEBC48E6B9A784107915E09C48C01CDC0DBFDF92F580731B43B2EF208AC61CED865BEABE364CB867077E41617E592381D9B9C00563748D68C8CF3E594448B9CE63B81CD2396FCD6ABCEE7C473C881D56B199DC67C440E8BD19493B3763BE73CD15ED8EFDA04959DAD321C372E763D16B332F700EE2C93C96CC50F18F17103CB73CD07BEEF62D276F3CF329C008DF19CF3CAC5C2E6E403E98F247BC81BB8070EBD5118E4C17646072CE39657B8E68DD13808DC642416BC1FBBE98585EEE200755EDB135B1F873EF941E2438C8C9E2F2256BF7CE69D891D775B12C6430601F651F3EC482411E5EA83761AE84B1D1BCE0E320F9A90898D7D3BDFDE00400001D5532BDC63607606075FD60A361D415B432031484C7D5AEDC0DD4357F9018CF11271D7D179059B7103BF2F555FA0D654952447519638633907F7A9D82A6299A1F0B9AF0305A01C84D1EDB1B0BF1927033B2CC7BD117013E13B8056073DDDE71E010566E22E04608076C6792A3065C70DE1C93CD7D1C41A078707979ACE080C21A0038E79FE2B1BC8CFDDDBA9F3456174AF61E2E2077DCE16074CF000C9E5C97BE1009C8DFA657890E4E4E31D022232E37C92DDB47452D4B8019EEC64373CB252DD778AE6D716B1F1C8C3F691BC61CD2BA1D9E8211D9CD6CF142C7CF5150439C0609F106819FF007CD73AD474BF015B4B7091DF0D58CAAF83A8831825B8C87141284C658D077713CD1DC0F00071CE760B008C8E2DC139E6765EBBB2785C338F54098708E7C5F35F3B356F71DA64F1BDC1BE274B8F31C07F9AC4F2FC921B80B466A39D95F15C286BA7A2AB682C73E23B969CECA0F53DF29A9EBA7A8A9AA00BE67E7C5BF3F25336ED756981CC77E91600DE61AD24E7E8AB6DB2514432226CA7397C8FDC9FAAF7151434E4BD914583C8F00DBF243A58EF3DABB63A771B7D0544E1A306473785B9C732A168F518D4D4921ADD41F0734873F0F0B04601F53CDDF5581C5A1AE612D00E360720F967A28DAEB0D2D4E78A9C4529FC4CD8FBE111B32D3DDED6FE37C6CAEA5276922D9D8F50B6E8AE5495AD02290364C60C6461DECAACCB8DDF4DB9BC331A8A42766C9B8F929B82E763D481AC9206C1578C640E1713E87AFCD04D80E1803180A5F4DD04772D4D414B50DE289F26646138E200138FC955596FBBD2711A4AA1571838EEA6383F22A52C1AB29ECF7FA2A8B9452D1BA2901903DB91C27638F914AB1F75953D5DF352D688295EFA6A773E230D2B434B5A09036037E4AB54B1503A2EEDAC7B5F19E125C70E07C95B5D7FA59B57D6DD6DB506480560943999682DCE7E9CD7CED12D50DB35A0ACA6606D3DD21150D0D181C7D7F9ABDA376CFA774BDE6D8292A6E33D3561FBA6A40319F9FF00A855BD4BD92DDACFC5514CDEFA9F989613C6DC7AF50B2534BC4D00E08E9F25396BD4D75B390292B5E2367F64F77130FC8ECA2E3924D0D6500C4B0ED920B805819525E3EF6093E6BBDBAE9A6752B3BBBE5B1B4552E18F8BA56EC4F9918FE6ABD7DEC78CD4E6B6CB2C55D01DC3E9C80EC7AB7F9276995CB63A9C01E2CAEB1D9DE82B66B0D375755533CF1D532631B1D1BBC23C208C8EBCD72CB8E9FB85B1E5A47191CDB8C39BBEE085B9A4F5B5DB48578968A67359C5F690389E0907A8FE29D11377DD27A974CCEF2D6BAA206920E01E20145536A005DC33F1324CF270C6576DD3FDB269CBFB194D7980514CEDBED407C47E7D3E6A5EEFD9CE93D574A6A20869C3A4196CF4F820FCC264BD2E7C715A6AF8E424B1C403EB9CADF8AA0673C40EDB7FBFA2C97CEC7B51585EF96D537C5538E433BE15484F5D6DA8315C29E48641B7881C259623A0D8E92A2F3728A869465EF39248D9ADEA4FA7FA79AB75F7545369288D834DB5935D703BFA87004467CCFAFA720A1E8EED0689ECC5D7589CD376B9931C2EFC4D1D3E4373F4547B73A48817BA5324F29E3924CE4927CF28AB4B38EAAA055DCA796B6A739EF2676707D1BC829CA7B83A1DD9E100EE46DBAA94355BE33B05B9056708D9DB7A1DD05F696F8C761D344096F27F270F98DD4ED35DE53831CCD95A7FB39880E1E81C3F885CDE1ADC8DC9F25BD054B8F883CE799C20E9B05D69E5706484C129E4D976CFB1E456F2E754D7895A381FE367EABB707EAA528AE8D6E3B899F4C797013C51FB70F4F9615D5D5C5144C1789303E2299CE6FF00CDA705EDF98E63F3528C7B646F134E42BAAF4888A82222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202ABF68948FABD097311B4BA4898D99B8192381C1C4FD0156858AA6065552CB4F28CC72B0B1C3CC118285738D1B502AF4AC0060BA3E261C1CF23B7E454990631C4785A0F9AAE76781F4325D2C953FD7524AEE67AB4F09FE07E6ACB26DD7238B912B1196B48D6976090DF2F75A1521BDE924F23CD6F4E41196E0636517552070E2CB49546BCE1A776BBC3CC7AAD5CB3BD032719E9BA4EF647E10EE4B48CA1A4BB8B1BEF8EA8ADF7CBC5B971F0EDE4B5659785C47A616ABAAB7FBE5DEAB04B54DCE7886373FEA88DAE30D2D3C78C0385F7BC0DF1711C6324A8D354D69C3B1EE4AC6EAE8F907371CB73D506FBAA7C58CF2DFC96092E0F89E0B1DC2FE2E60E144D4DC5AC79224C0E43877CA8E75792D25CEC7BA86A6A6AF7191C5E719DCB8F3256096E01FC383C86339501515FC391C58E7D73F9AD6F8F6B7C448051356B82B43F0D73DA76E64F35BB1D4332D01DEE41547171697648C9F25B54F78918EC024B5175788A521E3C43876FDEB783800D21D9C0E409553A2B91760F093EEAC74B52D9A36B437AF9F34236D87046798E792B04D879C01BACACC0DF8C9191CD799381DF7481B73547989A086E4838E806EB6DB002DE2C1237CE579869F8C7160E33819FC9493226B0639BCEDBF428229EC00700E4EDF88F9F9A87AD0E6B80EA3AF4560A81870C1048E98F2E8ABF5EFEF2491FB6E7668FF007EE82B17190125986800F307F7286742267169240F42A56BE4697E19E5D4FF00BF4FA2D2858E7CAD6B7F17E5BA88F6CB2D33E86497BD922735A48771787652BA1F486A5D4750E7DBB31D230F0BAAE425ACF6FEF1F419E6B72DB62A9D477CA5D3D4C48E2F1D5C99FEAD8399FF007D4AFD1B6BB65259ADB05BE8621153C0DE16347EF3E64F9A49AB238A575AF5469879172B6BAB29473A9A505E00F338E5F3017DA3BA51DC18D30CE339DDA763F42BBB2A2EBBD216496C571BC0A76D2575340F99B3C0384B8804E1C391CF2F9AD67C5E9487B30493B01FB97B3146D8F25C4E7A730AAF25DAEFA726651DEE99EDCB4383B677848C8391E8A728EE94970809A69DB9FD53CC2CA3D398D19701BAC6F607B7704679AD8746F6868392B048389F904FA9545AF473E0BA58EE5A62A5E6333B5D242738C1F43E608695CFB5DDAAF51DF6DD43708E5749248257D41F10701B673F55274B5935056C5550B836589DC4D72DDBBEA2AFBDCF1BAAF80F003C0D6B708546B9EF691B717AAF3C6EC92411EB959412064F5F25E1CE009E20411BE7083CF7A18F0E737A646CB14F389A43C5F7B981E6B30070E782DC72DDCB0C858D713CBCB920C71169707380C6718FF559646C2E68E20D69CAF111612EC1CE7AF45EDB1B5CC233838F3C941826A58C61C3036E7D16B88DB92D0DC740485BBE06E1AE20EDB60AF260CB06E37E48236A2919511BA395BC4D39DBD154EB74D5453CA65A325ED1B81F882BCBA23B1C7B0C2F3DC8CEC37239208BD3D7C73E314B5AEE0A967EB9003BE6558A6E0A884B656B65691F75FBA82ADB6C550077D171107670D8AD76B6E36D70EE1FF134E3FB390E1C07A282662A4A7A789DF0D0B63C9CF0B1BCD6C76A951522D9A7AACB9CE1152B1C063CF63FB828EA4BC52CA3BB94BA097918E518CFCD6F768B246FB1DA19DEB5D9A1672DF0725587E2AB6ED494AE606550740E3C8B86C54FC72C52F8A27B1FEAC702B5CDB29AAADF0413C2C700C68CE30415112E9BABB7BFBFB5D61691BF76F38F2F9282C913C17606719C616E52D74D6FA96CD4951253CA0F38DC5A7E6A9F4F7EA8B7D588EEF4EE6169FEB1A32A722B8D35749C74F3B25079F0F341768758D3DCA36D36A3B6435F1E31DFB1BC32B7E7D7F25A573ECE2C9A8A1EFB4ED7C13BC024D2D43B8251E9FEC2AFF0F09383EE3F9A4331616BC3B81E376B9A4E41414EBEE85BD5866225A49E21D048C383EC7915A76BD457DD315626A4A9A9A49073C1201F71C8AECD6FD6F5D4D4FF000D7164572A42384C738C9C7A15E2B34F68CD523FA2557E8BAA7FF6150DCC64FA3BA0F9A71531A7A63B7D901641A868DB2B397C453ECEF9B791F961746656E90D7B44E6535652CCF9060B0E0483DDA775C2751764B7AB4714ECA72E80EE2684F1B0FAEDB854BEEEE569A81278E373770F614E62EFD773D67D975FAE10D2C5415103E9A8DA440C6B483F35CEAB6C9A9B4EE3E3681EE631C4F7913327A73C0CF4EAA474CF6D3A86CDC3156C82E14E36E19CF8C0F4773FAE5757B4F6A1A3354C2D86BA46D24EFD8C752DDBFCE36FAE1365ECE2B8B50DF6179EEA421AE3B61C70415374D531BF93F248E64AE91A87B24B25FA135142F6B2470CB5EC2307E639AE5777ECEB55E9994BE9DA678067192397EE4CA9CC4D32A784805DE4429182AC8681C43D573C8EF95146FEE6BE07C0FCE3C4D53F4973A7963063938C610D5C60AC69187027CB7E6AED62B10969C56D77D9C1F79AD71C64799F20A97A22D5FA6AF3990E6969807C84F5F20B73B40D63255D58D3D6893BB27FAF91A31C0D454DDDBB42647566D5A6A8DB5B50CD9D2E71147F31CD7DB056D652DD6A6E779B80A99678846238D9C0C8C039F9AA5DB1F4F6CA510C0435B9DC91BBBDFD54CC358C7E0178208C6E39A2AF90DEA773CB808278C9F0B18781E3EBB1FC96FC376A494863DE6090FE09C701F96763F2CAA0C55186821E33D7752115D1C630C9036560DB85C010AE9ABE22A851D777407C1D5BE2C6DDCCA38E3FE63E454BC77D1137FA740E887FCD8BED187E9B8FA7CD5D54C22C34D574F59177B4D3C7333F5A3702166541111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110731D414CDD3DDA4D3DC7EE53DD98585DC8090343483FFE27EAB76AE6E07B8023C39054BF685667DE349CEEA76E6B2888ABA7C7EB33723E6DC8F7C2A2D2DDA3BB5143342777441CEDF76BBA8FAACDED9C48CD52034F083B05133CF1F0839FF5586A27746F764E5C7AF450F515783CCFB637506F5455B1EFC918036CA8E7D4B4927A74C2D292A412E6978079E7D7CBD7A2D296A1DC2380E08DF09A6B7CD7B23DC72C1C6EB4E7B8318E2787207451D3CCE78078B1EBFC94654CE72704FF001444BD4DDF89AC20004735A4EBAE4607AE145013CAD000713E6BEB6888199E56307A9419E4B8F1124BF3F35AEFA97BC0C64E3C97D73ED90EE5EF99E3A0D82FB1554F2B83686872790247341E3BBA87EE1877F45F4529C8334C1B9E8A4ECB4D1D55C9B1EA1AAAAA2A203C4F863E277B2ED7A4745F66D5EC0FB74CDBA4ADDCB6A663C7F366DFB9091C4ED76AAAB9547716CB7D456CC7F0B1871EE55FAD5D8DEA8AD8DAFABA9A4B630E3C1F7DFF0041B7E6BBCD25152D04021A3A68A9E21C99130347E4B3AD7AB58E4B47D86D3C043EA35155CB20DC1642D68CFB125445F7485CB45CB1553AACD75B9CE20C822E0745E5C5B918DFF25DC56B5C2860B9DBAA286A5BC50CEC2C70F42990C71A63C86B5CC20B4B77C791588378FCB39EBBAD39639F4D5EE7B25C097188FD8C8EE5230F223F8A9089AC71E363860EFB1591BF4AD693BE31D30148F0F1B49E4472CAC347110D076047A2D874448033BF99411758081903603008553B94BC111EADCF9F3568B8465A5C1CDFEF0C1DBE7EAA9977796B1C4827E5B222B958F26539E7CF3CF2B62DE7E1D8FAA78C866E01EA7A05AAE617389FDCA7F4ED9CEA0D436DB2007BA99FDE54169C1EEDBB9FC87D4A88EB9D9369D36DD3EEBC5530FC6DCCF79E21BB62FC23E7CFE63C97425E638D9144C8E3686B18035AD1C801C82F4B72646C55CD78D6BF45DC18EFBAFEEDA7D8C8D0AC6AB7AF62924D15713131CF7C419370B46490C7B5C7F20554AA56B1D2372BB5F2196D6239DF5AF730B65043208E3007138FBF4552B8F6557BB45EEDB1B6AE9C45592F73DFC0086B242090083EC7E8BA3B75B535AEEB42DAC9A36DBEAB23BFCECDE301EC39F2FBC0FC94AEA3BD5BCDD34F50B2A61967A8B831ED6B1E09E10D778B6E99C0F9ACF1898E3574ACBA692B9CB6FBAB1B3C51BB87BD8F6C8E9ECB768AE949706930CA01C6780F35B1DABB08BE5702060C911F70405D3EBF42582F76DA66CD4620999134327A5C46F6EDF43F3053392398CB1BB8C3CE37EA1612C7077BA84A8ACBADA3ED6A69A592DAF7BDB05448C2D3235AEC02B7692EF4B5A32C90038E59C1086A43841D80391F9AC0402E7077205657CED6C79686E073CEEB0366CBC12002EDF9A0F4D8467393E582B149080762013F92D96E1C788E06FB6104719F1608C0D86506908C9701F74E3AF5F9FD5658A37B886710CF3F45B420639BC448692B332907093C79F73D104788CF10C1CF9AC9C0FC3361BF42B7C53E01C39BCFAAF2E8F8893C43F86115A043B20E323C82F0416B83F836CADDE1206384F11F2E486978636C84B48FBB81CD061632299878CE48E5958A381A406F082ECEC49E8B65B1004E5A71CF9F55F5B4CE9338C65BB9C9E8822EAAD8CAD004E0380E471D16AB74DD23A76BA57CD2F00F0B247E40F20158045DDE43B8B63CF0BEBA27125C41F719411DC2F89E0340E0C6FE89270F5682E03232B75F178B182707071B616231B43B019B8190888E30C53831491B5ED20E5AE190ABB53A559DE19682A0C12E7668E4ADC610C6900025C71BF45E1D17745BC433FC5414FF00D2778B361B70A6EFE11FDA339E3DD4AD05FA82BFEE4BDDBF986BF9A937D3F135CDD9DC431827214056E97A59CF135AF825FD761000F92227338CEFE1F25EDAE01C4903237DF755022FD651E1E1ABA66EC5B8CE3F8A90B76AAA3AA91B1D437E1A4E5E2DC6505EAD1AAAEB6621B4B52E30FE2865F133F3E5F252D256E94D4DE1BC5B7F46553B63534FBB5C7D463FDF9AA7B0B6400B1CD21C33969C82BEF89BD33D319CA2B66FDD8D492C06B2C95315C29C8C830E0387B8CAE6B5BA7AE76990B6685E0B79B5C30E1EE174CB6DD6B6D7277B4753240E1BF84E01F71C8AB39D5F45788994FA96D1054B48C77F10E17B7D7E9EA13FA98E3BA775EDFF004C4A3E02BA48D80EF0C9E28DDEED3B2EBD60EDD6DD5AD6C17EB79872306587C6D27D5A771F9AD2AFECB74FEA384CDA72E6C9241B9A79886BC7CF19FA8F9AE657CD0B78B04FDD4D4F231DCC078D8FB1E45333A398FD146C3A4358D2F7D46EA6A8691CE320E3DDA770552AEFD8A3607BAA2D354F89DCF840C83F25C568AE772B255B66A79A6A59D9C9CD710BA6E9DEDCEEF45DDC377A78ABA1180641E093EBC8FD137E9B2AC56DB97FC15A4AE90CEF61AF2CE26B81C071E585CF2D97132CB355563DBF1754EE27E00181E802ECF457CD0FAE9A1A258A3AA7F38A5023793F3D8AAE6A4EC520AA2E9ED73164BCDBC271F972FA264B385C55D954D73B39DBCC9E4B7A0A973631C4EE23E6361FC553AE362D55A5A42D9E9DD3C2DDF3C273F45E6DFAAA09711CE0C3272C3B6086BA1D3D6708DDC46FCFAADD8AB5EEF11E4063D954A9EB59235AF63C107A8391ECA422AAC3416BBE882D915582E04101A7A0FDCA462AE7C6EF0BF63D02A7D3D60C839C6762095356874F72AE8E8E168E277339D80F33E88A9E82282A676BA28E586A9DCA4A63C0E3EF8E6ACF6F8EE50022BAA619A30367F0F0BC7BE363F2C289BB5D6D5A26D0E9A6783291819FBD215CEAA2F3A935A61DDEFE8CB638EDC24F7920FE1B2BD0ECD154C13C7DE453472338B8789AE0467C9655CB6CD6CA2B142191364900771974EF2E25DE7E5956BA4BE31A4E647B0F938E5A7E49EC6ACE8A3E0B9891BC4E8F2DFD68CE47D39FEF5BB14D1CCCE289ED7B7CC15755ED1115044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444405C435CE9CABD1B737DD6D71BDD66A871748C6EFDC3CF31FB24F2F2E4BB7AC73C10D4C2F8678992C4F18732468735C3C883CD2CD4B1F9C22D45056F37B788EDB1C1FA2F8E929E5C667C11D5749BDF629A7AE333A7B7CB3DB6576FC31F8A3FA1DFF003501FF00C069DAEF06A32079F7073FF52C654E54B90D3F09739E3D0F965464D574CC04F78DF0E082EC2EAB0F60F41FF8BBF56CD9E618C0DFE2563BEF65BA434C5825A830D55655BC88A9C4D37DE90F2D80030304FC93298E3B25DA9BEE8264701B8017BA1A0BC5EE52DB6DB1EF2012096A9616CA5B036595E237BC0C92E68E7E402BBD0DEB51D92C163A4B2D1C525C6E81EF323E3C9039FE408E688E76347EAA97C2FA5A88DBFDD8CAC7FF0006CCC73854C8F25BCF39E6BB2B6B7B53B6462A278E86BD83730B400E3F4C2DFB7EA1D39AC26FD1D79B79B5DE3977728E12E3FDD775F62AAE38B535820836731AEDF00E375BB4F4620C80D001EA1745BE688AAB354C7570410D752B5FC4E6BC96E4791C725A55D7AA1ACB5BA98E9EA2A39C6C2484EE3CFA0530C405A6C72DE6ABE1E9DF130869739D33F85A02F375D2CDB54EC922AFA592A47883E866CBA33E671C97A6C4D20B784104670E1B2F6C8F82330B1AD6309C96B06013F24313360ED3AF7657B60BEB0DC689BB19D8009583CCE3EF7CFEABAFDA6F1417CB7C75D6EA864F03FAB7983E44742B82F7000C6FCD61A3A9BAE9EAF15D64ABF877920BE98E7BA947A8E5FF00BABCC5D7E8E4550D19AFA87554669A567C1DD231F694AF3F7BCCB3CC7E615BD597550DA874B5A7535308AE34FC4F67F57330F0C919F423F7725C92F9A4354E9590CB4AC75D6DE0E78E267DA347F79A3F7AEE88AD9A98E076BD6F464886A1A61901C10F18214FC777A69D81F1CED273B0CAE8F74D2F62BD03FA46D54B3B8FF68E8C078F670DC7D55564EC8AC4D79751D5DC2941CE18D9439A3DB233F9ACE18ACDC660E8F8B6DBAE553EE4C6CB9693C2339EBF9AE8555D965DD921F81BE42F8FA3678DC0FD412A1EA7B2FD5843DAC9ADCFDB622670CFD5A99539739918CA66973C8246EBADF62FA724868AAB51D5C7896AFECA9B2371103B9F9903FCABCE96EC7F827656EA89E3A9734F1368E127BBCFF78F5F60BABC71B21899144C6B23600D6B1A301A0720074493EAC8F4888B4A21008208C83CC2220E33A97458F8CBE451C8D34946C8EA69E9DC092227E78B84F935C1D8F454AA1653D96F76BAF89A63EE2B2325C493E0CEFD5777BED3B69EFF006DB83DA0D3D4B5F6DAACF2E19378C9F678E1FF001AE317CB53A0A9ACB7CAD21D13DCCC903A1D8FAE7F8ACD8CAD1DAF5170CEFAB60244F035E1DD32D3BFE585D56CB3FC4D8ADF3839EF29A377D5A170EBE6B482F3A229AD9591C8DBD5291102585C2566305D9F6C1F92ED5A6226C1A56D313241235B49100E1D7C2125E56397EA5AC6CBA06863EE99235971A9832E1B80D91C001F2C7D173C65805753DC6BA964F8675042267E0FDE04E392B8D74ECA9D0F4872E68375AB7977BBC91FBD5159553C579ACA68A57363A8A7EE9E7CC152B2D2B76AAA96974754C32B1BCDE0721E6AD5415F475E3314AD7118C0EAB6BB2FD251C770B8D657E26A28295EE99AF6E584636073ED9F92BBCFD8C58EAEC94F25BA59EDF72EE9AF3335E4B5EF232789BE59F2C6124592AA21BBF85D827D39AF6D6B86D82092A2AE941A9B45CBDDDEA8DF2D2E70DAB8B2E8DDF3E9EC7056F5BAEB455B0E5B2B7888C86938394FE8908046090EF101D30B6A368E36800819C8039AD50F63B246C472C72F75BAD753188BF88B5ED03046C32AABDBE31918C0183BAC669D801E8E1E617C2F2D70DC648DB7EABEB646BDBE207283088705D96E4E7EAB38A5E0FBC434EC4755E5AEE071DDA40F552513A2E01968391BE50467C11C92D6919D8F559A1A06B43481C4EC11B1FA290E167163992B3C71B23C16F8C01C86C1410E288BC38B9B9767F25F4D1B98F6EE72412434F929A10713C969C34E0E32BE0A60DE2187018C8DF754579F46087633F7B99F35E194A0B9C7049C79EEAC46932D2E6B402771B7E6BE0B76093C38C9F2E482BC68DA461AC3B632579750868DB3B0DC2B3369B2F702397A63E6BC7C171678790FCD41519691B1B89C021A37580C23F1600F4F256E96D9B78DB9713CC05AC6D3E20406E5BBE31CFF00DF920A83A00D77110003B1072A2EB74FDBAB8E1F08E2233C4CD8ABB4D672C71780472383D7D969FE8E7378BC3B38E01551CE5D65BB5A1E64B6D4BA48C1FEADFCCFC96D52EA9E1944375A7742FF00D6C6DF45719697048C6C398C2D0A8B6C158C02A69D92B0747B771F3E6141F29E786AA10E8A56C8C773C1595ADDB76E074C2AAD4E99A8A395D2DA2AA488FF00CB73B6FF00D921D4770B6C821BB52B9C391918DFF60FFAA0B7B0C904AD92179648D3E1731DB8565A3D695C2034B77861BA51E384C73B4717C8E37F9AA7505C68AE003E9666B9C7F0138705B6E071B0D8F4C72FE482CB53A4B48EAC8C9B6547C05591FF0076A93904FA1272B9FEA6ECEAE7A7B89E29E46B41D9C07131C3D0A9A6B5AF7B37C0E842B4DAB555CADB1882677C6D211BC351E218F42792A6383B1D514B2924398E1D42B969EED4753580B226573AA299BFD8D478DB8F42771F22BA65768CD2FAD6274F682CB7DCB049A62006B8E3CBF88FA2A65F7B2C161D295776BB54BA2AC6B80A68206F1076FBF111CB6CFF00BD93132C740B2F6B3A6B5144CA6BD40DA4948C1320E28F3E879859AF5D95699D474C6AADDDD34C832D7B1FC4D3F31FEABF3C081CD0D7B0EC7EAA5ACFA92F162943A82E1514E46E5AC90F09F71C8A9B57FAB2DDBB31D4DA72473E8247CB003B37390543B6F370A0777573A296123F186EC7D5744D3DDB649E1A7BED189587633C1807E6DE47E585D02927D2BAC29F8A8E4A59DC464C7C203C7BB4EE9C533E38BD05D62AA1C51BC1CED82775D66C229749E927DDAB8B5934CCE3C9FD5FC2155F527658E82A7E3ACEC2CC1DE38B6047961563B46BE5D2E941474F35A6B69D94A0364687663200E7B2660F0EAD9F56DE24BBDC9CF7D3B4FF0047849D87AAB2415C010DCE00D80C72FA2A05AB53D0CB1B616910068C08DDFB958595AD2C071B74DF9A116D8AB789DCCFD3A2D98E40F181D0630AA9155386FDE1DC6C73CD6D53D5969E1076DF3928AB5C154F84930BCE339CA92A7BB92E0E70C6F8E30307E6554E1AC0080EDBDF6FF7D148432B6400139EBCD05DE96E8E90ECF6CA3C8F85C3F815BF156C129C71163B38E17EC7FD7E4A891487EF3320FA6CA52DD355D6BCC22313307EB7203D4AB28B7A2D0926A7B64267ABAC10B07DE0E7F87E59DFE8B5ECFA9AD17C128A1AE865921389181DBB7C8FB2BAA9745F1AE6BC65AE0E1E60E57D54111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111015675A5346FA4A0AB9B221A6AA6990F46B5C0B388FB123F356658AA69A1ACA5969AA18248656163DA7910460841C0BB41D23258A7A9AD9E335142F8C329E51B063C91CFE595D52C52DBE3B65BE47BE26F0538E07BC818C819E6B56B22ADB6514B69BE59A6BF59037EC6A20607CAC68E4D7B3209207E26AE79574DD9DBAB620CAFBCCD0631F0ED8E4263F419016719749BAEBCD3B6A07BEB9D339C36E189E1EEFA05CD75676816BD494E6969AC32D6380FB39E4F0169F3079AD6ACB152D739A34B696BACA0FDE9AA5BC21FED959A97B39D67505A5F151DBA327939E1CE1F219536890D0DDA55759D90DAB55B5CEA377822AB778B80740E3D42BBDEF49525CA98DC2D2E648C907186C6410EF5691FB956EDFD91D1E1AEBD5C2A2B9C0FDD0785BF20A5E928AE3A1240EB5892BACA779A8CBB3243E6E8F3CC7A24D82973D0CB4EE717B48C6DC964A7B6DC2A6174D051544B08D8C91C44B7D770BA74D4369D59422E16E9A37978FBC3913E4E1CC154ABC515EAD1270535756D06FB0864F09F5C1D955571D1BDBB16169F2230B7ECF6CB75D6A5D4D5976A4A2931C4D64AF01CEF500A4CE7CDC265797BDADE12E76EE71F327A95A72C51B861D0B5D83F8865118B50D8A968AE12414F56263161D15540EC16BB9F31E4ADFA43B4792031DB353C81A766C370E4C7FA3FC8FAFD7CD554B070F0B5BBE76F65AD251B5ED731EC05AEE6D23A283F4235CD7B03D8E0E6B8641072085F5719D29ABEAB4970D157992AACBF85DF7A4A5FE2E67A745D7A86BA96E5471D5D14EC9E9E419648C39056A569B0888A822220222202222022220D5B9504573B754514D90C9985B91CDA7A11EA0E08F65CD7575AA6AAFE952458B9D3B032A98D1FD73472959E63CFCB92EA8A3AF3688EF145DD191D04EC3C50CEC1E289DE7EA3CC1D8852A58E0AD89C09C6E0FA296B176815BA22D53515551BEB2DCD04D2BDAEC3A273B2784E7F0E54B5E34EEA0A66C8F769EF889DA7FEF16F95A1937913193C4D3EC0AA95B2C976D4B7F64576B3DC20B753BB8DF04701E291C39024E00F7C859E912724125368CD3B45334F7D2325AB7070DC07BB6CFC956B82AEE14172A712369E99D3895AEEEFC6E2D181E2E8174BAFB06ABBD5C4D40B1D350C61A23899355B486306C0619952169ECD0B887DFEAE39E3D89A5A6696B1C41CF89C7723D3015E4C577B2ED337EB85A8CB75AF919647CDC6DA50CC1AAC637279F0640F7C2ECABCC71B228DB1C6C6B18C01AD6B46000390017A564C69F1CD6BDA5AE68735C304119042FCF1DA4E9468D773B2C8D651FD8C7218D8DC35CF7646C072E417E885C8B569FFEA54E32768A9B6F994BD25730AB9B54E907B22BC503C4637E2C676F3CADFA2D656EAA238A5EEDDFAAE5D03B4326A754CB00692D8E9E307DCE4FF25CFA6D396DA97FDA52B4389DCB7623E8A6622669AE74B51BB678DF9F23BADA6CECE4D237F23CD56E2D174A497D254D4C58E4038159E3D2B72603DC5DF241DBBC67F2504FFC400E6B8E307CF7CACF4B58E8C8F10C01D5578D8B5646006082719C0E17819FAAF8F835351D5BE9E7B4B8CB18CB98C783807D8A0B5B2B4389E270DB9656DC55ED01A1C71CCE7A90A88FB95C2020D4DB2A98E69DFC242F1FF1342C770C8C918EEB918457458EE2D78C170CE7192392DA8EA633B71019E585CDE0D4D4EC1B4982799EA3D16E47A821E93B4FCF9223A3475000DCE7846FE8B3B258C86B88C82718EB954586F71970C3DA71E672A4E1BB719710ECE718C1FC915696B1ADDC6307CCE30BD8818482DE60F92AE32E85CE00BB71BE3AF35BD4F768CBB8491B0C6FB20996D307E7C0411D085F7E1011B8C3BCF3D56832E0C7F09EF7041C6075F75B6CAE8C0D9C1DD72812510770B1C36F20392C0FB7348D99BE3990B6A3AE85E5C01C969DB6EAB2B6A627649207A1E85040545AA327219BF5C8E8A327B30E0F083BF2D95C0C911249E1E11BE3D1787B2238C0672E41514192D0F0303273CB0DE642D296DA246F76F8C107190E6EC7EBEEBA0B688F75897803BFB9BAD79ADACCF161BCB9E307E483905CF4553CAF3351934937318FBA7F928A153A82C3815709AAA61B71633B7BF4F62BB2CB69128C70839C6144D4DAC82E71602C1F8544C522DBA92DF5CF68328824CEED90E3F35638E36BE20F6BC39A71E21B839F551575D21435AECBA9FBB90EFDE47E15053E9AB9DB1C1B41747B467763C903282DC1CE81CD731DC2F69C820EE3E6AE905D67D51D9C6A0A5AC98493D34470F2304B40C8CFD0AE32DB86A9A4389699954DEBC2D04FE4A5EC9AF450D15C69E5A099AFABA73096B4641292F26AA54F230C20023C2775F1CF07036CE174CD3FD955AB5469782A68EE12D0DDC03DFC527886739191CC0C6153750767DAB34D17BEB2DEFA8A569C7C4539E36FBEDB8F9844C40EDF80E07459E9EAE5A770746F731EDDDAE6EC41F7518DAA01DC25DC2473046164126DF7892797FBF9A0E9FA73B5EBE5A5AC8AB88AEA71B6263E31ECEFE6BA95A75EE95D53108A5A8652D43860C552430E7D1C762BF31078CF89C46DD3CD6764DC3F8B975CF248BAFD0D7FEC8EC57B2E9E2608A470C8922D8FE5B15CCEEDD9AEA9D36E2FB5486B20073DD91BE3D968E9DED06F3A7D8D6D35648F603BC131E28F1EDFC8AEAB62ED7ACB736360BCC268A576071105CC39FCC26EF6715C869B52494939A7BA524D472F23C6C207E6AC547748AA4031CAD78C8FBA72BB056E9FD3BAAE878C474D5713F93860E3E6370B995FBB1692924754D8AA9F03F3911BDDE1F91573E1CB0B6A4B88E023C82DE8AB1E31E5CF9F2DD51EAE5BF69B7F737AA07F07FCE61C83EBB2DEA1D41455A3114EDCFEA9D8FB286BA658239EEF56228C1118C17BF1F747F3562D4BA928347DA435803A67786285BBB9EEF6EA56BE9D960B0689657CC433BC6995CE3E5D3F25CBE0B93F516A19EF954E2626BB82958EE807549D2A51968B86A5A9FD21A9257869DE3A26920346DCFCD586868E9ADC5BF094F047C23C3C0C00FD547C3713FAC0B73D16F4756C201246C77282729AECE8F1DE0208182E6F84A97A3BB19081DEB261E47C2EFE47F2553EF58F0487039380404E1DCE09007E68ABF32B20790D2FE079FC2FD8FCBCFE4B615021B84F1B1C0B83D84E0B5DBA90A4BE3A32032531E7F0C9E267B79857D85BD146D3DE2291BF6ADE03D5CDF137F98FA2908E464ADE28DED7B7CDA72AE8F4888A82222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202A95A994D15DAB6C92B18CA8864EFA1240CBE271C820F5C1DBE4ADAAB9AA74F545D053DC2D751F0D77A3C98243F75E3AB1DE854A953B035D1B7BB3F8797AAD086BDF58F7036FABA7E1EB3B1A33ED82569D87529AE77C0DD69CDBEEEC1E3A79360FF00EF30FE20AC078BA608F24EC45C9C4DE9BF45082D55A2F2EAA7DD1EFA5FC34BC03627D559259A9DA4895DDD9E9C7B6563788A385D3C71BA6C37218C232EF419D944552B34FD6D1571B9E9B99B4B584E65A7909EE67F4701C8FAA94B7DE68353B25B55C695F4972887DAD2CB8E21FDE63BF137D56CDB6E5595D34BF136996DF130E1865787193D70392C971B2D25D446E9B8A29E2771435309E19223E60FF0E482A578D1F3D007CF0BBBDA7192E2DE63D4855B31B1C4B00F17BAE93477AAAA0AE6DBAF663FB4770D3D6B06192FF75C3935FF0091E8B5EF7A69BDE9AEB7C6D0F0789F081B1F508AA24764AF7D39A96D3CBDC86E78C34E31EEB03295A6560748D682402E76C00F32AC6EBDDD8C52524B3C4299C3804621E1734796544BE021C3C2303AA8366E565B253D39F87BEC15156181FDCB30723D70761EEA02C972B8E93B89AAB77DAD1C99F88A073B0D77AB3C9C16FB69034B880D1D3A2F2E88071E268CFA85474DD3DAAED5A9A073E8662D999FD6D34A38658CFAB7F88C8536B854D6E2DAC8EBE967928EBA2DE3AA88E0E7C88EA15CF4FF00688E648CA0D4CC8E9E527863AE8F6865F2E2FD53F97B2B2FD35D0917C6B9AF68735C1CD2320839042FAAA888880888808888088880888808888088880B936A28FBCED42A01EA2947EF5D6572FBC35AFED46A03B7CB69718F9A97A4AD0D62ECEBAB81248EEE284FCB84AAE31CE73F391F353FAC3ED35E5D40FC11C19C7EC7550F1C61BBB891819611D54A8DC85CD8E10D20713C92718FA2DDA72E01A5CC6E06C0F251AC706B8498E2EA73B6E548534AC74ECD98598D9B9E45454DDAB80D544C2D27ED1B83E5BFEE5B1769A2676835911C37FA046E271D788AD4A0E335F4A5AFDBBE6F3FDAEA97D70676935CE701FF0070879FED39512C385C1A488C83824633FBD406A5B7D04F6E9DEEA58090CC83C0B7CCAD649C65C37191839CA88BE4CE16DA81C79696F223D9043F6A1A32CF6AD316CACA2A66C12E0365730FDF240393F9AE3C619013DDCEF1E592BBAF6C0E2ED256119C0C64FF0091AB86BB6E224E3C912F6FB1CD7180831CF91E44AB469976A7BD54494D6DA4357242CEF1ED0F1B0F3DC855B8B05C083CCAEA1D87B8B35B5C62C8C1A124FF009D8A11115971BDD91C05D6D3574A47E27C6434FCF915929B56D33CE1D2709037DBA2FD1EF63646163DA1CD3B16B8641555BBF66DA52F24BE6B54704A7FB4A6FB23F41B7E4AFAAE396437963C35D1CA1C7F7AD817B960690ECFB9E8AC55BD8A52B1A4DA2F55509E8CA96B641F50010AB75FD9F6A9B583C54BF1F082407D2499763F64E0A995396D32FF00C2399F995B50DF4061683F9AA3D4524F13CC45F24738DBBA9DA6370F4C616BBEA6BA9767C6E036C91B8FF7FC907466DE813BBC7420E765B915DDAEC65DB95CB63BDE1FB91EB80A4A9B506361E16918C939CEEA68EA30DCA2C005C0FB9EAB65B56D706713721DCF1C82E754F7625AD3C63846E3E8A629AF0D01A3981B73EAA8B7B5F1B9A01C81E63FDF25AD3C51C8080D01B8DF1B7FBE4A322B98208E876C9C6CB7A3ABEF3916E36C14569D55135D870634103872A0EB2DADE2F09C13B91FC95BC383F8984807D569CF4ED3C5900F97AA0A44D472076DE7B91B2D7752BDA33C383B615A2781A4381E9BA8F9210E232D072EF344413AB66A0A885EC9648A4738063D8483B7AAB65ABB4BBA518E0AD11D7423625C30EC7B8FE2A266A76919207A75DD68C94A081C9A0F300A2AD75B6FECEB5BB4FC4D30B5D6B86D2002339F71E13F3C2A75F7B0CBC5231D5162AD86E34F8CB59C5C2F23D3A1FAAC32D33A0782D19073F352168D4375B33C7C1553E31C592C272C3EE0EC9BF51CB6BA8ABAD15460B951CF4D337396C8D21601303C88FAAFD04DD6D6CBF43F05AAACB4F3C446D2B1B9C7AE0EE3E4543D7F63BA6EFF000BAAB4A5D8C52FFC895DC4D1B72C63213F8638DB641D3E792B3327E5FDDF3FF7E8A4F50684D47A5DCE35F40F308E52C4DE261F9AAE09016F319F2445A6CBA9EE366AA13D0564B0BC746BB623D42EA5A77B690E6360BE5271FF00E7400027D4B495C2593169FF00559E1A81CF91435FAAA9EA34C6B1A4229E6865E36E0C4EC070F769DD532FBD88DBEB2474D6E97E165E6387913ECB8D525D25A77B5F0C863703B39A707EABA1E9EED76F16F6B21ADE0AE846D9933C607ED7F34DFABAC9A9ECDADA3B15359EA1CC9ADB4AD0DE287EFB80F31D557E8AF1414C1B481E607B30D0C9416E176DB3EBBD39A858C67C43609DDB7773E064FA1E4561D45D9AE9FD46D3249077731196CB1100E559FE18E670D612039A4119DBC948C552D0D0E6E7381CCF351B79ECAF51D80BA6B255BAA21049EE9DCFE9D55645FABEDB51DCDE2864A7772E30D385074586B5C01208E7CB3B2DE8EB86072CF3C9F254CA4BC53D5307752B5F9E80FF000524CAA6F0E78F1EC5156C8E4648D00918E5EEB21A60E6E4796D8E6ABB056F060B48DC6F8DD4B52577190D3827961412100A881CD2C73BD8733E8ACD6EA2A970134A0C04EF969C13EE3F9AF541450DBA91B535781286F110793150EE9A9EEBAB6E535B6C730A7B7427867AC6F33E8D555D09F7CA086E34F40FAB89D3CC4B5A03C67880CE30B759554EF9DF03278DD333EF461E0B87B85CC6DDA628ECF511D5C2C74D58D3C5F1333F89E0F983D14B4B2453926B2064AF249EF5B90E1EA08DD5D17D454CA5B9D7D36D495C2A1BD20ACDCFC9E37FAE54A52EAAA52F6C570864A094F2326F19F678DBEB85744FA2F2C7B64607B1C1CD3B82D39057A5411110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111106BD5D052D7C6D65540C9434F134B86ED3E60F307D9658E311B03439C40E5C4727EBCD7B441E243186132968675E2E4B0FC1C3C20C04C47982C3B7D392D82010411907982A36A2CED387D05449412B771DD6F19FDA8F91FC8FAA0CF1C552CCB672C95BFACD183F45EC45E138C72FA2AF4DA92E5619DB1EA0B783484E05C68F2E8DBFB6D3BB7F30AC94F53056D332A296664B0BC65B231D9042898D7AAA7A4929646D6088D39D9FDE725E691CEA4E185D217D363113DC725BFDD27AFBFD569DD6DB6CB9D440CB9D231EF89DC51F1FDD71FDC5679AA20637BB2435BD079ECA234EF7A7C54875551B5AD9F9B98393FD47AAA6BA3C48E8C8E1E85BD73EAAEF15C7E19E5CC73E683F1339B9BEDFC97CB85AA8EFB4E2AE9246B66C78656FE2F47276AA3369CB9C785ADF23D579929250DCF767079646365254EF96D55DDD4ED644F69C3F8DB9DB3CC29FD43DCCF0D2CEE99F2D28C8222C73C6DBFF05114865209650D7C91C606725C760BD57DB296085AD654C350D9861F18190328E63B88E40DBA10B1169C6463639381B041B36C76A5D2D6D65C2DAFF8BB407F0BADF50FC968FF00CB7736FB1D95E34F6B2B4EA2FB2A795D056B478E8EA070CADF3DB9387A8CAA2C75B57030B1B2931B8FF56E396FD1619AD96FB93185DF675719E2670F85CC3E6D78DC157476045CCAD7ABAEFA65ECA5BFB66AFA02070D58199A21FDF1F8C7AF3F75D1686BE92E5491D5D154473C120CB648DD9055D69B0888A822220222202222022220222202E5D762476B9206EC1CDA4E2F2E657515CCAE8F03B5C703CF82971F57297AA9513AC785BAE2EA70776C19C1FF00CB0A2BBE7121ADC79648E8A4B5761DAF2EF8C64087FF00E1851ED8DE5A080067C9447A6B8B185B819E593D30BDD3F071B4E48F21B735E9CF040263E1C8D872CA005AC69690473381B8454CDB65FF00B5690B721AE9DBB103CC7D579D4EE77FF11EE01A01C51423F32B5ADCF736E946D0F3933B3777ED0E4BD6A89FBAED22E87276A58401F241B0C792071B9A1C1A4B73B003D5435DE53DC9764807008279EE392DA7CC1C580B8F2DC12A3EE9207C4C0491BB46FE59504DF6B6D1FF000659B3BBFC207F942E16E67193D5774ED7DDC1A46CC01C1C8C7F942E27C1BF1138F3202ACFEB13463A2E9BD8737FF9DAE0EDB6A177D78D8B9BB5809C02773E4BAA761B181A8EECEC72A5680472FBC1459DBB9A222DB422220D4AFB5D05D2030D7D1C3531918C4AC0EC7B792A8DCFB30B4D444EFD1934F41263C2DE232C79F56B8E7E842BCA20E0978ECCEF54DC4E92D8DA868E53D0BF88FF0090E1DF9154C92D53C523DB4EE0FE138731C385C08E8415FAB9455DB4D59AF609B85BE096423026E1C483D9E37FCD66F8A63F3132A2B29CF0CAC737031B82B6E96EEE638979D80FAAEB575ECB246873ED35CD919BE29EB067E41E3F88542BC6939A81FC372B7CB44738126331BB97E31B7E6A62630D3DE1C5C37E47E6A629EECE6C60710071F354D9ED3594BE38332B0EF90B5E3AE9D8E01FC591D1CA0EA10DCCB434B650E7725BB1D68765BFBF905CD21BD0647973CEFEAA660BA49E1F1E7D3895D16F7964BC638DA083E7CD6AC9100EC0C003982428882E8389D939079A918ABDB2709CE7D07341E656101C09D8E3048F351EE3870D8123A295EF5AF1B1073D547CCD25F9D86063039F2456BCB8710400D1D70B4DF01635DC21AFDF98FAADDC38789D9E47F7F45AF23C339919FA2A8D17B1CC737C23A1C7A05F7E22AA19BBE8247C4E692E6B9AEC11B2D80E63DB8E67F92F258CC920E003FEF0A09DB6768D7AA4E182BDB15C6988E17366680E23DC7F1CADA9EC3D9E6B769FB0FD0F727F569E104FFD27F255274401200C8CE3185E03580670003B6E9060D4DD8D6A1B2B0CF6D2CB952019CC5F7C0F65CE268E7A499D0D4C524323762D782085D92D7A86F3652C3495F2B631BF74F71730FC8AB2BAFF00A5F53C429B53D92012B801F131C40E0FBF31F9AA63F3D45210D2F0700616D435671838FE2BAC5EFB10A5AE81D5BA4AEAC9A376E207BB3F207A7CD72CBBE9BBCE9CA874173A19603BE1C5BE13EB95131BB4D5BC05BD48EB9578B1EBEBD59E36474F5A5F08C7D8CA039BF9EE3E4B96C3390E0739F45BF0D560710CF2E483F46D8BB53B5DC4362B9446925E45FF007984FEF0AC95966B0EA6A2707C74D5513FF1B4877E617E5DA5AF2C000763D5586D5A8EB6D750D9A8EAA681E3F549C3BDC754DABABC5FBB176B2435163A97D3B80D9BC448548ACA2D51A71DC370A274D08FED18DF2F65D2AC5DAB92190DDA9F8CF23342307DCB7F92BED15C6CFA820E2A6960A8691BB481C43DC14E2AF0E0141A829AA0B5A242C7E3763F639FE2BA3E81A76DC2E6E9E5F1329981C32762E3B0FDC54CDF3B34B05E039DF0314521E4F88061FC94059A8DFD9DC770A4A89A69E0AAE110481B97478CF3F4FE4983CF697A8A696B29F4ED0C8193541FB678232D6751E8BC5A5F05B2923A5A58DAC8D831E13B938DC95CD2BEF71D16AEAEACAB64E5B2BB11C87C5B29BA3BF535681DCD4B1CEE809DFE897B25747A7AE8DD8E3C609C1DD65EF2297EE80327CD5161B9B98301F9C7EF5254F74381976DEA50589D0B79000E7D765F62AB9231C2FE1923EAD700428D86E4D700093CD6E3266BDA77DF1B63C906FD232189CE3415535B64EAD69E28C9F561C852F15EEBA8C62E14A2787FFB9A4DF1EEC3BFD33ECABD1B01DD8EF6C9596196A29E405920C7922AEB495D4B5F177B4B3B25675E13B8F42398F9AD854B8EAE8E7938A58FB89F919E1258FF00A8DCFCD4A53DC6BA95BE22DAF80750436568F5E8EFC95D16045A14778A2AD7F751CBC13F58641C2F1F23CFE4B7D6811110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111100804104641E6155AA34D545A2ADF71D30E8E07BC974F6F79C4137B7EA3BD46DF9AB4A2086B75DE9AF51BE96AA9A4A4AD60FB4A4A81C2F6FF0079A7F10FEF051B70B5D552921A5D2C1CDAFE65BEEAC35B41057359DEB489233C514ADD9F19F369E9FB8F55F3E24D33036B4803977C06187DFF0057E7B7AF453114D128A6789B81D2B233C4E6467C4EDB90F2E4B661D4B4F563FECFB755504E0F8DD3C3C19C74F5CF9A98B8D903CBA7A40389C378FA1F655E9E29187072D737F093823CD413467A0BFC429AA4B61AD68F0124024FA79FB2879A9AE36590B1EDE3A676C463C2428F20719EF3C2E076276705946AFAAB2CBDCDEA9FE2ECEF1835518E2741FB4DE647A8446C36DF4F70C1A2C365232623B7D3CD464D4EE85EE63E370737F091B853D3DB4776CB959EA1B251BC71B1F1BB381FC57C153057B032AB863AA1B097A3BDD0570C5904E08F70B13E91CF3C880361E4A7A7A07D3CE2391A0388F0EFCFD425551CD465BF111F0710E20320E7E41410ECA9A9EE9B0D430CF183B13CC2C2DA0B8596ACDD2C32086A3199A99C086CAD1D1EDFFD4370B6E5AA8A99ED34ED1961E20E3C8AD7BD6B2B3B24EF6E15ECA5AC1B662CBB2074C0545DF4DEB1B7EA06F704FC25C99FD6D14CE01E3D5BFACDF50AC4BF37DEB53D2DF2B03ACF68ABAB91B8E199AD2CE0779870DC298B2EA7ED3ADC7BEA9A76D5533464C1505A5D81EA083949575DE1151A8BB57D37536F8E6964A98EA8B7ED295B4B23DCC775190DC7E6B2C5DA658E573854D2DD29A2FF009B3513CB48F3F0E48F9857557445AD4170A3BA51B2AE86A63A8A77FDD9237641FF0055B2A82222022220222202E6974DBB5CCEE3ECA97979F13974B5CCEE8FC76BA06DFD5D2F3FDA7297A4A88D4BFF00F5DDEB207DE879FF00FA6D5ADDDB41F0824E0EFCFA2DCD4819FF0019DF89700E0F80807AFD9B56A539DC9DB0D3B852A46101AD79E2DC8E81239721D868239E3F8ADC9A06E3258FC9E5D02C71C3B73C8CE319E68ACD6B0C7DCA88381E26D43373EE13540E2ED1EF04FDD14F064FF856C5A21CDDE85A7A4EDCE3DD7ABEC5DE769577180E3F0F0103FC290448692D18201F251D73712DF19FBA472DBA8E8AC935130F841C3C0CBD837DD57AEB1BD910739BD46E3DD04FF6BE73A52C607227A9FEE85C6246BA1701961D81D883FB9768ED71A4E8FB2E39803FE90B8DC63939DBEFC913F5F038B880704630BAA7619C22F579FD6EE23C7F98FF00A2E64D6076F8E127A7905D33B0F701A82EEC0E0734CC3F477FAA84EDDBD1116DA11110111101111017C2010411907982BEA20AE5CB43D8EE05CF6D2FC24C7FB4A53C1F56FDD3F30A917BECBAAF81CE80C55CC036C0EEE41F22707EA175A4530C7E63B868FA9A49846592D3389FB950C2C3F2CF3508F6555BE52C746E6F0E467A2FD65514B4F590986A618E68CF3648D0E1F9AA6DD3B35B6D4873EDF33E91E77EEDDF6919F91DC7C8A97C531C169EEEF1925F977AA9682EC49661C091B679AB05F3B32B8D18924F8073A31FDAD29EF1BEFC3F787D15166B5D7D19718DBDEB1A71C4C3959CA98B5C373C341CF3EB9D96C0AE8E468CB9A71D4F3FAAA3B2BA684F0C99041E456C4572073C4727DD345C4D435F866DB72C958A40C735DB8C2AEC7710037241E1CE0ADF65C1AECE4B76008C2BA24380EEFE47181E4BCB8BCEC33B753B1291D4B1D801C017725949E376FCB28357BD703C07619C83847100801DCBA83B15B2236F3E2CFB158CC2D1D792A35C785D8C8239ECB246FCB48DB20F20BE3A27370F0799CAC25CE6020E3C3D48E6A092A49E6A49BBDA69E58A41B07B0F0FEE56BA2D7757DD7C1DE29A2B8533870B83C00FC63E8552192E1B9249C731D3D964EFF8BC2760474E882CB5DD9F686D5ED74B67ABFD175CEDFBA27033FB27F82E7F7DECAF54E9F73CB68DD5D4C06D2538E2DBDBA2B035DB12C3E2CEDEEAC568D6378B580C1389E31CE39B2E03D8F30A8E220BE17B99335CC7B762D70C1FCD6C4552475071E4BBDD5D4E89D5F0F05F2DEDA4AA3B77AD6F5FDA03F7AA9DEBB139BBA357A6AE31D643CC42E7004FB1E49862834F5C5C7EF6DD54DD1D6C81EC919296B8381E2070AB570B4DD6C352E82E74535348D3BF1B76FAF5E4BE415AF616B9AEE4B23B3D8FB40BB5131ACAB7B6B63FFCCD9DEC1DFCF2AFB41AAACD7789AC95ED89CE07C13E003E783C97E77A3BBB406F7A40206EB625BD1711C12E1BCB19236CABABAEF375D1568BC539E16461AF1B600730AE53A83B18AA81E66B7E5B8C9062248FF45196CD7579B21028AB4F740FF54FCB99F43C9742B176C96DA96B63BCC26964EB2460B9BF4E61383638F4F47AA2C0FE19E9A49E103190D276FA7FBC2DAA1D594AF708EA01824C8C879FE2BF4545FA075352192966A7A961E6E8CEE3DC730A9BA8FB2CA2AFE2922A76389EA06E9862954D7263E30E8DCD21C7620E42938AEA1A5A327D37FDCA0A7ECF2BAC5319207CC63E2DDA08E5E99DB2A3AA2AEA28EBA669A69994DC6EEE8B8F138333B0711B671CCA0E8F4974649801CDDCEFBF25BEDAB6B88F1349C73CFF00BFF6573BA4B9F170B83806E367673952905C8677249EA82D85CC276201E98E657C152F8892C9371CBD540B2E78C0E3C3873DB75BD0D777E1BE2C8E7841346F504D1F775D03251D4BDBFEF0A66827B9C4C64D42269A8FFE4D56DB79B5E77FAE4289115BF4F5AFF4EDF0B8B72053D3632E91C7EE8C7527CBE65576E35B75D46F1537BA9751D0738ADD4EE2323A7191B93E9C9075E8E78E525A1C3BC6805ECE205CDCF9E1645CB22B65D6E9DDD45BA8EA227C4D0D8EA449DD9C0E43248C8568B6546ACA2023B85352D6C63AB266B25C7EE3F92B2AAD68A2E8350DB6E133A9E3A811D530F0BA9E5F03C1F2C1E7F2CA945A0444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444405F080E696B80208C107AAFA88345B4925138BA8FC50939753B9DB0FD8F2F6E5ECBC4F4D49758C9E1E09DBD5C30F61F22148AC7240C91C1FBB5E393DBB11FE8A60A7D7599F049995CD6927670E4E5A55669A82D4F99F4D3D6CDBB443134608F324ED857795CDEECC558C69638E38B1E13EFE4ABB74D38F8A37CB48E32379F01E6A22A169AAB8693C5751C0E7DA6539A9B607713A1F3746796DD429F9AAAC776636A6DD5B17148DE3111203BE9FC1423AAE6A72E8A4616907718DC1551D414D6FA5825AE904D1C2D771934FB3E179EADF43D4288E8F0574B147DD54C6658C7DD7FE26FB287D5FAE286862653BA296B6E120E0A7863183EE573AB4EB3D4F6834970BBB4CF6BA93C2C7C8D1903CC63AFBF3562ECEE2A5D41DA15C2ED56E32B60C088BBA13D7F2FCD3462834B6ADBF86BEBAB22B5D2BC03DD4592FF6CA998FB3BD3DA6E87E3AB29E7B83B6CBDED321CE7F54297B9F6B968B75EDD462D534F6D8E430C95AC1E1E31CF008DC0F757C8BE16E56F8EAE8246C90CAD0F6169F0B87F05709FE2BB0D15A1D6E8A4A09785AE6E43043C18CFA745E1D4E1A088E42D7636701CBD948CF0F16ED69C7AF98E8B04B1B23607970C93F773D5041436F9E8E1745355C9524BB88BA40011ED8017A2D7024B9BB0DB3E7E8A4659472C92E2B4A5E37021ADC0E5B1CA823E9E3ABB457BAEB653C3BE2A2989C3271E440E4EF23FC39F45B3DE296F96E656D239DC2496BD8F18746E1CDAE1D0854BA464911E2616918DDAEE4E1E58F35F1D50DD31726DE691C5F6EA8706D744DFC2DE8FC79B7AF985670BAE888BCC72325899246F6BD8F01CD734E4107910BD2D288888088880B9956B1D276C32EE0358DA6249F62BA6AE6B599FF00E2DCC30307E14E4FB394BD25FC436A0F16BEBE3719F1C38FFF006DABDD2B7196F08E0273BAC5A8471F6857B68CFDE876F3FB26AD8A5CB9ECC8031CCE77380A548DC7D235CC6B9AF1970DC38EC3FDE16214FE03E168E99F35B4C00478FA90B2359C2D009208DBD73E4A2BD5A6102E148E1C1FD7B76031D42D5AE8DEFED2EFA5A718A683FE95316B8F86BA972DF1091BBFCFAA8CA93FFD48BF91C8414FFF004ABF83E3A111C80827889D881FBD57F51B0185EF68208C6303009C856C7B070BB2DC923627623D940EA107E0256919F0F9F3447BED570ED2B6469CEEC071FE16AE4D1C4496B5BB79381F45D73B4C8B8F4C5846F9118C1CF5E10B9A322E1073F97550BDB59B1E221C4D0EE238071E9FFB2E83D8C371AA6F3FFF008CCFFA9539B0349E12F2363E2CF32AF1D90338355DE73CC5347F3DD09DBB22222DB4222202222022220222202222022220288BB699B45E8135946C32F4999E178FF10E7F352E88395DEBB2791FC6FA09A1A96E0E1938E0907A070183F3C2E6D76D13516D98B648A5A490F26CEDD8FB3B91F9657E9D58AA29E0AA85D0D4431CD13B9B2468703F22A6263F264D65AF81AF21A240DDCF09F45AB156BE2387E4636E5C97E8EB9766B6AA92E7D04D3D0487F030F1C5F369DFE842E7B7FECDEE748E2F9684554239D451F8881EACC717EF59B131408AE2CE26176EE6F2D94C535CE3EEC13CC73DF0A3EB34D708749472F170F363BEF050FF006F48FE0958E0A0BBC3511B9A097177A859C7093907D95321B88181DE11EB952D4D74681BB81F4F3574D580C40E06C085AEFA72762DCE0F3F25E20AC63984BF0DF43FB96F46F6BD9F7B9A0D0F86706F3E11E9D579EEDCD21C37F2182A50C6DC673CFAAF8D84381CEC46705511ADE3E4D710474E83AAF71CA5BC393B0E785B061E649031E5CD633083825BEF8D945798DF96E06338E83AADDA1BAD65B2A1B2D254C9139BCB84F3F71C8FCD68F76E61706E32067D17939E1F0B7724648F244740A7D6D4B71A614BA8AD9155C2E182F6B01C7B83FC0A87B9F653A6B5231D55A62E4DA59CEFDC3C92D07DB98FCD571B282DC600701BE0ECBEC53CB0912433383C6E08DB84FBA6AAB17ED07A9F4C3CBAAE84C9037FB6807130FE595002B88F097118E846EBB65BF5EDDE8E130CC61AB8C8C35B50DCEDEE0FEFCAF95161D0BAC2326AE275A2E2EDCC91B870971EA3D3CB922638B1AB27009D8F45E993FAE42BA6A3EC6AFB688DD536B91973A50320C67C58F6FE4B9E4CC9E8E77435114914AD382D78C10504E51DD6AEDF3B26A2A996091BF8A3716AE8760EDA6E943C10DDA28EBA203778F049F5E47E8B9036A06D920E0722BEF7D91CF641FA8ED3DA3E94D46042EA8F8695FC9954D0DCFB1C90A5AA74A5A2E111223610EE4F6E0FD0AFC9914A1BF8802AC168D5D7AB30C515C6789A7F0879C7D134D752D5FA02DFA6ADBFA46DF56E6B721B2D34C41121279B3C8FA792A236B72E73B38C1D86560B96B3BBDFE0A782E5502564192C38C3B7E7BF55A9DEB0C6067391827C928986D6E5FC39CEDB91C8ABF689B61B8541AAA92051528E390BF91DB97F12B9B50533A5AC6451F13E479C0F725756D4303AC1A468F4D523CB6B2E64FC4483EF363C65E7F7347BA916206BEE72EAABEBAEF283F030131DBA170DB1C8C84799FE4AEDA6F4C35AC65C2E403891C4C8DFC87A9CA8ED2DA7629E76190669E068C3072DB90537AC2F468A9851C2EC3E51E323A0F25AEF9ABD23AFFA9A59A434B42E7450B762E1B1763D7A0559654F1C99927F163AC98CAA457EA2A9BE57496CB4303191BB1356677C67A2DB6696B648C1DFB663211BC9DF1C9F55117214915590E078671BC730E60F9E7DD744D375B3D7D8E096ABFEF0DCC727AB81C67E7CD72BB5E83B9CF47F1366BC55D3F00E752E0E8F3E4A6746EB6FD152C968D4AC104EF9CF0D730E69DE700633F87973E5EC938575145F0104020E41E442FAB608888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088883E101C0820107982B1703A107BA05CDFD42797B2CC88222BED1437785C4343651B170D883E442E75A834BF0D1545BEB630D8A61C2D94723D415D61D0B5CEE31E17FEB379FFAA8DADAB89928A6BA527F4678F0D4E38A2CF93BAB0FBEDEAA2396E8EAAB3D652FFC2BA9A08FBC85BDDB43CE1B2347DD20AB2D0F65F4F65AC7D669BBCCD46243931C91B6661F2DCEEB4F56F666DAF1F136D71706F8981AEC48CFD97751E8A872546A7B034454FA8EB23C48D8CC720DDB938DD67A45DEF1D9A574B65AC654EA102371749DDC148C8D85C4E493CCFE6AA1D966B87E9ABEC9A5AEB50D346642C8DF9DA37E7CFC8AE84FECEABAE34C05C759DDE763DA0B9B1BB81A7E592A91AAFB24B7DBA86496CE6735B1FDA35F23F3C406E7E7FC92C2C769AC85B1F14C0781DF7F1D0F9A869611C5868C8E99EAAABD946BF17AA1163BACB8B8533785AE90EF2346D8DFA85D06A20869A373DCF0D88EE0B8E037E7E4AF6AAE9A70319E1DCF3CFEF5F5CD871C81FEF155CBC7681451553A92D14F25CEA467FA8FB8DF7728796E1ABEE6078A8ADD13C672DFB478FE088B94CF11378F2C8DBE6E380AAF77D6365A16CB0BE7154E9016BE083C64FCC28D669792B9E0DDAE75B5C73921D2F0B3FCA14D4769A4A785AC869E9E36B0783BB8C0FDC37507CD1FDA2B6D7653455968BA3A0824229DCD63496C3CC03923972F6C2E8F62D476AD4947F136CAA6CA07DF61F0BD87C9CD3B85CD9F0701DB036E4760569BEDD1BEB19534FC705533EECD4EE31BFEADE7F3565C576A45CBE975BDDB4FC8DFD30C9ABADA480E99D170CB08F3D861E3E8574CA7A88AAE9A2A88246C90CAD0F63DA767348C82ACAAC8888A82E77503FF00AB33EF8C8A6FDC57445CE2A9BFFD5D793BF869FE5B1FE4A5E92A1EF5B6BFBE10471F1C3CC6FF00D585B3080721DF7C6EDD962B9C41FDA3DEDDCC03093BEC3ECC2D9770FC4BC6718C60639295236A36E63073B8183959E3735CF3C63E6B5E16BB38F0807CD6C42DC7DF1F7760719515236C0DF8C83CFBC6F5516707B45D4248CE22A7FF00A54B5BB87F48C2338F18033D545021DAF752386321B4EDCF9781546463E495F289A2E13DE16B324F21B67E782A035031C68E56E41D8F21CD5926387939EBF7BEAAB77B7B9D4CEC168CE473DD1527DA2C79D31656F50074EBC2D5CE990B0BBC246472F25D23B40F0D8ECA09180CEBFB2D5468620FC92400396DCD0FD60653F85C431B91E4AD9D93C659AAAFB9C7F5117EF2ABE1AD0EE1CE06D939568ECB867545FC9E90C007A8DD4276EA8888B6A2222022220222202222022220222202222022220222208ABA69BB3DE4F15750C5249D256E5AFF00F30C154ABD76551CEC7FC05436561FEC6A86FF00278FE2174A45307E60BD680ACB54C5B3C525312703BC1961F670D8AABD453D5DBE5E19A321BCC3BA7C8AFD8B2451CD1BA3958D7B1DB16B8641F92AADDFB3CB0DD2377774E28E43BE6168E0CFAB0EDF4C29EA98FCDD4B737308E2703BE79A9EA1BA82D68CE0BB9B55B6F9D8ED653832D106CE33CE0D881FB04FEE2573EAEB15CED53964913F88742083F31CD67A4CC59E1AF0772719381BF35BB1543482388725408ABA489FC2496EF83BA94A5BA96E388F3DF9F22AE9AB7B0B76E2C11CD7CE06119C61DCB2A1A1B88773711E856F32A5B86973860F2F5419E589BC5B6093E9D1636C643B3F4CF9ACAC9D8E3C448C72CACF98DCFC838F70AAA3DF0E3983B9C9589D1064990EC11CC7FBE6A49ECDBEF34E7C96BBA3C03C25D9CED80A0D6E12410072DF6DBFDF35F0C8E7100FDD1B0F559F906E31B9DC6162D98EE269C8C73C2096B46A5B8DA8E292B646C60FDC760B7E855905669DD5F1490EA4B5533A68D9933C6785C7DB1BAA03F8B71B807A0E6BDC46463B8838F09EA8242F1D8A525C21755E93BB32469DFB895DBFB67F9AE5B78D377AD3B54E8AE7432C241C7116E5A7D8AEA74B70A8A7735D0492C52019CB5C41C7BFC95829758CD253FC35DA961B9D21D9CCA86071FA941F9EE3987EB0C63A15B11CA49C641CAECB70ECF745EAD71759EA5F66AF76FDCC83C0E3E9FE8A81A83B31D53A65CE925A33594ADE5353F8863D7A844C41C7281B7160F25BF0BDCD04E76FCD41365E0790721C3983B15B50CE78C0283ADF65B40DB9EA6648F6E63A56F787CB8BA7E78560BCD68B8EABAEAC1202D888A587C835BF7B1EEE2EFA28CECA6A5B6CB1DF2E6E00BA0A72F1F99C7CC85A76D3C6F85BB778E7373EE799F5392A4E95D76C5036DB616C926C4B4CAF3E9D3F25C6BB49D473B69269192625A993BB69F26FA2EB5AB6AC5BB4E88187064C460677C0E6BF3EEB871A8B9DBA97390E7971C9F3216BA854EE90B3B6DF61864701DECCDEF1E76C9CF21F4579D33626DD6B1CF9DBFD1A13F68E2719FEEA8787BB8E99AC61C06B0637DB9792B9D7C735AB42C1434796575C5ECA76381DC3A43B9F9373F451559BC5C2F9AB64ADA6B2B7E1AC3444B1D33761263986F9FEE5479ADD4D2D054D2C6FAD13118E23312C73BD42EF125053D974E456DA1686451B031A31CFCC9F53D7DD542B34F53D5B0BF8444EC67898898D7EC8AFF58CB64D65BE55B44D03DA2904CF1C4F61FC20F5036C7BFA2EA4B885C74A56C0090D6CCCCE7239858ED3ABEFD619FBB8EA5D514CDDBB8AB25E31E8EFBCDFDDE892E703B9A2A4DA3B4FB1574820AF71B6D4E7044CE06327D1E36FAE15CE39639A26CB148D7C6E196BDA7208F3056A5D57B45A6EBB5B593F70EB852B66FF0096666877D3395B8083C8AA088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888821EA6DD5946F35366958D3B97D1CC4F7527EC9E6C3EDB7A755037C658B5352CB6EBC42EB65C5EDE168A901AECF9B5DF75E33D4655D968DDACF417BA17525C29DB34479679B4F9B4F42A62621B46DC4CD6F92D1532F1D75B5DDCC84F37B7F0BFD885B77FA1A7AFB6CB4F33E684B8604B16CE6EFBE173D9F4EEA5D0FAAE3BD50367BBDB047DDCC1B83288F9E1CDE648F31F92E8368D4D63D4B4A5F47571BC8D9F1BFC2F61F220EEA4F87F5C5F55E9034555057E9B64B15453E0BB0497487F589F3521A76B2F1DA955474574CC14342CFB76825A26937C671FB9748BD5AA99D04ACA476647C6EE0DF6CE36DD563B2CA76D058A58E4E0EF9F54F6C8F079969C73EAA27EA5CE9092D14A1B4D0C4F819F8631BFD16A31ACC818031CC63AABEB6AF84378C13D320286BF4D6BD3F4F2DE2A29DD34AE21B053B06F23CF200799F3E8AE7C556D9435156E0D8A1924C1FC2DDB0A629B4E4AD84C95D2C74D18DCE48FCFA2AECF7BD67771C2D920B2C47EEC50B049263F69DB67D82D26E978AAA6125FAF324801FBF70A925B9F2009C7D11163A9BEE8CB382D6CDFA4AA1A7EED30339CFCBC2144D46BDBFD4E63B25820A361E4FA83C6EF7E168C7EF5EE2A2B3B098AD7574D56D8B01DDCEED6E790CF25E9D5577A284476B9E9695E4E4C8F843DD8F2DF920A9DF24D777585F1D65C582178C3A1753F035C3DB0AD1A0757D3D86C54D62D41DE52CB017363AA734985CD2E2478BF0E338DD62F89B84CE0EB95C5F5B2E3FE586340F4006CB1CD1B240477596E399284755A7A982AE06CF4D3C7342EDDB246F0E69F621655C4A08EE16399F3D9EB24A124E5D133C513FDD8760ADF65ED2E0739B4DA8A9C5BE5D80AA665D03CFBF367CF6F5575757E5CCEACB876C4F079629F03FC2574A8E464B1B648DED7B1C32D734E411E85732AE70FFE3370B5C38B14F9FF002BBF825E8A8EBD4AD6F6837E1DE70BB3063CBFAB0BEC1203270B73B9DC90B53508FF00E7FBF3F27C2F87DBFAB0BED249E3C0233EA33D14A913ECC35C3C43046483D16C44E3C239E01DDC765A54CE0E6F11FBDCB7FF007BADD881CF08C10EDB08A97B7B80AE85C3AC81A365054CECEBDD4F9FD78403E5E00A76D9C22AE0DF72E1CFAFAA81A5DB5EEA777412423E7DD8446CD4380716B4640CEEAB17990639BB3D76564AC0438970CED80E556BCBC98DDBED8FCD04EF68B2F0D96C7839777791E7F75AA8ED716B1BBEFCB279FF00AABAF68A786D76471383DC8CE7D82E7DDEF003C5824819DB921FADE6CC33C271CCEFC95C3B297779A8EFEEC1C0869F19E9F79500C80B8E32463008F3C2BCF63E43AF97F23908E00323F6D09DBADA222D34222202222022220222202222022220222202222022220222202228CB8EA2B3DA76AEB8D3C2EE8C2FCBCFB346E7E886A4D6B5650525C21EEAB29A3999E4F6E71EDE4A2BFE2496B1BFF645A2B6B33CA495BF0F1FCCBF0EFA34AFADA2D415CDFE9B728285879C5431F13F1E5DE3F3F50D0A68AC6A1ECB2D95B13E6A39042F1BF0CE72DFF3731F9AE4D7ED1959649B825CC41C72D7B8E58FF670D97E826692B37117CF4CFAB94FDE92AE67CCE3FE6271F25E6A3495AA4A4929E0A7653C727DE6B1A384FC94C4C7E6394555116F7B13C79646DF55F60BAC8CF083B11838F2E4BAEDC3B2DABA773CDBEA5BDD3BFB37EECFA1E4A9177D095B4DC7254DBE4831FDA53F8D87D71CC289888A7BB90482F2490A560BA0C01C7924F9F255892CB594DE38809D83998CF2F9730B036A5ED9C9E1E020ECD3D3D911798ABCECE71C1F5F4593BF1234E08DBA12A9F1D7B811B93D7395B4DAF7B3769C8CF329ABAB331C31CC641C7F35E4FD9E4B71FEF9A878EBF3821CEC039383C96EFC5B4B41F33C80CEC8BAD97F1068DF6C73C75F25E1D82086904E3A2F06AE331F0976EFCEC013F558DB2B01F149839E78FDC833F8839AD39C60F3DD78EF870EC0E41E8B23658C34E4F1B8AF4236F00032003B67AA0F314D9C37392718DD4F5AF565CACA0B6966EF232725927880F4F4500EA6C630D3B0E1073CD7D7831B06012E037E4414175A9ABD17ACDA20BFDB63A5AA78C0A960E1DFF6BF9E5536FDD8A57D0B8D6698AD8EE34DCFB9247181EE362B58090CB8972D0791570B7D7D7DA3435E2EF4F3964ED9194F4D91B0739CD04E3E7F91414CBBDC6EBA3B464165AAA09607D7CA26A9978080003B333E63AAC36ED4740C74757F19188E37077093B8C636C2EB5457B82AA85B41A92186E11F0F8E47C41C78B1B9C7F25CBF58766D6FA8BAC755A51EE14D2380929A4C8EECE79B73D10FE2FBA82ED2DFA3B7D7FC3BE1A19622E878F9BBFBCB976A5FB5D636B8810EC11FF52EB5A898CB7D15A2D0C7073A8695AD7F0F207007F02B94D7C5DFEBFA76800F76C05C07BE7AA5E85B63E26B831B9CB88C103F25D12BE60ED79A6EDCE23861A69AA037CDDC3C03F22550A8199AE82371DCCAD033D770B735B5FA4B1769B41738FC70C0D1048011B070E5BF241D22BAF4CA3B87C3BD81F1F082EC730B2360A1AE689207776FE806DF92E5957AC696A2ED239D2490C9261DC13B71F43C94FDBAF91BE3004C47B1574D5B26B6CB10018C0F1FAC143DC74F525D20E1EEC0781B3B1820A96A1BAB9DC238B2DF5E4A578A199B970C1E791E6A2B926A4D3969B25B995D51187D4465A23C0F14AECECD01685B74E56322927AAE289B3F8FE0A3C8899E596F227CCAB954B5BA935E1A47C6C9296CF1890B81E73BB90C7A0DFE6AC72DBE3796EDB8DB3CD05069E79694061858F66FE07376C2DCA4A98E99E5F4159516D949C96B7C5113EAC3B1FC94FCD680F6977085AB3534765823A96D3B2A2E531228E079F0B71CDEEF41FC8732A0DEFF008C7F444D4F4FA8D90D29A8388AA237F85DEA587C4D1EBB8568A7A982AE16CD4D347344EFBAF8DC1CD3F30B92D45B6A5D52FAEAD91D5356FDDF34837C790F2033C94D5B74E57BE2F8D9AA9D6B6F0ED3B64EEDF8F5C1C11EEACA3A2A2E7136BAB858EBC452705EEDA00CD4C4CEEA66F9EDF75FF2C2BE5B6E54977B7C55D4330969E5196B8023DC1077047915AD1B6888A82222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202A8EA6ECFAD7A81E6AE02FB7DCBA5553784BBF680FBDFBD5B910709B8D8AEDA7B14F7DABAF644E3C315C29E773A239D8077EAFCD67D37706E8A864A1B8F1BE89D377B0D5C638DBBF369C722BB64D0C5530BE19E364B13C61CC7B410E1E441544BAE86A8B7B1D369B7831124C96E9CE63703FA84FDD3E87659B1313F4971A2BB5B9B5543531CB1B86789A797C9507B5CAA8597CB07FDA7F0AE63647348190D71C004FE6A2A0A41F1924D6FA99AC9780EFB4A49766BFDDBD547DE6B1D7185D43AA6D53B9C1D9654526E41F319E43D137845CAD5AD5B410414FAA285BDDECD8AE34E38A33E5C5D5A55CA4B75B6F742D9E9DD054C4E196B861CD5F9FAD15B76B38922A5A4A9AFB43C90E86AA31F97AAB458ABA4A7E3B968EAD314B8CCD6BA83963BCC01D14D1D064B2BA858628618638C9FECC607EE5A4EA56F1912F85A7CD6EE9CD716FD407E02BD8DA0BA8D9F4F26CD79FEE93CD4CD55A607646FC7D1A4EDF25456FBB843721B979F3D96B3E3C8CB7037CA95AA92D969E2A8BB39F1C0C3B358C2493EC3751F25C6D17084555B5B51DC3B6265670827D01DD0693A89F348C646389EEE4D1CDCB5AE5A7EBA9A9DCFA9A52C84F8724820FBADAA8FB589EC05CC6B9BC3C4D796B87B1E8A1BF4708DE2475455CCE1F74CD50E7F08F4CA823A39EF96888C364B9C94B1E72699CECC7F2FD5F92F9A2EB6A6BFB4992AAADA5933EA630E0E3C5821847352061717E0B719F3F2515A27FF00EE4C8DC11FD31B8FF294BD1FA95D43BEBFBF827038E2E67FF2C2F94AD1C5C44EC3A8F3F4587533B1DA05FF0097F590FF00FC30BCD2CA4BB848E256913903C71020B8EC3D46EA46276725C40C6D9272A0A298478382D70E7B61494350E2039E5A31B606C4A8AB15A650EACA70E1C4EE3003941412B5BAEB540FFCF8873DBFAB0B76D5523F4BD28071991A083E6A11F5022D71A989CE0D4C7F946D5512B55213B827039F5557BA9023781B8231EEA51CF74AD7161386FAE1415C6401AE600EE5B870EBEC82CDDA670FE8EB2E5DFD9EC3E417379A40067CF9E7C9744ED3E42DA1B2E1A0BBBACFE41733965C12384025A07BA87EB2B9ED2D0D077209E7C95FBB161FF69DFDD9C8E187FF005AE64E7B9FC24BB6DF6F45D37B127992B6FEE712491073FF001A4276EBE888B6D0888808888088880888808888088880888808BE39C1AD2E71000DC93D1453B52DAFBE30C13BAAE61F8296374A7E65A081F328259143BEBEED287BE2A08A9206B4BBBDAC932703FB8CFE2E0A9B6F6DFF005BD319AE573F85B639EE6B61A1062EF5B9C65C725D83E59535356ABB6B5B1DA24304957F115436F86A56F7B267C881B0F990A386A0D4B77716DA6CD0D147C25DDEDC6425DB7F719D7FC4B76D7A6AD568688A9296360C64BB1E227CF2A769E2647C5C200CE14DA8E6767A6D45AE69A5A8ACBFD54142243188E9E2108931CF71BFE6A6A6FF0082FB3DA574D50DA7654633BE249A4FAA87A1B2EB1BA7C65053DD61B4DB29EAE689BDD427BC737889CEFE795B34BD8BD83BEEFEE7575D719C9CB8CB2000FD067F3424AA9DEBB72ADAA7771A7ED863CEC1F28E271F90D943B0F6A1AAE532092AE189DBF3EEDA02EE76BD2961B3371436BA688FEB7064FD4A980C6B46000079265A7ACFD721B2E88D7544F6CB36A89632DC6581C5FF00BD5C6DFAA64B657FE89D4D353C351C1DE43560F0B266FAE793BD15A6773A389CF647C646F8CE1728874D8ED1A686F775AB7C74C259236C2CD84603B619F54E8CCE22ED5BDA0699A100CB736381247D9B4B956EE1DAE69E6E194747595AF3D1B1003F32AC34DD9FE97A58D8DFD1EC903464778F27E6B2D457695D3D163868A12CFC31B1A5DF55795FFAE3DAA6F0ED411196D9A75F4338F17C439C18FF00A0E6AAB6E159786CB14D44DAA923D9ED60E194607E78C15D4B51EBBB75E5BF056FA3EF487025D1445EE3E991C957F474F168FBB5C2F378A7A884CAD77711BA3F3F3C7D166A28E6DB04EEE1A2A8E1901FEA671C2EF92D29593D24BC1511BD983BFAA99B8DF69AE552F6535B5D512CAF25A1A318277DB1BAB469AECDF54DDE06CB54C65BE95DCA3AC6F11C7A3798E9E4A19AE7ECAE209C6437C96C0AF2E20648236F756CBFF66574B4B9F24942F74237F88A3CC8C1EEDFBC15365B4D5C6DE38713460F38CE71EFE48637BE39CF182E2081EC9F12772EC60F4508257C7B4871C81CACA2723938FC8E104DC75BE36B70475272B6E3AE0E218D24827738FDDF555E6C81C79E4F5C2D8865C33843F073CFA20B4B6BF23041383B9E87D5656D40C03C27DB1F9A808247B480D7719F23D3D56E0AC782000DCE32EC8E58412B23D9C279E46E01F6567A93DF764351C20E4DC621EBF7D8A94CAB38E0C6D9CE55BA399CFECB2B98081C172879721E36725560D99D113C4412363E8AFF00A5A9A9CD9639CC4D73AAA5E11E8073FDC7F25CE83789C799738EFEABA9693880D3B444F305EE1F523F8A7EAB9DEB5BA53D15EEE134A0E03C46C0DE65C00180173F945CE83503EF75F66AC8A9E48DA4383725AD236271CB2AC1A8986E9AEADF0F1E7BEAC91C493EBB2EAAEACFFE789AC8F635F6F7DBE20F8DC3238B2F03F2007D12F6911964D332D5B2DB727490BE17F7750C7C7BE06C707D55475B52C773BD5CE295AEE17CA5B91CC118DFDD6CDA75154E8BD6771B0B2412DA229B8DB13B731B5C77E13D39F259F53D2360D4958038B9937DB34EDF8867F7A1DB925CE6BAE9F6C5157471D6D07170B1EEDF603967982B66D9A828E4918DA0AF9281FB621A9398F3E8EE615BAB6DF0D7D33A9678818A418CF2DD5169F478A0D576A86B5CC7D0D4D5B23CE7196F10CE7CB653A4C740B7EABADA27462B217701C7DAC67898EF985D174FEA8A6AF8C37BE68908C80E38E5EBC97BAEECC6C729EF2D866B54D8C7F46766377ED46EC83F2C2A6DCFB3FBC51B87153BA68DA722AAD6EE177A71447FF4E55CB17168D01139D05DEB65C096B6B9F203D3879370AE61A0B46DBF96150B4957916D969D91CAC7D13C473B65696B83B1B641F31BFCD5A29AE8C909691C38DB23AA2A5FB963DE3382B40D2475F3BEB880E0E1DD4449DB841FE273F92F359746C366AEA98CF8A281C41FEF721F9ADFA36361A586261186303420D0A6B3466A44D2B789ACE4D3D4A5CE9294B5D5370864AA760F77083B3479019C67D54CB461A02C73442407233B2B9C0E4D7DEFEA87F46A56D2B80F08683B0F50762B5B436A5974EDE6AE1BAB9ADB75580F2F85A488A51B7116F301C39E33C87A95D32AACD4D2820B7040CAAD5D74A473073BB96BF1D7EEBFEAB262F3475B4B70A76D451D4C5510BB93E278703F30B3AE292596E167AB3516BAA9E96703F5B849F4246C7E60A98B7769D70B73DB06A2A02F672F8881BC2EF72DCE0FC88F65A9E43A9A28CB4EA2B4DF23E2B7574531C6F18387B7DDA770A4D681111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111045DE74EDAAFF1065C68D92B9A30C9012D7B3D9C370A9972D2378B4C7FD0DFFA6ADADDFE1A70054307F75DF8BF23EEBA3A298638909A86BA47434127C2564477A4AA058F61EA305455CAC55715432B5AD9286B79B668C63383BE4725DBAF1A72D17E8B82E34314CE030D9718919FB2E1B8547B869AD45A7CB9D432C97BB56F9A798835118FEE93F7BE5BFA2962639F0B936E150CA1D4B0882AC7F51708BC3BF99C7C95CAD1AC6EBA71ECA4D419B8DA79475D18CBE31E6EC731EAA125B7D35FE195B46FCBF3E3A59870C8C3EC77519475574D28F7535640EAAB6938731FBBA2F6F4511DADADA2BD5036A69678EA69DEDFB396320FC8AAED65BFE1A40C73385C73838F091E8AA542DA8B71FD2FA3EBBC0F3C525203F6520F22DE87D55E74EEAFB4EAC63A8EA2314B7167DFA59B1B9F36F9AA215EE01C18E04E72B03C073C96E48077569AEB1180BDCC677B17507EF3475F7518E6430C5E1030390C725057662E0784648E79C281D0B93DA6CE0E7FEF63E7E172B9CAC6971C306FE6153B483DACED4A5D80CD5B4606DF8084BD1FAC9AA5E476857FE119777910CFFF00EB0B0412163DB264F3EBD566D5581DA1DF80C6EF8BA75EEC28F8E5008C785E07556F62721A86B9C78F6C0E6BDF7E305CE1E1E9BEEA2D92E5B92788E7249E8B239E0440B77F9209FB1D5993505BD846DDFB703C9685DA62DD67A87C677AA6803D031AB0E9B978B53DB46F8352C03EBBAC17D716EB4D4041CFF4BF3C7E10832495CE73FC0785A361D765A15B5123C65D8236C13E7FBD7A760920F3032146D54BC0F6C6481C447CBFDE54175ED427E0A2B035DBF143BFAEC173199FC6D0439C388EED68C95D1BB553C16DD3CF19C0A71CFAECD5CD7BC735EFF0E3CCF9A54BDBE3B2D71FC201FBA79AEA1D8864D65FC918204031FE75CA4E5C49C8C93BE7AAEADD87B436A6FE1BC80807FD69163B0A222DB422220222202222022220228FB85F2D76A1FD3ABA081DD18E7788FB346E7E8ABF53AF03DE63B559ABAB5D8D9EF6F74C3F5DFF0024E935705E259A2A789D2CD23238DA32E7BDC001F32A8FF1DAC2E3FD63A96DCC3CDB13789C3FC4723E8BE36A6D90CFDDCC65BBDC23E4385D50E69FCC354D356C65DE1A8DA8A396ABC9CC6E19FE638047B65659054BCB81A88E9D99C02C1C4EFA9D87D0A83A776A5B9332218ED909E4E9CF1C98FD869C0F995E6AE92DD6A88CD7DD45396FDE2D96A042C3ECD6E0FE6536D1233505AE77FF004D73EAC83922A242E67F97EEFE4B154EA7B059D8237D652C2C68D98D734631D30173ED5375B0DCAC93D169CB5D65655CB86B6A23648D0CEB9E3773F2F9AC14964D2DAAB4B88D9474F6DBED14589E373780B881824F9E79E544DAE837992A2F7A62B0D0C52C8D9A077763EE71EDD3382BE69BA036EB1514120E193B8692073E595CEF495EF57D6C9FA0EDF5CD928603C2EAE7C7C6616FEA871D8E3A29EB45D6A682F3369CBCD7CB3C83C74B54F76EF6F97CBC9417BE63A735E99506370E2CE3910B5296AE37B4B5E4B5EDC021DD7D9647B9BC596105DCCAA30DEE3BB86B6BEC7346F958DF1D2CBF7261E87F0B9541FDAA4F40E31DD74E5753BD870EC3491F5C2B3C92880999D3FC3969F138CA00C7A83CD69B2EF71BD48E86CF4F1D4C03C2EAE9C70C40F937ABFE431EA9A23E83B5FD3355277750F9E91FFF009919C7D42B5DB751D9EECD0686E34F367F0878CFD1556A7B31A7B95489AE5727C9939732181ACCFA67753B43A1B4CDBA9BB982CF4BEB2BD9C527F9CEE3E4AED5CAB065A7A85CC356DAE4D3B149FA0AF12C2FAF9806DBC35B207484E76079056DAAD3D55130B682AC4B0F314D5A5CF00FF75E3C43E795A1476BAEA0B89AB6E99A492A318138AB05C3CF05C32A511B4DD9CDCAA6963374D4F5C642DF1C7035AC6B7D015231F671A5A89A24AA8E49CB464BEAA7241F7DF0A4E766A8AE903627D15B21EAEDE790FCB668FCD788B47514AF6CB76A9AABACA37C55484C79F48C787EA0A60AED4DF68609FF0047E8DB34772ACCE1EE81B88A2F22E7F2FCD7C8F43EA0D4258ED53768E2A53F7A86858013E40BF1EDCB2BA0D3D341470360A68238216FDD8E2606B47B00B2AB8B887B2E96B1E9E670DAEDB040EEB26389E7FC47254C222B2602AF5DF44D82F323A6A8A111549FEDE9C98DFE7BE363F30558510718D41D9156C61F2D03A2B9463946FC4530F63F75DF92E6972D31534953DC16CD4D3F482A986377C89D8FC97EB25AD5D6EA2B9D3982BA920AA84FE09A30F1F42B37C4C7E3A922A9A37964EC918473E21859E1A868D86324AFD097BECA2DD58D7BAD939A671DC4330EF62F619DDBF22B95EA6ECF2BECC1F25450CB0463FF0011066487DC91BB7E7859CB19C56A3AA21DC40F43ECA4A395AF734F1F0E76C6142BE86AA999DE63BC8BA3D8720AD8A3A90D203C1C0E5BA827E27120001B9C64177FA2B2C331FF00E1ADE1A7611D6534840FDA1BFE4AA314D921AC933B6773CD592D6FF8AD25A9A977739D4CD980FD87655844E414A1D402ADB2B7EFF0F083B9F60BA759FF00A1E9E8072EEE9B8C9F7C95C82DF319C44E61C873738CFE6BA95255779A56AA419C474BDD819F2695676AE3374B80B36ADB35E2AA32EA5825CC8E1F877EAA6A5ED4AC74FABAE3767BCD430B991D3C70F3735A36393EA495F6AA919514C6395AD70208E02320AA3689D1D4DA95F5AD34CE7CD0484EDB34342226E95D5374B955DDAA8B4CF5D27186B1DC5C2DE8091D5747B0581D7FAE7D6D6BDDF0D0F0B5AD2EC97606C33E4157ECB638A1FE8B0B59186801AD1D375D2ED723A9606411B1BC206FE64A9FD6A478AFA2D39485ADAAA681AE1C8069CFE4A87A92CBA72EEE9228D9241C278E37B5C41691D4657519A9E96E11E2785AFF002E21B8F650F5BA5A9E469741B11C9A56AC155B3EBCACB246CA3BFB5D594AC0036E300CB837A778CEA7D47D15F6D97BB5DE61EF6DB5F4F54DEBDDBC123DC731F35CFEBECB347239AE8C803A81CFD0AA95C34E0121A9A573E9676F8BBDA73C0E1EBB2698BBEAB7D559B5936766D4376A70C7E3FE7459C67FC247D3D1618ABDC784E4024ED83D3C9501F75BC555E2DD4773B93EAE3A56BE663A41E21918DCF55628E76BC80DE637E7853B459ABEA9CED3578692086D37172F2232AC14974706B720969C11B2A652174F4B5D4BBC9F11473478EB9E1242CF61BCC55168A395C79C4D3BF4D87F2515D2E2787C6C20F36E57D0FC92A1995CDA6A2B7D4171EE8BCC2FDF96738FCC050774BFDDAC75C7108AAA0738BDAE1F7DA3C96B45D5CD6BDB873410B04949B7D93F84F9387103FC556ED9AF2D15F288FE23BA71E926D82ACD055453B1AF8E4639A7910764E2889AD82301CDAAA6C30EDC4D1969FF007EAA0EB34DD254C2E10BC167569DC615DF8815AF25BE9A43C4D6776F1F8A3D8A7A8E3372D16EA5984D4DDE524AD396C9138E01FE1F259E835BEADD3C786BB82E94ADD8718F163D1C067EA0AEA325054C6D2096D4331E5877D144D4D9ADD58F20344331E631C2567A318EC7DA6E9EBC70C52CE682A4FF00675586B49F47F2FAE0FA2B8B5C1C0169041DC10B945E7424520791034BBA491E1AE3F4E6ABD4D2EA3D2B20FD1F5B38859CA9DC72CFF21F0FD3055F64E5DE51738B2F6AD4F34829EF348EA793919610481EEC3E21F2E257EA1B8D1DCE9C4F4353154447F146E071E87C8AD4BABAD94445411110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111043DEB4C5AEFCD0EAB8386A1BFD5D4C4786567B3BF81C8541BB69FBFD9083514EEBF5B1A7FAC85BFD2583D5BF8BE4BAB22983813E959DF36E7A5AAFBA9DA712531D8FAF137A7BAF3255D06A570A7AF69B6DE22FEAC9770E5C3AB4F55D6350E88B75EE635B0B9D417303C3574E0027F6C7E21EEB9BEA5D3B5342CE0D41440C59C32E94C0B9B9E9C439B0FAACD4C4BD8B5F5769F7B2D7AB237CB4E3C31DC1809C0FEFFF003570AAA1A5B9D38B85A668A763FC5C513839AE5C9A392E168A6632E4D173B438782A23C3DCC1EBE616EDA5D70B3486E5A3EB1B3D23B79295E72C7FC8F22AEA2E4E847139AE696380DDAED89546D1D596166B9AEADBCD7496CA98EA83E08E76F0B1E00C6EE3C9741B66B1B16A42CA4B835D6CBA1D84551E1C9FEEBB91FDE97CD28D9A22D96820AEA677369680E1EA0A82A975D3D5B7DD5F7CB8D97B8AAA593BA735D1CED3C7E0DF1BF9850B35B6AA8898AB68E7A739DC49196E7D8F25F6AB403A8EA3E274FDD6AADD523C42273CB73E9FB9668F5DEB8D358A4D496B8EEB44061EE7301711E791CFE69A34BBE88F086F8587960AFA64C80DE239E9ECA6A0D43D9BEA2007C44D65AA71DE37B4F067F31FB964A9D0D73EEFE2AD13535CE98E4B5F4F20CFD09FE28768FD3381AB6D2DDB1F10DC6CB5B513FF00F9D2FDB8FF00BEE319E7E10B634F5355D36B7B541574F24128A804B64610547EA1711ACB503DC70DF8E70CFB009F83DBA41135A38471BB7CF9285AD7F154C2393388735BD34D87377CE1A307E6B4A77B5D51164070E20945E7B551DEDB74F00D00183237C6366AE66E8A28DA72E2F90F26819002E8FDA9B84B69D3AE1904D38C83E580B9BB30C20B9DC3D73E43094BDBD318DE1E07B787193C40609F75D2BB0CDAB2FE01C8C43FFAD735964C3788BB89DCB1E8BA37612FE2AED4037E50F31FB4A4276ED2888BA342222022F12CD14113A59A46471B772E7B8003E65562B3B40B2C723E0B7BA5B9D537611D2B096E7F6CF87E84A26AD4B46BAF16DB6902B2B6085C7931CF1C47D9BCCAA356DDB505C585F5D5D059A939F7714804847ABC9FDD855DFD3BA46D3217433BEB6A79B8B417927F68ECA6A6AFF51AD6391CE8ED7413D53C6DDECA3B9887CCEFF928F96BAE15A38AE373EEA1CF8A0A2FB218F23213C5F4C2E7F5BAE2E7547BAB5DA4C2DE8F9064951535BB53DF1D8AA7CFC279B01C347C82CDA735D11FA834C5901EE9D414D21E4DA702495C4FAF3CA99A1FD3F738DB241411D142E196CD58FCBDC0F5EEDBFC485C6A6D2F416A91A2E4E6099DBB6363B89EEF6014E59EDFAC29FF00A5505754D9ED80789D5938C63CF81C87F5D3EAACF6AA18BBFD4D78150DE7C35328861DBC980EFF003256166B081F1B6934B58AA6B9A0F0B5EC84C14ECFF111CBD82A6D05D343DAEAE4ADBB5DA6BFDD5CEC826374B8F20D18C2969FB49BBCF86D934BBC42393AA5C19B7EC8E4A89C7E9CD4B7AF1DE7503E9223FF0084B68EEC0F42FF00BC7EAB76DBA1AC76C3C505146643F7A59071BDC7CC92AAD47AABB41AD97862D3F44EEA477BC3F992B62A3566BAA5788E6D314CC27938D40E1FDE9C1FF17B6D0C50B49603E781D5728BC596D4FB9C978D69718A9E10E3F0F6F89C3BC737A7163727CD465EB5CEB0AC99D4104B4E257EC61A1F1BDBEEE1C97BB568B8E929CDDB5248E96A802EEEA49438E7CB72973A83CDD75B5C2B69996FD3F6D7DAAD2070B1FC1C2E2DF451B4B554B7484DBED56C73E473F8A4AD99E5D2970EA1DD14BBADDA8F5581150DA5D4D6E1B711C372DF471207D32BA1E94D1B1D8A08DD3B61EF1A070C710F0B4F9927771FCBF7A9DF4B220AD7A27531807C4EA1EEE27B7EE4B4E2478F4E630A60E8DB839CD06F4CE169D8FC31CFFD7857145AF55C8AE5168BB641502A6B38EBA71B833E3807B346DF5CAB1E303011124C04445411110111101111011110111101111011110562F7A06C17A7BA67531A4AB77FE229088DC4FA8E4EF985CD750765975A10F9A089974841CF1D38EEE603D59C9DF239F45DC514B20FCAB35BE5A191D062464C0E0C33B0C7237DDAEDD4F69494D25C8C352E2D8EA58FA67E771870C01F5C2EF578D3F6ABFD3F7373A186A1A0785CE1E26FB386E3E4A8170EC9A5A7717D8EE988F3914F5A0B80F678DFEA0ACE5898A3D9273133E1657E24A491D0BF239069C7F05D4EC7336AF47DC833C4785D91FE15CC6F1A6754D9AEF2DD2AAD0F3492006A1F4F209467971606E07B857EECE2ED6FAC82A28D93378A71FD59C8248183F9149D8868DB86B4B07083901D8DFDC2D7ECB9F0D9B56DFED556F646DA9C3E20F38E2073903EBF929BAFB74B4357242F610438F0380FBC3A6155752D9EAA5A882E76F9036E14C30D0760F19E4506AEA9ADFD03AC6DD70133BE1789F097C67233938C9F623E8BA0DB75243C31B659183880209DB8BE6BF3CDEDDA861A39686E14928A712778CE1196B0FA1FE0AE7D9DDDEE774A292DD359AA6E3053B413244CCBA31EBF9E00DF65126BF40D257D3D4460B5C37D8FA1520D7070D8E571EA59E68E470B3D69739832FA4A8CB2469F22D7004152945AE27A198457063E079D8F10CB56A55D747A8822A8696C8C04F9850B72B04125248E203781A4820F4EB959ADDA9686B9808999BF5056A6B7B93E8B49D43A8E4C545496D2C05A7F1484347EF29C5E575CCEC3677DD1F597B7C67BBA9716538C6FDD838047B9DD6C555B26A7716B58464E792EA94765868EDD4D4910019044D8C6DE430A36B6CA5C789ADC8E7959147B354D451DCA91C59C5F6AD183D73B7F15AD676FC3B2AE9882190D6CF1B7D0079C7D15BA9EDB1D1D51AEA901B051B4CF238FEAB413FC14050D1540A16D44ACE196AA47D4381E85E4BB1F42105829CFC568AB95334F13A121E37E9907F81542AC6D54F1CAD86E151039F825CC3CCF4255F6D2CF87B7DE7BD2033E177CF980572EAABE4F3CCE82D7413DC4C790F744D3C2D3EFD5067EEAE13CD153DC6DA2E85EFE08E7A31C33938CFDDEBB755B504575B54E05B6B6512B08FE875A0C330E7D1D8CAD4D37AB1F4BAE2CD25D2826A28637BD8E7CBCB2F69683F2C8DD779B95A6DF77A7EE2E1491544639091B92D3E60F307D959351CD6D9DA54F4B2369EEF4AE864CE3ED5BC39F9F22AF16CD516DB834704ED0E3D09C281BA6809442F6DBAA5953091FF74B80E303D1B20F10F9E5512E5A7EA2C928766A6CEE2461B51F694EE3E9237207B1C14DB15DCA399927DC7B5DEC57D9228A66F0C8C6BBDC2E2D06A5BDD87BB75CA9DE20C61B3C6EEF1847A10AED65D77435F1B38A6664F5FF005574595D6B746EE2A79881FA8FDC28FAAA064AC31D5D301BE0BF1967BFA295A7B8413B4164A083E6B6C3C10993F073ABAE8AA6AB6B9D096B9BCF85FB81EDE4AA33586E567AC6D4533EA29E569DA46B8838F2E21D3D0E42ED52DBE095C5EC058FF361C2D5A8A07F096BA16CEC3E5CD66C140B4F68B77B7B9B05E690D64436EF9803241FFA5DFF00E2AF769D5566BCF0B696B58263FD84BF6727F94F3F7190ABB70D314B50E70A722379D8B1DB65542E7A52AA9DC1DC1C2C69F111B83E5B74F3565A63B522E316DD59A8AC0191F7BF174ECE71543B8B6F477DE1F3C8576B4769364B87032B0C96E99C7189C7D9E7FF00D41B0FF1616A589AB8A2F2C7B25635F1B9AF6386439A72085E95511110111101111011110111101111011155356EB48F4F48CA3A481B55707B78CB1CEE1644DCE039C7D7A01BFB20B5A2A2D9753DEAEAE3C15368927038BE0CC5244E77A35E4919F9156EB6DC63B952995AC7C5246F31CD0C830E8DE39B4FE472362082362A4B28DC4445411110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101797B19231CC7B5AE63861CD70C823C8AF4882915FA05B4D2C951A7A56531933DE51CC4985FEDCCB7E4A8173B5CB61AEF8B6C3358AB01DCB871D34E7D08F3FAAEECB1CF4F0D542E86A2264B13C61CC7B43811EA0A99F0C70B96EB6EB9D3B29750D18A69DCEC36A19BC4EF50E1C9592D972D45A698C6D2CADBB5A80F0C733CF1B47F75F8FC8A98BAF65F6DA8E375AEA24A10EFBD4E477903BD384EE3E47E4AA13DAB5868C97828ED925C6DEDFBED6BBBC673E6CFC4DF62B3D262ED06ABD357EE1A5AF61A0A97F2655B4377F47723F55B55FA727310F829592C58C7772F8C10A8D15F34B6A383E1EB6314759B074330E120FA657D65AEF9631DE586F13B62CF8632EEF23F9B4F2F92A8D7BE684B75693F1744FA793FE6C6323F9AAE53E98D47A725754E98BD49C2DE71871C7CC2E856AD5BAA6A2291973D3D4D5EC88E1EEA67F76FC79F0BB63F50B61B59A66EB37742692DD5E47F5354DEE9FF2CEC7E4A67C2E7EAAD6CED6AED6D958CD556212F74702AA060E26FCB97EE5BF15BF46EB7AAA8ABB4DF5D4D5D552195D04D8C871E63876F2E84A9FAED3F23E10D6C91D5478C812B41276FD60A9D71D016C9DC25751D451C879494E73BA1CFE325CFB38D4344D0E85B0D6C4DFF90EF163F64FF054DA8865A1AD8E1AA8A58650F1E19198C6E3CD5C683FE37D39C2DB45D457D3B795356B49DBC81E6A4A5ED1A17C420D67A4E48C0FEDA26778CCFA6771F541A5DA9BA196DBA7A48B2E6183C381B0D863F8AA4DB6C375BB38328E8A7980383C0CDBEBD1745AFED5741476C81ADA296B1D0B47734EF873C38D80C9CE140D676E3757B1B15974FD3D2C78D9D52E2401E807084B13632D1F6477DAB1DE564D4744CC7273CB9C3E4063F35B767752764B76A933D4C775A7B8C6D03E0DC0CB1B999C82C2791CF3CF45CE2F7A9B596A690473DC2AAA58EC1EE6918446D3E5B0016DD934B6A7818278A8A3A77B87FDE2A082E03D32701385E5DCED3DA7E95BA8005C3E1253B77556DE03F5DC7E6A4AAF5B699A26074D7BA3DC640649C64FC9B95F9EE5D3B6CA4777F7CBFC41EEF139919E27E57CA4BD5A60A9EE74FD8A7AD98EC2499A5C49F3002BEC9B5DAAA3B52B38718E828AE15CFE85910630FCDC7F82AFDC7B44BFD63843450D2DB8BCE1AD3F6F37C8631F92DCD33A325BEDADB53A83E3E95C4ED46CC42CFCB723E616FDD6F3A2BB35A73DDC108ADC1E1862F14A7DC9E43DD36D5BFED42D2E86BEDFC36AEF757512B89C8655C85A07F8072F6D94E1D015E20EEA96F71D0B318E1A6A41FBCB9722BFF6DBA96E6F2CA27476F841D842DF11F771FE185A16BED3359B66022ADA8A9248F0BC17A9C24BF23AE0ECAA26384F59552DDA6073F6F21683F2CA93A3D1F6BA3E163E8E9A018CB8382A95BBB55D434E182ED679385D8F1C6C27E6B76BF5BE97BCC2D9EE9C4E9A305A227B1CDF960734C8BAB2BEBF4BDA676B592C53CFF821A56F78E3F4D8287AE65F2F8E74AEA88AC56C1F841FB678F32790F92871A9A6310658AC3153C38FFBCD433BB6FF003512C926BE5598EA6A6AAF3337FF000740C2231EE7CBE69C1CA4A9AE1A7ED351DD69EA27DDEECE3813C9B807CCB963B95ABE359F1DAC2FAE2303868A9B97B7A9562B4E90BFD443C0F6D258690EC190B44B3F0FBE7847E7ECAD766D1F68B34827644FAAACFF00EEAA9DDE49F2E8DF9009171CF2D166AD706BF4E69130C0401F1171708CBBD4039242DFADA3D7D67A47D49A2B5D5C0377C3465C5ED6FA02067E4BA9A2B86390D935BD554DC1ACA1A3EE25C62437093BA60FCB3F92B054518D4586DD6F1356B43BFEE96888B631E8E7F3F99215E5F4D048EE27C31B9DE6E682564003400000072013298AF51E9D8A8A8C52DA68A9AD74EE1E270687CA7DFA67D7256DD1E9BB75248267C66AAA07F6D5078C8F61C9BF20A5D15C8A2222A0888808888088880888808888088880888808888088880888808888088880AB974D136AB8558AEA76BEDF706BB8855521E0713FDE1C8FD33EAAC689668A655D3EA88E99F4D5F4F05CE06925955464326E11D1D1BB627D9DF25579A1B849234FE86BBE73F77E17FD70BADA2CE18E5A748EA0B933861A58285926332D5C997B4798637393EE42BFD86C545A76D51D050B0863777BDDBBA471E6E71EA4A934570465DB4F5AAF8C02E1471CAF6FDC94786467ECBC6E3EAAAB5BA2AE74C0B68EAA1B9D275A6B8786403FBB2346FF0031F357D44C838DC96A6D25606426AAC95D9F0B2ADBF64FF67025A7E4566BAD6D6328ECD15D32C962B9C2E7969CC7260FDE69E785D6A7A786AA1743511472C4EFBCC91A1C0FC8AA66A1ECD6DF75A473686AAA28A561EF218C3F8A16C83912D39207B10B37C68B6415B0CB81900FAF52B380D76E152A827A9631B1D54661AC8F02689DCC1EA41EA0F3054BD35CE58DB978E200744D1F350D30AC75BED2D0032BAA019C0EB0C638DC3E64341F75B3516A6B860005693AB239F5B500710032DB2C83279713DA3FF4AB1F135C012463DD334536FB433CB45169EA27F0555D1C4CD283FD553B71C47DCE401FB5E8B6EAC59342E9D8E18E9B0E7FD8C31C4CCC9348474CFD72B7AC334772AAB8DDC61CC74C69A0701FD94648DBDDFC67E8ABD63ABAAD5579BA5C2A785F496F90C34716000D711973B3D4E303EA839F5E9B551521371A5A775348378BBD265F7E58073EABA8767BA869EE9A668A925AC6BEE34F1F772C521C498190D2475F081B8550BFE92B9D6B7E3E9C9A92FE274D08C7D9606718F6F3DF963755E3677C7246191D40ADC7146D6B48909E9E5C23FBC7F2525C4E5DFD797B192B1CC91AD7B1C30E6B86411EAA9561ABD514345C772921AB8626174BC608746073FB4FC58F63EEAC56BD4B68BCCEF8286B6392760E2745C9C079FA8F5195B9755155BA12DEE73A5B54D25AE4764964203A071F588EDFE5E1548BCE81A9A4E2AA7513A3901C9A9B512F69F57427047F8789761453D60E1B43557DB730CD4D2C77281870F75313C631FAD19DC2B4593B43865CC53E5B203B870C7E455D6E7A72D9757F7D3C1DDD48FBB53038C72B7FC439FB1C8550BF685AB9C97F770DD620362EC4154D1E8F1E071F70D532C316DA2BE51563418E5193EBCD4A0901037CE7A85C57F4756D05508ADB58F33B7C5F035ED30CE3F64F277B8C852D41ADAAEDB20A6B9C3253C9B0C4CDC67D8F22928EA33410D4B712341F23D42D396DAF031149C6DEAC937CFCD45DBB56515534713C349E43CD4FC1511CED063735C3D0ABC5155B85A2824786CF1182571CE48DB3E842AD5C746C98324603DA06439BCC2EA6F6473338646B5C0F470CAD2FD131C4EE2A57BA23FAA776FD14F51C7A925BF69997FECFA99618C1C987EF467CFC076FA60AB5DB3B5483686F344F8A418066A61C4DF72D3E21F2E2564ADA06BA322B29496F5921DC63DB9AAC57691A3AC6934FC3237D3A29B619F17DB75DA82EF4E2A2DF5715447D4C6EC91E847307D0ADC5C26AB4FDC6CF5626A29A58A469F0C8D716B87A710C1FAE54DDAFB49BCDBCB22BAD3C75510DB8B1DDC87FC43C27D886FBAD4F2FA9CBADA282B3EAFB2DEDCD8E9AA847527FF0F38E093E40ECEFF092A7569444440444404444054BD7DA8AB2D0EB5D0D049DD4F5723DEF7E3946C1B8CF4C9237F42AE8B9A76A7135B70B1D49CF135B3B7F267FAA97A1BB45779AB830D9AFAFA7ADD89A1BA012C521F20FFBE3EA7D9726D597ABC51EBAAC375A1EE2AA77B4777C7E1E10001C0E3CC6029965435ED03846C73EAA56F744CD6DA26B63A81C775B5446A2967C789F18FBCD3E7CBF72CA6216DB7BA7354C8656C94B5808737BCF09E2E982BB6DB877D5ACB8C780CACA48DD23472E21C8FBE1C47C8792FCE964A88EE5D9E5E1958CEF2A6DD2C2FA79CFDF6871E12DCF92FD0BA4CF79A7ADF26723E0E06FCC3727F32A4ED627111174044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444410B7CD2562D44C22E76D8667F494658F1FE2182B9B5E345EA9D1DC770D397096E36E8BC4EA29BC52347A79E3D1763452C859AE2F68D7B156B1B25642FA27ECD32800B323A1C72F9ADED45555159030416CA1B9D196F13C487C44FF0075DD15BB50685A1BA486B6DE5941711B9918C0639BD2567270F5E6AA3496B969AF515B6B21758EB663C31BA11DE51D5387EAF404F96C54E9310B4557657C8D822B85D34FD4E30D8DF339D1673D38B20A9DFD13ABDD1BA7B7EA9A4AD60E4D9636E7F20B26AAD2E2B289945738444DE31C15118F067DFA7B2E5B75D17A96C72492D9EBE796269E514A43B1CF967753531D123BFEB2A47BA0AFD3A6A76C71D31CE7D82CD35D2AAA19F6DA4EF1B8FBBDCE47A2E334BDA0EADB35470BAE9561EC38E195C4FEF56FB7F6FD7E8236B6A69A9AA3D4B48553533346C63DD337435699724B49A4C13EB9F351721D452CE7E034316BC9387CD0127F72B2507FFCC1D0481BF1B6B7C67A98DF9530DEDDB4B91BC7520FA372A62FB45529EC9DA8DC870C3474F6D8FA07318CC7D72548C1D906A9BA701BEEA82D6F56424BB03F20A52A3B79D3CC03B8A6A879C6770A2EA3B727D444E65BAD35324A7EE9E1000FDE993EA6F8ACD6DEC5B4950624AA8A7AE78DCBA69481F46E159237E97D254C5908A1A08C3727870091EFD5712AFD63AF2F8C22206861C632E7F09FA955FF00D1D14B521D7BBECB57283FD540E2F3F54993A8BB7F1D135C76C45CD75B74C174933FC26760CE3A6DEAB9ED0F67DA9AFD21ACAF0606BCF13A4A87609CF5C1DD5BECB4F5EC0D6E99D1D2104ED573C5824F9F13958E2D03ACEF2FE3BC5F63A3613931C397B87F0FCD4B74F5FAA9D1F679A76D0D12DD2E0CA870FC3C5C23652CCBE69BB6B5B151363C1D8454F1F138FCD5C687B22D3D096BEE1255DCA51CCCF29E13F21FCD5B6DFA7ECF6903E02D9494E47E28E201DF5E6AE358E7B410DEEB439F6DD3B51132400F7956F11B7E8EDFE814AD3E8ABCD44CD92AAAADF44DE645341DEBF3FB4E007E455FD15F515B8B43D97898FAB8A6AE91BBF154CAE7349FD8186FE4A7E9E9A0A488454D0C70C63932368681F20B2A2B90111150444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044441AB5D6EA5B94423AA8B8F8776B812D737D88DC280ABB1DC68FC74720AD88738A521B263D1DC9DF3C72E6AD28A59A39A5D6EB4D47A8AC355248E8257324A29E399BC0F6648730907D4633CB7568A89678E9260DCE7BB71073B9D94C5C2D74176A7EE2E14705545D1B2B03B07CC6791F50A39D68ACA266286A454423953D592481E4D906E3E60FBACE510DD96558A9D0B4913BFAC89D231C3FC44FF1583484F0DB34DDDC4AF0C7B2E5389093CB2E183F4C2ABC35D57A2EEF74A2ADA5ACB75B6AE432D2D4919646F3CDBC4DDB0A359535372B948DB6996E4CAF7B5B2B290F8A3239BF8B90046C724744FC1D22DB7B12F72C87BB67154BE39DEF706BC93E2C81E58C0EA54C3687E2AE8FA895D1CB1C43819918734F5CFE5F55C9EE767B959D8FAFAC2DEEA3A87430D2D6111911E32082DD9C3D8F3E64EEAE9A1358D2DCECEE756CE609048435D504343C019F09E58F404E120B734433C5353B58D3030F76E1E67AFEFF00AE54649A5ADB239B253C66196339639A48734FA386E3EAA5E8990B68A310BC491B871F1E73C64EE4FCC9CA8DD497316DB639B19C4F3E58CF4F33F25706A50EA28A2BBC36B92B5B57DEE5A26E1E1E078E4D2791CEF83E7E795655C6DD0548960147E3A874F1B611E4FE318767D39FC8AEC89E3741111686AD7DB68AE94E69EBA962A888FE191B9C7A8F23EA1572E1A283A031D0557143FF00DA570EFE23ECE3E36FD4FB2B6A2964A38F5769D92D6F73BEDED2FE9DE132D2BCFA49F87E785F62BCDDEC7C0EAC89EC87A4F11E388FAE4725D7DCD0E696B80208C107AA81ACD25412F13E85D25BA53FFDB102371FEF467C07E99F559F51116BD6B0CAD6F7CE6B9B8C07B55A692E74B56D06299A41E5BAE7D76D233D1B8CB25B8BC75ABB4821DEEF84FF00E9254253CD5B03DD251D4475F1467C4EA7770CACFDA66C426E0ED3CC2D77D153BE4EF3BB0D79FC4DD8AE7D69D6D282D8DD28938762C7ECEF6C2B852EA6B7D50187B98E3CDAE18C2BB28CB576A6CC3C4C6C831CCECE1FCD572E1A469E70E01B979E9CBFF7575648C90658E0E1E8BEB9AD78C39A08F509EBF175C5EE1A3E48090C07BB1BE06E07C8AF56FD4DA8AC45918A97CF0336EEA706418F73E21F523D1759ABA174ACFB17333FAAF19CFCF9850F5964A5A961F88A76C4EE5BF9FA10B396191AD66ED0ED5716B5B59FD0653D5EECC67FC5D3FC402B6B2464B1B648DED7B1C321CD39042E6973D16DE174B0F091D3A1FF00305011C778B1CC1D4757534EDCF108F8CB41F96384FCC2B3C932BB622E6F6CED22AE0C32F36F73DBC8CB00C3C7BB09C1F91F92BBDB2FB6CBCB49A0AC8E673465D1E70F6FBB4EE3E8B52CA2451115027032792FCFB72D4375D4B54CAAB9BC70C7C420898CE1646D2773E649C0DCAEDDA86ED4966B2555555CEC8808DC2304EEF7E366B47525700A2A810D34304CF68788F1C25D83F4F759F246D5453CD4B67375F0B69CD4B69F7E65C46723E4A67485698B525335CEFB295AF89EDE85AE69DBEB851BA8E52342D8A91A08EFEE32C873D78401FC569504BF0952D73E212F0904B492011E5B2CAA26CE0B7486A082021D24F551B037A96B4977F25D8BB36D4B0BAD74B63AD97BBAB633FA387B787BC60C6C0F2242F8CB3696A0B4D36A1A4B1871A823BBA791FF0066D79CEE41C8E87CFD9556BAB6AAEDA96CCC96663A475744D8D9100D642D0E190DC7B7BA4E391DB911174044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444058E6822A888C5331AF61E6085911052A4D4F59A6EF4FB76A0A791D6B91E1B4B73E1CB7046CD90F2C8E59F9A9B7DAADB7283BDA19A2E124E1D0383984FC94BCD0C55113A29A264B1BBEF31ED0E07DC15052688D3924A6436B8DAE2EE22637BD9BF9EC42988A8EA8D1D6210BA6BF3608E27BB0DA82F0D392397AAE7D2682D011E5EFD52318243637071F6D97791A66CBC21AFB7433341C813832E0FA71670B3C564B4C18EEAD944CC7EAC0D1FC14C57E6D769CD1C240691974AF68C8FB38CEFE5D1661A4D952F736D7A26E6F6FE17D4710CFE4BF4D358D634358D0D68E400C05F53D4C700B67673AA2A626F0D9EDF6F1E72372E1F5566A6EC8EE734605C2FE5BFDDA76631E8BACA24F1142A1EC8F4E53B9AFAC3535CF6FF00CE94869F90FE6ADB6FB15AAD4D0282DD4D4F8EB1C601FAF35208AE40444541111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110117C6E71E2001CF4395F5017C6B5AC186B434790185F510799238E68DD1CAC6BE370C39AE19047910A1E1D3545421E2DCC653C6EDDD4E5BC511FF000F4F97D14D229668A969CA0BEE9DA575055451D5D144F7771241278DB19390D2D763972D8A8ED69514D25452D4BA57309618CC4F05AF1D73C2773FE8AFC8A60E7DA36D33D65F3F4B4D4D514F4949118E9DB51118DD248EFBCF008CF086EC0F5E23E4BA0A22B2602222A08888088880A36E761B65E003594AC7CADFB9337C3233D9C370A491073EBBE87ADC134EE8AE7081B32A088EA1BFB320D9DFE203DD5464A6A8A0A8EE992C904BBF0D25C5BDD3CFEC38ECFF00704AEDEB05650D25C299D4D5B4D15440EE71CAC0E69F9159BE3F0727A0D51576A9C4552C7D3BC7F6750300FB1576B6EB2A5A96B44CE6B091CF391F55AB5FA0A31196DAAA4361E7F055A0CD0FB349F133E44FB2A5DCB4D54DAB8A631545A5CD3F78933D2BBD78DBBB47ED00B3CC1D7E1ADA7A86831CAC767C8AD85C569EEF75B5F04D51139B138786781DC6C77CC2B759F5B32401B2B8399FACDFE4B53C85D66A48A6DF05AEFD66EC5684F6A32B1CD9032407D307C96D51DCE92B9B982663CE338E47E856E264A6A8D71D291F8BB9F0BBCB1B7B28AB6E891555CD354DE08D9E373C1C1601D1A7983EABA696870DC02AADAD5F2C160FD1B6F9045597599B4919CEE03BEF91ECD0E53D57543BBB2E172B8563E86EF70758CFD9C4DF8A79138DB88924FDDCE40F30AB55F2D4E9BA63596C9E6A2A869680E8A4238867F10E4EF9AECADB153D2D2C74F1B1AD8E36063401B6C36550B858D97FBE3ADD1443E068DCD7D5C83F1CBCC463D0733F253532216D7A7CEA4B94CFBADDA6F8D7C47B89EA4F178BA0036007A0517268DA8B46A09FFE20D3C2AE191A047571CCE6C61C07423CFC8ABFBF4E7000480D774237C0F55A6E8C4DFD1E2AE6CBC271DDBA5E2FC91731CEAEB6295D534F35A23980A7DE3A67CA65DF3BF0F964E365F219A56564B4553049055C0E3DF31FCDA7FDF45D0692175B6E02471EEA41C5C32BD85C22C8C0770F5C73F92E7D71D33A9AC555535DDD4577A59643249554EFE37E49CE5C3EF0F9844C743D58656F64F69A78038CB2BA2D99CC8C1CE3EAB4629E8AE5DA3E97A5A284C74D4710686BC0072D638EFF0035AD71D453DE682C568D3346EAF962A30652010237903624E06D83F5504EB37E889A4AFB95E5F25DA163A48A1B7BB3DCBC0DB327DD18F21957FC1FA1D16858EB1F70B05BAB25707493D34723C818CB8B413F9ADF5B0444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440445F0E7230073DF2507D4201183B844415EADD1D6F9DEF9685CFB74EEFBC69B018FF00DA8CF84FD01F554DBC68AACA60E98D17798FFC45B73C58F37427FF00492BA9A2CDF18387D21BB53B9D2D14ACAE6447C422711233D0B4EE14FDB3B449A32D866DDFCB8251C27EAAF975D396ABC3BBCAAA502A00C36A2226395BECF1BFCB92A6DF3B3FAF744E751CF0DCD806D15680C9BE52B4007E63E6B39618B55A754525D0B63C18E43D09183EC547D63C5C7B4FB7D2820B2D743254BC793E42183F207EAB94360ADB6DE22A6153516EA9C8CD256B301C33CDAEE47E4AE9A6AE327FC617CAB977786C3107752DE1255DE0749AB9A2A3A39EAA5388E18DD23CF900327F7284D256D14FA72095E077F599AB98F52E90F17E4081F251BAC6F8D1A4AA62190FA92CA71EBC6E00FE44AB7C0E8844C6465A1A006803A2BC5A352B638A0A49669086B23697171E8005F96EA8CF597BADBBD3CEFA5A792A5DC2F638F1373B8000DF75FA17B48AB7C3A49F4B13CB65AE9994C0B5A5C4071DCE06E76CAA1DF7444568A57CB3192AF8F11414D0372F9D808C9710311B76C8C72239EEA5866AB94FA9AF9454FDE1905CE858DCE65187307A9E59F4C953FA7B5532B0C95D68798A58861F1BF1CBD7CC2FBA52CEEA8D3571BE5588EA62B7C4EF83A561C40E7866789DFAC4640F2CFB2F3D9869282DD669351DD18ECBB263889C364048E1047BEFF450C5C7575C1D0451D051B994EC920324C2168687923D3A75F9AA2D4456DA3B35052B2A19515A29E47563A3391C6FDC377F2E4BE5F6F35DA86FB3D153901E76AA9D9CA203F0B7D546CD666410770C66198CBBCDDEA4A51D97B3DB9C574D0F6C9222330C7DC3DBFAAE66DFBB07E6ACEB85DA23D43A12D2DBAD04B1328AAE4C0A2AA05C1FB7DE18C11B75F6CABCD83B53B2DCCC74F7126D95870089BFAB71FEEBFF009E16BC6F09B9DAF68BCC7247346D9227B5EC70CB5CD39047A15E96944444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440445F32338CEFE483EA222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022F84E07227D97D4044440444404444044440444404444044441157FD3B6DD4940692E100781BC72B767C4EFD669E87FD95C6694D5E90D5971A3D4354D6492B58E8673B36660F0870F2F5F50BBDAAFEA8D1765D5F0C4CBAC0E2F8B3DDCB1BB85ED0798CF92CF94F83966ACBB17DA6838651235D591E0B4F4072AED457D7C6039C7EBD1532FBD89D7D24265B15D5F51146EEF0524FB124791E59FA294A131575A9950D7625C61F113831B87DE07C8821646A6BED4F39BA597B8ABEE5D03DD3B1E19DE10FC6DE1EB952FA5EBA92B5D3524C24EFEB64E2960123FBC6BC749E41B35AF3921A063A0E785CE3574B2C177A62E96463431E0399CCE79858F4F5CA77DD69A8295EE64359511B67607ECE1C796B89E7C4093BA6A3ADEB891B6BD294B6083BB654DCE76C1C10B43406B9D97600E806D9EAB0F681562C1A4696DF4996485AD8A0633ABCED9F90CFD55635819E4EDA287BE07E1D82311824E0803271F32A4B5ACDFA43B52B2DBA4DE2A60262D3CB967F82AACD61D291D9ED4C81ED2FA893124F2752E3B952D6AB153CF72E3A867F478817BC38EDB2999299972B5D6C2C95F14861770C916EF07CC7AAE475969D516A6C953A6AF735C689C72F88BFC40F910A7117F8B16AFAB9AF17212383852B07040C1B003CFDCAA855591952C7630E1E47623D9459ED1EEB472F7174A06F1038702D2D23FD558ADDA8ACD766873276C521C66379C1CF904ED9D885A2B8EA6D232092D75F3B611F7A138737FCA720FBABED87B6D8DCE105FEDEE89CDD9D3538EBEAC3B8F91F92D075287C6D2CE1963C6F93921455C34DD1D631CFEE846F381CB1FEF926D87AFC771B4DFAD57D83BEB6574352DC64863BC4DF76F31F3522BF31C767ABB3CEE962EF890731CD04A59233D41EAADDA7BB42D45451064B3C3750D38753D4E639C7B3BAFCF2B53C8E7F5DB91546C7DA4582F120A79277505667060ABF06FE41DC8AB70208041C83C8AD2E8888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880981927A94440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444405C6F5CD032CDAE4C9149C115D22EFB833802569C3B1EE307DD764551ED034B3751599B510E05C2838A7A738FBC40C961F7C052F4388EB2A7A896821A9C17185DE23D403FEC28CD1D3D4535FE8DF0C0F9DF0CAC7B84638C8191CB1FEF756282FF006EAE87E1EE0C74064182240784FB151B3E919E02EAAB05C7838C6ED0FC02339C65734FE2D1AE271276A54DE2C12406F164736ECA5F5845245AFAD170187367A1D9DE6E6EC7F785CAEF977D4724F44FBB40E32519E16D470EEE19CE0B8735D1A6B90BDF67F1DC9A38AA6CF236600F589DB387CB3F92A458ECF73A875CA9E38DDC123DED603E79C654F5E34CD9EF17A92586ADF43766B403240EE12EDB6E21C9CAA3A72ED455359435B1CCD7441EDC9F25B3A8A595BA82B1ED387093623CB1B22AA1DA2E82D6355DDCCF8D9748A10712D2C78931EADE7D3A6572882D75F357B2861A69DD52F7703620DF113E585FA22835BDCA88B5933C54C43A483C5F5E6A426BA692BFD443515B0BA8AE10BC3E2A96370F638723C406FF003184CF86470E8A0D63A45E1F51455D046DE6258DDC07EAAC76DED0A9A6688EE7098E4CFDF036FF007CD774A6A89E4A501CFA7BB529182F8B843F1EADFBA7F2F655BBA685D19AA1D2C31C0CA3AEDC911B4C5203E66370191F24CA6674AA45534370617D2D445235DCC878C8E9B85A5576B82A1C639236BB1F31EFE9CD6A5E3B1AD456695D5362A96D6306ED6B5DC0F1F227F7155F66A5BCD8AA3E16F3412873363DE34B5C30A6C36FEA42B2C734638A1C4B1E368E5F1003D0F30BCDB6FF0078D32EFF00B3EB2A689AD3FD449992077D761F4F9A90B7EA1B4DCC70B2A5B1484ECC78C15212D2B6561E268E1CEE4792BD192AC561ED7E29A36B2F740E8BA1A9A5CBD83DDBCC7E6BA0DB2F96BBCC424B757D3D48C6488DE0B87B8E63E6B814FA7836474B452BA1791BF01C7D42D18A0ACA3A86CAF8DE2661E26D452BF82469CF3C7556797D4CB1FA6D1716B0F6977AA17FC3D43E3BB46C1BB641DCCE07B9D9DF35D02D1DA0E9EBB4ADA7F8B347567FB0AC6F7473E84F84FC8AD69AB4A20208C8DD155111101111011110111101111011110117C24F186F09C104F16D81E9FEFC97D4044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444405F067272463A6CBEA2022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222A7EABB9564F77A6D3B4B56CA06D4C06592A9D9C91920301E99C73FF006439ADF6DB451DE2E5471B239A963A8708C000819DF1F23B7C957459E4A57F796EAB929DC4E7809CB7D8ABDD769AB859DB8A8A62E8472962F1379F32A16581A46637717A85C971106FD5B4F1086ED6EEFE21B77910E207E4B6DBA96DADD3377A6A47715455C0208A06B373970CECAC7A42DECAAD51491CCC0F89A1CF735C320E1A7195F3B38A0A19BB42B8CE69A3E2644F922046784F18191F22AA2A7A4BB29D597089D3F7EEB4D3386477CE7073FD9A3F8ADDD41A5FB45B249F132482E30B1A1A64832FF08F318057E84457D6FD323F2BC5AD6A629782E3445A46CE206E3E4A6A8EF96FAFE1104E048EFC2ED895DC2F9A36C1A8A2732E16E89CF3CA560E178F98FE2B93EA3EC22A612FA9D3B5E24EA29E6F0B87A07723F929CC33E3CD3D655DBDE27A79DF149CC398EC7FEEAC94BAD3E218C8AF941156B07294343646FB1FE585C9AA46A8D26E6C374A3A90C1D266F848F42A46DFAB6DF59E09F34F21E59DC24B2A75DBB9DB2F74B54D2DB6DCFC647869ABF7C7B3B9FD495B9716D0DC20F87BFDA5AE88FE3737BD8C7B380CB7DC80B8F325648D12432717939A54FD9F595D2D7863A4F89807F6729CEDE8798555EEFDD89DAEE0DF8BD3D5DF0CE76ED63DDC71FC9C371F9AA2575A75968897FA6533E7A51F8C1E38CFCFA2EBF43A96CB71943D92CB68AC77E261CB1C7FBDB709F981EEAC826AC6C3F6F0415F4EE073253EC48FD83907E4EF9299F0E2B83D06B3B756623AB8DD4B293827196E7DD4F4021A8671C52B678C82E6969CEEADD77ECEF496AA124948051561192611C2467ABA338FE0B9F5D7B2FD57A624754D9E775740DFF93B3C7BB0FF000CA7F5797BAAB44156F2E998323A9E63D8F351F5569AC6425AC7B2A6219C4750DE2C7B3B985A74BAD6AE8DFF000F77A177103871C70B87C8856CB65EAD1798F861A80D933F71E784A7F1365425A3545FB4C38321A99E9E06F282A077D07EFCB7E4BA3DA7B54A49A061BB51494FD1D534C7BE87DCFE26FD0FBAAE545B1BE2F0E49F3EA143CBA7E3EF1CF87BCA695DCCC5B03EE39149E54F5F8EE56FB9D0DDA98545055C35311FC51B81C7BF91F75B6BF377E8FBCDB6ABE2ADD50593839EF217189C7DF07055A2D5DACDEED45B4F7DB79AA0300C98EEDE3F2E177E4B5ED1399DBB4A2AD69FD79A7F52063292B44752EFFC3CFE07E7C87477C895655A5DD1111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101117C0034600007A20FA8888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880A3EEB64B7DEA010D7D336503EEBB25AE6FB11B852089668A79D3D7EB23386C774F89A51FF84AEC3B6F20EFFD94254BACD2CE23BDDA6A2CB58EFED63CF76EF6E8BA5AC73D3C353118A78639633CD9234381F9159BE228558EB468DA092A629CD4D7D4425B0380C601E47016B766BA6AE3455F3DE6BA9FE1A39A031451B8F8DC0B81C91D397E6AFACB45B63746F6D0530745FD5BBBA04B3D8F45BAA4F104445B04444186AA8E9ABA9DD4F570473C2EFBCC91A1C0FC8AE7D7EEC5F4DDD4BA5A26BEDF31CFF564B984FB15D1D14BE328FCD779ECD7576932EA8A326AE99A73C74FBE07AB79A88A5D5B2C3277172A72D7038240C1FA2FD56A02FBA2B4F6A289CDB85B607487FB663435E3E639FCD63D6CE8C9F8E274972A6AD671534C0B8F31C5BFD14DDB6FB72B5481D4B56F634FE1D8B4FC8ECB16A0EC36B696475469DAEEF5B9C8825770387A03C8AA3CF57A834D549A5BBD1CA30794CD39F91537E9CFEBB4D16BBA5AB0C8EF344D25A369E2D883E9D47C8AB153D7CB511996C97282B983FF000D54EC387A07FDEFF302B85D06A0A0AE23865EE9E3F0C9CBEAA62399F4F23658247308E4E6BB056874DBAC7A72F6053EA7B40A49CEC1F5038413CBC32B76FA91ECA997CEC52320D5E9AAFE127C4D8A67647F85C3DFAAC947ADEE9037BAAB31D6D391874750D0ECFCD4BD15DED3361D6FAAA9B0D4E7664678E989F58CEC3E407BA9929AE6F25C357E8FA86C175A595D134E1A256E5A47A3BAAB5D935559EF80472BC53541DBBB936CFB157A92F750C80C37EB432B6888C9ACA2677F091FDE8CE5CDFF00F25015DD9B693D4F13AB6C354DA5973CE99DC4C6BBC8B39B4FA6DEC997FA75D369B67866793C4D181B7AAC3358A2958E0F6C6F0761C4DCFEF50F69A2D4FA3EAFE16F63E22D8F7864556C7F1B5A49000F319F51CD5EE8991D61018E638E7E8A352AA2DD0D0DCDED89B471776D0013C833D76FE0A566A0BEE946C10DA2EF35C2368CBE92B5BC6D0360007FDE6F5EA40F2574777543464348635A39FA9EAA8F55A96820BC3ADEFAB63A594E0B5AEC927D4AB98972AE767B9B6ED6D8AAC44E85E72D92171DE378382D3F3EBD460F55BCAB3A5E72EB95DE1C82CCC536DE6E6969FF00A02B32DCBB10444541111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101318444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440444404444044440582AE8A96BE030D5D3C53C47F048D0E1F9ACE88397EA3EC56CF72E29AD129A09CEFC07C51FF0030B9ADCF466B0D20E73BE1E5A8A51B9921697B31EBE4BF4D22C7A7C3BEDF97A8B53C3211156C7DD49C8BB1B03EAA7695F14E03A091AF69C6ED7670575BD41D9EE9DD44D2EA8A36C151CC4F4E031D9F5E8572FBC763F7FB34CEA8D3F522B22E7C1C41920F91383F5F929CCEC6FDB2E970B6BC1A7964602760D3B1F929B65F292BE56CB71B7F05501E1ACA3718A51F31CD73BA7D4770B2569A6BED04D13C6C72D2D763D95DAD570B6DDE02F82663C8E6D6ECE1F24DD2637EED48CD41430D34BA9AB5F147289591CB135AE7639025A064FA956BD2D4C636CCF773680C1EBD7F92AAFC2C61A4B1DC58E5D31D3F92B7E988DD141335D3364E2E17EC738CE763F449CD5E958ED27519B75B26743202E68313467938ED9FF7E4B91E82B0D46A8D5D1425EF0D6874F34A0EEC0391FF003607CD5AB5C5AEED7EBAD15BA8A0323A7E392269706F1E0127727CB2ACFD9E69E974369DB95DAF71B69AA646E431EE05CD6019E9E67A7A053BA98B1E8CA6EEEB2EF51DEB640F9238F2DDF05AD3907D7C59F9856D503A3A81F41A72033B382A2A5CEA9981E7C4F39DFD40C0F929E5D3C7A044454111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110117CC7881DF618E6BEA022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220222202222022220D2B9D9EDD79A634F71A386A633D246E71EC798F92E6F75EC744153F19A62E2EA3941C882724B3D8386FF00505755459BE329AE37FA5EBEC528A4D516F96949386D4B1BC513BFC43656EB25CA1A6A98EAE19A39A8A7C46F7C6766791FF7E6AE72C315444E8A68D9246E18731ED0411EA0AAE4BA1AD2D748FB777B6D7C9BBDB4CEFB37FBB0E47D30A658AADEB1B7D7435947596F9DB0CD47299222064341DF0475041C2D7B34371D61758A3ADA9754D1D2B9AFAB95C006C846E23000C73DCFA7C94FC9A36E53B5D4925DE36D113B96407BD737F5725D86FBEFECACF6CB65259E823A2A288470C7C87324F524F52524B46E2222DA08888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888831D454434903E7A89A386160CBE491C1AD68F527928A875559A7E12CAA70638E1B2BE091919FF19686FE6B05E29A3BA6A0B6DBAA59C548C64956F63BEEC8E696B5A08EB8E2271ECA79D1B1D198DCD6961182D236C7929B7F061ACAEA7A0A27D5D449C3030025C0177338180373B90B151DDA8ABA77410CAE13B1BC6E8658DD1BC37CF85C01C7AA8292966A5B35C6DD48D9266D2D644E818064B59C51C9C1BF3C64FCB0B6A99CFBBEA56D6C6DEE61B7365A67B5E3ED1F23B84E319D9A000479E54D1BF597AA7A3AE6D1F73553CE581E44103A40C692402481819C1FA2CB4574A2B83A56534E1D244786489C0B5EC3EAD3823E8B569DE7FE2BB8331E11474E7E7C5328CBB39949AF6C1240D02A2B193C33639BA36B78867D8E15D16955C9358446AAAE0A4B3DDAB7E1647452494F034B38C7300970CE158D53AD22F34915C9969A3A3943EE350F73AA2A1CDC38BFC834F4C754B70592AAE51D1DAC57CD0CE1A430F72199932E2006F0F9E48185AF6CBCCB71AB9617DA2E146C637884B52C6B5AEDF181871DD64B95BA7B9D1D3C5F1269658E564CE744D0EDDBBE0716DCF1CC74E4B0514B57457416EADAEF8CEFA274D0C8E8831ED0D2D0E0EE1D8FDE18381D54DBA353FE2992464D574D69A99AD70BDCD7D5B5CDF106ECE7319CDCD1E7E9B02A56A6E2C60A6653064F3D502606F161AE0064B8900E0608DF0798582E4E64903ECB432C5055CD01E06F064451E784BF036EBB0EA7D8AC55744EA716BA4B6B98CA9A61888CA72042D01AFE21CDDB168DBAF09E89B46D505C26A89E5A4ACA66D355C4D0F2C6C9DE35EC2480E6BB0091904104023E609F36AB9CD5F3D6C15147F0D3524A2370EF38C381687020E0742B61B1C0CB9BE420FC44910009FD469E43E6EDFDC796DA76C670DE6F6EC83C53C676E63EC5813912C888B40888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888088880888808888342E1406A64A7AA81CD6565292E89CEE44118735DE847D300F45EE2A9AD9230D7D07752E372656BA31EC46E7FCA16E229834A4A5A88A8A4651CAD152F903CC9272278867CFA6C3E4B1BEDCF65ED971A6735BDE33BAAA63B3F68D192C70FEF0271EC4F90522898206B686F51DFDF70B63A81D14B4CC85F1D497821CD738820B41E8E4B5586A62BAC978BBD5B2AAE0E6775188D9C3140CCE70D077CF993BA9E44C051F6AB6BADA6BB3299054D5BEA1B9FC21D8DBEA0A904546AD5C558E7472524EC63981D98E46E592646D9237183D47AECB4EDD6CAA8EE33DCAE352C9AAA467751B22696C70C79CF08CEE4938249F21E4A5914C1074967B8D1D4D7D50B853495157307991F4AE3C2C030D67DFE43A7B9F35BB576E3552D2547C43E1ABA6CE25880C381C7134B4E7C2700E398C0DD6FA260D2A3A1921A896A6A6A4D45448037219C0D634746B77C7AE49257BA6A16D356D6D4B64738D53DAF734F2696B0376FA2DA44C04445411110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111101111011110111107FFD9
WHERE szItemName = 'M14, .308 Win'
EXECUTE @RC = dbo.NEW_ITEM @name = 'M16A1, 5.56x45mm',
                           @class_ofItem = 'gun',
                           @Returns = @asd OUTPUT
UPDATE ITEM
SET Item_Image = 0xFFD8FFE000104A46494600010100000100010000FFE100584578696600004D4D002A000000080002011200030000000100010000876900040000000100000026000000000003A00100030000000100010000A0020004000000010000028AA003000400000001000000A000000000FFDB0043000201010201010202010202020202030503030303030604040305070607070706060607080B0907080A080606090D090A0B0B0C0C0C07090D0E0D0C0E0B0C0C0BFFDB004301020202030203050303050B0806080B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0BFFC000110800A0028A03012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDFCA28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2801360A4F96BE5FFF0082877EDE33FECA7A7E99A1FC378F4DBCF18EB88668D6F4E60D3EDF76C12C8BB9773349F2A2EE5DDB5BD2BE0AF11FFC14B3E36BEB08D71F10EEED5E45F33CAB7B4B3545F9B68F97CA6DABBBE5F9AA2551448E73F65B68A360AFC81D0BFE0A8DF1C6C214FF008AD6DEF13AFF00A4E8D6ACCDFF007CA2D745A5FF00C15CFE34DA7CB35EF84AF8FACDA330FF00D172AD4FB488BDAA3F576919F15F98DA7FFC165BE2A5AB8FB7683E05BB03FBB05C45BBFF0023B5743A5FFC16BFC631AAFF006BFC3DF0DDCFF7BC8D5A78BFF4289A8F6B11C6A291FA31BC7AD1BC7AD7C05A6FFC16F27007F6D7C2F90B7F17D9B5E56FFD0A05ADCD37FE0B75E1B71FF138F879E2C83FEB8DDDACBFFA13AD1ED50EF13EE2A2BE3DD37FE0B4BF0D6E820D4BC3BE3BB42DD7FD0ADE5DBFF7CCF5B961FF000581F8377BFF001F971E2AB13FF4DF4399B1FF007EF755DE251F53515F3CE97FF054EF81DAA1C7FC26525B7FD7C6957917FE8515751E1FFDBDBE0D789AE521D2BE23F8544D21DAAB35E2C0CDFF007F36D17881EBD4555D3754B6D5ECE3B9D2A786EADA65DF1CB13874907AAB2F5AB55401451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450026475AF21FDB3FF006B8D0BF637F8413789BC5713DFDFDE4CB61A3E990B626D52F1FEE44BE8386666FE155635EA3ADEB56BE1CD22E6FF005B9E2B5B2B389A69A691B6A468A32589AFC9DFDAC7F68CD4FF006D5FDA32DEDBC15A6EA5ABDBE9AB2C5E1ED26CAD5AE6EE4893FD75C346ABF2EEF97737F0FCAB5855A9CBA47716CAE6DC3FF054DF8E0BADCF76F7BA0BC333EF5B2FECB4FB35AAFF00715B779ADFEF337CDFECD7DE7FB13FED2F2FED47F05935FD6B4F8B4BD5ED2F25D3F51B68999A259936B6632DF36D2AF1B73F7776DED5F8EF79F15ACF4FD5AFECEF74ED792EB4B9DEDEF223A73AC96B2AFCAC922B7CDB95ABF453FE089FE28B7F147C16F1A4DA7BB4B1B78856552576FCAD690638FF0080D678794A52F78C79A5CDA9F6B514515D66E14514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001591E3AF1969FF0F3C1DAA6BFE299D6DF4ED1ED64BBB894FF000222EE6FE55AE0E457E7FF00FC171FF6B8FF008579E04D17E1A7848ADC6ABE2975BDBF8C49B76DAC6DF2237B3C8BBBFDD89BD682652E53E33F8E7F1BF50FDA13E2EEADE28F195B4D21D66F56E0C44AB2D8DBC7B56DE05DDF37CABBBE65FE2DEDFC55E757D712AC97934D66CF6B71034539DEBFBBF99FE6566F999776DF97FBCD5421BBD7AE144B35D69F0CBBBB5BB36D6FFBEEB5BE1DFC1AF147C7FF001F683E09F0C6A51A5D788AF459C5E55AED58777CCF2B7CDF75235666FF0076B8A5EF4AE671F8794DFF00D9A7E01FC4CFDAFB59BAD37F673D06DEF6DB496F2B51D6F539BECFA75ACBB7EE798AACD237FB2AACD5F4E697FF000446F8CB750ABEADE3AF873652E31B23B3BA9F6FFC0BE5AFD11FD9BFF679F0EFECB3F07345F057C2EB5FB3697A3C210BB7FADBA97F8E795BF89DDB2CCDEF5DE1193FFD6AE88D35D471A6BA9F98FA57FC10E3E2516FF89C7C50F09C23D60D0E693FF42916B6E1FF008216F8964C7DA7E2EDA467FE99F873FF008A9EBF47E8AAF6712B9227E7759FFC10A752709FDA5F18AF73FC7E4F87A25FFBE774B5BDE20FF8216E85730DB0F0AFC51F1B59C8B9FB43DCDBDA5CAC9C71E5AAC69E5FFE3D5F79D147B3887244F826C3FE0843A0A6CFED6F8AFE3A98AF5F26DED62FFD91AB66CBFE0859F0E91BFE265E39F899739FBDFF00130B78F77FDF3057DB9B051B051ECE23B44F8C62FF008219FC2153BAE75CF89137B1D7157FF418AAC6A3FF00043DF8357566534EBDF1F58DC6DF9668F5D6765FF80C88CBFF008ED7D8DB051B451ECE21647C07E05D2FC61FF04ADF8D5E1FD03C55E22BAF147C1CF195D1B4B6BAB95DB368D70C7A3AAFCABFDEDCBB559777CAACB5F7DC7209630CBD0D7C83FF00059DF1369BA5FECB567A65F490FF006A6A9ACC2F6311FBFF00BA4919E45FF757BFFB42BE94F819ABBF887E09F83EFEE5F7CB7DA2D94EEC7F899A0463531F75F2823ACA28A47709F78E2B5285A29378F51F9D1BC7A8FCE80168A4DE3D69B3CE902E677541EACD8A007D14C8A7499330BAB8F5539A492648232D2B2A22F524E00A00928A8E0B88EE1375BBAB8F556CD39A411A92E7007AD003A8A8E399255FDD3AB7D1B34F66C5002D15143751DC67C99237DBD70D9A9734005150C57914EC561923723A80D9A9778F5A005A299E726EC6E19A7D0014541F6E844E2332C6246E8BBBE6FCAA7A0028AA936AB6B6D74B0DCDCDBA4CDF763794066FC2ADD001454525DC719C34880FBB549C30A005A42467DEA2B9BC8ED63DD7124718F566C57CDDFF000504FDB4ACFF0067CF84ED6DE04BEB5B9F136BAAF05A343287FB2270AF2F1FC5F32AA8FEF37B56752A2A6AEC695CF07FF82AE7EDA9FDA97D37C33F86F7134B696CEABADCB6BB99EEA7DDF259C7B7EF36EDABB7F8A4655FE16AF70FF826C7EC48BFB2FF00C37935CF1F5BC27C7FE2C48E5D4FF8BFB2E01F34563137F7533B9CFF00148CCDD96BE61FF824E7ECBAFF001C3E2E5EFC4EF8931B5CE8DE0FBE68B4C497E65BED5B1B9E76DDF796DD64DABFDE95D9BF816BF4F0719ACE945EB37B92A573F1DFFE0A4DE06D5FE04FED59E3BD73C69A1EB29E1BF156A11EA1A7EAB0D93CB67333DB408D134CA36C722C90C9F2B6DFBDFED57D0BFF0006FF00EAE753F835E3C55188BFB6219D015DA7E688AFFED35AF7BFF82AA5EDB59FEC17F108EA7B184D6D6F146A7F89CDD45B76FBFF00857CE7FF0006FF005E46DE09F885043F7BCDD3E5C7B37DA57FF65A54E3CB36C5563CD699FA2B45145749414514500145145001451450014514500145145001451450014519C75A2800A28A2800A29378F5A378F5A005A29378F5A378F5A005A29378F5A378F5A005A293CC1EB47983D680168A293CC1EB400B45217083E720546D790C7F7E541F56A00968AA53F886C6DD733DED9A7FBD328AA53FC44D02D7FE3EB5DD1E3FF7EF625FFD9A8036778F5A370AE5AEBE36F832C81379E2DF0D4607AEA70FFF001559971FB4FF00C39B207ED3E39F0AAFFDC5223FFB3504DE277A464573BF103E26689F0AF409352F1DEA11D85A463E52C0B3CADFDD445F99DBFD9515C94FFB657C2CB7BC8A09BC79E1BF3663B500BC52AC7FDEE95F067FC1457F687F0E7C5FF8E5727C03E26B3D634DD2746B4B78A4B6B86681666B995A6DACBF2EEDBE5EEFF676D4CA5614A5CA8FA6B59FF82B97C27D2CDE853E280D6B03CB119B469AD92F1D5788E3F300652DD0332E2BF277F6B4F89DE21F8F5F17AE7E216B10B5FDFDF5C399EDA26DDF6787E5589225FE2545555FF6BE66FE2AE1FC32D61AE7C48D42E7C543ED0AB2BF9523B3BEDF9BFBDFF7CD7616F342DA83FF0063C32436CA8ABF3EEDACDFC4CAADFF0001ACE55251224A5239F87C7539857FE249AD6E6FE0FB1B5779FB32FED3BABFECEDF1C742F19E8FE18D4B507D19DF7DB4D12C4B34522346EBBB77CADB59B6B7F7AA8349B577542D7059BE4DC2B108D39735CFD2FF000E7FC177FE11DFDBAFFC249A2F8F349B92BF3C4FA5A4A14FFBC9255EBBFF0082E77C1B891BEC7A7F8F2E997B268CABFF00A14B5F97EB23EEDD96CB50CEECDBBF79F2D5FB6669A9FA5BFF000FDBF86D387FB27847C7CFB7EEEFB581377FE45AA32FFC1773C23CFD97E1FF008BE4F4CCB0AE6BF38FED055099377D6B07FE13E867F114DA7BC33068D3724AEDB564DBB73F2FFC0AA6551AD8A3F4B5BFE0BC5A249FF1EDF0CFC447FDEBF45FFDA755AE3FE0BB96E587D87E16EA9EFE66AAABFF00B4ABF39FFE1248E46F9DEDF3FC5FBDA1BC4108DDFBFB50BFEFFF00F6559FB6607E891FF82ECCCCC443F0AAECFF00DC657FF8D5579BFE0BAD7FCFD9FE16383FEDEB2BFF00C6EBF3E23F1243860F736B9F66F9A9EBADF98A0A36F1EA91351EDDF703EF2BFF00F82E97895CE34DF86BA6443FE9AEAACDFC94564EADFF0005C5F1FDE58CA9A3F81BC2B61332FC92CD7B2CBE5FFB5B57EF57C4725F4DB7E482E3FF00015DBFF65A65C5F5C470349790DC448BFC525ABC68BFF0265A5ED9FF00301DFF00C6DFDA13C55FB4178BE4D73E2F6B126B1A8180C102A27976D67137DE4863FE1FF69BEF357EA2FC17FDB53E1A7C24FD98BE1A27C4BF17E97657975E1CB3DB6CACD3CFF2408AFBA38C332ED6F979AFC625F1B5BADD5DC3A94CB0CD6AFB7EEB7EF176AB6EFF00C7AB9BB5F155CF89355B836DF6A4B3B55F2ADE07B87955595B6BBAEE6F977B2EEDABF76AA32717CC4C9D8FDCF93FE0A8FF0005224627C56E02FCA31A6DCB6E3D82ED8EBF2D3F6DCFDBCFC53FB40FC64D5AFF004BD6B51B1D0AD6E9EDF4FD3E1B8658A1854ED56655FF00968DF79BFDA35E0BAC6A17FF006157769176CF17FE875CE6979B5D260F38B176965DC5FF00DF6AE88FBFF1184A523B8FF85CFE282BF26BDAA7FE053FFF00154E8FE3878B63FB9E22D587CBD4DD37FF00155C679CB337A7D291A4DABB9EB3E617348F41B3FDAB3E25E830B8F0F7C44F1C69A8DF2B2D9EB77112FF00DF2AFB6B27C51FB4178EBC7135A4DE3BF1BF8D35E6B36DD6FF00DA7ACCF76B0B7F795647DBBBFDAAE365984BD7E5A8649446BF3D28F34839A476FA3FED09E37F0DEFFF00846FC67E2ED28C8BB5DACB57B8B6DCBFF6CE45A66B5F1C3C6DE30B14B6F1878E7C71ADDAC72ACAB06A1AF5D5DC5BD7EEB797248CAD5C53DD22FB539640DFC4B57CB20E691DDE9BF1FBC6FE1FDE7C3BE31F16698DB76E6CB57B8B6FFD1722D53D7BE3C78FBC55A64961E2AF887E3ED574E91B7BDB5EF886F278A465FEF2B3FCCBFECFDDAE41A41B97E6A3CE4FEFAD4EA1CD23B4F0FF00C78F1AF83664B9F09F8C7C51A54FF7BCCB4D52781BFDDF964ABFE24FDAA3E2878CB4DBAB0F157C51F88D7DA6DE7CB3DA4BE21BAF2A45FEEB2EFAF3E564DADFF8ED2330565346A572C8EB741F8DDE30F06DF433F833C59E24D2A4B75DB14967A94F048ABFC2BB9596B5B5CFDAEBE2D78934F9ECF5CF8A9F122E2CEE1192580F88EE952456FBCBF2BD79E7983D69D91FDEA352753A1F0E7C5FF14F80E4B69BC1BE26F106952D9AFEEA5B4D46789E3FF812B6EAEE2E3F6F7F8DFA869EF6B73F167E2108240C8C1357756C37FB5F7BFF001EAF246C6DFBD4ABFDD146A5F372FC274FA4FC68F18F866489F44F1678A2D2785FCD59D3549FCD57DDBB7F99E66EDDFED577127FC1423E39DD43B3FE16EF8F9536EDF935265FFC7B6D791ED0AA0B8E7F8A9F1F96CA46DDB473489E6944D8B1F8A5E26D3F5296FACFC49E225D4269DAEA5BE7D52792EA495BEF3B4ACDE66EFBBFC55E8CDFF0510F8F2D64B6E9F17BC731469800A5E26EDABFED797BABC9BCB00E7EF5579942B0D946A28CA51349BC75AF5C6BD7BABEADAF6B97FAC6A13FDA2E350BBBF967BB99FF0085BCE66DCBB7F876FDDFE1AF59D27FE0A49F1EB45D161B0D37E2C78B52DA08962883BC12C8AABFF4D2489A46FF00799B7578BAA89BE6EDF76A786D846BFE347BD10E691A7E22F8B5E2BF19788AFB57F1B78ABC4DADEA7A83EFB8B9BFD4A79DDB6FDD55DCDB5557FBABB56BD23C27FF00051CF8EDE01F0D45A4784BE28789EDB4FB65D90C72982EA48D7FBAB24D13C9FF008F5792B59F99233BFDE6F9BEED2369FE61CE334734839A57B97FE207C64F177C58F154FADFC51F15788BC47AADD47B1E7D43517976A7F7238F77971AFF00B2AAB59FE19B5371AF685768CC8FA4EAF6F2B80DB7CC4DCBB95BFEFAFF00C769FF00D985576ED6AB9E1FD364865BB08AC36A24BF8AEEFF00EC6B392E61C647B7FC16F8C1E2EF845A7DC5B7C2CF899E32F0DDB6A978F34BA7E9D3AB2C937DD66587CB66DDB557E655FE1F9ABB393E2BFC6EF17AF9D7DE3AF8E53BA96F92D1B52DBB377CADFB9897EF2D78CF80B51F1D7C13F1B5CF887E01788754F0AEABAC33DBCB796BB37B42EDBD93F78ADB7E655FBBFDDAEEAFBF6A0FDA26F1D7EDFF001ABC76871D23BD48BFF418D6A398DA9981F17BC4979E2AB8B8B5F8B5E35F1D6A57FA5CA8CD61E20D52F564B77DBB959ADAE76ED6DADF7B6FDD6AFB2FFE0DD9D4D9F4DF8876CFC0096879FBDF2CD763FF0066AFCF9F17F85F5BF1CFC5C6D4FE2E6B9A8788B54D7227335EEA571E7CF33C6A8A9B99BFBABF2D7A3FC35F1878B7E0A69FF67F835E28D5BC2F25C2E2F24D3EEDAD9AE9377CAACCBF7BE666AA84F9257612F7B94FDF6A2BF0D93F698F8C122AFDA7E2D78C987FD86E75FF00D9AA9DD7C6EF88975331D4BE2778C25DCBFF004305D7FF001CAD3EB3E459FBA8303A52D7E0DC9E3CF13EA1CDFF008E7C492FBBEB774DFF00B52A95D6A9A95E65AF3C43AA4EDEB25FCADFFA1351F59F22632E63F7B24BC8A0FF005D222FD5AAACDE22D3EDBFE3EAFECE3FF7A751FD6BF032F1432A8BCBFB897FBC1E766FFD0AA1FECBD3E461BE7CFCBDE8FACF9147EF36A1F163C2DA436DD57C4BA05B31ED36A1127F36ACAD47F694F875A4328D57C79E0EB72DD049ACDBAFFECF5F85ABA6E8AD36EBC92DF1B7AED5A6B47A146FFE86D1BAFF00C06B2962E5FCA07ECD7C5DFF0082847C25F83FE13B8D4B55F1AE89AB490A6E4B2D2AF23BCB998FA2AC6DF2FF00BCDB40AF98FC49FF0005FDF0DF87F4E1727E1CEBAE23B8104E24D5205F246E2ACDF2AB6EDADB7FEFAEB5F9F77571A54D6B70936EF2D9195822EEF976FCDF2D71FE38D42C2EBE1FF8846C6F31608B68FE267F22256FFC796953C4CE72E56294A3189FA85E17FF0082FD781F55BBD461F14781FC4DA79D3DC730DDDBCFB90F47F99936D741A4FF00C17BBE0C6A90E56CBC5C4FA456B04BFF00A0CB5F92FE1FB9B66F1F5CBA46C9B749B4958FDEDB2AB2B6EF9BFDD6FBD5F47683FF000510F8B1A3C315BE83E3DD68451AFC90C56564DB7FD955582BAF9DD8E38E23DE3F53BF65EFDBA7C19FB5B5FDEDAFC33B4F13DACD6102DCC9FDA7A4C96D1BA336DF925E518EEFE1DD9AF68D86BE05FF00826EFED45F1F7E35FC62B5B2F8A56FA96A1E0786CE77BBD4AFF435B3F2DD57F74B1CCA89BDD99BEEED6F955ABEFBCB7BFE55B1D14EA73AB9C0FED0DFB457867F663F86F71E27F8A979F66B1858451C68374B732B7DD8E35FE26EBF957C33E2CFF838F3C0FA75CCB1F84BC0DADDE08C95125C5E244ADFF01556A83FE0BC37F7DAD7C45F85BE1E79593489A1BEBD2B9F964994C6BCFF00BABFFA157C17A87ECD7A3DADDBF2C595B6D6F1A6AC8F3EA62E7ED251E88FB1758FF83926691BFE243F0FAC907FD35BD924FF00D0556B9ED43FE0E49F133B6CD3FC19A0C3F2FF001ACEDFFB3D7CA91FECF3A2C8DFED37A549FF000CE7A326E603752F71A32FAD54EE7D1F7DFF00071C7C41979B3F0EF86E1FFB7395BFF6AD63DF7FC1C57F1427FF008F4D3FC3F17D34E6FF00D9A4AF075FD9DF4491B3343F7BE5CEEA95BF67AD063F97CB53ED4B963DCAFAC4FA9EBD71FF00070E7C5DDC763E8E31E9A6A5656ADFF0702FC65D521D905FDBDB1DDD60D3A056FF00C795ABCCDBF67FF0F2ED5FB2AFCDDEAC5B7ECF9E1F65F92D976FAD1CB1EE3FAC48D7D53FE0B97F1B6EA4DCBE25D593737F02C48BFF008EC759177FF05ACF8E73B661F14EBAD9F4BADBB7FEF95A997E00F86573BED17DBE6A923F813E19565D966B4B9601F59919971FF058EF8ED72BBBFE12BF107D3EDAF59773FF00057AF8EB3311FF0009578882FF00D7FCBFFC5575CBF077C3D1FDCB35FC2ADC7F087C36B0E5ECE33FF0156ACC3EB123CDE6FF0082AD7C6FBC53E778BFC45F37FD3FCFFF00C5567DC7FC1483E31EA4DFE93E2CF1136EEDF6D9FF00F8AAF55FF8549E1C85BFE3C21C6EEEB5617E1DF876D2327EC16F9DBDD2827DBC8F176FDB93E275F7FC7E6BDAF3FCDFF3F52B7FECD447FB5B78D2F9985CEABAD3EEFBD995EBDA23F0DF87ACD7E7D3ED7E61FDDDB4D9A1F0F5BED09A75AFFDF3417EDA523C6D7F688F135E332DCDFEA5F8B37CD4ADF19B5B7663737779F8EEAF57B8BED023901FB15AFCBD7E4DD55A6F1868363F2C3616EA3FEB92B6DA0B8D4948F315F8A1ABDF7CBF69BCC7FC0A95BC69AADC7DF9AF0FFC05ABD066F899A3C6AEB0585BB36EFF009E4AB5567F8B16CAC7EC7A55BAFB9A994B94AE56617806F354F10788A1B77378DF2B37DD6DABF757FF00666A97E317C0FBEF1368B33ECD82DD59B8F97F86BACF873F192687C4C62B6B6B5812EACE681FE5FBCBF2B7FDF5F2D74DAC78BC6ADA3DE5BA3AAB5D2155FF0067E5AE3A952F5343AA9D3BC0F9BFC19F08F5AF06EA1F67D06E2E2091977DC04FE2FE15FBD5E8563A4F883C91E75F5E6E6F978DBFFC4D684DE2D687567BC445DF227953A6DFF56CADBBFF008AA9DBE21794DF7E3C5573731AC63CA67AF86F5C93FD75E5F7E0F4E5F07EB122FCF79A863FEBAB55F6F8845977BCCB4C93C7D2FF0004D1E2B3E691440BE05D49994FDA6FB77BCEDFFC55491FC39D4646CBC97057DE76A71F1B49B73E7AFE151FFC2693337CF7322FB0A5CCC0497E1BDC7965E6699957D656A8FC3FE0BB68FE226816FA95B7DB121B3B89A580FCC927CED8DDFDEFF57FC54FB8F164CD09D924C5997B2B56F7C3B9AD74FF001A4373AF6B1A2A4B6B65B332DC6D8E46677FBBF2FCDF2C959D694B90BA7BC4F70D3FE15E8EB65048F656BBF62B7EEA0D8AD4C9B45D3F4DB811FD93EF6DDA0B5662FC68D2E19364BABE86D0AA2EDD93B36DFEEAFDCACDD53E2D688F74277D4F4F936B7DD1E6B337FE43AF0AA7B572D0EF8C6323AAB7866D159E1B685415965DA8D12C8DB59BE5F9BEF536D7459955E4D7919C4CCEE9BDBEEED54FE1DDFED57031F8A2DAE955F52F8A3A3C4D32EFD96FE0ABC7F2DBFBBB9A7F9AADD9FC56B4D37521FDABE349B5EB7F2195522F0AB58AC6772EDF9BCC666FE2AE8E594A3632E689D96EB5926C3430F95EE95AD268F6775A2CDB2185E39976BE57E5DBFDDAF379BE37787368D8FA9395EC2C1D77558B1FDA2744D2E398259EAC049F7B16FBB77FDF4D514E8D68CAD22AA4E94B63C82E3C3368B75721E58F30CAC9FF007CFCB595E01D2ACE3D535089E5577DD2FF00C07F7AD59B79FF0008DEB9E36BE99D3C64C19DD9A0B2B858155D9F73799E72B7F0B7F0D67687790E8BE2BD523D1E1D4A0B36763125ECAAF2B2FCBBB748AAAADF36EFBB5EE53D8F3A4F94F46D6B4FB08E180DC9529F6A877FFBBBD6BCFE4D37EDDE037D4AC1730C37F7517FC07CD6C7FECB563C45AFB4DA6E1770FDEC4CDF37FB6B5D57EC93670F8CBE0CF89AC3525590C37170DCFDE8F73336EAE88FC1230E6E671523CD616768CB6CDBEF4D9A52B1B37DEDB5B6B6A8B24836FDD665C5453E9EACCCCE307EF51192FE534F6713909B5878D88F989DD54AFF00C41335B97F2B76DADEBAF0F892EB76DDDF41505E786DE6859214F91AB5E556BB3397F74C8935A99A185955B732F7A2DF58B85601FF00BD5D1AF81CAD9C2367F0FCD5247F0F7FBEAC4D5C7FBA4182DAB4BCECF96A2FB71D9D1B35DAE97F0EFCE60CD1331AD0B3F877901A687037775A57881E7BA6CD733C6C30D8DD5761B0BF917E41B559B8AF4FB1F87A90B445FCB40DF773B6AFC3E17B2465135CDBAEDF5655ACE550AE63CC61F0FDE34237EE0DEF4DFF00846EECB65F757AB5C69BA5472056BDB34DABB79956AB4F71E1FB4F95F5184B7FB1F351ED893CE6DFC2F3B33F2D57AD7C23332AABEE6F97AD768BE2AF0C59A95FB4B49F48A9EDF13BC2F6ADB916E1D7D362AFFECD51297301C9AF83DCFF000354B0F83DDB940C6BA06F8D5E1E56DB67A7DD48DE9B96A48FE2D7DB17FE249E16BEB85FE1C2BB7FE82B531901851F81669976FCD5621F872ECA38FCEBA6B1D73C6BAD49FF0014FF0080750746FBA7ECEF5D2E8FF07FE3678A9517C3FF000EAF36B7DD26D5AB58CA4079FC3F0DC7F06E5DB5A30FC35FBABB3076F7AF5ED1FF00610FDA5FC4FB1ED3C1D25A2B77921DBB7FEFA5AECB42FF0082477ED1FE2551FDA33E9FA723766911597FF1EA7CAFB8463291F3C2FC369587CA9FF8ED3E3F86AF1C797DA3EAD5F59E91FF00042FF8B9AB63FE125F1D585B2B72C04ACDFF00A0AB5767A0FF00C1BF17D7183E30F8957473F7961566FF00E26B3F6720F6533E1EFF00840E0B5C7DB27854FDEFBEB5147A7D858EB8DBEF2DC27D8DCFDF5F9B6B2FFF00155FA37A07FC1BF3E00B7DBFF09578AFC417FF00DE0ADE5EEFFC7A93E2A7FC10BFC2DA1F82AE6E7F66C9E15F1520436E35D90C96AC15B737CCAB9590FCBB588655C7DDA6D3E5D8A8D191F9F7F037C05E0FF1F6A8F67FB44FC5ED2FE1E787ECE0F3DAF245F364B86DCAB1451AAB7DE6FDF337F776AFF7ABDFFE0CFEC19FB3BFED2BE2C8F48F835FB530D57508CFCF670D9AC52DC7FB31F9ECBBBFE03BABADF84DFF0006F3EA1F10BC3735EFED0DE34D4FC21AD42EE9636FE1FF002255D9D55EE5B6ED93E63F717F85796DCDF2EDF89BFE0855F10FC6D0D858F8DFE23F81350B5D2576DADE41E148B4EBE6FF006A492D51199BA7F1D11A7CBF64D23CCB4E53E74FF8280FFC13F753FD893E2E6833596AF71ADF85F5989A2D2EE6575FB634A8AAD73E647FC3B5591976FDEAE4FE18CDE0383C456EBF1D74CF1F6BDA0C9B5677F0EDFC16B3DAB2B6E696459957CD4DBFC08CACBFED57DB1FB55FFC1307E26DDFECDBF0CFC3BE1BF11EABF14758F066AF7B3CF35D5C2DB4F1DA5C246A2089A59773469E5FF1C8CDCFFC06B27E067FC113753F1EF82A1BFF008C5AFEABE08BD92E5D24D1E2B78AEDDA157F94B4FE7B0F9D57EEAFDDDD59C693E765D4F7A2B94F7DF047FC1247E027883C35A7EA7A3E93ADDF596A36F15DDBC926AF3AF988EBB95BE52BFC2D5D3DAFFC126FE04DB01FF1474B27FD74D52E9BFF006A57BCF81BC256DE00F05E91A1E8C646B3D16CA1B180C8773EC89151771F5C2D6BE42D7572C471F751F3E5AFFC12D3E05DABEE5F0340DECF7F74DFFB56B52DBFE09C1F046C80F2BE1DE86DFF005D0CAFFF00A13D7B7827B8A5271D68E5882563C86D7F608F83168730FC34F0896FF6EC15FF00F42AD5B0FD8F7E14E9A3FD13E1C78213FEE0B6E7FF0064AF49A28E589471967FB3A7C3ED3FFE41FE05F07C3FEE68D6EBFF00B256A597C30F0CE9C33A6F87742B7C7FCF3B0897F92D6FD1472C40E6BC55F08FC2FE36D06E34CF15787B46BEB1BB431CB0CB688CAE3F2AF063FF000487F80D716D716F7BE0FBAB98679565659357BCEA0EEC6E12E76FFB26BE9EA697F4A5ECD09AB9E25E07FF008274FC13F87BAE5CEA3E1BF873E1F37B75B7CC92EE26BCFBBD36ACCCCABD3B0AF56D17C03A1F86A309E1DD1B4AB155FBA2DACE3880FF00BE56B6360A360AB172C415428F96968A2828FCFAFF0082E97864A41F0935E0ABB2DF59BAD36524769A10C3FF0045357C45AD485A653FDE557E3FDA5AFD20FF0082DCF859F5BFD8966D52D50349E1AD72C351CFF757CDF29BFF0046D7E6BDFDDADC2C6CAAA3722B57427EEC4F0B151E5ACFFAE9FF00008773463E4DAAADF769FB5F77B547E6EDC7FF00154AB71E6365FF002AE720B11B1997E5E8B4D6C06DDF2AFBD451DD22E551B685A82EB5445DDB3E6FAD003EEAEBFE79AF2B4FB1D47C95226E9B7E5AC99B521B7E46DDBBE5AA8DAAAAFF001ED6FF00C7A8037A7D436F30FF007A91750458FAFE55CE5C7891163C26DFC2A84DE2948F3B0E4FF0D05463291D949A920F9D1D7E5AAD378923B71877565AE06EBC6CCCBF23D63DD7891E4DC5DBE6F7A0D6347F98EFF50F192A47F23F3F5AC8BAF1D3B2852F9F97AD71171AE48CC426E3FF00A0D42D71249B4EE603F88506D1A6753378CA5931CB33554BCF15C9313FBCAC166DEDF3FF000D26D2DB83F4A0D3D9C4D1935C92651CB55592676FBFD5A9B0A868E9EF8A9D4AE5E52256F2E4A7AC8CADB5E9645DCBF253B23D052E57CDEF0CADAA69E9A8431EF79A330BACA8F1BB236E5AEF6DD6E356D63735D430C6D02336F7DBFC2DF77FBDF36DAE19AE1216FDF3C63EAD5E8BE19F104FAB6876D731DC4DB3CA5DDB225DABB7E5FBDB6B9AB53E5E5E536A7220BCF07DB5C33C8FA943048BF379836FFF001559BA46931DBF882DEDAFDA1CDF2AF952CB6ACA932B7DD65FF7BF86BB6B385358B7963B9BDBCD9323238DEABB95BFE03546C7E18DCFF6C5BDC5FEAB24D696FB15632BF33046560BFEEFCAB58C7FBC5ABFD92CAF814C7F705AAEDF44A77FC21522AE77DBA7FDB2ADFD4B535D3E1CA2B4A776D541FC4D59DA5F89BFB499E1B985A19179C6EDCADFF02AC79A7CBCC5945BC1F332FC97308FA45FFD955793C2770A76F9EBFF007C7FF655D1473F98DFECFF000D2C8BBB77351ED240730BE1F785B6BDD37CBFEC7CB518F07DA5C6A4B3BF96D70A8CAB2F94BBBFDDADCBC8C2AF46F96B36CF563BA57746448D7E6255AB5A72BC404FEC29A38F1F6993737FB0AB505C787E6FF96979718FBB8DCAB599A7FC54FB76B51C37F6D2470DC36D89CBEE6CFF00B4BFC35D67926E21DCBC6EF5A9A9371039EFEC36F2DB64F75BDBFE9AD43368B2C6155DE4F97B16F99ABA2B7B336B9D8F206F6665A56B1565FF00492CECDDCB5116E5B95CD239D8F431E60F99B77FBD5724D0C4336D7DDB9555B05BFBCBBAB4574F8B774F96A7B7D3D1BB7CB5728F31273B7FFB3FDAF8B745B6D713C43A96952EA9ACA696D6F6970FFB9564FF008F865FBBF79635DB5F68FC0AFF008269EA1FB537FC13B7C11636F73A358F8C7C37AF6A317F6CDD4197D4AC96E6750AD2AAB332EE6DCBFEED765FF04E6FF827E7C39FDA2FE04C9E25F8A56DAC5E5E2EB32C0B145A84B6D0058B6327EEE3DBF37CDF7ABF417C19E0BD2BE1E7852C744F05D941A6E95A6C4B05B5B42BB52141D8574E1E9CF796C1EE9F99DE16FF00837FF5FBD9D078E3C6DA35ADB6E0CFF63B796793EF6EF9776D5AF8DBC5FF000E354FF827B7ED3FE3DF01789E19352B4865F3EDE41F27DB2DE7F9E2963DDFEF32FF00C05ABFA107CE38AF01FDB3BFE09DBE03FDB5ED2CAE3C770CDA778874B468ECF57B4F967443FF002CE4FF009E89FECB575463CA633A4A48FC1B935479B50BC9BC964F3AE1E554DDF7559B752B6A134ABB9235FC5BEF57EA669FFF0006FE6830DD6ED43C63713C7BBB5AED6C7FDF55DBF86FFE0859F0CF4C8D3FB6B53D5AF0AFA058EB394642F66CFC729F509E367D90C63FBC7E6A826F133FDC445DCBF36D44DD5FB9DE1EFF00823FFC14D11834FA1DCDEB7FD379F767F4AEE740FF0082797C20F0DA8FECBF05E98BFEF6E34F95F2D8234E513F00ADFC45AC5E478D36C2FA6DBDA3B566FF00D96B4ECF47F1C6B4DBB4DF0EEB4FEE2D76FF00E855FD0AE93FB2C7C3CD17FE41DE0FD097EB6C1FFF0042AE934DF869E1DD236FF65E85A45BEDE9E5D9C6BFFB2D3A71E51FB3FE63F9ECD07F679F8C1E2470BA3F85B5A3BBEE82BB6BB7D17FE09CFF001FBC5DB4DB785F524DDDE4DFFF00C4D7EF9C1690DBA6DB68D231FECAEDA989C75A728464EE3F668FC3ED03FE08C1F1E35F54FB65A5BDA6EFF9E926DDBFF7D3576BA0FF00C100FE296A2CBFDBDE23D2ECC7F17CCADFFB3357EC5EF1EB46F1EB53ECE23F648FCADD07FE0DDAD4A601BC4DE3A846EFBC2146F97FF1DAEF3C3BFF0006F1F832D590F88FC5BAB5CFF7B626DFFD9ABF45E9378F5AB8C5445ECD1F127863FE0837F05B4620EAABAC5F9EFBE50BFE35DDF873FE08FDF01F400197C20B74CBD0CF2EEFE55F4FFCB47CB45A269CA8F1DD0BF601F83DE1A0BFD97E01D046DFEFC45FFF004235D9E91FB3FF0081F41DBFD91E12F0EC1B7A6DD3E2FF00E26BAFF968F968B20E5467D978574CD3D02D869D63005E8238157FA55F58913EE0514FA2A85CA1451450505145140051451400514514005145140051451400514514005145140051451400514514005145140051451401E31FF0507F019F88FF00B147C4CD2A3412492E85713C631FC712F9ABFAC62BF16F45D6BFB43C2FA44DF784D6A9FF008EAEDFFD96BF7E7C51A2C5E23F0DEA1A6DE00D05FDBC96EE0F75752A7FF42AFE7C56C66F08437FA25E2E27F0EEA573A6C83FBBE54ACB5AAF7A97CFFAFC8F231BEED4F55F97FC39B4BA805FF5C557FE0550DC6B51A2FCADCAFF00B55CD5C6B690AB198E5FD2B326F112C8FF00BC6DABED591CCA3CC753378A30A77B7E1BAB2EFBC541BE6CB0DAD5CADE6BFE648763ED0DF2FDEAA725E3B31F9FEF506BECCE92F3C58D83BDF1FDDACE9BC50FBB31B366B2241E6ED2ECCDF5A6342BE66DF9BE6F4A0DA31E52ECDE21966EFCFB555FED6799C6CDD4D5B70AB8C53E38FE6F928358C48E4DF2367E60D49F671B7E76DC7D6A56F9BAD0F8A0D08EDEDCAB337E953FDD8FE71B5AA1F3B6AFA1FBB52C31C975B521569256FBAA3E6A0067DD65A4DDB5B6D7B77ECF9FF04F9F89FF00B45DC452782FC397AB62FB41BBB81E540A3D77357DD7FB3EFF00C107B42D06386F3E3D6B92EA13E7735969FF002A2FFB2D2B7FECAB4BE2635194B63F2EB43F0CDFEB4C134DB69A5DDD847BABD67E1AFEC0BF147E2D303E0FF096AD73137FCB5F21A38FFEFA6F96BF6C3E167EC85F0DFE0D5B471F807C21A3DB4918E2796013CDFF007F24CB57A4AC688A022A851DB14CB8D27D4FC81F87FF00F041FF0089DE24547F19DEE8BA1A375496E3CD75FF0080C7BBFF0042AF6BF87FFF0006F8F866DC23FC51F1B6A97BFDE874FB65807FDF6CCDFF00A0D7E8B6C14B41A469C627CBDF0DBFE08F3F00FE1D88DFFE10C8F5CB88FF00E5AEAD3BCE4FFC0785FF00C76BDD3C2BF043C1DE03F0B2689E10F0BE85A6E911EEDB6905946B10DCDB9BE5C7726BACD828D8282AD13E38FDB73FE0981E1BF88FE16BEF107C05D36DBC3FE2AB3469BECB68BE5DAEA98F98A18FEEC7275DACBF8D7E6EDAB4861314C8C92C2CC8E87E5656FF006ABF79D932841AFE7DBE256B9ADE99F15BC7C35ED76E9DA1F12DF27EEA0B75F97CD76FF9E4DFDEAE7AD479F63394BD94BC8DAD4ACC5F43B1D981FBCA47F09AA7A5787574DB89669A469659176E4AAAAAAFF75556BC9359F8E1A8D8DE3C49737DFBBFBC7CD8BFF41F216B36D7E386BDAA5E0FEC9D49A06DAFB44BB674919559955976AEDFBBB772FF007AB09519A358C94B589EFAB9FBC2A97D8AEE4D504BBD843FC596FBCBFEED74BFB267C17D7BF6AFF8C1E1DF0B787B537B14D62237B7973E5237D92D1155A57DBB7E66F995557FBCCB5F42FF00C14CBF658F0B7C021F0DBC27F062C2EA1BDD53CEF3EFE5B867BAD4A5678A24591BFDE66F955555777DDACFD9FBBCE33E60B8B71E5B6F359BAA58B34256D9D5BE5E9BBEF57EC07C0FFF0082737C31F861F0C749D23C4FE14D17C4BAA5BC60DEEA3A8DAADC4F73337DF6DCC385CF0ABFC2B5D66A1FB117C21D46C64827F871E11F2E45DA76E9D1C6DFF7D28DC2B5A786715F101F83D67E0F9A6D72089FCB8C433AB82772B36DDD5E8F0C7FB81BCFDDAFA43FE0A89FF04F3D33F66ABDD1FC67F07A4BDB7F0BEAD7E96775A7C93BCABA6DC37CC8D1B37FCB37D8CBB5BEEB6DFEF57CE4B365B6FCB58D6A3CA03258C2B7AD4575848FE7EB4E9DB68FF7AA9CCCCCBFDEA98C796201E76D61B2ACDB746AA033E60FEED5EB36DBF23FDEA7CDCA07EA37FC11C66DDFB28DE47FF3CFC4177FF8F244D5F58D7C39FF000463F8ABA4BF80F5FF00065CDD2C7AE2DFBEAD0DBB7CAD35BB2448CCBFDEDACBF37FBCB5F71D7A147E0401451456A01451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145004617E5F9ABF05FFE0A17E136F84DFB77FC52D248F2EDAFB525D6205FBBC5CA2CBFFA13357EF58E723B57E417FC1C03F0CDBC2FFB53F833C556CAB15B7897436B3964FEF4D6D2B7FEC93C7FF7CD6D45EE8F3B1F0E650979FE67C39A86B5E77F798B567FDA9F6B6C6E29F35ABB31DFB7F0A62DABEDFB8DF2AD62654E3CA8486176033FC5DEA78E0656DCED9FE1A2DE3C2FDD66F6152797FBCC7F150511F98DB8AE3EED11CCCCCDC602D4D1C7BB77CABF377A63222B3141FF008F5003564DDEC68599964E13F1A1637964DB6D1B1666DB85F9ABD8FE017EC13F147F68EBC87FE100F0CDF3D9B36D6BB993CAB65FF7A46F9682E3EF7BA7906D4656649173BBA56DF83FE1AEB7E3AD4A1B5F0C69B797F71336D548137337FBB5FA6FFB38FF00C107B46F0F8B6BEFDA0F5C7D4A75C3358E9DF2C5FEEB4ADFFB2AFF00C0ABEDBF84BFB3A782FE05E9C96DF0AFC39A6692157699638819DFFDE91BE66FCE8368D391F963FB3AFF00C1113C7BF132486F3E27491F8574A976B7FA4A6EBB65FF00663FBCBFF02DB5F7A7ECF9FF0004B2F84DF00A28674D163F106A8986377A8A89173FECC7F77FEFADD5F49D2326683A234D4482CACA1D3EDA386C6348628D76A468BB5547B0AB14514161451450014514500145155EF6F22D3AD249EF2448A1850C8EEC70A8A3924D007897FC141BF6B5D37F637FD9A75DF13EA7320D52689AD349859B99AE5C614FFBABF78FFBBEF5F917F04B4BFB47C27D77C5FF0013A3C5E6A53BDD7987EF2FCAAAADF35741FF00052FFDA62EBF6D9FDA776DB4AC9E00F07CAD05846EDB52E995BE67FF00816D66FF007556BCCFE257C7C7F1278167F0DD8585ADAD97CB12BC4ECBE622FF000B6EFF00D0AA65251382BDE6F43C37C61A7AAEA5AA5F4DB7EC9712BC50191BFBAAADF2FF00B5F3562F85E346D520774645575550176AFCCDFC5FED56D49A6EA3A95F186187EC7691B379517DE655FEF799FC55DA7C27FD9CBC51F183C4B6B65F09B45BED76EC3E12DAD994BB15F9BF8997FBB58D497BC74D38F2C4FA7BFE096DFB40E91FB39FC7CF046BBF112E61B2D0F58D2DB41BABB95B6A58B4AB1B44EEDFC2BBE35566FF006ABEEFFF0082B47C34BDD6BC03E0BF895E08B56D49BE1CEAD16A3790C0BBDA4B2678DDA45FF75E28CFFBACC6BE28D07FE0907F1D6EFC0367A65F785B47858045B84B9D52DE4464CFCCBF2C9F7BFDAFE165AFA8FE0FFEC83FB5B7C2CF87D0F87740F89BE09B6D16DD1A286C6FE1FED2F2223FF2CBCC7B6DC57FD9DDB7F0ACE317671B686DF11F6D7C39F1FE95F157C11A5788BC13751DEE95ACDB47756D2C6D9564619FCF9C1AE82BE1FF0086DFB16FED33F0BBC1F6FA1F813E2C7817C37A4C0F2CB1D9E9DA222C51BBC8CEE57741FC4CCCD5AD2FEC8BFB545F906F7F68FB7840FF009E1A1403FF00690ADE3295B540607FC16E7E2D5BE95F0BFC33E0A85375DEA97ADACCC47FCB286DD4AA7E2D2CABFF00018DEBF3D6DED669AE18A47237FB5B6BEC6FDA57FE0945F17FE23C37DAF78E3E25687E31BF16EAD35CDE473DA5E430C1F3F970797BA2F986E5F9931F37BD7CD16BFB3D6A9AE782D75DBF785EDE68DFC84BDBA96E646DAAACBBA35D8B5C988E6E6D8529289C65F5D5B5BF17979670B2FDE0F2AEEFFBE56A092EADDA3CDB26A176BEB15BB2C7FF007D49B56BD9FC0FFB2EDB497967FDB779324735BF9AF1D9C096CBF2FF000EE55DDFF8F5761E0BFD9CF40934B9AE6D74DB7BCBC8EE9977DDB35CB2AED5655FDE6EFEF5724AFEF498CF992D6592F19D74DB28599559DBCC9DA76555FBCDB6156FFD0ABA6F0E7C29F1678BBEC5FD950DC431EA1FEA1D208AD63915BFBB248CCDFF008ED7D4BE3AF0FA68FAB787AD21B486DD2E34BD497CA8D163556D9137DDA9FE15E822EBC2BE0CB9D8A7CBD36DF76437CADB5694A2B92332232E6958F57FF82657FC13DE4F823ADC5F127C5FAD4979A96A9A7BDBDB58472B4B15BABB2EE7924651BA4F976ED55555DCDD6BED9AE33F67C5D9F073421FDD8587FE3ED5D9D7AF47E0458514515A80514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400018E95F09FFC17DFE117FC271FB21E9FE26B68BCC9FC13AD4174E47DEFB3CFFB893FF1E68DBFE035F76579E7ED4DF0813E3C7ECF1E32F08DD26FFEDED2A7B58B3DA4D998CFFDF6AB574A5CB35739B130E7A6D23F9E89ADBE6DC9FF0001A6C718B763CED6917E635A171A6CFA7422DF524649ED59A29C15F9A365F9595BFE04AD552EA1C6553E76DDF2E1694972CAC71C6578DD19F23796DF2756EC2A292E91635933C7D36D7AA7C15FD8DFE21FED19A8087E15F86B52BF899B6B5C795B608FFDE91BE55AB7FB477EC53A9FECABE3FD3743FDA17CCB59352B54BBB37827FF0046B805B6B2F98BFC4ADB5597FDA5FEF544BDD2AC79B784F4ABEF176A51D9786ECAE2FEF2E1B6A47144CEECDFECAAFDEAFB03F66FFF00822E7C49F8BA96D7DF11A18FC1BA549F331BE5FF004961FECC0BF37FDF5B6BEA6FF8215E8DE1DD43F67EF11DCDB785F42D37C49A1F88EEB4CB8BEB7B73E7CF0EC8A584F992333FDD9B6FDEFE1AFBB76EDEB53197346E752C32EACF993F676FF824F7C27F808915C5E695FF000946AB1E0FDAB54556456FF6621F2FFDF5BABE95B0D3E0D32D52DF4D862B68231848E24088A3FD9515384F5A7559BC62A3B05145141414514500145145001451450014514500349DDC0AF873FE0B3FFB689F837F09D3E1FF00C3DB807C4FE2F8FCB9423FCD0DBB7CBB7FE07FFA0AB7AD7D6BF1C3E2FE95F017E176AFE29F1848A965A54065C138333FF022FBB1E2BF07BE2E7C60D57F68FF008B5ACF8FFC6770A6EF56B87FB0472BED4862FE1DBFDDF97E5FF756A652E5329CBA238CBABA6F0BF87534A4B892E6655DD2C8EDB9A466F99BFF001EAE6E657B8556FBBB9B6E0D5CD52E56E2E8BCCDBD959BFE04D4CD26D7ED52BC9322848DB902B94CE9C7989D6D45ADAC5138FDF5C2FCD8FE1AFD67FF008227FEC903E1AFC309FE2078A60DBAA7880182C37A6D68ADD5BE67FF008132EDFF00757FDAAFCF8FD8D7F67CB8FDA73F684D07C3FA4AB1B6B89566BD9B1FF1EF08E5CFE015ABF79FC31E1BB3F07F87ACB4AF0F42B6F65A7C296F046BD2345181574E37674FC268D14515D201451450054D52D45F697730B7496278CFE22BF2FBC1B66DFF000CE30F77B7DD1293F337DD45AFD4965DDC7B57E64F836D597E03EA70E377D9F529A2FF00C7D56B96BFD9F506B9A2CD0F0AE87FE95A3CC9B84725AA363FE01FC557BE13ED6D1F50FB6F9988EF537E3EF37EE92A7F05D9C971E1DF0F4BBB6AC9611367FE01507C33B1DD16B088EDBE3BA465FF00BE76FF00ECB5E572DD4C23EEB8B1BF1C218BFE128F05CD6DF32EFBEB7625BE6DBF6756FF00D96B5FE08DBFDABE11F85644DCBFE808983FDE5DCB58FF001B219A6B8F0348F1C23CBD526818AAFF007ACE5FFE26BA3FD9EE1F3BE0DF86F8E7C9953FEF99DD6ADFFBBC48E6F7CFB0FF0067470DF07B4807F87CE4FF00BE67916BB8AE0FF66E8BC9F84D649F37EEEE2E579FFAEEF5DE57AF47E0458514515A805145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005230DCB4B45007C35FB597FC118743F8E3F10752F13FC26F11FF00C2297BAC4ED717D612DAF9F6724ADF7E58F6B2B46CCDF315F994B7F76BA1FD9DBFE08DBF0DBE103C377F1044BE31D523E5BED09E4DAE7FEB9A9F9BFE047F0AFB0C2E0E734B4E52BEE611C3C23B19FA0E8163E18D322B2F0E59DAE9F670AED8E0B788451C63D9578AF807FE0BB1E34D23C6DA0782BE13784B41BCD7BE297896F9351D0DEDE2CFF655BABEC95D9BEF6650AD1AC6BF799771DBB335FA1980073DABE0CFF8286788AFFF0067FF00F8282FC20F895FD8779AC69874EB9D2C0B75F99EE02CE1600D8F959D6EB70FFAE6DE9446FAB43AB1528D9EC7947EC7D73F147FE09F1FB577C37F877F1727B78346F88D14925C69F6F70B3C11CACCD1A3B3796BB67DCB1EEF99BE5655DD5FA96BF32835F19FC1DFD9E7E227ED4BF1C7C3BF163F6B2B4B0F0DD9F86A5173E1FF000FC102B5CC3B59991A691BE755DDB58AFDE6655F956BECD073D2A12B0E95EDA851451546A14514500145145001451450014514500148E7032691CD7827FC1453F69F5FD98FF678D4B50D2A5DBADEA8AD676013EFAB30F99D7FDA553F2FFB4CB4132972AB9F0AFF00C1647F6BB97E367C4DB7F869F0FAEB3A06812B36A72C4FF2CF2AFCAFFEF6DFBABFF02AF867C4DAB6E992DA10A96F0AEC013F86BB8F1A69773A2DAFDA35B46FED4D5916E2E241FED7F0B3579AEA045C5C7DED8DE9FDDA8F8A472C65CDEF156691DA455FD2B66D748923B3822876E64F9DFE5FBAB50E9362D35CEFB9E136EE67FEF57B0FEC55FB3D4FFB4EFED11A2F876C1585B5C5C096F64FE186DD3E676FFBE57FEFAAC2ACBB1AD3F88FD1CFF8231FECAC9F09FE0BCDE35D7ED95357F15FFC7BEE1F34768ADF2FFDF6CBBBFE02B5F6CD50F0FE8169E16D0ACF4DD1215B7B3B1852DE18D7A2228DAA2AFD6F4E3CB1370A28A2AC028A28A0047FBB5F9B9A4584BA6FC29F1CC1B1BCDB5D5EF97057EEED9DBFF89AFD2371922BC72F3F62BF085F4FE2836D2EB76B0F8BAF26BDBF896EB7AA4B2A6D97C9F315BCB56FBDB578DCC5857357839A4901F307C37D2E6BAF877E1F977AAEDB045FF817CD5ABA2DAD868B0BF93E4DAC73317767957F78DBBF859BFE055F527853F658F09F83F42B1D374F86FE5B5D3E04822135CB16DABFDE65C64D757E1EF869E1EF0A228F0DE89A65914FE28AD915BFEFAC66B8A3809EBEF01F0AFC69F08EB7E2AF0D680DF09BC37E20F155CE9FABF9ED169F6ACFF23412A6EF3A4DB16DDCCBFC75E93FB34FECF3E3A83E1669FA7F8EBC332787EE6D7CD6F2EF2EADE4DDBE5771FEA5DF6EDDCB5F5F2A055F90629467BD74470494391B0F3307E1C785DBC15E0CB2D3AE4C466854994C79D9BD9B736DCF38CB56FD145764572AB005145154014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001514B024BB7CD456DA772E57383EB52D14005145140051451400514514005145140051451400514514008FC608ED5F3A7FC1447F62CBCFDB2BE1D6996BE0ED6ADF47D77C3F746EACCDDC4D25ADCEEC662976FCCA372A1DC376DDBF76BE8C233D693660F1C506728AA8ACCFC4EF8BDFF0004DEFDA0FC27A85CDCF8AFC2179AF45FF3DF42962BE8B6FF00B31AB2CABFF7C57CF7E30F87BA9781EE26B7F19E97A9E8D771AFCD16A1672D9BFF00DF332AD7F46810E79ACFD6FC2FA778A6C5EDBC4BA7D96A16D27DE8AE605950FF00C05854CA3731542DB33F9C4864FB72C56FA6F9689F2FFB55F4EFFC11C7C49A96ADFB6068D67E1B9AE2C5BCC779D16231FDA21456F3964FF63FF66DB5FAA5E2EFD833E0BF8EA371E24F85FE0795A4FBD247A3C1049FF7F23556FD6A7F807FB177C30FD99354BDBEF821E11B0D12FF00504F2A7BA0D24F3B47BB7796B24ACCCA99E768F96A5D189A538CA32D4F57A28A2B4360A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2803FFD9
WHERE szItemName = 'M16A1, 5.56x45mm'
EXECUTE @RC = dbo.NEW_ITEM @name = 'M16A2, 5.56x45mm',
                           @class_ofItem = 'gun',
                           @Returns = @asd OUTPUT
UPDATE ITEM
SET Item_Image = 0xFFD8FFE000104A46494600010200006400640000FFEC00114475636B7900010004000000640000FFEE000E41646F62650064C000000001FFDB008400010101010101010101010101010101010101010101010101010101010101010101010101010101010101010202020202020202020202030303030303030303030101010101010102010102020201020203030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303FFC000110800EC038403011100021101031101FFC400AE00010000060301010000000000000000000003040506070802090A010B010100030101000000000000000000000000010203040510000104010401030302040306050205050201030405060011120708212213311409150A41613223A1D1165171B14217188152332425F043623428191A72825326271100020102040307040202010403010100000111210231411203F05161718191A1221304B1C1D1E1F1324214235272330562924382E2FFDA000C03010002110311003F00F7F1A01A01A01A038292A10220AAA172DD511150764DD1495493645FA7D1775D01CF40340340340340340340340340340340340340340340340340340340340340340340340340340340340340532EEEE9B1AA6B7C8F23B7ACC7F1EC7EB27DDDF5F5DCF89554D494D5511D9F696F6F693DD620D6D656C161C7A44879C06996808CC9051574C2AC1E7E3B9BF715F8C586E512A83A73AE733EEAA988F3F1C3377EC99EBBC52F0A3BCE3253B1576E2A2D6D6E68DE5E1F0CB38D195FDD55B689BE0E9E0F7EDD5A6DA9AFB572B753A154C03F70EF8C9763C7B0BAA3B47097C91147F41914398441DF72DDD9772F600BF10B7B7226DB75392EC9BA6C4B0BE45930F10F66EC54419272AFCFE78254532A2251C9EC7CB4E44219791145C6A1D03789B8F9A1C1AE9B2F29B6A7ABB99D32BD52573AD932E1B4D98039205FF9196ADEFD99490F6AE58E055EBFF3DFE0049847696775D974150CA0AC9B4998952DDC588A4F7C7B4C0C2B2DCAE6441E3B9A1B8D0B669B081138420B3EF599C91A1E5533D50FE5F7F1E9900B48C77EFE9F21C55138D71D67DBB5CB1CBE456D0644C77035AB0551D8FD242A0B6BC8B6F5DA7DDDBE6345D8C50CDD8EFE403C22CA5116AFCACE8864D448918BEEC9C671494A82E235FF00E4F299F4D2B911AA714E1B98FB8771F5D595F63CD15D377233AE2DDCBD3F9C0A1E15DADD6D98012EC258B6738BE4024BF2A31B2154DA4B455F99503FFEA5DBEBA94D3C0886649D481A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A021A9AA2AA7A7D7FFAFE3A03E7325F4444FF001FF3D0169D7F60E0D6D914FC42AB35C42CF2CAA27C6D317AFC929A6E455A51541248CFA48D39DB28651D5C1E68E342A1C937DB74D0176735FE5FE3FE7A01CD7F97F8FF009E80735FE5FE3FE7A01CD7F97F8FF9E80735FE5FE3FE7A022A7AA22FFB74034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034078E1FCFC79B7DAD99F91123F1F15168EF5FF49E338FE0F9B764C8A7B020BDEDAB2BBAB5CBA047BB7958F8A3E1586FC31063D56CEB53EE9C09537E5623B0C8F0FCAF916D97AD96DA6D71C6075FC7D8D76FB992711C64748EE65D875544AAC7E161F8CB86E3A4D479391D8E3ACDADFCAFB5755C8F0C72217E45BCFF0085D47B836E219920AA36084229CFA6DB62E69EB85DFDBE26FAE755AA3429AD69D9D3AFF26BFDD6410686FD2A6BDB4A462C5A39D19934902C442D8DD018B145F216E24E6B9B4E036A40A682E0A27AEA2FB96D58FEB8B9CA567D3C282D575F77AA8B9523F5D7F94E157DB376B2320507DB96AC374AD924736D5E6E5CAAB2902C9B689BB8462BE84A9E883E9EBC912DB529E9A3B74AAAFA47755608AEE3B639634AF1D64C6B9A4D29BD7D9852446DA5936AC338BD5B6DB7FF00B9B3BFC8EDEB61350DC55688E51BCEA6E9C8B761969C24111170B5B3E6A63C8CBFAD1C19911D06E63AE0A048171E25421401103536C491B4056D7613DD114BD78EDB27D75554712DCD78CFB3CA4B7F65A9252BCCBA59B490DB65F6EFCF11401541665C86B75D95765465D6B8F231DBEAA5E8A2BB26A6294749FDF1E2554CC6454BF54982406FB846E8A80A7DCC68D33743424F904E534F903423B2EE89BFFC749CDFF5096A50A663E9F72F7C73B47B1B17269FC6B31C871D75B6997585A4B37A81C46DE754DB142A43AE7186C9C6D1511084F7115FE08BA953857C68F8E845D156E1AFC712676A6F3E3CCAA306E3D67935DEF15B8E4E136C2F7176A4963DE7FD5F6537349305C0373DDE809EBBEEBC5551616EDD0EE4DE9ED0F6DA710BC0CED8CFE5F7F20D8CB5F043F22F2F9A0A288BFACD1757E50E17C8ADFBC1ECBBAC72796BC88137E2F6C28ABC76E4A8B65BF764E43D9AC354E38E667AC63F3C5E7751F15B1BEEB1CC10176719CB3ABEBD642FC87B2735C36FFAE005414761D853F8EE86BF4B7FB1744CA2AF654C3952679C7FF711F91F1DD4FF005374CF47DD37EA8434F03B0311E3CFE226CBEE24E739EEE0C8A1F2FED7BF74DB8ECA856F7EEE4B22BED76C333E51FEE368EE23419078A50D0950BE59145DE162F111088A22B706D7A4E0036247BAEC52F711DBEABABADE9CBCCAFB7D4CF78DFEE17F17E6B0259574AF7D50C92524DA94FA8F238488800425F713FB3F169A88A7C8550A28922F1F45DCB816FD99D07B573AA33F62BF9C2F02F2250FD4722ED4C39094D08EFF00A932CB66DA511DC10CF0063351DDF2F68F1E5B2FA9714F5D596F58F1A11A2EC0D88C63F27BE05E5B299875DE49E1758F3E6AD81E675D96F5E4502F67FF00989D9F6398D4288248E22A2BAE022A6EA8BE8BB5BDDDBE6468BB91BB38EE498EE5F4B5F926277F4B9463B6EC7DCD55FE3B6906EE96CE37326FEE2BED6B5F93066B1F2010F36DC21DD1537DD3574D3AAC0A95AD00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D01C54D1176F5D01F39A7F3FF0FF003D010D7D557F9AE80F311F9B3FC91CFAD9B65E1B740E5F3E1B901934F23F2FC4AC64D7CD296FC769FACE8AAEC8EB5F8F6105A387202C330384EB26B19C874EAF18CBB88ACE57DFFE16CEA69C473EBCBC1AFA1B6DD9FE774694D63CB3ED3CAFC39C712756D9D620E3D61532225A54DDE224B85DBD15B40257A1DD6337989152DA515BD5BE884D4D82EC79114C509B73926FAE4B7E46EA5A9AD4D5B549DB56B18C30C1E1DF299D0F6EC9898AF5CF099FCD7A1EE0BF09DE6E763798BE3766B53DD372D653DB7E3E761C6EB4BBCE062C5853FB0F10B7C371DCCB03CCB25895EC44AB6730760DC49ABB5388C31166CBAA29ADB51FEE96333D7B5BB6EEAF4E5C7439B776AEDB86F07F6C4EE535A990D00D00D01110D11113D7E9FF00D7F1D01F79A7F3FF000FF3D00E69FCFF00C3FCF4039A7F3FF0FF003D00E69FCFFC3FCF4039A7F3FF000FF3D00E69FCFF00C3FCF4039A7F3FF0FF003D00E69FCFFC3FCF4039A7F3FF000FF3D00E69FCFF00C3FCF4039A7F3FF0FF003D00E69FCFFC3FCF4010D17D3D7FFAFF00C74073D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D010DD75A61A75F7DD6D96196CDD79E74C5B69A69B15371D75C35406DB6C115489551111375D01F9EE7EE03CCA928BF271DC3635F7B48E4D7BA8BA415D61BB9A9578E3161F2C91CF88E4A3CA88D3626A22A2A4DF12D9514493CDF98AC6FD59C60E1BAE1CF94C6477FC5772B653849E7861E1CF13A8EAFEDAC032A1A69E16D43125D8C74A5CBE0DE5AD6535863D57178E431A75446B2A69933248B3727A788D3454D263CB165DE6E92035C1296D8DDDADCB7478D32C551A8FB9677A4B43692969F38EDC3F0634CDBB1ABF28CD624CA99F118835115B880EC9487124B8917EF652D83B0ACC982682DE74C5588DAA723643724445D65BBEF2DB6B6ED7EE7A65D39E5D98B4D790B5D9AE5B512E85CB0324A2A2BCC8255ACEA4C558C961E21758DC59D91B4C40B9AF855F371BB5B2ADB0B49EFBF2241DFD5487242FCAA0C3D251A040651B01BEC5B758DEDDF75D7699F55D1EA9CDC255511111F76FDCAE6AEB55B6CE4A691974C68CAA83E3636FF00AD4A75F7A8F1F052C7DB11237720C8AEE3131659155313CA23AF8B54EC955D5CB745A69C616CA7F2489C1E5D9E8D4AEBBFB2587DFBE227BB2932B55F1A6D989AF1871CCF477E15FEDF6F20FC8EC4EA3B4BCA4ECAB0F16709C8988B678E756E154516EBBA6DA825823D16765B73909854F5D3D321181B70DD853E7A0B8A32A257BC0AD2DB6B6B7376D575F4EAEADF72850D77BEC86372FDBDBBDAB7D5D945E73870CEC917F6C3F86FB8A8F921E68027101340CFBA953926C3F3202FFD15DDB17947D53D764F4DF5BFB0F1775614D23032F792C2DF39F1E6434FDB13E2320A02F941E69937EAAA0599F4C6FC947642131E8E126F62D9761D915136DB6D1EC26A1B73DDE216FE972979B2397ED93F12F90907937E63AA0EE8A3232DE9F7848554BDBEDE986547D0953D36554D3D8A44D3B17805BD0E60F81FB64BC4D4DD4FC9EF3208BDE82A39574CB620869C150113A514915036D8B7E48BEBBEFA2F8EB16E5F6221EF4A84A176BF1EDFB50AB55FED9CF0CE34792D5B7909E685BBCE9AFDBBED764F57540C369537E2DB30BA638BEEFC844BC9D530D95110115154A7D8510AEB97669FBA64FBDEAD4ED4DF5D5F95C742DF5FDB23E2DA972FFBA1F2D95054B801641D5CE071232244779F59129AA6E9FD2A09E9F4D557C7873ABD44BDF6D696A9E67C73F6CA78C7ECFB5F28FCAD8EADF1E2A76DD5D279202A287C88EF5C7035FAF25D914B7D4BD8950AE8EEA90B79272ED9E934EEE4403FDB23E34908A07953E5634A3C57D965D60A0AA23C7D45CEBD32D9555557DDBEEABEBA7B12E5DD5EC0B7A3058B24DCFDB23D0644E28797DE532016DC01D5EAF755A4DD09539A610D13BC8FD773E45EBE8A8BEBA7B0E5B7779603DE50BD3875A9C57F6C97432FF4F977E4E0926DB16DD7BE8A8BBFD13194424DFF00DBBFA6A3FD7711AA3B17F3D84ADEB5636CF397FA28D907ED94EBB280F2E0BE6D77E6397BB72893F24C6311CB2A9B744909B39751512B079B2841374D9B9EC2AEFF005FAEE7B0F0B6ECF97E208F7AD94DDB45D7F32755B68FFE47FF0005BDFB590EEB25AAC9FAFF0036796C6AEF61393A774677A51D41B1FA9D4E5556F40873B18CD299A96D0C996CB11EFA955F4758916B52AFFCD9FF00C9B374737DCFF7C560D236F76D9548CAB27B48F143C9AEBBF2FF00A1B03EFBEB379E6E8F3182F3769413DC64AF709CBAA24B95796E0F9234C12833798BDE467A33843FD992D8849608E3BCCB87D76DDA949CB7287D0D8BD5881A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A0209FF52FFE1FF04D01C7407545F959FC85D5F853D3EEE3D85E474D0FC80EC6AB7C71159610ACCBAD71375F3ACB2EDAB9A8968EC271C8D2F942C6E2CE028D6B7BEA4D488302D11AAB7957B4B5B6CB9C8F08191E7B473CE7DEDDE4F186048B2B06DFBCB599692A17EA0FCF7A6DBADBE5F64D1439D924CB094E48B1932253B264CE375D7C91D715579AFBAD736DD72584D54AE5D9DFE549EBB2DBD45CADB9AAC51C3EBD4A1A64D89467FE21C96811D654081D5BAAF120DC50C1B71C724AFF007149084B7E3C47F86E3BAF35F76DECEE4D9B773B9513B6162B39715A29A52894C9AAB37372C99A39A76728E58C779EA63F6D1387FAAF9F71CD1D4F82E3C6155E6888286F623D9C6A22A264265C105557EBB2A22AAEC9AEFDB4AD6EDB7FAA8EECFEFE1071EEFF0054DAAB6FEC7AA0D6A623403403403403403403403403403403403403403403403407D4FAA7FBD3FE3A023E80680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680F389FB957C902C0BC47C03C58A190A795796B9F7DAE455E28D0A3DD2BD3A5539B67A8FC83783EDE2DCE692F15A794049F149ACB29A065C1084B1DF71669E7F45C417DBB755D4C4F1BFDE7D49D13D6FE3478BF955F75DF635F76AF9495FE4ED4F5966F8E679D698DF54E1F9BF8D9D818BE1AFE3B91F5239D2193F67F657EA3499843BE9730330C45A36E6B7163F379994F1706DDF6BB6FBEFD31B7BBA544BA69B5D5354B9CB50A1469AB7276DF63D76D96CFAB6F564AADB548754A13EB53A9EBDC673FA5B26A2BB7CC523AE1FC6C9CCC72756B0E70412258CD24B326DD69A7B6DC95D5512454FA6DAD3D0EAD4B4FAC4E6E7A4C7358193B6FC1BFA7DBB0AE6359541EB6B776D7B31C839153C1F91CB84AE5731CC84E10C39268CC0B776ABB0634490AF887F79EAA9ED2809362DA384860B6CB96E7FC6BD36C525F3AB9C9AF3A2C087097A9D1F4E278CCECDFB7BA628BABF21C2AAEBAA6644732AE8EF1B3B91FA7C96CB1FC8EFF001ABEEFDE8EEBEEDD9B8AB9946238F6234793B58FCBCC122B131AAF8BF2466DBE68E3A06F396B5D8ED5B929A7598899AAA63873F22CD5CAF7B70D352A3188C78EE3BA0FC0EF8230FCA1F23DEEEACDE99AB8E8FF001CE747B63FD4D95995F9DF6A4A9892F1FAC77EEDDDADA0C39955F7D25545D6D215630C3EDAB36FBAC5896F6F45B0F6D297F65D673EF9C4B3776CECEA72AFB9B8FCF72A76D723DE4EBD0384680680680680680680680680680680680EB87F2CFD118DF7E7813DFB577B5D1A659F5962563DE386CC7C5BF96A725EA8AE9F92C838CE3A400D864389B3694733D7776B6D64B49B29EE996F596EE6DBB6EC3F069B57BB2F4D70B33AE0FDB58D4EACF1BBCA5C6E54C93223E3DE55CD811597643CF32DFDBF4F75557149681CD845E9CC56B46E9A222B8488ABF44D73FC3D7EAD7334A72E6FBF137F94AD5A5DB10E5CF6BFB1E8F75DA720D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D0104FF00A97FF0FF0082680D5DF303CACC07C37E91C83B8F3A69CB77E3BA14583E150E746AEB6EC1CEE7C49B2A9B14AD9B2C5C8F5ED391EBE44CB09C6DBADD655449530C0C1850286E116B6DD4E323C3BF4974FF007CFE71BCF6C92AB2DCA6FA3F5BD4DC41EC3F277B871719102060F84BB266D6E2985F599CC72C18A3CAF29875126830186F9BEE52D5469F92CA19B2A208DAF2CBDC6F6E5ABB1A56938CE0A61C2FAC33AD69DBB7DC89B1521E7746118B894EE7CA14A947BE8C13A9FAD3AD3AC31AE94C1307C6B1AEA5C47118780E3DD7D02B23AE2F5F86C1AE4A9671E5AD922FB3320395C8ADBC8FFCA527992BAA6464ABD36D965B6E8B57A797D7B673E799CB76E5F75FEE5CDEBE7F4EC8CB9647E6035F8A63B5ECBB4638FB510296EB36A36AAA7414191062D5E5F7D4C351351E6DB7999354C56246F8DC1426898415F51E3AF396A50B54DF0E562FB5F29CB24F33BAEC5CFF005A57ECB8527A7BFDAFEF0BC7E6F9B68EF07AA3C4293C9D5523524C6FBAABC04DC255579D08B5AD211FF1F4F55FAEBAB65DAEF7A67FADB8E1FE587DCC3E45B75B6A5744EABB0FFF009E1708F587AE9394680680680680680680680680680680680680680680680680FA9F54FF007A7FC74047D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D01F9DB7E593CAEABF347F20DD9BD89825DB392747F4CE3B13C75E9BC9EAA5B3331CCB9BC4E74FB1ECACCA81C8AF4A8190D464DD917F631A1D9443389694F495931A70DA36D178B76E776E4A7E954EDEC3AB6D2B6C72A6E75EC348FB3F21EBBECDE95F1F706C968FB51738F18637900DF5F1D7E51D7A5D3D7565DF3DAD03B22E7269B536B8A2E7B87E5AD52C08D4332646B29B1E745ADAFE2D46107FE4C16D2F5DADB7AF71DCE72F4DB6A4AB82D331CDB8835F761DB7456DB15BE0DB9F3F234209BCCF25B1CA234FC67A6313FF4AE1D9466F58EF62203B3B2B9D8A355FF0065D7F81D847C3EE1DBAEDACD56C1B669EB81E8F1E614690E93EC03244B2DC2B76ED57357389493D346E6EC92A4553AB4A1E5569B773BDA94BAD6B82C79E591278FF4FB19CC4CA0F31C170F8B712223258DCFF816FE9A3CC57445CFF5863CFAD5C9B288CB626919B853E21892A93A849B0EB469EA4DE5D5CBC328E23C692B4B4F17D29E2EBDC6E4F7C67819ED8D24CC6A0E5745030EE9BF1CBC7BA7B1CDAEEAB2ACD569BA87AC709E937FB132CC86A2A68AA6D321B3A9A3375B28D11A18CC0C3473E590DB865372B2EAC2A25C2FB7E85AEE4EADD5F3C7B7B4FD067F0C981F5D605F8E3F1D58EB8850E2C6C8E8EE724CB9D8CD8849919F1E4165459444B434DCDD9F8B49A10A34E7EE6E3D534DAFF426B7F8D6C6D672DBC7B7F11DC53E45DAB73A2497E7CE7BCED1B5B980D00D00D00D00D00D00D00D00D00D00D01D46FE623CA7C3FA4FC5ECB3AB1CB88EB9DF74D49638E52C79229615FD6925F34CDEDA587C6E03019454C2938F5689903AFCD9E725B0722D6D89C7CB76E4ADD39B34DBB5B7AB2469D7EDBB9213FA07CACB04512765F93AC3924C11789C973A57AB253E60A4AA5C0DE944488ABB8F2D97597C689BA39AFA71F535F91AA2D77669F1C76647A37D751CC3403403403403403403403403403403403403403403403403403403403403403403403403403403403403403403403403403405A99B6658B75DE279467D9C5ED7E3186E17416B94655915ABBF0575263F4705EB1B6B49AEA2110C7850A399971422544D85155513409374589E07FCF8F2B3BDFF002A9E62E27D21D1B8E58DA4FCC6F8FAE3A3BAC6DE74A81070BC3EC7E2B5B7C873F72A1BB44C6A6DC51D39E4D9FD932DCB7A8F1EAF66B19FBA92C43FBEE1BB7756F68C7A75C9678D5CD6129CA9DF66D69DA6E6166FA7EA94A6A6E333D9BF811E13759F801E36623E3D75C497320930A44ACABB33B1E7D645AABFEDCED6BD8B018CB3B12FE1C57A584239CD5645815703EE24B7498FD757D5B2E9C782CAEBAF6ECD16E9C5F1964B24B91C9BBB8F76FD582CBEBE2DB6DE156E8B0373357333CADFE6CFF139D0F8474C7915E7FF004AE4F9E7567665564317B43B37AED9BA4BFE9EECEB0CF738A9ABCFED63E356F0E65C6019D5EDA64AEDC8CAA69F1AA25DB948726D7BAECD765B5CBBBB4AD4F72C5338AA78AE4D4B78C3AD26ABAF6B7DDCEDB2FCB075A4609E4D6584E158505BBFB60186A14CF386B5837499AFC7BC3B8CD89182B488CD2F7D31CC0405045D75194535DFD538FF00044559F8F16CEDA9D2A226336DE5F5CFB87CA4DA5B9746AB9B989CA399EB1B5D2720D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D01F53EA9FEF4FF008E808FA01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A03CEC7E61FF2D5DF3E0C7915D19D0FD238EF5C4D8598755DBF6B762DC66147717B927D93F991E238AD3E2671B23A6A3A068928AE1F9726643B6275C18E80DB20DBDF3F3EF6EBB2E56A6A59AEDEDEA4EE7FD51E557CDFFCD0FE413BEB1399D599BF66A44EB6C81CB4AF9F8E75D47B3EB27335C7ADA44BAEBBC23B1AD314C8AA9ECA71C9944F7C536392355CFB2F1B4FC471A745AD6376EDC9AB6E75795171E268ACB5CB4942AD2A6B26032472FC2DEB4A576AABACE2D4B8DE33811B3FA6A4E72147004A2AFBA033C7A861BCF1FDBC49128188A9B82BEB1D0D542A9565E7CABE1DC59DD48B70EE53C896627479F0623E8D496466B2DC9719B08E9165B012DB6B8C2B188A6EB7165C373903A224402E0927324E2BA2997144B8E3C112E15AA79161D90A44B3F8D458784DC53611DDD1A102304E2E08220206E8BBB63EDDD11177D5E1B5C7EB8EF28F1CDAE38F0E65F54F39876145F89918E844A4E0837EA02A5B13809E8E91A882F25F5D936FF76A8D5AAE89531C752C9BAB4A8B3CA7A9C5F71633E1309B8730091E47A1D8474990E73262AD3ECCA8CF0883CC4960D4491C444E0BFC0BD52D6BA66A1F1FBFB9174C9D9F788BF951EDDF10F139F8B75BF60E798CE3D63302CA7E159060F8576EE22364111982DD95449BCBCC272D8125D84CB4C92ACE79E7818641F71F1658F8E53BEC4DDAE3E9C7D485A2E69352BA63C74FD9B7523F71779050514A5760B6288AA84BFF006A38AB829C45792B7C3C9168DC442FF6A22EC9FC7F8DFDDDC5571C7791EDD9C9F8F86454CFF7087952BB905EDFB204A24CB8FF0082CF4A689A7044D95558DE45C7522302DD78AFD151513D76D1EEEEC534F87EC2B36F3573EFFD11FF00FE40FE5D9B6F3B1B23A7406C09C55B8F0BEE2A41944432147DD1F23A57C48A23BF25054444555DFD134F7772B863C6647B76D1D5718E1F62419FDC3DE54A170919AF5EAA9F04072278CA7284515553E52473C85868224A9E89B926DFC576DB53EEDEB18E3BC8D1644D48EBFB86FCA630246B35C08D4897E3743C5912E2285C77305F2784476E24BEABF4F5DD3E9A8F76F6A8D71C413A2D4EA9A47C1FDC33E542AA6D9E60448AA4889FF694F733E23C954107CA5545DBF8FF002FA2AE9EEEE3C227B3F6468B71AC71197E4E0FFEE24F274495B6F3EEBD6DE45121195E25CD6C1C6C5783843C7CA2333DC8D157644E082BF5F5D8B777338E3BC9D16652446BF70B7966F08B8D679D4A4D216C645E2DD9822FF4F210E5E4D725242F44DD115396EA8BE89A7BD7CE44FB76F71F03F70AF9720EA1966FD46E07CBB703F16ED9E6782F24D8C23F93911FE22AA28A62EAA7D57E9E9A7BB7BC238EFC7C88F6EC5CC9F0FDC23E5EA90A379474BBCC8BA2EF393E32E4F11D79A55014648A3F92739A16894557710E69CBEABE9B3DEBFA48F6ED8CE48A5FB863CBD47364B8E8FE2ABBAAFF00DB866222D8EC88E2A11791E42E0B65BFAA90FA27AFFB34F7AFCE12E3AF80F6ED6A54C94BBCFDC0BE60D9D74A811332EBEA590F22A45B0C5BC7562A6FDA55F4540939BF75F6163B195B52FEB72A65A7A6EA1B7A6A1EF6E2E53C4E24ADAB693274E3DE9E45F69F7DE53639AE7F93DFE53796CF7DDCEB5C8EE0EEEEA73E2C36C324F4C208B0C22B30D806198B123C68519816DA69916C04132BAFA6AB939E3B6178771A2B6D9D29AEEFDE27A61FDBAFD9F4FD73E1B79C59A6472618C2C0BBE4F267A21D8478CF4D61AF1EBABA5C280C1BC3C8655CCDAF722451E264EBFEC0432F6EB5F8D758AEBF6ED755A7BA57E64CF795EEDB6EBB39F27FB46CF751FEE0CF1E733A9A89BD87D45D8782CBB1AB856125BC62EF17CEE0403951244A26DC7ED5FEBFB475B692292726E119AF30D8555578F59CE761FD43F92EF0B7BA1F9F0B1CEE9A5C72CEAF1FB0CA6C60763C4B0EBD6A251554AAD83673BF5DCA2340C5A52C1976EC0BAD479EF3E2268E70F8BDFA03C0CF6E79E9D8965D8B91E719E67737B1335C9258B99D66F6D538C5AC3C82D20CB762C83C7319C8E86EEBB12C7A390AB75B5D0C023C682D30C80A0B002205BD27CB395413EC9AABB192C35F3B60D17DBD14E76341A737E82271B0BFA1B296C13F16A05E705B7841D7D55D5143232202B4DF98B7B2AA23DD7FA97204481722D3C83261C28D2A3D37E9B691E339595D570AB2C82C1CB3719969398789C6C04398888EC1256F1FF3C6FE64D8D571F38CD2B82C9C9C06E63D70B8FCB17D2B24C868E2CCA18D5EFC37DE5889B9838063C888144979A013F1BF21BD810C5B077B4FB48E47CB32C09F4CE32F921CEEE43F77120B2FFF00A941D9112B2BEC122C715F6B71DB6C577D934055277E457B56B5EACBA85DEDDE952DCDAF27E447AFEE0EC8A686E48BB952EB1864A1D7E60DBA2C540E04FBD0C4E41236FCE9469BFCEBB013B03F273DD7631ACAB23792BE45477EBE084C853D7BCBB8B922DACF8188B1F76FBBD8B2FEE63447B22096C0A3227F73140C8D5078E80908DF95FEF8AEE6D33E4B77983B0D96B9BC7DE1DDAE3AFBD5F14234C7DB31ED846FE590EB04E3C1C047E4335016C576402E1B5FCA4F92B5F6B31873CB7F24521D7B50A0C46A4F747683AEB8F40FBE29D2DE7AAF3BAC579EB44B98CA6DBBF3107DAB7F118A118981063FE547CA0935B3E5C0F2FBC8B8F2634BADA91753B6BB089865B8C2E652FCC910EFB2DBA57A759C0A09500D44986FE374FE35573818013713F2C9E575F58D756C5F2F7BFA07EA12A3D401C3CEB2870DB953DD184C3AD14DC8A4ED2DA78D0811E47DA254DC914553702747F2FBE6144FBA289E5D77034E583AF59C36AC325996722BE04D007EBE10FDCBEE4279A8D15E50E7F0A1AAF123523443502EA97F98BF3623D4D4C81F30FB4E204A91613274B762E0EEA7D807DE514584CB7271479D121B86C257CC0EF134250D90111540ACD27E693CD889201C3F2C3B0A5C6AB8B22C5F85228F0096FD9B35480522349932F0E90B185F68D79982218A221222AEE4A0738BF9D4F3FA24318B33CC0BD9D3A2B211AC2437D45E3FB6AE4C567ED1C267E3E9C92D455596D2B83C90F6E688BBFD3405DF27F3B1E7FD695682F952322285141072449E96E87724585C4D08F7CDBF21F8BD6ACC78E4DD05C4767E26DADC899F95453E5D900980FCF0FE41D6B6E6535E4C503AF355CD43AA17BA43A8CBE2B3B094AEC3B99EE35884561E8EC3705E8E4C07C6862F01EE840AA404D33F9F1FC85214506BBF30398129D6D960E4F48E09F3FF007DE6D9075E18957101E46FE4424100695CFA6E1BFA01589BFB843F2090E64E8917B43A20E323ED0C676E3A5FE5B38D1E132D42B079D76A723855F20E5DC4392A3B461461B216D7910F3502E78BFB87FCF8835D0DC7F22F1B2DE549B368C65CCEA7C818AF4A6AD6DB6AE01D66B7B1624829D32C2DE07C6A2602D302EEE8A4E364005D759FB8EBCE1936511B9113C3C72B5B79D9762303AB7B61CB376A6B22BF6D6EDC3F97BE81849A75915D06155B5147C448914154740708FF00B953CDF69B71B9F89F84E725A7E4092260DDDD09018292E25736F7CBDE4FEF31C804D9BAADA28238A4823C762D015AB5FDC9BE6AC78B4430BAF7C37FBD9915E9D66FBD8F770BB01199AEB0F63F1AB04FB86B9C7643B59F39CA237145B79A411121252102E2A2FDCB1E592B563FADF44F8B760ED6D53E6074F91F65567EA9752082050C76E1396F923B5702C6EA4B2DC870DC7FED40D76578851140ACB9FB9BFC8D461BF87C50F1D5E92221F32FFD7DCC401F2414F93E167FE9D99C7470B7E3B9BA009F532FAA817AB9FB9ABB6EBED9FAB7FC38EA8BC4851ABBEF25C3F256DF1E15B3FB625BF811D8B0E9FB67899AEB261C8CCBE5B23E3FDDE03C55B502BF27F73CE5EC54C8B15F047186A4B1695F5B1EB4BCBA19676BF74A2B612224DAFF001D24C38ADD330F32E9A3A4A4F8BBB071544E40546B3F7404D9B361C07FC08B04912E40B7BD6F93B4760D371D1BF99F99BC9E99AB7CDA699133D91B4520055F4D010E57EE8D652438157E05E493E304E991D996FF00911450426C48F2DD88C58C26D3A9A59131391AF95A173E23F88C54B892A8A0176B5FB9F7086ABAAE65A7841DB8CCAB3FBF746AEABB53AFAE26C68104E230D5A49E506BD96A0DA4C75F662AA9238E1C53E400840A405CB0BF73C747CC7D98E5E1E791F0D1A8D2645D584EC8BA6E3D454A464145E331739591381F74BE36B8B0064643B88A2AA88191A07EE55F125F02726F487908CFB43831013A8E7CB71D745481B16E57675530822A2A864AEEC3E9F5F5D80DEBE94FCCC7E3A3B8B018D9D5BF92BD6BD02F3F925B628E611E4B679D7FD359C356D4B551EEA63F0EB720CB8EB322C7CEBA502B36F53327D53B210E2A48FBB69D601290C4E8C3F3D5F9348D944AA2F1C7A4B30A3BEEA81A2EAFEC2B0CAF17C8ABAEF0CEE8CA7B085CC97ABE5359150C9995573D45D7D5B5F1F2037A34A786CEDC993116FF004B65C93CFBDBBA13D35B92C3E8FE919B9A74E8D9DAD50EE709BC78CDF873C4DB6FDB5BE2EF4DD478B961E72D65B359CF74790979D8B80CDBCB25812AEBAAFAFBADFB36E31691D722B19F93FA45FF006164B86B396E4DC3EDD65B8FD4C32176252D6BCB6DAB23D772F5E18CD29D8AB1385301BF7CBD16B4ECA3C22BF5A4C789E9635B1CE3407545F9C49410FF00155E5EB86A624F631D7F023A8222AFDEDA77175DD6C0DF771A546D66CB6F92A17241DD4514B645CF75C58DCB5861DA69B4B56E24E22B8F61D4CFED8F30772AF3F5C6D449B72AFC402051000511FB0F2187838ADB6DA38E228A9291273D8D057FA517587C5F527BBAADBF57286944D1358C7337F92D2B6DDA8876B7CF38AD7EC7AC3D759C83403403403403403403403403403403403403403403403407D4FAA7FBD3FE3A023E80D5DF2FBCABC13C3AE9B99DB99CC6916A8FE4149876278D4478E1C9CA72FC80E439069C2CFECA746A9618ABAE993A44979B516E2C275005D795A65C9B56A704370A4E9DECBF3BAE5A39221E1DD31451A70D65E4D6D6EF2C9F6C0C140AD993E1392A3C2ACA133057227C4E360E2119122A186E9ABADBE6EBC7528F739230CAFE71FC94F9CDB5EBDE886C04CD141719EC275D1400151E4AD767F0F8DE32140747937B1A2EFE8A8B6F6EDEA46BBBA1387F9BDF257E656C7AEBA301B556FE378F1BEC0569C171B434DDC2ECD605A31524E485B20A22FBB7D9167DBB7A8D6FA1C637E6F3C9B92F1B4DF5CF44B888D2BE8418DF61A1B6CA7C684FC869CECB136986B9A129FAA10AFA6DB7AC2DBB5F31EE3E84673F37BE49017B7AEBA209A475968DFF00D13B109B6D07984C74958CFDFE4D21B2440A3B9226C8A2BEA42F6EDEA3DC6718BF9CBF215E705A5EAAE97789C9251C5C0839E466B7E4AAD197FF00EE13085B71A1DD5576E08684BED455D3DBB67163DC7DE564BF37FDFEAE8329D3DD44D9102A6E6799B808E272425709BC8855A0FED91822A293A1F4DB6DD5EDDBD67B88F71F4826D8FCDCF7D0801CBE9EEA4FEEB6EB8D836FE5EDB8E8838AD89B0DFF00A8252BE25BA12F1F4445FAFA2ECF6EDEA4EBBBA4132D7E6EBBB9D18C21D39D50E3B21E28CAA33F350017E3B4DAC931DE4134EB0AE3888242EAA82EE27B2A22ABDB5CD8F71F42A2BF9BAEE446C1D4E86EB671926E3993C996E4C24092DD261973ED020BEF9B7F2B4E2711523541DD501365D1EDAC98F71F239BBF9BBEE165D105E80EBC71088897E2CC32525011FEB61EFF00E2D51A900AA9EBEE6D5771DD153753DBB56616E3EF29EEFE733B7DA12717C76C115A0520378730C98DB03050473DCDD312BA80A489ED44F554F5FE3A8F6D73F21EE33E37F9D6ECF1711B95E3B618C99209B6C2E61918BAEB6AA8E2AB6A549C09123FAF24E43BFD1576F59F6D7363DC7C88CEFE75FB2C1B575BF1C311745873693F167772F0B605B020ABCCD09B206DBFBA38A8AE088A6FFC91EDAC247B8FA71C7EC8C9F9E5CD196B791E32632AF2A9A6CBDAB6911968BFFB20E38780C95E520B646D7614345E5E89B6F1EDAE75ECFD8F71F22207E7B3283133FF00B59ABE2D127CCA9DB160A008A602BFDD5EB846761434552E5B69ED737E5FB27DCE9E64E35F9E3C94FF00F53C60A4693FB9B2976EDA2EE2DEC84E2A7FD30E5EAAABC41108C913F827AE9EDAC991EE743E17E7A6EC11870BC64A9F89E5435E5DB166C9B718D78372150FACD4480DC454DD17D365DD3E8AAF6BAF97EC7B9D38F03997E7B6CC790A78BF11C2042E669DAF3DB6C78A9221F13EB3577E33514445544FAEFF00C174F6D731EE3E44FB3F9E1B242E727C5E8AAC02AA9A46EDD944EA8ECD126FF2F590A34EA23A9FDB4171CDD5114537DD1EDAE7E5FB27DC7CA9DA55C3F3C314D8F9D7C5C7DB0DB97C8EF74B60CA88AA21209A7549113A7B2AB6082AA69B6FC775D9EDAE635B8C3CFF004717BF3C916387F7BC579E2F71055687B89388FCBC89A3271DEA9678B24D221A928EE88BE88BA7B7D7C87B9D087FFEFD756BF271F17E68A80F24077B8401C2DDAF947D8DF563DB0927D17D5151155374DB79F6B93F223DCE870FFF007EFA841522F1865A1222AA37FF0058910CF6415416D0FAA9BE645CB6444FF9936FE7A8F6D613E44EB7CAA438DF9F3A9904F7FF00A5CB016983681C707B8E31AF2794D05100BAC9A54E0A2886A5C504955375DB4F6BAF90F71F2261DFCFAE2CD6DBF8C791AF2E261FFF00D3618F26179F27544F02170485476E3C7DCABED55D974F6D7323DCE8435FCFEE188824BE33E5088485C457B2EB3E532124E222DFFA3176571ADCD3928FA22EFB69EDF527DCE84CB7F9F6C2CC97978D593887133131ECBA82E4200A64A9CB116C538A27AEEA9F5F4DF4F6FAD07B9D09495FB80F046444DAF1AB2C78094115C2EC7A764039216E65BE28668D090EDBF1DFF96FE9A8F6FA8F73A189339FDC938954D0E55030FF0016EF2CFB468EF6921D76377DDA7570B1695432A829F25BCB7B4C82AF11B1BDAC9F061D92B11A2854BEC3EEA0B8E4A641553586EDFEDDFA3174F3E8746DD8F72DD4B9F0CF29DF98EFC99E7FE487901D77E43649D13438C489BD538E755C4C4DBCF6C6F6A2B2BB01C9B2CCDDAB4A8BF1C4318B29161924BED193F740E31C1A622C74153E24ABC57DD66E5FAEE555455C735DFD1E1DE747AB66CD29D2EAF971074AF9B776BFDE793D457D1622FE3F3E6310AB2A28ABE649C859491267366CA1CC9ACC2359335E146C780B64AF97143D950557D97E9575CB25862EAA2315D5AAD0CB5CB85C71C626E361587F771E2B551A6D45DD54057424449555D5D9A4F93323B82ACFDD0CA9CF8C275B0F571B258EAD38BEFE243B01CDB2A89A8EDF39ECFE4BC38AA6675A98D731A24386B8DE4C0DC58B1A2B4765516C725E165B20390F93901AF99F9443C8B66C454957DA9B20EA74DB3AB06D463C7892F544574F671C779C2E6B6EA7FDBF1C7B25E6CC61880618EDBEE82C093803F225728AA32665BAEE4A6BF52DD75292B70896DB22AD4BC284E52336F098F8A5E3D92A08A1903A5417642A20829C41D2808DF36DB044E4BB217A71DF75548B9D6B09E4FF007C4F91294CC4F67EBF92A339AB621005C72F5007DA63231FBB4227049C6C440DC8401B082EFCFE9B7A6EA9E8B29A4A78E3882B0DD38E30FD16F4BACBC4456929EF1C2553E02943704AE090B6A2DA124424F9140D7D7E8489C53655D2EBADB79C79E5C76136DADA6F3FC18C727B1C8B06833B296635C515AD73B1A1E37653EA24C6567209866CB12201CC61B6D6C6AE236F49689155C64DB13445541D677EA9F42FF255A39C7AAEF982D6E9FF002AA8C2B26DB631DECCA744E25DA997E31905E5FDD5DDBE28E4A73B6F3D8126D27D18823F7B3A3372DD41FBE64908D0246E44864BB22AA6A56A9FB74FCF2266D544BF9CFA791AD9DA7E47E517902CA163D22DF0917009A75EA1CE7369364D9922FF0073F55B0C85F30E43B22937C76E5BAFB57D61C5ABDCC5CC47E3AFEC89B9AD3FE31C70BA1B9DE0FD77527941D75924EED4C4AB0BB07ADB268B8B66796D7E513B0DC7B2B4B2801658CE41223332AA696AAF6744F9A34D65946C1D95109C045570B6BF45F9299771B965E2CF8A28E022D7D5A13A4808E276FC95071C11545002FF0053B83B388AA43B16C4A7ED5F44D8EBFA25376A691381E21F8D73854D9AE8B35A6C81551AED9904BF3816C26A6DE422AE9328A48BCBFA51765DD7D5268EB74CAAE2426AD984ABC71984F113C661153914442286A82AF7724D517B7112206106FF00828AF243D8792222AA7A22AEF0FF00E92661CC29E389E7E2481789BE2E6EAB16A191F9BD59289DAB39F75C326C410438DF93CDB2AD02AA80EC24AABE9EBA788774CCC75E3028933C63E8080A28146E9FCC3C9A759EC89CE139E821CC592BC704904C3897B53FDBBA227AC36E71C889510A0942F1BBA40C4486966A2EE25B35D8560E2AB8828ABFDA5B330103F72FAAEC3E89F45DF4ABC67E84ABA304A7C492FF00B6DE9D354F869EC50B67905A5EC090E38E22A28F221FBC222E7BAAAFA2AFA6C8AA9F469CB3E3F44EAAE51C223978BFD5A515659E396E75E2E8B6B2032BB4718174D13FB6F4869F38EC3A6828A8DA9211226FB7F0D28F8E3F921C65FCE7E2680E7F020D476CF6D6078B53DD2C0EB9B0C5E371049D72E7DA6438B42BF092FC808E4F0AC794E3ED126CA88821F45D46B8989B9DAA72AF4597D046A69D14B2419C4BC6BBBC0A7C9ED2CBBB965790979DB18E61580F8F981C3EBDC46AC7AA6CB0D0BEC7FC94CF732ED3EA5CF5EC9B1181DF74AD6292F15C76C686EC9B0296CC802711CD5B66DD775F63A24AD8759ACCAE54854CB39945B76ED0ADBB1B9CA6A9148EFACE3E11066397D6F954790E3B188C85F2122711C2684DC6E4340A88D9121B31D5C74BD157E4F7ECBC8B655EE38CC2F98C9CDF11C9B1EB7447DD3A7EB8EF5CC28A73AD9C9283674D8AF5C27EA91D3836F40975F13207155D14E4D8EFEAA87BA01B25D35E05DCF74F8C3E2EE654E91E64EEC2A29817929D04036A486712EA589138C05C3685E8514A48FCA83ECDFDC9C0740527AE7C32C93B1EF7BA8EA213D3A162597F5C545736822DC526334F1CFA7FB7633FC5B71CDC1C8BD9AC3E85E9ED5DCC7DABB012D9FF008559661B23A6B0D974AA365D9FDE9D7F84370C95197459CCE93BADC80731879E361A8F21BEA193B12B8D8AFDA1292AFD34065DA8FC7566512637612607DB57D10BF69653C1D69A6FF4C649A6B67DC723B40DA4CB092D32C9F3445235DD5449370300F50783F95F66F56E3B9B1555BA0DB5E67D5919D6405984EAE1BD8B9575E24B8CAC82CB7A22D8E20E2221B65B20FF00526C85A027739F06B29ADED4E99E9D8519F2B897D5FDA99A5BF2D80A3BD84AF49DC315A4CB8AADB7360077F021FCA42842E89282128AA01CB2CF03B30EB2EB1EE3ECEB807E242C53AD73E9DBCD6DC69E7A662586E67D9B5D0C3981362A123ADD4D497DDF10EFB0A7244024E9BF1ED995B63B8DCD5A67D9FD6B1CA3B8065B69C96CBAEDDD4C3B2F99B751990D2ABADDAA7253116D553744F50D80B5DAF0CB25CEBB4BB6B19A8198EA6138FF004CE544FC107BECD877B371CC8A54DFA30D3EB205FC0A537B2AA211B6628AA884A2053BB57C34CE7AEFABE65ABCDAC19D77D89D598A57B7F332165318CCFB0F00EAA7A7AB629F465FEE8868222BC150889579AAA680BD22FE3C33AA8B73C90634EF83188F3B23B07D98E2EB0B5D89574DC91F90FCB2749A1F8E35610F005E684D106CBB2680B0F0DF09B2ACE6CFB49E8CCCE9CCE0DDF5DBDD3CDFCCDB80A8F7556673F1163E392D930DCC0E75C3BB6262ABCD147D55074040ECAF12731C6723E8CEBB7E0C83B1CDED3B0A00C01203B216E87108DD970DC6633E7224009D436EBC80A84BE8885C3920E80B9EB7C28C9681F9D185A9C716563F6C10E44909AF9B45642D51475465EF84DF792CEC9B6C45B01E645B6CA5E8A06BE601E2DE719FF5B613D830E25D835D87895066B1DD8D2E403671B25A862D622B91DE169B9088128DC6893E3141D94C7FDA05C59278AD9C0769C1EBC86EC976453F4E52E7CE47269F59F11A8B9FE59D3564F58342EB90D406D7AE8817821897A2A86FBA901239FF008FDD8BD6DD4FD9B984FF00BF61AC76BE9E58C89319F08FF144C9F1DA97C1C6C1480122B7938C83715782B23EA8A29EE025A6F855DA91AE20C0E330511F82511F6D896C47FBA8B29B279A6A4B2E3C7BA0C374D93745C6D138FA2AAF1D016435E3D67B7D9C76857B472B7C173A898C93886ADB331AC929A2766C722456CA3B52A5D2E6B19C46D044C89476FE228072CEFA37B2B0FA5EBAAD7A358C68F9A764C8C0A3BC48E2CB6A5E494EFE470E3EFC1C2276531D4F35E6CB80A2B624AA89B680A8E21E35F627FAAE8A20B96CF7EA052EA089B61D93044EE6BA45003EF38D703561C0B5445144144DC95151511500C3588754F69F6262EC6735BF72316DE55F461655A9BCE38535B4CC7A7AB3315B96125126D2BE0A2200E212AA6EBF1A6E05C99A7567623391F57E16BF77166641D6CF659145A270A22C1C326C9AC9329C92C17C8C19B1994371D42135157B65E0ABCB40464EBDEC9C3719ED4C82C1D75C6316C19ECC1D94C7DE9B0F062967072CB48E29251B1308B558C3C4AEEC4A0A25FD2AA88A063B8BD7FD9E7495B62E2CC472C615608A7DE487A41AD9301F0849710089B1FB57F8B84883C95510938AEDA02A39C57F60976966F8F475983231E9557632D50108DC1CF2144CCE13FF000EC882DA42B2211077D8ADECA2849E9A038DB46CFF001DEAB9B6B2DDB1464738ACA3892DD69F0566C732A77A9606CD2138044564B1C5B45DC84C9380EFC4500858BD5F6D359D6240F3368A4194D5FDD9BCE23A051D898DABC71141C753E0E1B89A34DAAEC869B7B557405931EC7B4E7BB7C91C6C41AC7B219D85B8822FA2336389BACD1DB38024D81B611ACA11B6BEE22155542145F4D013F93E55D8D071CEB18FF23A2FE5EC64B0993507D391E31904FB998D99022123CB5F9346E483EE06910955517D00B9B00B0EC9B6B7B2A69CFBEE393715BE1659407DA6DC92AC03D1D581E2DA1237291B40545DD1ADBFA109174051AFE376057A3CF479B2504D23C96B813CDF2446D15C6055C25F91524B8A2A41EA0BC94B745F502C7C46F331B9ED78E52BF51B81C770B7AA26B3163CE9DF6292ADABEE3EF1F006C8A26CF4E7108911B17093D375FE9CF7634CDD82FA7D7C0BD929D313364690E5674EE50151163149ACF24E3315F5B111A650CF24AEA790E83C800ACA352CAC9F74CC0490C89557DCA65AE3F93AEFD5B76D1DD652E5FE319B78E0E54630CECF8D0B4DD7D6DB5B95CE7923B03F1EBB93BBBC5D876F4BE3B791DDD1E3DE3B931B1657B4BD79D86749895E5F940815636D618A58C7B8C5DECA1C89063C676E022B771223C669A3924DB6D037757DF65EAC5A9BE6EAB0A532597D79876D975BEE5D113860E3B5E79E66DB2FE4BBF2114C8221E7C779100B719D43FF0052F5CDD97C8EC088EBD1A42DB75FB862F427DF08EEA362E34AFB2FA838E0AFCE70B7B7ED7AB717FC5A7FC536E54CF6F455986DD0A3DBD8736A6B5A79B851C62E98A3827E533F220460DB7E777794870C7764E24EE9A78DDF8D76469638F59C8689E4F8B91AA2ECBBF1DB724DDEF6EA6AE6A6CC539A557F952147D79604FB5B584C358A8E5CAB5ECFE4C45DE3E607969DFD8EB78E7907E4A77076BE3350963770B0DCBECE960E24DD8C186FC88D75698C6138E62B4790DB54A8214472C9A98508CD4E2AB264A4B5DDDDBE2DB6ECEE8714ED7D9DD87565B6ECB15D73B561872E9C62BB8EF97F6B34D59B69E733C6E21BF2705F082C5EF72A9214DAAF24051540D39A21246DF96FC55774444515DEFF000ECDBDB9B36D24B4DAE124955DF92E1C0F98EFB9277CFF00E4B957B2C3D74EBB4E01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A03EA7D53FDE9FF001D011F407437F9D5B6A28B8F783151D87F287505CF95793AE70FC5762B535AB7ADF17BBF64E1691FE65FB85029C7249CF8514B806CBED5545BD98C74297E0744EBD8DE2FE2D4793CEAAA037EDA355DAB95D36C9E6A68C4106DF5396AA2E082A3F005D03255F94B96E829CBD37EC32E9971E261B95DE3D54F4E7099282E7C686E363262B622C04B6911D4690D7834420C2FD5480D50538A17B8A1B42291C71F424A4776F5AAA380DCF764366CD721ABB1155916E220A302CB2F3AEA0B68EEC8AA6D922892AEE9F4D4D095333C71CCA2BDDCB838901439624E80B9EDD9424A4831271481D64381A38E38AA0BCBE8A43BAAAA6D1298879238176CE1A2E0B6E4D8CF36D994D6DB54543263DEEFD585697EE01D25E045B29171E6A88A4BA6AC8886458FDBB82AABB2066C68C0E3A4FB0E0FDB2AA34C89B6DC76A47F6890CC949090D084366D7645D254C0AA2E563B4B13416DB796323EEB820A8EA838D93BCDEE20CA3CC93ABF33A82AA6A8088884A83C4B4D409E3EE0C2DB7597145836D947D9E2C980B8AD2947378E0B82CBCEB7250415B6CD77432454DD3926D33E247520C8ED5C563A4448D391652993F0E416F1C5A2577679A6CB635B27E38A7123DC1AE6823B2F1D2684D4E4DF6AE32AF8848160C3E4261E165F0685DDD484453ED789819AFBBFE50715114538FA2A54026E1F6CE2F055A24B26D1D6A4BCAD8B9245F7163EEAFABE6E193C5C5B2030314E4A282829FD5C5541DC517FEA1D11290B56C082CB3CC15C408D21F716536C4E8889FDF0944D32BEE305E5B36BE8A428851298EAC936BB3283EE4E74638FB20B291FDE721E66BB76D93452045786407C5C89436124544555445DA66B22AD43C78E31F13EC6EDBA51296F457EADA7A6B64DEE2EB2EC7588A0A08C8A01BA89C5C2DD76F796FBAFD1152247D4963CFB192289EF649B1036DA624491619737DDC278DCE48E486CDE3D9B354F6B5BA0AAFD1147D82278E3F44E33D858F3492901C6DB6DF79045888AA4AD89AF14659751C5192601E89CC772F6ECA889EA10CFA59E63EAEBE314D818AEA08B6FAAC58921C6E29380AAA44ECA469D369139A1AB8A8BB7D764E49430E38E3B4926B37C754919371991F098FC9F7321969E6955C3D9CE20D8AB3C78AAA2A6CAE0EC88824BBE941D856A5E7182AAAAC5900CC57555B924FB919C968443B07175A268596C7D1383E9CFDC8229BAAEF2E31C854911EC7C560C91695D864641F36EDFDB22FA6E8AEB467F1488DB1A02181128AB82A3B27AEA2609C7B78E3CCA944ECDC4C3E68A4900185F949A60CC07EDC55C7079C8784D41D1169514490957D495517532A78E3EC457B8A80E5F824F71C7A4A454E0D03680E7CBC8C4545869C71B131315216D43D37E066ABEBBA9225778E38E2A51ED731C42B4A436CB117E56DC5F91A3902C138E2BCB215816917892470554543E5B2EE8BB2AEDA3A115298EE7385BCFF3931620B6200F2B8927E7D963ABCDBC0ADFC6C2BA46EA8901227215DC7614DD563E85B2268331C20B92B0D56ACB79A781A0192D9B4DF20715E468C3932DA2AA362A5CC1401094375F414904C3790616EAFF00E8C15645869161B46FBCEAC864C631C8491F27C88208EB8E20A98A12A27A7AA2A4CF88E88812B25C099AE243FB3FB8074138FB9EF8915D25379D52E26E147402522302E2D86C5E85A8944471C71E652CF29C1C894DA0601A5450DC0C4825230AA4D7DBB49B18FB8151C4DC5BD897D38EDBA495E64CB19575C8218584580F322ACB7199156E4B8AEA8A72171511B34375B7FF00B5FD4288283BAEFB6849877B08FC6A85D1BD93DA18F4BDFBCF26EC8F32314C929CE79BD031EA9C4F1EC630AEA8935F15C79C18CCB18FD2473575495D765C975551040175E4FCAB6EBBE4BB9B4AD514E91E4E670C8F4FE35F6AD856C4DEE71E7387D3AF534BFCDCC23A6FBEBAEBAC20E3793BF5F92E2F96F5FC49083533A2A3B8A653455D5B91E60D058C58AB6541410A0A3A4E326242F27C4622E028163B776DC6B59F1FB71E45F7ACBE745CA8B8F13AF6C73C6AB34812429A4478D3C5F6ED2F4ADE866336F535F4B621FA649892E3ACA88F504F7E509BCE3644682AC8BCDB44884574D5D12FFAA6A1618F114A7D33BACBAD783EFF001E389EC7F0EEF1ED4C7EAE256D85C514C38909A8919B8B3AE6B21904665186DB3663DD47189C50417614690817DADFB746D5B84EA8E38FB9649DCA29A7C70AF1FB321279157CAA48B595D620A4880E1E4B91477DC546F670549ACA2430062E297D77FF0077AE892546EB4CF3E94FC1173B9FA929B7ED8FECAB57F924E6E00FE336AE1F230742B7B0B2D685916FD50563AC89883C83644E3BFA2EC9BAFA24AB63172E05D736E8B3FAF125593C97A840019B827670B264D891C2CFEFCD0878A9A2B6B26BDB6D4487744243DD51137FE4D292D2F0E38FBE04BBAE774AFEDE1DDC6464DC1FBBBAAB2C97160DD58F7175F94B348F1E75C5BDE5AD0A9991280BD6F537120A20136A3C5644600F76CAA9B7A4C53A715E1625612A4571AE06C5C8C0F1D69C040EC2C9F89B63211C632CB84436C879B4F2BA165B3AC3A8BB82A1A0AA2EFE9A8AE0B32CB4E3C8EBE3F217435947D73D70C44CA6E2F06767D72EBA96B6D676AD3210B1093F1B8C352A4BE31E438E3DB29EC28423EBBAA7153AA74A253DAF15D85572E7C7D3B0D16AAEE0C59CE8EC47AEEBAC59977D8E67F737B634F2AC23B6ECB857EC483FBDA98337E2371C64C441F705109C5544DBDDC92AB39E5DB8E3E1488A721724E2B877712609CA7228D239BB1E0BD5BC955B7995681B10E6D2148747E7432E671D13DA2A3BA27A2A2EDB57715BAEDD4968B9D5E6F92E7C5684DB30DF2E3C8DE6F15FC03F2ABB4E9E5655D799274EF4D6213713A9CF6266BD9DD67D7FDCF9CF62C4CA642C3832B1FC5BB1AB6C31CC4295C08CE7E99F66DB16F3620ABEFBAE249465AC6DF92BDA5724EF7319A4AB1DFDF8E3D4DD7C69BBD77695DCDFEB8E88D82CA3C0EF25B17769E366BE6FF8DB88BB9BE4F0F02C3C329F17FC3FC39ACC730B711FD370EC559B8ADAE6EEB2894DB9EC8B094DD1570117893AD8B96DBDFDDBAD6D6D2F4C425383FBAF227736366DB94EE353CE31C3247D95F8B0F2BCFE7095E50F4D7CE5F6F18D277879E3B36EA136071D96C9BFD11C9444DABBFDE16F7223205345514513F9172B5B765BAA79BFE69872257C7B3569D572B3BBF48D71F27BC4DF233C54AEEB8959B77F74FDE5EF6B6577B8DE2B5713C3AF1F22C588185D654E4575716633311B3823160BB795EDA00B0BF23929511C1002158BB7F7558EFD293510A5D706F2C6B4E59D42D9B15CADB5B7332E1538E5998DEB3C2FF3B737719C8318EC3E86B493F6DC1403C7EEA4AC6DF6382BADC272240E9C72A26593CAD08B2D39CFE474C144F7D6EAEDB4E55BEACEAFF35A9835B9A7170F0C385F6EE2DAC2FC59FC81F6A60B8F67E49D49872E451AC5C4C47B0FC55EA4C673CAA6A1DBD9D16F69423D0402DB96C5463359709E437E3BEDBE5BFC844A77C5F116B59C36B1E4EB3CB28A856BD35D49BC33C271E5D3F92F3C0FC42F272E737C7703CC7B0BA071DC83287265550C61F14FC7DBE6BF518D06CAE7ECE7A3185D29C357E356382D9BA64424A9C9AF5444C7DE4AED37444615E17641B2D94EDD556F9F18F6CE467F7BF1D5DF6922430BDB7D04FB691793DF2786FD146AD81AB4D138C36E543FC4BEDC761115555221E1C3FA74BB72E7297F4C1E2BB953935FC605B6934DD6F9A60FBDFDA3CCCB5D49E36F6978D991E2B9765F90F4D4FC7B2BEC1C17ACA1E61D67D4D49D27D878EE47D82F58B18854DCD575D7D9611DE7D5595D8569D7E455193C6724D247792D69A644990D11ED2CDC5FF89A7A92FD5577E528CF736FFF00D25437CBA4D1FE63EA6CBD978AD16E7B033DED4A8CB65515BF61DED6DC3EB02CE4D6CF8F594F415B45450C9E87F199F08F089F2552145275764444545D317C971C232B5A56B59B462DBAE9BA9C67B1F2AC8B35CDA564F3BAE3A0B14C8E85CB99565913EB26DBB5BB1633D163BB3279C7AC875D6559064A99BAD883CFA102197A26DF1EAEEC705F732DD56AB6D88997DB96266C4EDAC31E8CDB0F140295F14369C232641F27CD681A040356805CD9A355153DD49515176DF65E9313507BFF003FC5CDCAE75A79806A1F42F954060D3A51C5E72D702E8D8D1C5A558F64287264C726D11583121454554D97881BB1E19790399754F8ADD378BB58DE7155029F14289536A74170E47FB498C39610FF004A9CDC1F86CA33B35C90A3F0972F900C5B44E67B0152F00BC95728B1AEED4838864D75F7BDB3D48DFEA94986DE5EB433308F073C47C06D9891269AAECE2B16A327162906D97F707EE51D55025D940A4F7C794196649E5EF898EDD75EE4141670FBC3A5720C5F17994B31BBEBBA6EACC47CD395756C58C4B8692A54EB287D968EA0FC6AE36D349CD15CDF603637B9FCCA932BAD3B44A9301CE69699DA4AD6D6C325C4AFEB9BAC66AB32C52EECA44B972E8E0C369A15AB745C24DD801D849C55E4A006B5787BE5F5A5178C3D5611F0BCF6CDD767775DFC4B9A8C2B2799592DBCB7C85EE0CB84E35CB1592ABD60096421B247256C91B4145222D016CD679716B2BCFEB5B89B8864D773EBFA7BC8291331BAFC6722B2B680DF608782745005CAF8911CB489138F51117CBF12A07CA3BA88BADA8813DE737971672FC54EC7A97316C9319896751D99125DA5C6177B8F4344CA3C78EFDEBC8D5897774CC58A2E949CDC78FC86D9A901B89BFC6A0A0667C4BCC2CDA1E27D774F45D37D999095762780A3C34FD599D591DBC6A4C731D69B6E8E1B7506FA4499FA7340531C78D9E469C1A70845540D5CF19BC9BC9AABB6BCC171DC3ECB2BB16FFE8061368D42C2AE25C8EB79D830F7E4B99476A90E17DC534CA791984A886AF0B0E11238049BA2888143F31FCA399615BD2749615974532476BF55C78D15FC5EDEAE6595BB1E5978AD9DA46AD85362C1FD5DD0ABEB74680041C502785BD85084940D93CBBCCFC8AC70BECAA4FF00426595C17BD73D978CA4DB8C532978E3CAC870ECA2B154240D72322918ACC8C9C45E2C6E6481EBC900D72F183CB5B40C47B66C6BF1BB5B9AECD7CAFF002473F8936971DBB960EAE53D9B26D07E7BB8F5D261BCDFCCA204C0A17C687BAF1709534048F62F9333B25F31FC6D78A82F2249AA919AD98D25550DC5959BB5703C5CB5C0CD204376BD6C665559C9738B92382302B19579EE089A03663B9FCA2C869FAFE36410FAE2F31FACC5E7E3D9C48CB729C5ED69E0390718CEB0FB869E9B22755B30E2B56932B51B7415E71BFEF8A12929724035C7C70F202CE83C58F1931BB1C2AE5D8D5BD07D351EBE433456F21A950E2F5B51B6B305C835891CE14D47399384F229B882887B8F0D0165547948CBFE5DF68E5038EDCD84A8BD21269E4B0102D3EE613D3BCBDEF1EC58033EB6BA31BD049DAFCA818E26D82B8AD6E802BBA680B3BCCAF26C6E7C74EC2A55A7B284598505CE2F1E44DA77E043591924FC15B8516323EC463913925D1BC4D0F2375117888916C8006E35C794C92F258E838EE411253170FB85F6D8BDA3F22230D4A7988B0945CAF891EB1F724BA42208E90B00A28822BB2A01A93E32F9258FBF61E44CB6E927DED458768F5F461B26AAED2C2133618978C7D13834D5B3915F1801C1AEB3C59C72332468A4F28916C888A4044ECAF21720BEECDF17F1A5A361B80DF947D3D99424B85875A15F5DD7189797B31631DA58B4D458D5F6903B224AC97114C0DA86889E9B0E80CDE3E4163CDDBCEB56E966C466AE3C86C9C895D62D4606167D3B87394C238A311161B6E199A2AFC85B926DB6DA0351BC58EE3C66278F986C54A2B3927F7DDAF3E3B91A3BA71DF8B69DD3D87715AE32E12B3159851A059343C55044515138EC5B680ADE45DDF8849F247AC9E768DC93FE9DE97EE569F69DA97DF7BE1B17BC55ABAA7E3B22C87B16D3149A2D3A4DB6D9ABCBB2FBD34053FBC7B931F77A3FC81602B988FF00ADF5376A57088D7FD944476DFA43B7A85969A27C797C4C5CDE45740D5503E56C78916C3C40AFC4EC6C757AFF00AFE6A63EEB7F6B4186351CD6ACD97E4CA83514ADCC719226DA69D922E4644302F67250124D9477031AC3CE28B23EE3F2032BC8EB7EC658D678BF415F1A3472754DBC77A3BEC24CA9CF8AB67166BD1D865C7457D10855765F4140287DC59BE24CF45D6D348AC92D05FF007EF4FAD713F513E34527EA3B57A6274C5A870DB076558394D1A5AC88F1F93800F22AFB8D1540CC91F3EC2E2E5856D555F302248857471DEFD2ED464B36618CDCC68D29965865B7BE372DC85DD845180E6BBA9715D01847AE323C32EDFEE9B96A358AC3BDF287C95B7AF44AD2931E5C0B2EDFBB9B023B762CA12A6F05F6F62470C45D1551132FA014CEE1C9F115C87C42AD482AECFA3B0EFE9132BEC58922ACD6DE75952C2605986F47785E8A16D58D71410E3F22BA1F55E4A05FF80E4F88556700B1E9213B05BAC439F3664216E3466DDC831C66D8D0CA3AF149319E260364FED73544F4DC7406362B5C55CC56864BE8DBDC20445159118454DC461A73E40150575D70CE3BA5FD22E0A2A6FEDDC500D2D6E9C2DFBE7B221D15493F1CB0CC6ED21464B96E9FECC243505A7A5B842F47474B91B7C9A6CBD8DA228AAA896B1DE6A949797D30CD54BD93588E3E856FAA644CB7C4AD6BCE3BB34FFD77D4F914A690C91EE018B9A4A75EF901C356D97181371547DC248BF55DB5E7EEBB352DBB9591A5E8E7A92A2AB887928CA6288EEF8FAB4ABED6E753577286F17D7A9D9278B5E401787BDD16994665E2BF8FFE665AE45D44355458B790B11CB0C23AE8D3278479064D89D4BB8BE59592724C8619448252A4C66A531004C233ED0499B1A4EF6BD57BF72D7AAD4A9FE32DF374D4A295A2B9B8A90ED76D91B6D257375AEA694F85BCD46297293B0B4FCB4E1C2E238DFE14BF155C9A03569DFF00A754807FDBF954BE321E973E29BB9CB642524432F4F4555D9A4AE9765B310E8A7A2FD761927B9A635DF134ABEF652277E57719B359612FF0A7F897951A7B4AC4D49BD535EFAD8467899593189F1EA171C7C8C0C4D7934A29BA2FA92222D62D76FAACB527D335C7916B6EDD99B772F95D5E0E9CF893AB6AC4C812255D695743A8A498C4848940FBB756474F4561696CD45A185717B3656417B5F8B4279B81166CE7A458488D15B7649BAF938E1D36ADB6CF4B97CDBA6ABA2B15C5F0F32DBAEE7FF24AACBF4E4BAF67437FBF1BDF94FC9FF1519CF706374DE39D477E3DDCDD61E3E44B8595DB32FAA9BC2667509F6A40AF6622C0EAAECE5CADCCACBB0DDDC48AB9208420710A47CE42DCDBBD66DDCB9DD092CE8DFD1BAF8917ED5DBA9D696B6E5C66975E48EE72BFF741E7B2C0C9FF0002F158A6085C9B0F2AEDE4F150E7C849CFFB6A6410B9B643FECF6A2EFEE44D6BEF3E4A89CD565C6662F614A49D5C4538EDA1598FFB9E32877E2373C16A3469504DC467C9CB979D50F799A3489E36A36A46DF1E0BCB817AAEFB6DAB2DE512D351D9CE39D087B117699556561FFDCDD604C1FD978515E6FB529A175D73C8E9AF4518CDBAD1491406BA11B92AE498E2E0B2E28A083842A405C485735F294D6DBE3544C79F6764C60E1C9A7FA974E9D4B544F2EEEDE24A60FEE6FCA7ECD92FFB24C71D94E1132861E49DB36D13C3B87358C5D00E1B228E926E1F31A8A0AEE49BEE336FCADBBB0574F8FD1C57286E48BBE26EDB32EDE3B8F89FB9A73922155F0671D65B6F70922EF92772AEABA201BA329FF6FA0884EB845C01772E03BEEABBA251FCB56BF5DAD5BE396719FEB16E09FF005254DB7273D1D7C78964D46FDCCF94B62BF7FE13E36E28BA63F246F24AE228BE828428DC7091E3F481554776DDC2710364FA7AA2A46D7CFD9DEB55F62B9DB72950BBAAB2ACA724DFF0B72D996A5387C67E04177F73CDC37B12783D5240BB90A27931644E380A0843C11AF1D9C055152F76CAABFC36DF4FF76C7BB76D5B6DDAAC56B73451760D3C1E0E9D9CD136FC2BDDAAE772874515AAC68700FDCFF64808AEF83B5E8685C5503C96B255736521338EDFFDBAABAEA210FD36FF00C7D3565F2EC766B873CB38989CBF3CA487F0F735E94D473C880BFBA12D491499F072A1CF69B802BE4E5A038A003CD11457C6FE286A3FCF6E49B7FB17565F2B6DE0AEAAE8BEFF00B28FE26E5AA6E6A29CF325DCFDD1D60DA02AF8394E48E7C9C78F94363B893688A42E0AF8DE8888D87BC88489101536DD5576ADDF2745C934AA9E6A698AEECEBE25ADF88EE98755D32E7DFF009228FEE917997F84EF059BF8B98B68B03C9871F70C9C304020599E3FD7B04823CB7142522551E3BAEE9AB5FBF758E15B2D43758859BCE5AE59F42B67C6D4A5DCA1CA54C5E4BBF9E08AA35FBA3AA9E3F883C1DB6E6BC507FF00D434450223DB80EE3D2E47B922A7D055117D3536FC8B6EB9DA93D494F1DA1FC5BEDB55CDA87E5DBD8634ED5FDD3F3A1E312AA317F124FAF32EC861DDC2C6330BDECE5ECAA8A5B28501A2591270EABEBFC4AC2D27C4725A496E39C96A313115D278C53881CADED49DC9356259D1CF674EDFC8FF005DDB72B5B4EE6F055EB8FE8D76A7FDC7FE5AF5AE15DC98AF7453D1653D9FDB15F5F86F8879BE00CF4764D8DF5DF6356CDBAFF58DEF6DD2E3398316CDD048C4AC204FA66DCABB175EB680511D611A7CC832FF0066E49B70E8DD230512F1CABD64D1FC6B252B5D33CBB315CFB8B5720FDCE9E4CDAF4C75A62781E3EFD7F92DD5B6B9DDC792791E518060BFE80EC3C62D2D2439D335B8346876EFD9C058B8FDA31FEAB7CAAA9D199B01121BEE3720B856FF009775BB76EF596A765CA62B38A4A129A2CDBE8B1A29B3E227B976DDCE233CB3C7A9AD32BF7617E572008456BC47E81B2960CB2AEBAB8F661285E71C6C0FEE1B3A1ECA97123C6778120091111292272DFD35D16EEDB7257A69EDB58F3A72C7BBC5E464F61AA439EEFE09CC7FF75FFE5BAE2CA363E9E14F8E21633E6946665DA54E798DC2882D83BBFDEDBE43DB1598E415375B51E726432D820FD4D4907595DF2B6ED7EABED4A26B8A584C6294CFA9A82EBE35EE8ACB9B5D9C4C64BEE6E2F823FB873CEEEEFF002B3C72C17BE315EBBC5705EDDEF0C0FABAE70FAFC6EAE1BCB4FD99919E010F25ACB4664CCB2AC8B8EE5D631923FC9652DC968CAFC8DFC4A44B5B7E6597EF2D9DBAAD29BBB2AE5F9E54EA4BF89A76EEDCB9C39A2F33DC7EBB4E23CE1FEE7880F9F835D0D7B189A65EC67CDBEAA92B29C56C1586726EAAEF4C0087E671445B69F7B2F6C1C4521420554554FAA5ADC4ADD81E2BAAF3294F481AFB0257A4180C5571651134012633F5ECB0FC68AE2461649E715AE2BB0209092172DD35A4F328D15966C8A436DBEBC97618E48AE922A21305B8386AF11FC868E7F4AAFB953D53F82E82228F0271B95251C37773E7C85D4DD4CD4FE622515455E6805BAEDBA2AEC9FF0037AEFA10AAA4B963138E3600FB9C89BF9F892B60AE0812EFC913E43234346D077DC7D5136DFF008BB49EB990A4B0A6488DB4C22715022FEEA892910EC1EBC9B343DD51455557EBFC053420963328E8DB89F1B40A6BC93E321F7EC81B3AD88AB4F28AA7354D97746D17D50B534C41F16DE603E0087B80808B62A488A06A088DA992016C42D916EA848BFCF7D2BDC31A95B8962538584357815ADD621236828EB6E6FCFE4F721818217B3745DD7D3F86E8964FD0A8A21B6CC7432535105E0AEB8E3BB714695548D5089D791E345554D9097D7E9E8ACC86497DC3CDF12F93DBC5D1DF8897CE46805C91B6D5154F86C88848888AAABB7A6CA9F110405926E3A288EECAD293C0804AB1FE424432441708F8F3451E5B6DB2EDB7A6950FCF8E3B49C594E808F079F561A6DD46DB232714111969A74C39B68D9821AA2A72E3BAA826E6BEE58A8C0A54AB2962482325D6F9097C9F03EEB46F9BCE238EAB842A6442687B2AEFF1937EBB7AFACD50E38E3B0A525ABDF021239B21A00A882B82AF212B9B3A1B20B42BB388A88BED431445154FA47515CF0392DD485121595C38A830E388DB8FB27141511C72336A8A8D3A6A89EE14DB91AEFBFAA683B49866FA72B51F9497A3FC22EB32383AF20BCD9989308F00A0A3ECA93685EE155DFD3F8EA4670CE0791C91161968DC36D4DDF98147E341E264D9B8061C517E55FA17D5111476DFD74962695C0A33D924C47936924E32CB8F18B6AE08BCDA7C82B244FD1C1689C70547754E7C77DF74DD3513C71C742486179259E5B4E27BE6245E3CCD38B66E234808D0A838F3318D576522554E5B6EBBEFA50638118B2493F23A472949E69A107011C6D553E370D1D044022316887D1153FE64DF65F4D2998256565B24BE390DBC64DA29098948DC855AE46E349EA2EB02AEBA85BA0A6DBF1D937555484458D965ABC0720A5BB184D551C173DAF28B5CF9207C88AE928A80FC7B212222AEEBBFA1106AA502C7B02EDE17DF993DD741D225575C79C9868E282BA8721D928AF1BAEAB84EA39CDC5FA22F255E5A49311C71C54A47FADA7004809135C6B91F1056DB3E00E7C3C47E204543764B8409EF2F4145F5D853423AD4927738B36FEE10E7BCDB80CA1036A87C3E62514049121083671B6DB5D957829928FAF255D84D114C7BB2AEDA779373DF371B11142534116C54100977075B02144E28A8AABB207AA2A7AE82162914A97D9D7CA6F49FBF9424B2389712243E4EA7106DEF89D403371B15215542406C36DF7E3A4B260A18F6BE45144DC8D68E802366448CC8245268080551D8FC1041B1E283C110C360534FAAAAA69C71F721C1024F77DE471DFEEE43A2B3554E402A8089130DA8930F298476984425D809555C155341425455898C8450B4FA82EAF3B0326CD2A653A834998F75E6745166486DA57989390B50E3B4EB46BFDE415FD28F605DD53E444F553555F3BE4CEAB9DB0AE850F1E9E0B3C8EDF8D0D5BAAB6CB95875FE3AF61B289985813786A373A9A4B55B8ADC63352D4968182ADA6ACCA67D9157CD05E68E8B3757F30A33C9B08B0E2A22082200F3ED5D63DA9DB69DB31DFCBF5E474DFAFDC8B945DF6E3F9C0F8B9BCF8B6949BCBA6AC7EE4EF68DA79A286F3EFC2B3A6951E7F26C5D420848A00BFDC205577E23142D977BDB5692548E3F71FC66F5696EE757C7F1C89E4701D6CA38D9EC862A4212E6B24DF2140D8F9245478C491BDB75225451FF006EA6FB66D76DD30FF8E79F48E8D5228B1D4B1274AB9B561A3957F4A44428F92A5DB609C0DC300071A386448EB229BAF1D95764DF6F55D265A4E7EDFCF13CC943995E7C6443FF004EB73049432BC15AFF00C9FA85B3EF2340ADF2571F01940A460289FC3D10B64154FA1B6DE856CBE33234AD32DD303EC46F20A661B850FB5705AD8624E386CC2AFE686E3AE238E901BA65F238269BF252DF6444FA6C9AAEAB9BFEB4FAF3E31705B4DAD7F6E3AF1E44E9DDDA3463CFB3B1594E98FCA2E04386D999F224E0D8F220DD45155771F6EDFF009B7D5EFF00EADAC629DB192FB2F22B6AAF492A527B472FA3875B5CC6531EE81B864F039148D41A68CF8B51855AE408ABC4CD047971424554F544D555CDD8EEB934D638BAF72AFDBC49D29DD16B4D7DBBFEAE0C27DE3272DED6C5EB2145BA831E6D1D8BB3D8FD5E394E84F37615CE564D6DA1615CE33FE2710DA2E06E038886282A88A36B94CA6DE1C634AFDEA12CD253E33DD8D11A54DF8FB92365B05D63A42460E7BE2DB217C7FDD32711F360DC1902F0EDCF72E6ABC57EBB6B24BFCB6E89BAA7D71C661E1FB821DB14B9A9AE1C55327E8712CA319CDF10C5EDF2DAABBACC86DA0574DC601E95F733214C94D37FDB1B16164448D25C69A170E19B6F220AF15DF926AEAE7AE68BBAB5A52B4FAE39056D2139E9C71E267295E72F5A60B4F0315EA6EF4F213A86EA9E95CC233AA29F8253E63D7EB269AB62403BFC2ECA26710F2572695C51BD1E3C79FC60C6493F78CB63209E6F4BB6B774AD32926AB38AEC9CFBBA96DBBEC4DEA8B9B5865E3F731C669E68621D8B271A9F9CF6FCECB6CB07B8BBCAF079995F423B62FE0F925BC7AA8912CF1B1919AC818A55AD53B129B455317A747190F83E4DB6836F6AEB6B597335C7B6BFC6647B8AEA4285D153C567E3CA302F19BF924CF01C1763F95B9C55D815E419D3E5CEEA5952A53F595D58EC25A474ECE4DD011D8CC519D62E7C7F24B31E22E32ABCC5EDEE29D16A9850E52EDF0CBC07B96E1737A66AABE09F5C263B09CC97C9081DDD8033DADD9DE4F4EC8A83A8FB2F05C36B2BAE70EB03CA59B7EC9C1F349D22657D44AC9D65D8555AC1EA079DBBB4E08D439C55B1C0445E446E9ECEE28B5CB6A2BDF97F068B72D9775AB178762E9CB9F69B7FD5FF0095DF1A3ADB1AFF004F14BCBAD9F58E68DCB65B89118725FDA1B705D99189974D6031351A7A4B3F742A6C0980109AEEB3ED6EA5F5EBD38C79321DF644456BDCB1988CB97895CC2BF333D45498061D51DD392DDF6FE7B5A964DE439FE278B546050B279697360FC390581D7D6B9071F4874D222C4571AE11E69307200008D4347B176A7A26DE7495C651E504ADE8496E24D4763830267FF927E82CC6F6164F89E5390E197953631A6D7CBB1C5ADAFBEDDC705F8720919A76E964ACD6E3C836DA34456D548796CA5B6AB77C7BE753C31E5CFA450B5BF22C8D315F1FE7882CD1FC8FE3D29C165DEFB69A5447101F5EABCC091B54705D6D515CBF888DB884ABEBBAA0EEABEBB6A2DF8FB8D5674FD7F9C7F63DFB2D885EAE3BE9999DFA57F26DE326316CFD9765F6276CF6B5F4C8B369F03C631DEB0A9A8C1316CCAF6A6DB1DA5CF2EDBBFCC6764B7F678EC9B8538EB18632406A4487596A549FB7E377B2D45CE6173E959E3B0A7BB36C24A5F2FC715864C655DCB27AE2D98C4F25EF4AB87770A9624C9E2FB198E36E36C8B9260139F6397D0E376B25937E01AA2A455450245DF9736C6D38529E46509286EB3DE605CFBB5F26B9CC604EADCB19C92A6DB15C4A9E7CCADB30B0889572733B7260B8C57095B18E568BF286CD380AE0F34F5D6FB1FDAE7FE30B9CE2F999EE51259CBE5C917BCCB1C91A922B05D96E34D3ADEE2E11B7C777EBFE3212471C07149111C5445450D9113D55535D064602EE7C82FE1B0E94D75E26A5F5B76B56B6EC9946C0A2D942C06313AC8A32E11B6895E28A044DAF201D976E48A066AEA9BEEDEB3C6A09B555416D5751F6B06AE14C838FC992C845A9AE238F372589D7E53AC59664C8F91BFB82906C3A6A0A8288A8405F722576A584DB299FE9FC7A5C893243E690D49930DF7D21B4DC234972E3600D9C998B0E132C13CE366680D362A5C050740532433DC8FC4188850A2D40BFFAAB15F3E424D86D59330DD8F1EC20AB7D78E4B8AF34CCC7415C649B755B90E09EE27B680F8CC4EE96CA1BEECEA9AE761236FC6758856CC88B8D36E7C535A663E1506C0481A516C915C0F9D176713FD804462AFB7A2416ABEA19A8AE8D18C1C8AC5689C3811A2BAF3851C8AA4E8CE232066F9BA6D26CD1725DF725DC80A249C6BBD26180CACA455AAEFB96E0B2FE3D5B69362C49CEC4296DD694BC627947892DCAD649C6C0401C563FA4765D013CDE33DAF04A636FDE2A0C8832E24CFBAC650BEF63D89A373604EAA8D8BB901C80FA1B63C1F471BD894451136D0109DC5BB5454E41DAFCA509A61F6016A6E2A04FE1793832C143C7587628C66D5444C88D09038FAF141D01CAE697BB674F9B68ECF8ECBC6E472B0953509AB994F451344FBE2730D70B21950D5C56C3EFD64F0E5BA92EE83A028AE62BDB8F479509AB8B99305E58EF8AB54CDCD69DB06E425B4395F62FE2AF1B93EAC93E68CF8983CDBC3F209020A2A01C20E29DB80A08591DF382F02B22DC8A1567ED586A43CBBC4658A18CA1F74FBC04E3C282644283BB9C1174042770CED596E34FC4B397124919487962E350858FD4A5CA197267497A162404FBAF493371C755A571C5352522232D011E4611DB1611D88D22D6323110A4B8C44728BFF8F89F7CF3253C9810C109E8E164E46017D484C9E2014D87621D0106175CF7B57C966D21CFAE6A48B4830DE16E7416FF00A544A43AE3FD7A8FAB46A0826D820B7F12981A18910E809477A8FBA8CC3EE98C45946CA1BC29410DE6C238328E368D0438DD735711210B24A2DB4D28B60089EDF45D808927AD3B8A4EEEBD2EAA4BB1A3B719B07EBDFE50E14375D931603329BC39E7A257C649846DC6DB80ABAAA082A649A02037D71DD28CC86CA563EEB366DB4071CE34E20B2795F178E3C847FAFDD0F9587D813691176436854500910B407C93D53DDB20165351289E86428C3A610AE63714F8CB8443720F5FFCF1DE8AF0AA7C9C5A57772547115765028D3BA9FBDEC6525A13911C93CE4915848B4C8451650363051E4595D5B2E44E7863B0D8A23E8F9023603F227C628004B9751773B306753857D2498135F66E653337B067418CFDBC66CD98F6D36A6C7A8F814E8EC4B2645E06F9B40642D90838E2901C07A6BB7A91C625B3069197187425C0B9ADCA26C928CFB2E849FB9666B5D6A26C4C85B22198A1137CD485787A2811A3F57764256BB0C29AB4FEE64B531BFB4B087F6E72A38BA6C1038DF512595803BF239ED57DA0DD048C095340531EEB3EDA7E3C380FD2E34835F164C34652F24B2358C583FF0071242BDEB6EB333891A7C80171FF0088411F7815537D95740401EB1EC8AA7243F1EA3188F0DD07E2BC07947DE352127102CE8D60C4EEB1F95EAF9A8229F0BA4E36E17A122F2DB404A49EB0ECA90DBCB3713A3592E232DA3B1B2368A0AA8BAD88FCA09D6C091C4DBD95551B05244544452445D01212BA53B4ADDC09366DC09329A6A34557A5656B324247A58516157414967858CC089531D816E38BC22411C51A046C78AA81017A7FB1998722018C728F6670E53F0E4DDC77A04E975460FD74F915AD62B377B5AF7455C61D6DA17036542DC0B6D01121F4EF69C5781CAC28BF78DCB6DF89223D927DEC6107FE492E1BAB450520CE054E624D2AB6D12A22121222281107A4F3D741D9691198AF5848932DC7AAE4ACA8C56528CE6BD29C38D4F58D4A7A6BEE93925CE09C9C714B91EFBE80865D319DB91ABD9395F23305FB2970D871C6EC7F4E7A6351D8B09B56EC88CD3D0D6D1F61A4908DBD1D08505544D477502AF07AABB2692747B4AE7522CE8CB25B496160514863498EB12C001E94D9B0EB2EC7356C51F6D078FA9222EDB015993867604D6C20ACA68FFB662F3D0EED8216D806C10812328361F6EFF0DF897B915157E802AA06B2DEE08EC0EFB8B5997D224B49581959C6ACC816AAF182056C63373187010A32ECEC674B8B880EB4BEDE3E9C973DC4DC355AF777F816B62A6CDF48351E3E7BD8CCA32AC324CD1B31C5A8E660D0D7D67C89F146E2AA2D3625C55076011544DD51538F9FF2377DCDCF61CDB16B6EE5109611CD737D9DA776C6DCEDEBB62EBB55175E667F724B12338C75F75DDDD858264B0895F4225303BEA638EAEB8A5F2B2D8FC04E2724E249EAA4BE9A8F8DAAFDAD36B8ACD5A69D265D671AE979D32716DC76DB74C51F2FB65E13E65DACDA416D1C279D114432573E3202701C054126C38A92112FC86A268AA8BBF2DB65F5C55DA5DD7DFAB46DC374852A562DD68DCF250CD2EB75E95643772A67E2B1E2B27D2B18CFBADA138211DDE0FB42D8F1516E31217AA0AF0F9404876F76EF296C9B6DEBAFC8576E5FB7163BB6F56A7588587352EBC9AC5669AA6DDB6DAAE731B96A8E72F3A65876F22720D99CEA8AC7144C8C567C169A3784FE1602FEC7E160180E45CC0E4A1917B9043D057D55753AEE575D634AEB526E6553185DAE5B57516092588F6D7A5B712F258E12FAF663898AE41578F6BE492E73CDAA8E338B5536FF00A1F02662CA7C509E47B88FDBB8E2EC5F5F76E889BEDA956DBB7B4A895D9D70B9D6EAD6A9F2EC274EABA8D51CA4D62B295D7ECCC91F2A2B42DA4A65E715B16C49B6C4C3D880A8EB6E2113AE0997A222A39EE245D977D968EDDFB2C4A1DDB9AA61C6148AFF00925D79752CAEDBB9B69AB6C8E1460BA77117E6738AA2BF1B670772161C68C01E379793280A5F3C7750C7FDA3B8A2A88EC9EB5DC6EEB17B8BD4D552A7F58D4E21B6D3FB6098B2DB55DE986B5675A76E11FBCC9B6E14AE2880FB228D32A3F1BBB0BC6A48D21219281FCA628DF2105D913D57F826F5BAEB6E576D5B734DEDE2E6ADC4BA513C22239E125E21ADCBA1CDD4A60ABDF1979125CDF689587DC65C371555E569D6887627541E3710C94551C7010BD7FA77FE2BF4ADB72BD3DB585914B5CFA62D695309C9727359977BADD2A5386E71A57EBC54E3F762A681F234F08920B4D2CA135F8C95C116C1971517723D94951080876554451D65EFDBEEDCACB926AFB6D9782BA8F4DDCDC3F4C38E7892B6AE693B93529B719AAD53E1F2250E6A3A6D7C8F83C9F08FA13A0600D1A3BC144B7E2C912B49B3A2A49CC539222216BA7DB7B4EE76C5B6B6DDC9296DB4ABD8B2B62AFBA334F5A52D3782FA47EF9126DD8C757995446CD01D6DA6C8C99F84CD51E3714FE34F901549C05555154F555DF6DD173BEED2FF00D8D4FF00D6B76E34E173BB26D436DA8ED4B250D96B5376FB713B8EE995549465DBF7EC3E9CE0F90C164091210C9056DE446C7E434645B37115E1553690B8AA97D37DD372F75EEBDDD6ABAD5AF69D653878386D5254C289E58110936AE6D5DFD61D794F63EA94F3C0A59C84326D0155D575786C2D7A0AEFF19907F6B606DC16D38FFE9FBFEA9C93D563B2EB143D76DE95D475879D1CC51E1DC5EEB5A6DBF45D6CAE8FF7873A138FB66207CDD001FB9F79AA3315C8E828C80B4E27C2D984B68C145489540945551576D937575B75BEDC7A665E6E66913FF5762797239DD8D5FAD3F545394758A42C4A15BB64DAB6F1CD61C16ACAADC7DB208CE888312C009916993557B888AA8222B8A66284A5CB64D4EDBAB70D25D223A47F359E42F49D9A5E33478CBE73CA3B20FA4CB4DA6EDCB13501531DE391A8B8CAA1139CC0D782F0555F61EC243B6DE83CADA5D8D2B1AF6F1FEB3863860B09EFA06D6E4EB5EBC1D6227B717DCDF3325F45CCEF863BA28CBC6FCC6A704ED37BAC7BE983BCB83C78212E18CE110ED728AF6A764B02741876338AAA17DBB915B1B05F89C165D0471E42CEFDFDAB9BDBF90A2F74D358F5A6B1509AB96A55AD1B4A148DBD8DD4B56CB5A2157FED69D33A3FC66698D98D5FDD74EBD11123C466FD5FA66B8BAC7DB3CE62687560F2BC4DC8018FC3E27B704569457E4D937DF9F6ADB6CB95C93B55B6BF4BCA5AD2ADACA4979CF69A45CFD18B783CFACD238E664263A8F3C0F21FBDFACDBB8AC939C48C29A956735B92DFE8D2EBA361367757B1197E293AD9FC814DEC46B6275094C14455175A46ABAED8B93F794BC62D89FEAA2B1494B355AC84D2F52FFC7295719C539EFF001A1DA07E313A9BC2FA9C3F28B0FCA7F407907DDB95645794B73D5796F40762DDD0F49E2DD5678B63AE43A5C830BEB2EDDEA3ED77FB01EC95D9B2E63B3605EC3280511B8A5189B94123A16DD976EABBD76A4960E3FAD54B5EA74858B58A7073BBAFB76F4D9EDDCDDCF152EB4FF2A2ACD54781DB765BD6DFB6765524D167A13C94856A51DE06E362371E7ED3644DC97C7888B6FCCECB878CBB2F75F67DE3C71D151397A6DBDBDBD8D4B753DCD76CFF0095CFFB2AA86DAE5138522114D7F212D0EDB34D3FC6D5875493ED872F33A4BC23A92AABBCF2E9BCCBA197B02378CD8F79BFE2F42E8AA5EE6B0ACB8EDBACC123F7CF55399452E74E5434EC67E5AF645B5ACBAC71D7A5CE62A1C8A131F3962FAB587B77EDEEADC977BA5AEEB9A989595A9279618B79246F6B576DBB6F4AC4D5CD2B5389D3CDB6D615AFD4FD3735EA9E51D0B7EE52C702DFF13DDA97E42A45D7BDD1E2B662D710689C127BC8DEB6C35C568DC03369CFB7CBCD115BE265BF0DF89122CDB890F03F3D999706E1A49812E570276BE70A46436E0FC5F730E4A3AAC03AD30F936E8A8AA2A220172E3EABBEB4286C7C35E401B1B3BB8608C91722223554FE912FE9046BD3D3D495153644FAC90E9C71C78970B04828288AE22FA96EDF2F936F9F991936A684AE818F15D913D77FE29EE49115EA4D35295B221DC136791555B2342751038AA6C06E7C6805B7F0F77145FA2AAEA7004DBB3477F6AB7C89A204415343DD0D1151509C5321273926E888AA8ABFC4B4C58FA14E75E1F5D9105C0F4534133E009CD367760E64D092226E82882BED44D93D0190D1B53751505488D0DC556550B891EEBBBA8868648D3609BAA7054E49B7D1378A63993592A30DC06FFB7B00A385F296E4C3649ED4478B98218A7050E08A49BAAA27D3755D4D33227BCAF1490014357773271095FDDB1515D848792AAAFC62AD387BA7A714255F55F4D448EC249C7995F90D1D314075141C54124F41DD38A093220AD7012015E3BF25DFFD9A96232C8906DE05E25F1A0117A3C2A825B3EF8FD5B46CD5E535434E48AAAA87EA9E89A81D0F8ECA6FE344274DC4152E2E20B5E8A3B9B47C54917D3654DBE9F4E289BE951D0A1CA9604EA6FBEC5F1A39F2122EFB70E3C880B702F8D77E5EFE3B6EAA89BE940C9175D6FE34055E04BFDE355271CF60F353F88C547752DFDEA89C889117D7D74EA08646AE086C42DF34414E6F17B57D5C711C3F8978923A9C7D375D95364DB65D3B7124FAAE09099A2A17F697779A785050CB8A202196C88882E7B47D4915137D9375D0571E38E3120ABCDF314E45F18BA8864D8A930E34481C7DE46D127F6F6D957DBB0F15DFD7404B7C91DC2705F4DD09BDD5014939A28AAB4E38A8829B2B423B226FEBE8BBAAEDA7689A492C8514CFDE002228E1EE29B1B6E9B489C9BD84F8271151E2A83B2AFD513E81C71C73296B1C1D3F93EE963988B66826641251853454057BE551D9E044154F771F6AAFAFA69D84F522B91E3232EA24D175E17C451B15465E12251310694F98A0127AAAAA6C9C8B6DBD511D427592972FE154544564984154568880BE3151242555E4BC9C493F45DCD5455157D1740521E518EE023721B254709B6B675B5414506FE73713E57954DC0F425443144FE94DCB65819F5298E23C9EE71009B71485B6DE648592D954C1B0F51E2842E7205444F628A6EBF4402DBB17A52349F23A84E34A6AFF00C8F02B5F3837ECF6A12A038CB7CC4B9AAAEC9BEDB2E84E059736C1E505F94C5C71DDF7274D8E6A5B8ECDB62D17CAE1912EDC950576F4DFD53689A571E38E2449694D9CF27CA6DC968850955879057656C5DF569C50651B536F64255F5E3C7DCE2A7AEA082D67E5BCE98304FBE84E33F288A2091BEAC2A6CACA3C29C89392AA292A22A9A222EDBAAB05398FA71C7F253DD9FECF8890459F99C7DB86EAB82E72D91A47DC75941715B4216D5C44551354144554F722903326F037EEF1E726B90F2DAC6E74FCC6F338A6AC84D65057F4B650E2058427ACDEB3C662E1D2D866442273846B29A4012986DD02557FE3E2F95B747B9738B6178F0B19675FC7BE22CB54DEBA4FDCCB10A7C1B39916D6EA9E0DA312C4DE995FC1DAF89B4AFB847E3D624790D335CE35F27260550919705B544541445E5D9B76FDB56D892A4E149EE78CC4F5CE4E8DCBEF77B73D17671F8A16165F0D8A53AC86CD9063F90FC4C44A2C825FDC0E31D958FD799BEB734448AACD076FD70903391D03E6DB73DC6BEEABFD081872CACDCF71DF63F43EB30E3E99BAF228EE8B5597252B8AF1814BA7C72FEE5242B9D8A3F722DB870E2418321D2B23E46430C24BD61163C690EBA82D6CF28EEBF45424E2B0EEB9BD565576C70BAE58608856C51BAF61465AEB27DC216F30BA68E2A87DD33618D4DAFB68329B16D1C812989564D1B64C12EE26E0A238D6C689EBA9B9CBD30F5A53D1D30A679F6116A958C27C71D4FA14321505C3CD2C5E45515D971F57367138139C50AD9090CC8538FA298A7B5579272D6776EDB0D3737A582A61575E30F1B2B2F5195AFC38E1173D6F5E5DD918205DE48E0122113EDD6C68AD36AAA42A62B22498AB65EA828842BE9F55F54D689EED2D7FD9D5CFEA7BBEAB284AD8C5E1E3C32F1AFEAD9515C5272EDA9EEAB8DB82CD8A4E7A2A2F2E3C08637C2C139C095479098AAAAFAAAAEDAACAB9A5636EF4F52A65D27FC63F50C998A34E2238EAB91965AC533B08CD9339051036F3662D34F4792C6C5C149944E04FA084669136011E288883EDF454D5399BAD69AC338A73E4F9FECAB8CE69F48CB8CCE4989762B8A8AB93E3842688A2831673244DA369F450751B2E029ECDD77D957D77DB55B7DCD537BB5A9A2533E39F3C9E5DB67EDB516ABA52ACC71C752DF935195B6FAB2FD8C30541D88C233FF1AA8A6EE2FCCAE71FEF126CA88284489BA6A8E8DCCA4D655C316BB544AC7165A68951FEF04FF979140BCCAF25EBE96D486E163F7EDDE163E3919338BD548CA0E9318BC1BC8CC63D90DBC77A6E32E058A113EE41758392C22B4EA9B65C3537B565CEE5FDF0AB6D782FCA9EE2AAB643ADB8D31F3C69FA2FAC4727FC99DD338FD6F5A76D5450E0F6383D5679D77537961614EDD275C5D486DCC0AA5D17ABA3B636A746E30FB6DB2DBADFC4E29FCABCD397A1B5737B76DD9BB51CB7DB17DD6BC9B328B559F975B36C8E5F7EF5F88386F13A4F6516A2935D6CC5C269E18F5ED83C6DB8E6E3B26FB6CBBFD3572B089A2A0FCB8C33054EF5EAF90ADB606DBC77F7CA0CF2641DDC5E9148D37CDB31405512555344DB7D241B25E26F98DF974F0CFB42F5AC59DF18FB6B34EF3C329B13727760C7BBB06F0EC67ADB259B7C2B1ED2898AABB38969779EAA488319C98DBA60DBDF6E8EEEF163BBB36EF3B5DD0D5B346934E6271EC469B7B8F6D38997154E2227976B3B031FCC27E712344876F7541F8ECABC7AD72F3C02B6DE6CDCEF1FAD9D9D80C494FE011AC275C38E3F99A4792D72ADE3F760E18B6AD7CA9F16B8B7FF00F59B7BEE655B48A596554CC394E54D572754D1D5B3F3AFDAC53B9D71BAEA388950D77F39EC8D2BF28FB6FF002C1E4B762C5EE69B9AF8B382F6AD5E20FF0054E698B556050AB1A818E75A6594F7789B10B3FC928322CE3316ACE476B3F3A456BCCC0AAAC6D8036C1C7251AAF4FC3F8BB7F0B63D8DB8D3AEEBB04AB73E4925C9615C5D4C3E4EFBF93BBEEB50E12C5BC3ABAD5CBC7166A9CDA2FCAE3E7B4FCB7C759EA11E31391BE0685F96C036AE474448DD7ECBA6CFC0BB2A8FB17FFB84A5AEA93024520FE53FEDA147FD67C7A58E2C0B914861520311C849409B2577AE579133F022A82A980A8AAA7D5534063ECBF30FC92D25E5EE336E7D1D22540EB9C83B3AEA557D161EF408F86D0C4B89164FC7B17705849FADBEDD3CA660448C2B25E753886E429B56F716DCE25C3FA644DBFD976A32153F919D859C6496D914CC7B0FB26649378DE4B9F7929D6FD59DCA1496984B93635D44ACC832EC4AD6D49AABFD5063354D5AAE9C995B1292899B8D791AEE957589BB9A536BA34A2AA709CBB7283D0A25A261278ACDCF2E3C4D4EEF6ED39B7DDC783FDEB3D710D6CAB703AF929D53D5D8EF4FE3EFC0A8ECB95299B39B886294D8EC2913A49D9BADCB96E306EBAC32CB466ADB4821E87C7B9DCEE94D60BC0E5DE4924939A9B4726EE8587A431F711F6094A8AA4EF3346FEE1B14331056C91481A4255DF90B648AABFF002EBA4C0D59F242F6B25D24576BD444E3E339C32AE8A3264D8C97F0B13513694D51BE00629ED44DC5775E4A9A032178DD8B75F64FD4B6326CF13C6A65905AD8B5206557C7794638E335160CBACC9F81E93F1B8127DADEC42260AAA9BFD00CADD574788DEE234577758D535F58CDAAEBE6C8AEE9A1D9CE0663F4F75847F8DC953D990F9364F7C84D33C5014CD4D36E6AA404CDDE298BC2ECF0A481434B1AA6F71CEB9B295092BEBE25418A5A76857B9632EA63321009F651E6D82275A25E2D816E9B0100176F6875E75F53F596556F5F8D63F12C6BA251CC836316B2B62CE8CE47C8288DE7C5D6C0E503CD89286C05B9211026C89EA05F38B601D6CB48CBF65896253A4C8B5CC125594CA6A69F364C95CE7256D1F9729F6244B90D9361EA4E38A9E9B0A220A0E80C7989E1580CCECEEC5AA918C513F45597BD9090AB1C8107F4CAD6D68FC6292E4A81145160C2778DB1FC271DA575524B9CFDA4AA804F769621825557E316141434D0644AB9CA6B0A551C58F576670AC7A77B41DFB5FF00D936DBEADB8FC665C2D95405C600B61511D017F55E17D54722114CC1F1668DD8B56EAA0D0D6812B9F147681D447455B11468915538AA0F2544555DD340622E9CC3B11BDACB0B0BCA3C7EE12BA25543612EE2333DDAF80D5CF62C336EB867FCAEC78AE3109A355687E15D85513D7D00899862D8756E758A40A3A5A2ABABB2A6A50B6AAAE6D9875B39B67C81E958EE859C18CD0449C4B0A6C8689A75483E078B6DC7FA80B8BB0F0CC120F59F62C98D8C5031363E07974F872DBAF8232DB9B131CB3910BED9CF84654590CBCD22B6684040428A8A85B2E80BBB02C2301BBAFBEB3B5A4C72D654ECD3B138BF675F0A6CB910D9CC2DD9AF1727BD1CA63A919A6380A99228022026CDF1DC0C6CB8EE28C76FD9D27E894A94316D2A9E182E57B43462FBBD256EE9D835542CAD57DCFDE822FCA88AEFCADEE9EABC900AFE674187C18F89BB4D4F430642F6575B4259559022C096B1676674D0EC006644658245762C8F89C6F7D8C3D3D536DC0E1D6F80602FF5CF5DC8994544EDA4DC030D59AF4FA7AD22916D3719AA9339F92EBCAFC89729D92A4E93A65CCC8D4890497D40B0307C6F179B9564D5F675B5B2E3C58D66152D491092C53C767BDFBEA2937019475C8D1DA955D0A209900117C4D363ED40E2804AF6CD0E2B48CD6B555022567DD51E711A47E8EFB95EFB91D9878B136D9BCCBE0AEC46E411AFC4645C914C476E4BA0332BF84F5734C5DFDDE218EBECAC1BCF8CA3ABEC391DD6C64B95D2587DA99F12C86CD9E4BB2226C843BAEFBA01867AA6B292DA91CB2C8552C6C803AFD949369653E5CD000E8FEA394EC77016C0C1194BB9339D5545D9C79D33750948D34053728814ECF62D3D4C2476352584CEBB936F5037173F6D3D421F7E09FDE474B57451B6DE895E8E26E0DA8476F9216C3A02ECCB71FC4E0E2B3EC6AEBA2C39F1CA85D8F3E1D8DB352E13AEE55400E3B1CD9B233534E4E2AEE85CFD7DBE8A9A0206078DE253B17833ADE22CE9AF59659F7365367DA4B9D304737C991878DCFD40544561A36D00FB4463A08A20A2222016C5540C65EECEC86A5E906F63F024F66BB5747FA9DE47AE832DA87E358C408D0D9B810094C3F6967F1129B848B26428A0AB87B811FB42B316A6C63EF718195576AAEE711824D65E5EB724903A57B5A42B4E095ABBF22C6B4AF8EF0128A1B721A071508D07405FB4F8CF5BFCB5CC151569F30AE17D5EB8BE407E3BA115994EB8676ED99949270D5DDBD796EBFC11140C51D670717B74BF77206DBB0F862E050EA5BB0B3B557A1C37A2655225C38CC9DA8236D9B80C2B8889FDD16410D545105009DEC0818AC2B8C420D402548592E271EE820D85CC38F68C277FF45C590CCD606CF8BCDA63126CD92F7A10C67240EFC1C24502EACCAABAD22E059F4C8B5DF6F62C609974DAE718B5B87E4B374C63939DAD92D487ADA438E4A62C81B26D1177454452E2A1B6809AC56A703B587924CB9AE8F69649D8FDA8C858595C5C149FD3EBF3BB98D5A32061DB1476C22C4840CB2DA088B6D0EC3C7D3405973D9C15AEE0ADA46213218A97DD4F7F19AFBCB42A797323753B924AD2432D5A903EEA5848F98F9A930AFF001738238BCB405D777070785FE989B4B5A35929CED3EB9AE87221D9DD8498F492730A78D691DC59364E03F1A64270DB7D1D154369553DA9BAE80CE30F26A9614A4C99308DCF95B611C328DCCD55C74009E146910944990433455544FE6ABB01A49DCD26B729F2902C63C96C6BE97AA2AAAE29922002D8595BB9226AAF374C1E6E3C47CFE4FEAF8B9229FA96DAC77A1257526BE7F6FD17DBADD1D08783D5515366590CFC90A5DDD2D83F68EC2A8833EC207EAC8D1DAD3D45B0BB1D950663C0B686E96CF18022C6351E442089CBB97D97B4AD4ECC74DD9376CD1E70FCD6191DBB69ADB9A3BA6AB349C57186F97F277BFF008C2FC4665FF934A4EDBED191DE10FA5F00EA8BEC67AB28EFE1F5F87654BCDB3E918955E59D89573AA26E5D83BF47131BACBDA57C5D371E398B6FC141A58C6879EC6CDD75D72DB6AD87558DB2D4C695A727E0D51E26BBDBB6596D8EF4DAB94AC2D709C4CC3CD35864CED8D8FDAEA0CB6AD979DB39E1E04008E78DEDA0B6044A4AC8037DEE01F6DBFAA82A2AA92AAA96CBC53A9EC5CE53B9686B087F9C3A3E9DFCDFECD8A2E563F71456718EEC7AF912723F6B34777756BCF0B468F8208A9F8DD0DD113403447907FEB836BF2A3A6A7BEFB7F0DB65D45DF175396D371494DC77EA5F6A38257CB497F56BB1A54FFEBC3A9E74FCB3F18F35F04FB9334F1CFC95A5C5D9B8ABC62DEF3ADAE58C8196EB7B2FAEB22BFCDF18C1FB62867D7397336824CCB2A5932BF4CB06466564986FC436DC408B32570DCDFC6BDAB12C16B998ACA4D3AD3FB53BA24EAB74EF58AEAFF6A46510DCAA74EFAE069DD0DC74C5B76C244ECF5F26ECF039983D7C74CA7C4BC77A96FF0020ACC8E9596D64D85D627DE32715A4C82A6C9E908DB30D9BAA99C0BBBBCDD4E2CEBA5CEE27B7E8B6AB1AB6E9953B3C67A676BF6DAB9A77398C6231E8FB709E599E927C1CFC23F86DE7575AD876A78FFF00910EFEC96A31CBD8F8A66F8A66DE37D175776160194B9494D94263595E259631536911D3AAB98CEB33E10CAAA9C3CD624C9080E10DB6B62F5FE76B54984F2FFF00B7134CE29819EE6FD8B1DBB936DC3772ECC34298A9BC8DFED7BEAD6C85CFFBC5ED32790D095C5EAFC13DC09F26CDAB7FA8AB628226888A289E88BBEFBAEA6EF8B75FEA77C6E52A93F08D4E8D508B7E65B62D2AC9B2306D78E1254DBFDB25D72CC728CD7991DA82D118128AF5961048A805CF6545B4D957988AEFFED4F5DF7D43F87373BDBB75B897172959A7EBCF9E288FF6D512B5C298AAA3C9FF005CB88253FF00E303D527C7EE3CBDED0778A71F6F58E08CA9872E422E28586C5C764D95107654FE6A9A9B7E1589BBAE7EB76C36A53693A4D62564C97F3AE8D36AF4CCC387943CB06452FDB09D4C5C54BCBAED1221E62AABD6380A27C46487F18237303E3442DFD53DCA8BB2AEDAA5DF06EDCB746F5EAFB66B36AAF2C1C28E70DE78975F3EDB5CD9B6D3851EAF1C567CA611CC3F6C3F5236C7C6DF967D942FFDD23DF75FF4D30EE7F02FC84E30ACA5CA45571D715B5575414D3E3D936E4BA3F85B94B56E7A7B1B78E4DDD4710A61E12A07FBF6CCBDBF57FDD0B0CD25CDB746B954845FB60FA98F912F96FD942648A2AADF56E082089C545141B2B134435DF755552DCBE9B27A68FE0DC9459B90E33531484D5535766DCD5E417CF5FE56785D1359874AAC966B26423FDAFDD4C68C8FFDDE768236C989880F5960CDA7105F6827C362D8A2202AA6FB6FBAEFBFA26DA7FAB74AD575AED4E52D2FB32BB352B0CE4AFF00BAA1C5B726FF00F97E6D9F32698FDB0FD4CC35C13CB8ED033E2A2AF39D6782B86A9C8487FF00567B88A81C536DF7F5FF007AA6B1B3E05F6DBFF913DCD1A7569AAAB6A3D544A68AA8D2EFFD85AEE9F6DE9D531AA98434E959E74123F6C6757BCD8B21E5E765B2D0A2FA2757E1646A4A21B17C8B70849B3A1CF64DB755F5DD7D75ABF8DBF3A96E5B35FF000C7937EA52D387DD1064BE5ECAFF00F3BBFF00BFFF00E73AF89C2B7F6BDF4937217F59F2C7B7A6C142479B66AB00EBCAA96D48690D63A849B00C821930067B9A1C5274904505D044545ABF84E5DD6DD6AB9A4BFACC44E1373AB6E65CBA245FFDF50AD76DCD4B9F5633CE12C3A42AB705C8BFB61FC692FEAF27FC8B444345416EBBA95A156C51111A71030545242E28A6BBA2917AEAF77C5BDA496E3493582582CAB38E2DE338414FF72D96DEDA6DACDBC5E7DD92C39C98A3B7BF6B17535FE31325F5C794DDA9273DAF6AD25D1C0ECAA6C322E157331EAB71A87537161D718CE379250C69564DB4DBD35B0B4699806F36B5D254838C5DF1B72752BADBAECE544E19AAE59CAC292A49B7E5EDA71A1DB5C536E31C13CBBD573307567ED9BEE0CE701EEDB7EF1EDBC52D3B9EAB18AD99E24C7A0EC4CC1704A1EC79936C5DCE2576DFCBD7EC4A9B8CD9D257D555573319899F6CCBD2A4936320232B797FA7BB365EAEF5596C29F54CB9B936EB8424D34E6AE947A7FB7B2A6DB6DA5D7CB7834B2849C632DA74E93524332FDB15DC0E75DF5264381772E36CF9297F61D8713CA1C8728ECBCC9CC1A7630E3EEB5D3707AC5983D68F4E88EE3B8DD7C7817A4FB0D9CD7E7497849D1064026FF8DBF6DCEFDA69AB924ED8B5469C1DAD5A9CB54B9DCEEC9A4A1A7167C9F8EE2DDC4FD2E97299738EA5310B1B524B9399956433FB60FCC172331F79E4B74E34F8C70DE2C3CD3B4BECE33E8D0308CC57BFE9647228B1D91E2DEED0FA6C9C76D64BE16FEED9A7E46976352EDD4DC3FF00B92B5BA52612E88D3FDCF8B639DB576A549D2B0EC773FAB7D4F8FF00ED7FF2EB75563C96EA735750BE771ECF3B47E471C2FEA7D53FE959B7F29A2AA2FA6DEA9B6DB96F7FF4BDAB56DFC7B6D567FDCE9874AE6ABD08FF00776EFBB56EBB9C65A543E8FD5860FC4CB5E23FEDE6F2C7A7FCABF1E3B43B33B53AD1FEB8E96EE8C37B46E18C7337CA722917CC75CDF359763F120545960B8DACA99797D53052594A28C11949C7411C56C45D9D9F8DB9B7B8B4D96DB651CCCC4B6DA5F76D2AB95814DCF91B176DDDEAB9DCD35111D8DD7AB84A708789EC935E91E69D387EE05C72464DF879F37634647D5CA2C1B05CF4D6337F2BC31BACBB93ADFB1A61822229B7F1C4C54C95C1F7B488A63EE14D4AC48781F9A841B9FBD176109BB34ABCE62B3CD5F78586DE75D6F8C61027858294FCA447B606D48C909577DD357C7EA50D9FA5B56A5D756934848AE4685EE45E04224C32D1A39B8A712401545D939228EFB6FA94E843C6A5606C854BE23420151D840C5C0E3C53D7D13DCAEFB95772514544F4DD1352C1301644A5C7E2DDC15F95D06DD4471C465B41F90B654127796E3E8AA829EBBAECAAA9F01070290F1239BFBBE4F8510944955EE6884E880716C0D3DE29B9AAA28AF1555FAE939B2211C9243A2E721151407004910C405B4DCF9A02700745B1104F6A20A2FAFAA2AECA249D490E713474BE5E40004EBA6AC92AAA117271578A9FC804A8A2A8848A9F5DBE86C8822ACDE6AD6ED81002382AD01B6BB7CA5E9CD45AE24026AA88A3E8245B16CBBECE38E3F23B088964E830286AF99BA03F1A3E808E384843F234A25F3222909FA02AFB53DC8ABF5D3B49AE048BB664D9BA864AA3C477D9D154DF736C811D45346D3EA5BAFA12A90EEABF5548208D80FBD5399A2A8B9BEE8A045ECF6AAA08A36A0DF154FAAA7B7D17D7712717277F5A8A138A8BC1C7557881344ACF37005149B317076E1C900CF6F44435DB4AC8A94F7A5173041F90D5150D5855D9100BFAB75204D94DB776DDBDF655F444445DC8412CDD86E2424E34BFD2082E17C84868AE08B68AA8482E3C868BC90BF82A6FBA6E8271EF263EE9389298A22B85CC40F90B6D938D20BC3B8138F3666002A9B0EC423CBEBE9A601E24B949456C85510910105080B9B8E0FAA0B62842024BC5D4FEAD95413EBBEDC84101C91F27254512152F7F070D441A2DD5C4F8C8782361C157FA8977544544D9574E84901C9A823C91C6C8D09079B2800847B02F010250334D9B5DD55764E3C913655E2C8538E38EE29CE4A0354E64864844DAA01A7AAA6E6AEF2D8491A247076D8511114D513DABA8FA0292F3CE80ABA0E20B229B181922AA6E0E98306D0B6E1C82324D85364DD453DCBE9BC824DDB569EE0D812A3A6D0289344EA3A04CF17BE4739AB8C34668AA02ADF16D115117D574E8090916260D82109033B03C3C9A6FE290A5FDAF98B732794D48FD4578F22FEA5DB90EA063DA5AB636C8C8ABA0F9B0C8A4C46D489DF95B641B2579B79D265A335023455DC11104913922A6930163C71C7692017ACAB4E33F73E9B362C30F3CF1B8A07F1A73012708B946455E22A9ECE4889EBC5749A029F3EC5D75B136DC1DCD45E442695496386EF0BC26CAFC86FA9B4BC55773553FFCBF48E38E3E84B31C4EB398049F6EA22EAFCA0B29B5151536085C648D9708D9647E014551FAB5CBDCBB0A6EACC578E38A82DCFD5662AF14591BB402910FEEC196D15097E3F89F7FFB8AB1F91923689B7CABBAA6DFD4AE0C829AE4F703626DB090C2A97C8C17C28C4810E7C7E517101F3547CBD89ECE489BECA9EE58FB8297F7AF16EFB6EBAE8A997C4442B21B900A620EBA004E2BCDFC82881B12AA713F4F45E3A9A41305C38AC727F2DA570C49CF8E8F37545F9105B79A08353F2835F1709003B461F4F736A3BEC3BAFAF2FCB8F61CA4EDCD7385546DF1BFF2AC78ED3314161B086D34C7C6ACFC51941E567E50361D724180A01022C70E5BAA2AA6E43F511F4D726D69762D14F4A6935109E0A3C8EABA977AB9BACD5B58D7AF1D666642816D5F2E86D23C2BBA698A8E4BA9B860A6D7CA7986DDD9FF0085C5038B31A0DFE390C283EDEEBB2EE489A9DB56DB62B2C7E84A167195271FB7382B7CBBBD4AB3C7387D98F2931C43EB76832D0C5EA726B6C73AC9EC86134E640C62CE67FD814051716ACB4CCA0D437FAA523B6F438FC99691D9176409BAE346E7B04109DADD729B6C76AD56F72AF7D7B7C609B6C75BAD6F4F35D3F8C3B8A8C6C7AE67CEB0A9B9BEBD9C94561F610A7BF32C2095857FABB5939A8562E9CFAD192CAAF386E3A420EA280120282E9B4AE53EAD4B2E31A73A613522EC935172E38FA2457E156315AFBA8A535D265061A38FCAB17DC71DF51275B5090C32E9702541553F69A7AEFF005D5ADB74B775F2DFD29925CFC6A43A61C7919460BA12819417A7A2A998A8BB6D6D1E388091FF0068C46C451B6155A21E28A882BBECA2BC95265D55D83AF7678E1C621F1E2556AA22A938AEBF399714CD5A6C2DAD9D000E67FDB1293291EDDC0FE9DF7DD364555FAAD55ADCDF6B4AE6E8F1F4D28AB84D7A722D358871E152E096D23104DC767CEF90F81B6D9DD5BA366D807F67FB2DCDDC904B754415DF755E5ABC7FD52D373F8EEE9D5159AFA725C71FB294335C6F82203A8802D3A0893ADC76246D551C71C6ECD15094DCDD4B744F44454E29B6A2F7A2DD6EB6AC544BED58B78D579C04B53A51BE3EC4665A0B471B605D99BA3646A63696BED7057922A225816E0DA0A6E848AA4ABEBF554D5BD2FD49CAE5C67CC878578FB16C65F830DF53B95C53AF63CC05F962CC1B6B174987C51D256118952A4C771B7088B90A82AAAECBEAA9EB8FB76DB6D1CB9C5CF39CB16B0FC1796EE9E982F0F337FB02730CC36CBACD1CB3721D5DE784FE22CCA4999B438B8C2595B3DD630E2E58E63531F795AC971C6325A1B262B6D9B5439EB1DC0E02FB2F26BBBE3A4BE3EDA4E52B2DFA1CFBDFF9AFFF00B9992E2E678E37210CB24C695B19119D36BFD4546DA35B71561A2F9E4BCEB3C81C1555315D9C344DC936DB5332EBA7EC1C61A6E42319361EA1208230B4B91D1CB75A42465EE7FF00B979B1D9F9006444DAB6808A41C5054474051E9DEAACBFC98E9A6710B6A4BC7E93ABB3D9572344F3568CE2AD58DDD3D6D449CAC9B4721C519442E887C9C85E8B14977E2BA03583BF7FD2F17C4AC5AE58C0F2BC8BAE83CFDB137B061BC27B3A5C221E6EE5E5D52AE44EDE03077D68EBCEB71252CE06C48518665AA88BAA06D1D867302A3B33B3304CE6D68C322C6E65758064B6193476CF2E6B31EBFE9BB6B2FD320488C6C46878D4382C478FF1C998DBC3251D10641B68480809906303F29C7C971B71F64D3EE79E435727E6571D15884D2AC801F8DC01E026EA1A0A8FA0EC9B28179D776262228E571DEE24C3C6EA003CFDFE3ED37F3B9C5B33FBAFB92D8DF121E46BB02F02DFD77D80C4F2E18667DD7DB6E62D2F17C86BB0FF0011F2D7AC2CA7E48DC3C1A95EAAC5FBB7309CE5A64D0650155AB756D7DD13711FFD49C290D1424592FC7138BBFABEC25296975359FACBC4BF1C6AEC3B6E8FB7BC85C8A264EC34D64FD6B2FC68CB60E53D52CDD5E55ADD5FE3D7B6B9DE391B203BAADB45160E1B5107EDC491644C342002F335C3F69BF5C4F5C5442A28C7BCEED09DBEE5B2ED98E4BAF37D9946476C1E02F84FD21E52FE2BFF0026186F77D4BD9E76BF8A39AF657923D219ED3353312CA6BAD64F871269BAC63E496D8FB50A3659570327C36C66BB8FBE922004C46E52B22B278AF47C46AE5734E6EA2784D268DFDB2EF31F916BB74DB10AAFC62B1F7E9191E6C6AE9F2FB96634B6A1C9F95E8D0A5BA8CFF7485D7DAFBC70153D8A4DB7F6C469EAAA7BEFB7AA26BB0E638DF7447686750ADE3E39886599548A1C1332C92FDAC4B19BEC9DDC5F18AF918C574CC9F27668ABA73D8DE28CD9CF8B11CB1B0562036FBEC346FF00C8422AC3118E0597D3F945EE21457F8F13721B9D02FE5C571B725837F696316A98A89319E4691D6D0A3FD92A7F5A29A00A6FBFB500C8D81E7177498663ECB60F914EAC61D4F74961519AF6431803300FEEB6A0D5036DAF1311F89B4154F4DD40E327B1F227F329F7E85F03F4982C3921C55C91191697257805E60761D8423642E6E3EAABC9557D76DC0A4641DD77991E3194D14F848CB332B2412C88C22492DD65C6E734651095908EA631051040953DCBCBDA9A03207FD5DC8A805BAD9ACBA49185F547DA0FBD789FBA9877ABF7A2ABC4C816CF74444E5C0F6DD7F8016C577676595B6D98E5706314919576CB0E2836E3EF34E64B4D4DF7328441D0722B8F33813003B6FB2B7EBBEE5A0272F7B2EFB321C7222B129A7072865BF8596BE0DDAB785658BBADAA8237B9805F181A2222F1244D89551140BCAB7B66F5522344B3629456D98C62AEA6C409140141853E4BB6C1FC3DC28ABBFD3D40B2312CF721C66B85F843253EE8DF043415036BF4FBAB7471D645E77716516D4B8872143FEAF44F4D0135659C5D5BDF51DA28B84FD6D55997CAD34A0483579263F9947324473EBF250010EE3F51554FAA228152BFED4B4B5A0C8A96393C3FADD15C56838B19F438EC5857B90878132E2B7C9C6DE2D9455147625D97D36023D3F6864F59591E3326E7FEF981BF7841C7B89319103171C81B24E4C2A9CB44F5422DCF92FA0AEE052A26717EFE5F6978C7DC1BCCC581214D38A181C8A39D8FBC4A7B001B4119155774E7EAAA22A5A027726EC1C8254184AA7311E857D8E5846FB73442572B6E20C88EE28803ADA48190D272DD0855764D97DFB015DA4CCEFAAE9E1D48CA944DD1B312BD596C90C590AF16E08B8C198AA4646A3B085ECE28A87B22FAA680B5F1DC9AEE0CFC82D1978C82CA759C58E868E23CDFC37F6190BC91DC63813207372378F890EE4E16C8ABEAAA041CB322B5C824D32147379B8E7715CA2A29B1BB22BCA5484696473145585588AA9C55BF72122A2FB7405CB2FB0F257DA9AD083CADCE173FB204866AB2A29A49535E4D0AA247747D8BFDA1525F5DFD740595876437B8F504065A84F3E33A3565B8FC6E382FA32DD6C6A38C02AE8028B2316A1B124F680AEC89EA5BE8088FD96413F2B8D6E91247C902B21CD237DB0031FB09F670C380280A1A0164CF2898AEDC1093652D91408B9664B92D863D771D1A77E128044F37C9DDC86249625B683EDF735F2C54DB8EC444E6FBF3FA813306EB28A5851EAC7EE51D88725A709A156FFAE4BAF2BADB8243F31123EEA7A20F12FAA22AF2502DC82E658DDADD5D448D3089D7A4456DE045F88FF538D4D3A42AB4464AA7F6D5D17D7655410DD177D948090CBDAC972D8D5B4F29A92C948B8888451FE5422666A4AAA9BB6C264DB27066B804AA43C808BF82A91017085DE66E3EDB4D4592A624C1B2E7C4FAB63F0FC4224D0122A4B5DC109549505177FAA6EAA05B745132DA9666A3912432B35F941BB21F70F2B3536B63591DBE4824AC3422C9AB4AA888AD9A2A7A6DA026A7C1CD2D6EA89CF8A63635EC4C9A2D912A36DB159329ED111F789B1211932DB6C91178FB9011553DC8A054A626613A15B30F3529024C4B76DF6C78138DD71C471970D4761F908A3A208711DB63F6AFA725026AB6AF33835ADC1E7204A4C73B1797817CEECFBB24B6B06DE2436DD57FEE279212827D372FF6AE80A7AD565059295BBE6E9AC1806DB6D8B64AD7DE4F88B09E18C2D997CC2C44AC65B352FF00CE9BAFAAAA0156B22CB9F8DF74C8BEF36CC9A79E4D08A193D2A058C73F89C65551F2FB97DBDC1485143D77F44545031B65B996554AC3AECB474220136D138F027C8FB64F993A8E732075F106DC4413540DB8F2DF65D0156EB76B12BCCA6AAC3BCB23ED8EB6EBFB6C65FBE63B5BAABC7983E4A4BA747265352C93CB708B4EF3E88930311A7ACAF9B3E54BACB9B39ED8B282DD6C843426B9F7ECB372EB6CBFFAAAFE17DFC0D2C7A6DB9AC5D3F65FF9DC1F1EFB1BCB3EA8E9FF001057B57BDA871EEAC91D532FB3B2AEA8EC6C02CBCBBEEF67B0FB8329C5B38C63A1FAF2E3B37B8B10EAFB6C4B28C769AA2962467B2D95474A53A5C209AF4F258B6CD3E9B6E86DE2DD3386F9E545CA91974597EA4DB5FD561158A2782A67579BACE7FA2E7EDF9F0A3B7BC23F06F2AC77BB31B3C0F32EF3F2233CF2122F59CC92E4CBAEB7C5321C33ACFAE313C732179E912E4B5756749D5CD5DB9124B8B635ADDB8429E81611E53637D8572B26FF00ECDF192EE996944B6E4A7CABAC7B896DB956DB13D6ADFD71546EA941DE2EB6398680F0D5FB94302ADEC9FC8162547637B9555856F855D2931A0C56DA1D3CB6A45877B794B1C653AFC9AEB02709C6E228348428D6E248BB92A6DC3F2ACDCBEE8DBD2DFA2974C52E9783A3748A6557CBB7E3DD65B64DC9C4BC31AA5D3059D73C0EB5FC7FFC3479D99FE0D4BDD1E37F4876976EF5CE7F5D91C7C7F2BCBFBD3C74A565071FC80F1F74EA69725CFF0006CAA13E37F5966C3C53A0B6AE7DB238DA7C6E36E394B2DDD777B8939AA850928F4B574B4F5269C34A25568CD2E7B51A6F69513AEA6EB54D426A2228DCC3E67AD7FC08784BE4D7853D2FE4950F9358BD8E1F73D8DDFB0328C1E9F24CD705CEB2F7B12A6EA9C0F17936F7365D6F697B8A41AF9D93D74F6EBA2A4C726A4663E5900DFCA03AE9F8FB77D93AE668B2AC66A32ED8733430F93B9B7B9A7DB8886E93497839CD74950D1DF36BA0E51A01A01A01A01A01A01A01A01A01A01A01A01A01A01A03EA7D53FDE9FF001D011F40685FE543132CE7F197F90BC4DA84B612EEBC27F28635643154437AE9BE95CD24D2236A48A82E85BB0C10AEDE8488BA2C41F9287FA80605F2FC08FC668E4BB2E2219B6AADC5BA58F29A65F70D47E38FFF00B86CDAF44171B7B7DF7455D69D8522926DBD55F818B9C14D011F7DD5F9B6134F965913ADB8BC885122AAF1F5F69922EDFC4967AE64578E3865CCD590EC1C5C111F46C48DC42E1BA0A07252E27CDC573D1B45405DF6DF7DF60A1578B297989229934A49B2F2E1FDAF54504314D9485C55E4A9ECE49EAABBFA90FA15D07C53E134275C24454E65C93936AD7A731568C8094555494957D5153D3D1084743E8BC88A82AA1ED454DC14978B4E926EE720F4DBDBB2AA927B76F445F4D4927DFB871115D546DB526C5B274817744E48EF3E1F1223022ABB7AFD7D7752FE10476900A56E0ACEEACF2556F96DC9766894817773893EC7155D9057D36DD15177E53D01CBEE95101141BE2422A62E2ECE8A2AFC6A82847F1880A1FA2227AEE9BEDB26E11C71C6248BF33EA8A4A9C85CDDC233F8905C441F6891AF290E8FD57654155E3BFF001D09EA497DD6E45FDC0215DF71456590D9DF9150775400F41255E0BFDC12DD497644D95C413233449B210354D81C406D93DC39128EE84085C8FDDEE442D94476DB74DD34CC67C71C644ABF25B71D204DC5578F30701115C710948DC1044FEEFA2FB7F8222EE89EAA880BC8A794D142E4440A9BFC22DF31312E1ED417D37306C544B8AA6C89B8A6CA9E9A81974E38F33E94C6839EE8BC1B468555C2E040807BA82F25E2AF7AA7A0A16CBBA6EBEBA768A7749F5C98D6E4860A4AE713F797B550C788871F6AEEBF1AFF003D9577DB6E3A0C89472C1ADD115C36548577111DCB82911A8323C791926CABEF44DF8EC8ABB6C87E4288A71DA6EA2E384283C5488D78EC6E090B846BB1A970F6EFFC3DDB8FAEC9A04539DB5E4E70534F5211205DC84786C62DA0AA2A1A1126EBF45F6226FB16DA0299FAB12236AD7107494784844575E070B7473E3424412205355D85515557EA8BB224F6087871C719140913D50C4D41D1FE82212454365B74045B43340D9783DC5515792A9EE9EE52444891D93C71E24BBD90366A4CB4E1BDB8B8C2093843BA27A9473F8DD12F7222911AEE7FC17E8BA4AC82F365A36576C912A12AB1C44B92382ADA22990B0EA0FC4844D2BCADEC5C44C7FE6DD051575132C62505CBA800684DB285F1836D38F3823C4C9B724F377E42755B5524541D910C4D53D0F92EC8C38E3EC093977CAE22AB8E808B83B8AB4AE2970D815C115F8B8220AB08A8AAA84489BF14E489A2AD016FBEE27CACA3C44CBC4AB2549B7B7130707DADC6F8014BE50E0AAEA11ECBBA0EC88248B18928A424D6C0178A7B418FEF39136DDB70443E6121040241369AE0A25C79F2FA296FA75CC437D8515F98D8A4771E755101D578DBE220CB60E2380D38629C45C05E1BA8A9217D7D1104574FA71C798FA120EE4D5AD0814AB66E3B6C36EA10AAB2E9112902AA888EE6E36E036A5BEDF26E283C4910749E64D78E3892E6EB6CC2A246715CC27C92C5BA7CAE4B8D2289838C3EC34CAA8F1344F854B91273145412F4D9110979BE536B6D34F0BD653CE79789B7C7537B58FA5FDBC7B33361E1DAD77C2D342CBE211D0DB044071372E008289C777451C15DC79288AF14F5FE3AE0B35C3BEFBE5CBCA936CFF550A91CE65F69DAF4FF00556B54A763E7C4C54ADD7CDA4924C8C22745E2273E2234E68468ADB488E1A7CAA426E82A26EABEE45D9113D16B1B6EE9B6FBB537AB1C2792CA54BCF2C47FCB0D5D6A84A1F1D302A92215B41C869B30C6AE62C1B5C7E643B018D675413EBD67D58C785CCC23C988A5F345AD61992D9ABA0EF01545435255B69D9BA5E37A72DF28A638772C735533B6FDCB3A2FCE7F82B37D925F6739965199E5C7024E5993CD8332ED6B6046AAA965E8906246AE85515919E7461554184C0FC0DAB8EBA9C8C9E75D74C8D75BAE567F6FE91C7794ADD558BE3F92DD894677B7ADD6412FB9B19319D6D5C29B0E057C7175F8A726C2CAC6C3FB15ECB2DB3C3E779D016DB70FD7D51173BB76D765A9B69DD873F39C31F3CCD2CDBB9B6D24D5B1D9F92F6918F9E1F3CF1AB32AC9B26332EC88F6949795394D35831209155D8791D2BD22B26AB449C0D945071ADD10DB0DD3577375AD7A75C34A7B94BE73C722234B4EEFE9358FA76D0A6C8367E437194243542E24D06EE08296C2AE7A7F74479AA026DC53D36D90752935BAD25E9A57B95171DBD2AE1AABAF1E64361D394E0B8F29A0AAB8D801BA9BB6A08886A2A804886662ABED4D9507FD9A8BD3DCB1A69EA9A298AAAD1F5EC22D84EAD466FF0024C36C2A28A082111EC8020402F9096E0BCC89A131E3B0AA06FB97F1F555D536755FB766E3D4DF5A37CDF6B7D5F81A6E7A6E76D2AFB7A959AB6E443928F9082F13E23F1B8E29EDB1988EFED5111224554D884B7514DF6DB536B6ED9BE3DD4A28DBCF079FD55660876A98B674BE74FA7F25F05540E455B771C84DC46A4C58DCCA5B4C4A79FB092FB28DC388E3A129E160C3899B2062D7C828E71DC778BBDB9765FF00D5DB8CCCA78F63ECF2A4CDBADC3B714F08E5F5A646B942EFBCF7A231D894F5F13AFBB1715BCC8EE8B13EBDEDAEAD95D86EE3B90DCDBCF09B13AEADF18BFC573EA18F90581B8FAD1479722A244F159091165A9BABB6DEE5F65B476DD626E930BA754FCA6B432DCB55CE61EACE95E3E85CF2FCB0ECA8F5732C5EE90F1A99B0C7D902BAC66D3A4B3CC66EA34654294A24365D94F3C8FBB18FE48EA6CFC2F8EFBA96DC75A7FB174C2B562B9E7DB4667EDDBA65C97B54F94F911E2922F6C7A2BC7395487650A7B939BEAFC99A972233F0D198F586F97612D4B90E33A40F8A2C727D25368BF32829365959F395DAA6D76BB2E8AA6A7FED9C53C9E06977C7888729A9C70ED2FF00C47CF0ED6EB17019EB8C03A0B0B94961517122E312C0F3D81652A6D4416E0446673CF76D955DAB6AE0949920EC3568E5BCEFC682D0B2DB575F2AE6D2BAC76DCF9A9CF9A74E75A77D087B16A96AE949C53F7F63AF9B6C169EFB32B7CA8BE5850AF3B0CFB427E195712BD8A76B274596DBB021DDCB7DFEC08986BCDCB7BFF8B5B558C8243B12288AA4FF00B1B90DAB7079D27C5F985B56D25FDF87D0DE5B3F2CF2CC92136994F53F45E5591FD87D9C8CF32DC2F30C972F58C321E7E2940295D9CCD2D5C8AA665BEC0AA4379B48C46A0DB6EEEE2D2CF97B9752EB52DCCD64BBE6B4AFE4B5DF1ED4E65E8CBAF971565ACEF7A59BCEB4723AD3A89C0117D1A8E382C808ED36EEEBB37BE4672D0D3E62512370F92A0A72DB7D68F777B256E19CD30EBCB071DA8A2DBDBC5EAC7A7E3EE575BEEC74C0547A8FA554C449A75CFF004464049210136745CE59EB51D85DDB55D9916B86EBE8AABA8BFE45F6DCAD852E63BB226DD9B5DBA9B709D7BF065C67DC7D8592563782628341D678BD81A3F7B4B82E372E244B96925D6DB7FF003CFDBE45692E7538D9D44395F646E2B4B222C7234256C38D6EDEDCB960B4439FD2EB863E32596D589E35985FBECE2313B3AFC6C7E3CBCA9F363B36E6FF000EBBC559C1710955551D97DCDD8B4B298A8C466BB0A34AA8C4319C5F1E9315ECEB361C5EC527957B13600C58AF347633E07DD56ACFE6B365EF3BA52D4DA6FA2C5573F0593C2AF77BBED249CE9531D5E6F979C658E1EDABC59FC7F74AF8B7E33E55E36522DAE5B03B4A2656E775E6F6AAD55645D957D9CD12E3791CFF0086A55A8B8B53C3C7D1BADA6AE84BC2B2BE33484EC998B266C9F4B6F6ADDA4D5B8B72F8E4B8ACB38B7372EDC69DD92FDF9BE2211AF3D61F836FC68F5941A98CBD04EF61CDA9661B2169DA59F67B982CEFB260196DCB2C75CC86161128DD543234FD28417E5304146951B4BC756524EC2BAB3C74F1FF00A3464A74C748752F541CD80C565848EBAEBBC4B0E99670232813316D6763F530265A362E3626BF706EA91A725552F5D210967E70B9F7E1E7CE4EACEC1CE710CC7C32EFDBFB98D9AE402596F46E0EE769F5266F00ED6C3F4FCEF04C9315B1932ABB1BCBA218CD8D5976C56DE54B6FFDACF8AD3CD2A94D0829117F16DE6D154E2F5FFF00625E59C972BF1CAF59461D4B2A2045FD6AC2D2D9E86EB96F615AE959C176C01A94D302EA32A8BFDC21453486D2FE1930F868AF55FE263CE25917760C7831E4F3718B1E6A996BE5E1B4F0A5DA2DBE455522584157B20641A1895F5FF33CAE9B40A5ED4555DF49C841502FC3479D7715D39BAAF02BC818B2E642761B0966D7535536D1486963838EA58765C5306D847C89479A6C88AA2484A889241962C7F083F9039D7172E27843DA92A3B5364C483323760F8CB0DBB36202A428B39B6AD3BDE0BED419F1A3038DA3C2D3E9CB63014F4D013753F821FC8D1534EE3E1565F1CE7E4519DFD2A477278AF0A6C789534A8C3564E3BFF5ED6B563D84CB5940D340F38F362DECE3622A244194954A8FC067E463F5AA178BC41BAAB8F12E6B6DDF9763DDDE2E3F1E337564E5984628F57DCB2A59CA7A5C665913147445C3E44AAD8EE804167F029F9257781BDE1CDDC7E6D7356CFC82F18DD58EEC8FEE480E41DBC6A7F1B84A89B12A16DF5D97404C7FFB077E48A3C0A68C9E20BF35460499D31B5EFBF1C1A489616B79712E457BC65DA023225C38631949E690993F997892AA10A015083F807FC91A4CB1B24F14AB223ED63F631E2B133BF3A21C5B297672EBEBDE842E43CC648C220ABFB9908E3BF236A2A8DA289AE80E6E7EDF5FC933D1A68B1E32E151DF28CE0C629DE45756A11BDF010A21A432980D8B8E16DBEE48283E89EEF4824BD9DFDBC9F90D2B593162749F552D65585740A3B7B0F20F1D80ECAAEAAAEADAF884B0A0E3176F47738B47C84D5110415517750144F4620A8C4FDBA3F91018166F075BF40C5993EE699AFD2E57905249B2A6ABAFB695FA83B3A37564B6965ADD597C68C7C4AA8DA918B83B20927A3F2FC885CD79FE0B92B7F6D8F9FB6B328FF56ADF15A82AD6DAA64DBAAF7BE7B61670EB189AD489EDC78313C7C76B9E9E6D4746C5B193F1A81A2ABA8A8A889E8C6654E0FEDAEFC8348D8A6B9E19407A41A14A35EF7EE194C82B8A5F2EC8CF8C5F2A80A9EE8888BE9BA7F3502BFF00FF00198F39C2BA9E1B795F85BBFF00F332EF04BB5BBBC1A6A7CEB970E1B55A6DF8D2853633348C47E6E3A2C1FDCA98A02822194904D577ED92F36FEEA44B9D9E78650DD62A6FD6A8A1675DE1628B7B63052BA024B091D23588C56B6D497DC71C6949D43411105422245450AE27ED99F33D5B356FB47C3280FA37BC7369EEEB9BF0BE28421B9AE155CE1B268BEF44E2A5F45DFF008815C93FB633CA7294CC789DE1E2A85444854B06239618FF006E4F9E2302AE0C69725D61A08114DD72C064B8D8A1A0A36608ABCFDE315E5E7FA14E7E5FB2B503F6C0791611A6BB2BC9EF1C225AC895500CFDA751767CCAD6EAA27EAD2ACA3BEDBBD8D5F2DF933AC5F8642A2E36D8371C91449491515E3F827D3D78EF2E681FB5EBB7261C68D907967D1906B0E6C03B7FD07C75CEE54F995ACCB69EB08711F9DDED0D21489F140D91797E41655DF9381AA7157AB92F1FD0F4F37E1FB2EA6FF6BDE79265BAFCFF0036FAB180764D83FBC6F0F3209B20465BEEBECB6AE48F2AA2365F0A9A212F04F9151497D576D2A29949500FDADB68D46862C79C98A373964DCCABA925E1E3AEC5B039EE54056A40825E4FEF5295502AD5A5DDD92B20DE271782A20EA482AF03F6BC18C907EDBCE288F8B106DC228D1F8AB5B4CE336D32AA65754D913D3FBDB20F923D3BF2924146E22924DB41231455DC09D63F6BD4400E2E79D5729E8DFA43F18B008E024DB5F18A80BF9E4D50455F72FAEFC97EBA5417242FDB018045280DAF9ADDA8CC28751020391EB7A6FA8E3BCF4F8D105A9D6612ED23DD9B096D314E43CC7130023E2DA826FBC57A71DE4D3BCAF31FB623A6D23CD099E6377D4A98F056B1027B7D7DD0F15CA98B16C06C6C63C68C180B91247EB4F32D0BA4F83A4DB6DECDA8F255D4D72142A31BF6C2F8ECEB4DC7BDF2F3CA59D19105B7C6A68FC6DA391258456D1C8EE4A2E8DB3346E43424D992223A827B81817AAC7AB9AF0FD8F4F5E3B8B9A4FED96F14A44E9D2C7CA6F31A1332E6CC94CC08337C6318D5ECCA90F3E10623933C669B34A344477836AEBAEB9C0079112A6FA545391341FB63FC2EFB365873C8BF348A58D94EB29168D659E39353277DE42AE84D4090D978C6EC20815A15FCA38B2D34E093CE73371145050F36284FD27ED95F066AECE2D859776F99594B11F92B9537BD89D351AB269FC4F34D392D318E80C727A9C6F9D49AF8E43680688A9FC77920EAB7F371F88FF007C35F12DAC8B1EC67C84C9738EC0BFBDC4F13CBEF3BB235260BD65318C1F20B80CC73AFB1C0A5CAC9EA289E80D3D1B1E646215CBA260FCE8B181F7532DDDCF6AD99AF1F634DBB1DEF0A2E3EA795EEB7C47B43B0B1AEA6EB36EA2C73AC93F4CB1EB0EA6EAFE94A49D6FD8FDBB6B7E25636F498FC58E32A6CB6F21662B6E5ADA4B6889BAA86A60C46AF69E94195DAB7637134AC4FC71A530AF7BC20B2F47A156F6BC3AB9E5E19C9EFEFF025F85A8FF8DCEA9B2EDBF21E8FAF6EFCCDED9349F3CA92057644CF8D3D7932B213113A2B07EC197F7D617364FB8C94BCB2D6B9C8D5B653D59851C65C3AC8D633B5B36E2AF19A74EBDB18F82EB5BAEA69B70CDF3FD72E78BE4BD1112A715F54FE1FC7F9EB53321680680C25D9DE33F8DFDD9775992F73F8F9D1FDBB91D2D4B9434F7FD9FD5181E7D775346F4D4B3769AB6D72AA1B59F06A5DB21490519A705957D11C51E5EBAABB2CB9CDC937105EDDCBED5A6D6D29E65FF81F5FE05D5788D3601D6184621D7181E38D48631EC2703C6E9B10C4A89899364D94B669F1CC7E1D7D3D6372ECA6BD21D16590471F78DC2DC889565256AD2B0455B773D4EAD9776A481A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A03EA7D53FDE9FF1D011F4063DEDBC2E3F64F54F66F5DCB69A7A2E7DD7B9A61725990DFCCC3B1F29C6ECA8DE69E67D3E569C6E72A10FFCC8AA9A03F150AD9CF2D4E273DD75A76558E338D372DE275B611B96C54C06A6B73A390A39F3C49D1CDB36C11B5155DD491084757EA511B3F88D9B8711C15F456A5C96FE37080BE30091F28F136F8020360E2A027F571DB92FFCCB387671C4914665CAD926EA229129A110F3273E452244E5C4F837F21B5BFF000F76E8A5EDD9155524172D7BCE8F26DC2115E4AE992A348ADA802AB1C81B52E265F5E44BEEE2AABB2FA20533A974B0F8B8DA06EBB00AA229C92126D5E012F72F226C3E43055545DC77555D91136D074233AF34A9CD151C5D9D411F91973889EFC111C4268C9E8FBAEDEBBFF14DFD512642F2255C96D88ECE1809197FF74C45B32F55E2D1AAA20101714D8904954B7545555DA3B054A7C896228E129AAA0A03CBC76FE955421E4E385F20272DB6D94786FF00C91753D014F3B5D890515E5DB73315717900F1E0A22A2843CD7DA7C7D3DDB6EBB2EE90BCC120E5A22AA9A38AA3F108B7B711704551538AB664A8C9F245545555155055514DD7404A1D9F324140F94851C5F6A89ECEAA0AA112929216E2BCFD51113D091553D3420F9FAB2A734E45EA1B09BA6A84A20A8AA2662D8AB81EFF005524DCB744DB6DB524B25DFB2306C84BE555564F826E45C10D405372241241F8F88A0896EA3EAA429E8AFAF1C7E48241CB3D8B97F157053DFF0021A10B6A849F2AAA7A7277D05477554DD3407CFD557D5400C8DAD85F012F8C7DE7C85CE004F11123A8AA25E9C43972DB5124E04A3D70E2A9FAA0B40649B92938E1AFB841B254432323123F55F4455E5FED25074250AD4D5366CDD1DC51B52E45C8B7552F450543154E4A5CD3DC9FF322EDBA311D494916BB22B8642AA88A86BC81C222335E7BA7A0882226CA89B7AFAAFF00B340E22B971C7F25BD3720140226DC6BDA6DB4224EA097F7157FA509551C6C8C4F6E5B22826E84BF5D42734E38E3125F5C4A0A5F3EDBC2E7CC6E3CAD92B44063CCCC8B9B2AE88A0362E20FB89370444D88557D377D6489CCA3DADE3AF368D32FB9051A292AE2A13E03C8098346C49B047B829A0926FEA4602A89CD351D47696CB37660C3E64E92366D929C955214D9C21065C590D380E442269C55445111F51DD177D4E7504A5C642AE28EEACB6A2D466C584106544DD6C504D9F8809B791E69C1DCBD86EF2FAA6A32E38E3C663996249CBE1C733F95E6FEE1B273E6651F6C055D41003056B679B35E6AA88A28A82BEFDF7F54755C71C7211CCA2CDCFE230D900A7311E0EBE2E27CA00AD4804649D9604D7CC28A08488D922889272DC5113498A130955F1C7F0536BF2FB3C82735438756D8E4576F3CC0C1A3A119591DC9386BFF00A6B518EC69F6129E575F5046D91271B44D95397A6A27310A78E3A1BD1D4DF8AEFCB5790A501AEACF027C917604F16E4D45EE65D753FA770D9ACBC44A2F7FAABBB3FE9E63D3A18C83E62EB2F3C3B0AA7A7D12261C9293C733B3CEA6FDA6DF976ECD16DDEC4B3F1B3C7FAD4701D7A2F6076D4CCB323113545FEC55F4D613D818FCB7E3A12A1039751C4915511D54DB46C44AEA767BD4BFB2B6A91B8133C80FC8164166F39C56E31FE9BE8DABA116879FF759ADCCF3DCEF2FF9C9C691111E7681B2054F4154F458C89CEA76E1E307ED5EFC5178D5928661618C774F90D7C15D635EDFFD7BED06EC68994B567E19AFB58BF59637D6142FB882AAAC24A6248C73E2E06CF360E0D2FB2DDC495D8273495F4CBA17B2FBB6DB76E2D45527F536FF0037FC0C7E29738A69F54EF8A5498B4B9719E66264783E75D9D8BE434F21C695B6A7D74A8399AC3724462D8C5A971E54470C53E565C1DC56976C6D5D8AF365ADDEDCB706BC11E4BFF2CFF841CEFF001EAD37DD3D577F90771F8AF6B68C54D86576B5D0D8CEFA66EEE6C99AEC6E8BB518C76341A6B6C6F269B2998B5B95D7C3AD8CB6EF375D320C47DF8522CB977F67DA4F71576B4B9513E115AD70EC519F46D6EFB91B6D7FC92A1F956694CA7A9D34E3AC2D84318321551041CE3FDE16DD6DA6D111A6C09D6C03E4F7A22AA200714DB6124D61B782D51EC35D213A4699C139F29725F7124DA53AE7AF7F12414C52CE158903964D00497A47D9B691149039FA0C732F85E438E6DA26EE20FBCD37E29B26FB69B6D9B92ED5558570EBCE0CD43695CE173EDEBF62A9620FE2760962C425B4AF9B1A38D9A4416D89CDBCC38CBBF136448A0E2BCEB3CBE37085B12425E5BECA90DD9BAD5AAAA8FB13AAF1EDFD5AC9DB4EE747F58C4A149B18B7F6756FC66E40B4C3936649394F466CCFF553860109022BEFB2EC78ECC24227DC75392BAA82822DA1167B3EF5CEEFF66D8AC5B0E53B69DEFC2982982FBB758925B2F152FB7ED5E2A4608162F287C93221AAABC9F28304DBA82EC86D2214890ADA83E2CC4530256D805451051135E4ABD16B951742BB3AF3C2BC7718359AAA656E6457A3FDC88B462D819BE08A809CFF00A95B41334E4DFCC3ECE3FC50B7D936D43F55BA1527A3C68F1FC57C14CA9574FE38F127AAA190BEDB91A5058347163B85219665B4C4679E14499104E6C580529F82E2230F38DA38CA9A10811FF5A61B57D9BEFDEB255B72CE53CB2697250D63F5B5C9D8B43871CB8E39F2BF4A1B72D97C4C0782EDEE1E28ADB849C94C476FFD43111DC7D55157D3F82EB6BAFB35355A55F6B5D38542A95D09A7D9D8BF65281A7623EC2B121C654D9382AAC2101BB1262382F46E2268C9B8A67C91087715F5F455DD22EB6DB6D94A5353F7EC5E305EDBAE774DD474FB77BFAF2A162F5FE472BAD722EADEC9ACC5A1E577F5F3FB7A86B124A3AFC7853F21ADB982DDB2C66544EC2746AE49A2C4417632BCE384D7CCDA3849AE65F195DB6AF86B795CEEFED8CCB49B594BC2B191A3DEB6DDC84FFE3692C30E7479F52DEEFDC325D4B9DAD3AD0F9493C05D72A64204382FC57431B766496A641A6172AA3BF0DE95C098604059011071B1791D22D6DBA9EB757486F19AA5CE934833DC493A2A6345F4FA92F514ACB1E314210279273F8ED5CA71C714E2C571B722220ECFB89F008A182220217C9CCD13D14BD6F75FFE0E65AE548CF8EC6574DCA1A884FBE712B3030AA17D98C9FA7AA7C8C30409CDF25D8A3B0E6DCD0D7DBC94B97AEFBFFB753B8ACB92B9E5834FEF92798B5DD6B70BB678C7917233D794AD2FDC2D63BF0A828B71CC55C441347088C137DBE422554DB7554F72A2A26E9AA5D6ABAC6E7D154D51CAEDC6BDBD8CB5AE2E56C2D5487843FA42454D70BC7957E55AD4710D9045E4AE9A3623B6C401BA881872D8936552444454D9175A3F6D7FCCD4531E9DDE1DBC8AEADCFF00C52DF42623E0B8F6DEFAEDF62DDB3751D4D90D5576515215551152421E5E88BBA2EB38B2DB16BBAEBAD5DAB1729F3959569E2596B777A524FBB2E99FDCA9338551036D87E8E2A22A5B7F57BBDA2BF30F0D94DD2DB7DFD15457654DFD566D76CAB222D544E666394D5F56FB49F534DE6F1FD9598B16063B0EC6CFEC81A62AE04EB093F10139F304286F58388E2AAA1388F0C7FE1B7155DB6F5F595737FDE31C9CD739A2C39579956BFE9C7B32FD9FA45FE31FA129FC71F053C6FEBFAF6006EAD3AE28BB233FB05623B52EE7B27B4A1B59EE716135D6004A5AB1797CE438C6E29B81022C76B928B6289D5F16D4B655EB1BFD4FB5AFB285D88C7E4DCDEEBB72B3D2BBBF2E5F6B37CB5D0603403403403403403403403403403403403403403403403403403403403403403403403403403403403403403403403403406B0798FE2274E79D1E3CE79E34F7A41B77F03CF19AD33B5C66642AACC713BDA3B28B71419661B73615B7112AB21A6B1862404F4593164B06EC594C4888FBEC3B5BAD57287C71816B6E76B946B8FE3F3F135E1DFE376BACE574562D90E4DDA190D53D419477CF6EDD46CDBB82EB1B7AD02E571287791EAE92870BC34AC23C675EA9C76B6A204F910E3CA9CD4A9AD0C9D45B62B6B8BE284BBDBA2A2E99F56764E7FD4BFF0087FC13572871D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D01F53EA9FEF4FF008E808FA01A03F141EE7C51FEAEEE3ED2EB736644493D6FDC1DC1D7B221997DD3F09BEBFED7CCF0B557A748645F945192B419375D1575D41E4E272DF6B494C0CA38438D9AD936D98FF6E7B66F0982A0838FD64115515324071C216C8948178AA6C2ABBA6C9684C19AE0714034FE0828221B9A23686422062883BA292AAFD4954796DEBB6EB3810CB990D9E2A0AA202D82AF340D8F7E21C409B215474DBE08A9CC85772D976DD75219343391926D15D5325427361F68A82ECA8AA628AE0201F16F92A96C8A48849B6DA80717AC9B5DD489B797E3069A15426C8B9226C0488A82A422F7B8515538927D09474CC6738F1C54903B85473D4D08F81A2292A2AB86DA2236E02B686E39B2927B87971E0BBAEFFD463292892AD7903A88EA92900F354351225554016D45C6D517FB669EE55452DFD5576DF4A48AE0515EB222531654D004D4C8049155554895B311170845C70138A2EE8BEDF5D9364448250ACB9A088928B6EEC80240AA08D0A7C8A223B3A44A822A826A83BFD375DB7D18518904AC392A0EEAE21F16D45A524243DCB7552454425454FEA4D93D8BBFAEDA37E1C71C218D4F9F7E49CD1144BDE3B90289B5CBEAD0FF0052A01801F114DD4948FEBE89A89E281900E7201F343E3F1A27A029AA0921AA73DD389B9B17B9450510C4453D555353F41D33211D82A2A28BC224A642A6E90A900206DC845489449511151764D97644D9577D47E78E38533CB8E3EA49393B8BA4229F213488A223C4387255374C849C6C44C37250D8D11553655445E4B1F42260957ACDB125403FA911221296C40AA8BCC50915195DF715DFD11537554D485E6523F5C40301D9A2553736137C590531022255922D8A7C4DA2FA2AA0A12AA2A8ECA9A8CD09824655E21B42A534DEDC3E628A2DA36E362AC2118929FC80ACA1117123F5D95117D177D4CF2E38E2A4D702D6B6B356B91496D98AE3C1F70E32F26E240E8B4B1E627C4F033F24D12DDB6D1A65101453DDCF90C65505ACEDFBC24FC77A4A118004908C7B0930F235C1E1068D490D441550F74055DFD537D1D7B78E3F63B0B46C72D809F293A5CDE6499348FF0028FDD036D88B863BA8F26590791C4268850B8221722DB654F1F42522990EFE65CD9C0A8AF853DEBAB27062D453478F22DAFED66934D371E3C0C7EB1A7ECAD1D71E116FE28ADBC5B9FB396E9BC4F80E8F13B7BF16FF00017F971F2F4EB2C6B7C6ABCE91C2E71B0C27637935665D0D5F163C96C1F6A6FF00A22CAAEDBBAAC2B7E11E48EC5C49F6DD42111705177486FBC98E38FC1E8B3C68FD9A3D2F551E25C798BE5DF65F61DBBB159764E13E3C63B41D598D56CDF91B27ABE4E7F9E44ECBCD72DAE264540A446898CBEE7B1501B505E712C42EF3BC5E95FDBE1F876E8A930ECB1DF077AC339BB880C215D77A4ECBFBFDF96FC7755E096F55F71E479A6371E42BABBAFDB4161BD9111051136D476CB27B0ED4FADBA7FA93A6A9531BEA0EADEB9EA9C751509287ADB08C6706A5424444454ABC62B2AE0EE889FF00F8F520C8DA01A01A01A01A031F76C757611DDDD639FF004FF655247C9300ECDC42FF0007CC2925227C7638FE495B22AAC99071448A34A18F2549878367187845C0543115486A5404E1C9F94AE758C8F42F70F617546637558F5FF5867196E097334E533FFC83989E41618E05F306DABB1DDAFC81A863361BE0E38DBF1A509B4660624BE559B57D975D6DDB7363BA946D28CDA7857087D4F4AEBECDCB55CAF8BB4A9AA973D67C69D0AD3F9360F39AD832AA17771F990C2C19236CD3DE0489B93A2DA00EFC547DC9B927A26B74AFA269CC4E7474E3239DBB5CBA78AF1EFF00B96ADA58C7305621486EC944C85421C7973CA43AD2821364915A7BFBA65E849BEEBFF2FAAAF18856592AD70A5C24E5E7E6F84594DCE13E9D171C49678438E56ED3130C2B6D1F71F96CD64B68EA243EC88FC6470EBAD998D39D69B75A2133013104F4DD5155759A9F53BAEBAD5734D53059A8AC571AE05A94A2A63D718FE3A66648AD85199401767C056DD71B146DC93109C4654F9A192A3A2AAFB0C897A900FA22FB51176D5EEB95AF4DB6CD89A50B196F97258F673A144A54B793AE5C654CCA94C0A26160C772757ACAB59B1EA6B6113812ECEEAC2597C50AAA9E24749B636D73211DD9B8B11B7DE7C9388012FA6ADAAAE5553ABFDF1F6234B494787EB8C8876BFA46237F7389E4F31CC4F2AC62CE6D064B88E6112CF14CC312BBAA7FEDECB1EC9F17C8E0D7DFE3D755B35F46E4C29AC479711E54175B025D922EBEE56B76A985CE338F2CE79412AC4DA574A4FA65DDC665F382D3DCF6359D852F57E319A76ADCD4568DB5D53755F5F677DA7694F50E4D2AA62DEF2B7AFF001DC8A552D63F397EDDB95285A65D7915B03331514C769BB6FD175D3B97377463DA967A553A2C3135BED9B3525E84A1BCBA77BF1EEA976CAE83F201A709D2F1B3CA36DA6514DD35F173C8952F4F473D03AD0095B2515E6BCB72F44DFF008A6EF088A5669C77FECCD2973FE54CD188B1DEB5B6731C7702B1B097D61DD38E58586492BAEBB858A8EA6CAA93EEAD2C2CF12C80B1CEC2B4C7F2C631FB0832D9349AED7F1E0F38C93669B896345B7A65DAE5C3CF19CD28E55C96399A3A6E4B529AE79E38F5C69DB148269EE9DEF4EC4B1B17FB833EE8561FC85B2A69F6D45DBF845B5463B46F332464B95B8DE3F02BDF9339C90F23C4211991794479B84A8289377AD34929887934E719AF6A2A92B716F4E39D6987D9F678D23B1B10AFC03AAF22C56AAD58BFA5C799621C2B882EB8E479D15A8E91234A8E6BF1BC46E735DC7D07D7655DB554ED51B0DD5CBC61BCDF6BCE9F42F7AB9C6E5AA8A9D9F85DBFB2E6C7213215B5C28D022A56D7F2206C41C274A1C6E1B731DF6412144455F5444FE1E9ABAB742B66AD5B8F15E3B8A37A9BE5AB02F318E1BF124516B8B662AE17F5A89AFA90AFA8808B8BBEEBB6FBEFF5F45C9EBD5295AA386BBFEA5D468D2D4DEDBE1344A25703320CD9433DCC89410838989A2A98A6E469EEE7E9BA26C8A9A8BD36F55B0D66A7151E13F5ED8656D692D374A95E10549A63937BF14DB76F75DC94117D846BC48771527364554DD513D13F86D2D526CFEAFE9E19F5FD04FD537D6E98EFE30228301C5484D4F8AA2AFC426A81B22A11FB87FA3624425455DB74FE5B553B2C575CB04F871F5FC977AEE84E92B37E53F4C73C8A164C00EE2D9796C8D98E1D95988B6423B11504D4071850DBE330577D551371DFE8BE9A4FA92496B8989C7B32E95EF92222DAB7A2718C2B35CFC3C4FD397C693477C72E807105411CE93EAA3405701D5043C1684B8ABADEEDB8A3BEDC87D17EA9E9AF4365EAD9B2EE76ACE72E79F69C5BD4DEB97FF27F53366B5331A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A0209FF52FFE1FF04D01C7403403403403403403403403403403403403403403403403403403403403403407D4FAA7FBD3FE3A023E80680FC82BF31BD7537A93F293F900C6E534EB66D7975D97D821145871870E9BBC9AA6EF68CE283228F936EC7ECF5368855B17010491488BDD65815C1F1C7D4D76C109E8A02B29D6D1E76AAADC7A223B09C3649AFBB468240C57DC1092E4650E687C0C78A22EFF005D4D5D3971FB21E266688F82096C83EAA20AE6E6462BCC8B7344412524235FE09BA7AAA6EAAA9623B0AA3B60829F577DC820A3F17C4A68A9E8D98080222239EE2DD54775544FA969D6809039C428082A49B897F6F9FC684824A8E7314221370DC1E2BEA3B127A27F1D24628943B23252E2E0921939B08A7CBC4CCB64178BD01B21544F7A735E5B26FA6609739C8425BBA63BFC649C0D0DEDF9202B4885C8DB5542F70222A6CAABB7AFAC3703A94939AAA5ED711549CD881B44DD388A223601BB62D92934ABC89117D7D7E89B31C06248ABCE6E842AE292A12F145441002F7A3404C87CBEF5445DD55796DBA7A7A6A29DE1F5245C95C90D59525E62A2A41B02904741E1CDC6DA74C48A4222ECBE85EA9B2EEBA53B861DBDC7C2965B6EA9B1202A880B68D92F146BFBA4AD72FA1220EEA4AA8629BAA6FED664BAE04AA5926FC4363406891BF887DADEEA62EA81B8A4DB6EFA2A2F22F554DBF8AEEC111F4E38FA9C52C1787C63BA8EFC85B06D15A50789545C6D09E2246BE13521255E5EDD955111753C87D0A7BF6BB6EA8ABE8E0FC60066BF26EA8E7BCD08772E1C95476F4424FE1CB687E43B7029EEDA3643F2088BA83EE6441D515699DD114787151741A7107D07D457654FE52C71C715298FDB3CAD704757E4416CCF819B7B07B2436E7C8E23C7E83C77E09CBD1515157D349AD78E3F23AA28D6162D350FE779E446B90EE4FA21BA6F6FCD495B27647254793731171548B96CA3FC1E11C71F4105B123328315A16BE5276510B4A8812361226FEDCA536A04462F306EBDF1207CA05C491CDC8510751399308B6691DCAFB1EFE1617D7D8BDDE679ADD4B18153886278CDD65B985C4892F4761B3818C63B5B6D92D938ECA04169A8F19CDC8D77FAFAC75CBC09853447757E2CFEDB0FCB6F95AB5B7994750D678C1855983321CC9BC9EC9930CB23618006DC622F545040CCFB8624F0F8F983377514A0F1920ABE09CDC18926A7A52F15FF0067A787BD7E75B7FE5CF7D76D792D7ACC9873E6E138180740752C824644A655590D25A655DBD74C84BDD1B991F2BA871C0DD5586F9F0086DBE9C7525423D26F8CBE077865E19D6AD6F8B7E32F4D7491BB14A14FBEC2307A6859A5E46234715BC973E911E566F947B913DD6361289111137D911104C9B69A10340340340340340340340340713306C09C708400048CCCC904000514888889510445137555F444D01F907F61E7D9C75EF62E7177D779AE6B862B79CE432EB6E713CAF25C5E434D31712121BEF58E376758F36231543E3542121E24A89E9EA065CAFF0025BC9198DB21FF00719E474D9A0E466E581F7BF6B0BC1396334C491FECE52611988E2EB88A87F40356D13D53602AF23C80F20594505F203C866A63AE022389DD9DB2AA4FEC24044E3796FCA6E83C023F227B494B743245F684228B9BE73D93DC18C7FA17B63B2FB47B2B06BA48EDCEC4FB27B1F28CDEBA2C9DBE262F285ACC2DEEE4D0E494F35D17599901C86F27150274C0C83475C6A861558985708EA7EBFBAC4A87243C1E2DFCFB58B022D6D0D352406EE72CBFB7B06A9682929D97515A0B4C8F217998915B444D9D7C5149364DBCCDEBD7C7BB5DD109B4FF00EDCBBF0CD57C1776CD976EA5B76BC6231C7F1CFB0F7FBE24FE3EFA2BF09BE0677779596FD7D83E7FE5C75F78E3D8BDC3DB5D8A95FF0038B7738860575987FD0DEA09F305DB2C3BAAE1D9430A86FECD634CC89D01B0B357249B611FAF6F6F459EE5EBFE44BC3A2FA379F82585F7EABBDBDB71B6DF8F57F54B059565BF209F89EFC69765FE557CB8C803BA735CB3FE9BE18765DA3E51F677DDC8B1CC33DCC33CC8A659E46DB37F3D8B0619CDBB5F363B4488EBFF00D9890A15ACB1171C89162BFE7EDDCBE66E5DB76FF458B99869E49D31CEAA53A50E9BACFF005ED5B9743AD173ED7D3C61AAD69FA53748F42F4CF8D9D7747D4DD0DD6988754F5DE3B1D966B718C369E35543379A8CC4476D6D9F6C4A7E41915837180E6DA583D26C67BDBBD25F75D2235F5ADB6DB7FAA8E33E670DD7DD7B9B9CC196F562A6A8F979E12F8D3E73757DB755F91BD674798D7C9ADB1898C664CC4875FD9BD61693C5951CABAABB01B8AE64181E4D1644565CF9E1BA2D4B06FEDE63526238F4772B7596DD8E3CF3E3EB996B6FBAD74C3CB8E11F97DF9A5E13F63F87BE65671E20760DE595DD8E0F7CC9D267909BB1A585DABD5994D42DEF5EF65B356934E0554DB3AB128B6B1E29391EBF21ACB286C1B91D86CCBCDDCB6FB5AB1B8F555A58C60B1A5225D525D64EC5A6EF55AA8ED94A70CB18C7C26712958C61164D62B91E0F2DD7DD91FA85734FBB25D79D6D622A910989BC6E2912361BAA8AF1E4A9E9EBBEA17AEFB9DCEE88A6509D7FFB4D1F48EEB52DB2D56A52EBCE5AA3EEE867A8701B61A69B14331645B6C48494147871414F62EE68E028A6C8BB082AFD3F813ABB6AEDC27AFD5F5FB16C14D15FCBA7D17118954545D917EA9ED5557771554DBDC2A409BBA267FD0A9BAF254DFF008EAC9DB7D9AED8BA151E5D78E99A2AA53D2E526EBF639B6DA2A89137C976F954C4485763E44A64A88A8209B715DBD37F44D95750AE69E7AB9AFBF3E9D4BDCA5386A1D31FA75CFC4F8E35C8C54936E5C4770DF6452DD4939A2AF1F89444765DFD515756BEDBAEB9631D23B6B83851C54CEDBF4DAE1A95CFC3ACCCF4FA44717495051005497902A8AFC83C5147EA9C949786DBA6DE82ABEA9BA26AAEE6A1A537C561F64F2274A8756AC9C1D194FBE69A7718CA05D743FB989E4E08EA366E23605473D00C45933DBE3739090222AA27D7F8A24AF52AE31CBF1FC7221B76B7184C4378F73EEA9FA6378AD252678C1E384B4E7B4AE85E9F929F228A9ECFF5EE3AEA735055053D8BD76554DFE9AEFD9BB56CD9756B6A75EC3937569DDBADE573FA99EB5A198D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D0104FF00A97FF0FF0082680E3A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A03EA7D53FDE9FF1D011F403407E611FB9E3ABE5E19F976EF6BE7639231DC3D4BE33F7042551123942184D8F454936D9469B57228BBD19C08D48905C0D88B8EC232BB0ABC4E95B069E8635E2EB60DC8661B91649A10A9C87597A1923C468DFF53892FF00AC5111453DA9F454B655C487C7126668F2D7E3475491453FFB9BA87AA222B8842424A9B16DEAA3B2FA2FA27D253209BFB8541E0A63E9F2027F41B8A8A8BC9451445392AF1440E49CD7D53DDBAA89259E9485BF04142335541168CF61045073646F65E4A0DFF0FA28EDF544D8C57129C323E3505142521DF6DFDAD2F2E202E0716FDDF2017AA20EFCB7FAEC9B9D38E38F384407A4B2DB6BC8C8B614903C54955148450D0479734E0D97BD77E2BC5117FDBA5551F1FC91F52596470254DD14F8B448E0970222552D81085A4316D511390F1454DD7745FAA17527A926F4C430E42EA290823822D36620D0F1404DCCC4011554B6F720734554F4F4D47D4457A9487A6A919F1709382A291388A2E4646D37D80457E22415255FAA926FF5FAA24F671C780EDE38E112AE48510415715153E452E1B9F1055079CE20044A49CFDEA25B1071F4DF513C79714049ACD35444252DC1E370454D78EC2826E32681C766F9A216E5B288FD7D11365432114D45E2DA1829705D84C5A141214F910908D08439B6229B990AA9A2FAA6E9A0ED281656E22E38A2E030A0DFC82DA911A98A81120A91AB2AE038EB649B21A9FA6DFF0032A2273252E7CCB365E6D1180106C8A43C488F706457E23115417C09D43168085E5D811772532E222883A86E04722EAC2F15ED3EEACB21759F4F75EE71D8F9CE406614F84E0386E41D819CCF608A37290DE3989D4D9DCBCCC674911C90B155110F73F6EE5A4F3C1F14E3F6F3E38E4779FE2FFED83FCA5F918D57DA7676378378A982CCFB794563DEB9684FCE24D794A461D72BFA9FADC72FB566D40049E58B7D618D3AE37B0A9B6A7BE9A9608B43EC3D24F8B5FB4A3F1FFD4C302DFC97CE3B5BCB6C998390732964594AE8CE9D7D5C1418E71F08EBABC93D8CE132A8846DD966D6915D24445650790944B107A26F1FBC51F197C51C68B0FF001A7A0BA8BA271E79A8CDCF81D5B80635869DC9440E0CCAC8A7D25744B1C92C76F52953DE9325C25523322555D5617793F43603520680680680680680680680680680680680EA1BF319E76E3BE21F8CB93E234D6F18FBA7B9E82CF11C2E9634845B5A8A2B96DCA7BDCB5C69A5F9609A4479F8B56EB8ADA14FE4F07C8DC2922207E75B916211DC6A2948B1602D5DB3FD5DC04177E679D9AFCA709A364550D865907D5B134F91B542DFD4451540921AD931062BAE930271459870D86614482C2C7AF6C49A10762A311772369450FE3375D55F73A6A822A045B8603238F2EB1D176436ED73A2FF00CE6DB7CE30B4CA909FCD264F075D8E4AD8132E8AEDEBBAAEC8805769D46CAC31A8408E9B232E0BCAE9A38E9B811C5D71A594F12386DCB2563822EE9BEC8A28A9BAE80CDDF8D0B3A1ACEE3FC78E4B95BD06BB1CA9F277C5FBFBE9521C00AF831ABBB66B270D94D942A4C310EA250B521E37878A832A9BA16CA1E5FC8762DCD5295D6DF6BAD1C6BB5B6B3AAED9AAE6776C2BB4BB21BD5638CFFC5C2F1F070F91FA317E4E702B9ECFFC75F9C18263B164D86437FE2CF77B5435B0C1C7655ADD42EBEBDB3AAA98ED3226EBCF5ACF84DC71014DCD5DE3E9BEFAF4AFAD8D650CE3B67528C651D397ED5EC6F184F09BBD3B1EA996DDBDCDBC9A9D57656C88DFC9328283A77A9723C7A2271DCC6247B3CFED6534244A88B38B64445D70FC0B2C5EE6EEDA6ACBEFA60A892AC62A5CE3F43AFE65D77A36EE69BB6DAE38B6FEC97F27A73D7A0710D00D01E167F7278D349FC9BF8FCF4356CEDEA7C3CA46725719268DE8ED4DED6EEB7B0964C4789A3EDF1BB7040CBD01E42114E7C9783E4A9DEB5AAB4A699638F6CB8EC6766C34B65A74979E784F853C4E9B5A68115370122DB644204135E1B820998209AFC868BB222A22FF00BFEB9A98C3D3DB55C639E468D56535ABEBC7E4E440BB1088128AA16E2DF247113743E7B11A2A0F0054D97FA553FD9A84EFB3D38DB5A67D309FCE64C2BDABA6B0AB971D3B89C68186D101C3E4AD20F2452777F8D47D0505485455C23F722FB761555F55F4ADB165142A4F5C163F4ECC05DAAFF5629BE9C7522BCD8028087CC4E99A8A20B4A2864AD22AF3F89C703DA688821FC77DBD3F8D9D5AAB57655C63C3C3995B61279D9E6BC579FD484DD6583C2D9045908AAAA3FF00A6882689B72253231142F6EE8A8BEA29EBBEDEB6A5AD4B7ABB32CFC7844D6E96953EF9153671BB990E38D8704542114709455C324116F827C20F39C4036455F45D9365FF006EB2956CAD53E135A39FE20D5277A576985E4B97F0BC4A85DE0168DD1DB8D81B9122B94968CC99AEB4B062C76244198D9EFF007AB1D50439917D155511507745DB5785735CD2C72E3332BA526A98E18BCBAF81EEF3F0F7E5BD2F96FE1575DDB5555488337A76BE8BA37229CCC77FF40B5BBC0713A0884F5358180B12E4B35CF4719E0D2A8332D4B87F68DBD757C4BEFBB655BB8A2FB68EB3973CF8799CFF002ADB16EBBAC7365D5F3AF99DA5EBA8E71A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A0209FF0052FF00E1FF0004D01C7403403403403403403403403403403403403403403403403403403403403403407D4FAA7FBD3FE3A023E80680FCFE3F780F5D4CA1F303C4AEE006DB18BD97E2B762F59B6F3E880C9CEE92ED8ACCB11A378A338080DC6EFC25345255402554442D94AD6F22ACF2A982C692E455B03719118C71D23B688DB08516C40C1F71927C865BEC0BF105557E31112445D8477D4A98923B38E38A994027FC688EEE66E236888DB6BB9A022022138BF32011220A2226C9EDF4F45DF6104549E2E3622AABED313DD50D47E45F46CBEBC94D1CE5F220AA2FFE552DFD59F5E38C41CC66A1282119A0EECF06B96DC774442655551449F1214FAFBB62FA0FD527313CCE1F76AA02828DAF13E4E1227C428BCD5D0E464AA8AD8BABB2FAEC08AAABB7A6A201479362488A28BBFC8D823A4DAABBCD77F91155550D5408FE888A44A83BFD10753D06251A4D8A02A92117BD0894814C844C8D43EDDB42573909027A6DE9EDDFD7745D3319107EFD1E534F454457117652323F5FF99902268370D917622FFC3D55141C719FDC80FCF01114230477819A0092810A0829386DA20F3D800B64E4AAA8ABA65C71C778ED29326D2132CB9F24F69B527051B6D772F904799AA7CCDA6CAEB241C89136251F5DFD75111C71C6449644FCC6237B030E13C5F038611D90275B5310431564DA22F95D4553056BD5517FD8BA752609BEBEC77B6FBA72C8FD75D3FD6D9F76967963FD8898475BE2590E7B984C7CDE1213898AE255D67732162B6284E2B71C51A04D897821968E9888E58AE38F3C4EFB3C52FDADDF93EF249A859077157E15E24E196271252CCEECBC6323CF5FA896E838B26A3A87ADA5DD5847B086DB68BF65915D62B280D139822EFAAB69D555F87EC98E38FC9E987C50FDA69F8ECE931AFB8F21B22ED5F2FF002D8E9CE642CAAE5DEA5EA6724812130F45EBDEB09F0327991DAF5428979945EC479157E468954D4A258847A30E95F1F3A23C6FC4C304F1FBA6BABFA4F0D1261C731AEACC171AC12A25498EC0C66E75843C6AB6B9AB2B2564110E4C8476438BBA9992AAAA89330680680680680680680680680680680680680680680D71F2D3CA3EADF0CFC7EEC5F22BB7EC1F8D8960151F3C6A8AE46DDC8734CAAC9E6EB710C031286E9B4D4CCA735C8A547AF842E1B519A71FF9A4BAC4569E7DB03F33BEEDEF7EDDF2BFC8FEC7F25BB56CA24CEC2CF6C1DB8CA02258FE9F86D152D6D7485C1BA9A9D6F5FADA8ACC1FAB31212F8674D569E4605E9F2DDFBCB098EBE06BBD8C4CB1C19376F30DCE868EC33BCFD22425A0E35513E3C1B08F3B216A78545DD5B52A24F69D6DE18AFC0FB29519D490032E2A1010E36580FBB1E22836FB72D9759027233A8F38C02B0DB04C3BFDD75BFB80156D10DC50640D541C15121502E4AB36254A980AD38324E100126EF1B844FB282AFC6017C8945A44525E3CD485D4D89537D0167D67DE31925410FCF14A1CB6E3C7FB2E0A64D12C93279F90D9998B8EBADA7F73888B682A2468A8A5A02B7D2EB0A3746F5F48B59AC40841D754F36C6E0CFF004D8B5C91E27EB0766CB8FB8D351D9AC3447C1D336F900EC4A88ABAE0DE49DCD5CD69973D9F5A772475ED5CED49DA9CD38EFC0F7E1F8B3FCB5C5F202CB19F0F7CACA0BEEA4F3328E0D9D0E3AC6534D935445EFA8D81E35FAE64328A0E4F55579275F77963D8BC32B2C9713BE8B065498C2E5B54FDCC349F1A9F7D9DE57DA93FEDF5A4FD3333DDDA7636F2FA18FBC02F1BFB73F17BF910EEDF15683AB73BCBBC14F328F23EEBF1C7B3B05C6724C8B02F1DF2EC2DAB8B9BBE97EE2B369B9703AD023E316214343656927E1BFADA7C6A3437255895DB75F1658F6B75E2EDBFC144E5CE3179C2445F7ADCDB4A89DBE2E78C3B4F441AE9311A030D790FDED8178C3D19DAFE427683B6AD601D3B835FE7B948D1404B4BD975B4105C9855B475C72223332E6D5E108D11B75F8EC148743E575A6F93830DC292529707E687E5377DF6BF963E525DF907DC38A64B8766DDC8F62FD998F637905058E3109DE92B5816189753CCEB35BC875EB98F55D450638B11AC8A287D9DBD9352E72A23B2DD44F2EF6AFDD5B97FF6D348782E9CFA3CE1C23D1B6DD363B6D4E138FE630ECA97957F59DABD1C1F92F9B0C2B4C3A4615D2E3A71311202497302332A29BF21F728EFF45F5F5B3DB5759A5FF4EF9F2E3C295573B6ED5FE51DDD9DC4D394384D3121DDE495CCAB6A662DC8B98687B8B68AA86154B38845382AA7254FFF0017AA696A6DCCF9472F2EEF341FF5D39F4AE7CBEBE0516C738E9EA56DD9AEDB7CD1E330E3AFCD8957364C64169001C74E749F8813E3E60245F1A236443F55214D4A7584A6EBBBE5462F92CA9CD15510B24B2A53B157892A8D6655F2A28163D835D4D176204C6E4DA4FADA28EF4536797C8DB2E7C73781F305424E48A3EAA9F42D742F8DF215CACD0D5AE95CA70AF6E514F132FF00636AB76A4EE55CF2EE282F65194BB638FC08F0B0DA75C823DFBA2FC50B0C85EAC4C75C6FEEDB91FA834C477A54C6CC487E17104013734155415A59F11DEDFBAD6DC4C44B6FADAA33896B25526EF94ACB5684EF4FB12C33E519752D5EA4CC3B23B722664561616503F43BF934F02B3150FB365F891A43F1E43D6B23EDA403331C90CA71167888A722555DD575BFC7F84AF6EFBEF9B1A74516DC9F5C5D5579ACCC77FE55D624ADB6AA1CB96A3A5561D4EC63F1D5D4F87E53E79786D8477460B49D8988E7B9476457E5B85768573397E2F903B5DD7BDEEFD1B3758ADC9CFA69A15B67894294D372232C75971193E26485ACB77676B6D2B3713B9ADD564CD2A9BAAEAE8D46318A966BB7BB7DE9DD6429DBD5095714B1C9D71E5E5EFEF15C4F15C171EABC4B09C6B1FC3B15A38EB129719C569ABB1EC7A9E22BAE3EB16AE96A2344ADAF8EAF3A47C1A6C07912AEDBAAEBA95AAD516A491CEDBB9CDCE59706A481A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A038A822AEFEBA03E704FE7FE1FE5A01C13F9FF87F9680704FE7FE1FE5A01C13F9FF0087F9680704FE7FE1FE5A01C13F9FF87F9680704FE7FE1FE5A01C13F9FF0087F9680704FE7FE1FE5A01C13F9FF87F9680704FE7FE1FE5A01C13F9FF0087F9680704FE7FE1FE5A01C13F9FF87F9680704FE7FE1FE5A01C13F9FF0087F9680704FE7FE1FE5A01C13F9FF87F9680704FE7FE1FE5A01C13F9FF0087F9680704FE7FE1FE5A01C13F9FF87F968020227AFAFF00F5FF008680E7A01A03C70FEF0EEB35B2E8CF04FB9F93AD0619DFBDA1D3EE4865B170D94EE6EA1B0CC59DD0D15B36CE674335B817A1AA27A2AA226A510F99E1D684E3B309C407D154E3145708DD42E430A742F8BE1F72922F2DD3820F140FA2A22ECB6FA15FA152FBB426B7374947FB65C509054F9A9F1552DD3612555454554115FE1BAE9208073F8929724144E1B72713E45246FE31E4A641C0893D77D8936F5D93D348191F46D0392227AA206C06660BB8FC9EF3755763543105E2AA4A43ED54D955774CF1C71E03EA723B468BD50B92AEE4AD92A98AFC889F22A9012029216DB2FA0FB553F8AED39F711F424D259BA65B0286CA4A86A6289BB6A49BEDB7AFF4AAA6FB022A17F3D471C70C12EFA030CABE468BE8DB9F238E0B4CB83C90138FC7B201108A2367C5454D7655FE3A9C09AC96D5DE4511971E0AE97F2B2D30C9FCC115D57D05D041052863C1EE4C36868A45C01764D9514B88C4AEE10496195BD8DDA99A55F5B751E0D94762F62DD98B74B84E098BDDF6066F64FB82ADC76EA303C62BEDB249C9F33881FDB65FF8D0F7355444D4512AD0983BCDF157F6C2FE54FC9A62B323EC7C2F07F13F0BB38F0EC46D3C85C9CFFD6EEC57A536DC8760750F5DFF00AB32B8574C0011841C8256266209EE34DC115A976F1E24A5CCF4D5E25FED28F017A60AB2F7C96CFBB57CBBCAA0BEFBCED34996EF43F4F38BB0FE9EA184F5B5D3FD8F2D209212931699B5A40908A80E4656F901565B2616399E91BA47C78E85F1A70E67AF7C79E99EB0E91C219265D5C63AB306C6F06A7952988E1146C2C626395D5E1696AE32DA23B2E4FCB29E5DC9C70895555D730663D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D01F9EC7E68BF24F2FCF3EFC6306EA4B51B4F18BA2722BCA2EA48E92D5FC6FB63B1E3574FA8CD3C8C98118860DAE2B574B2E5D762CF36E4811C69C95381D44C9922B2074B363265562AD0D63D31F1A9F8EDE4CA916012A3DA4BAB94F4F7AF5F98D83ADA7DD4796766968AF4D8915968511B8D1584BC8005B6DD8D85238C498962EC793019B192D9C07A730EC36ABA548CA5BB4AA9833E31478FF00A5DBBF35C955729CA8686684E9694EE3E5944E02A5059A69D2E72378E3616F34AE1E7CF11AA875E96CF433AA9A93321C5C5BABC794633B60B1A65B540D74061C7992B0834CE14262D40CCA6EE2DD6DD7D679AE40C32E1A30E31550BDF1D1F96E33F1B1F6AA4DAC908CE496F8EE2D93CE0A97A8A7F501B95F895FC54F7B7E4CE5F60DCBBD9743D0DD69D6702B58C833C95D4763D90365D85939058C3EB3C7ABD7B4B036CEC20E2B20EEA7CF725B8F55C49B522511CFD4C5D8F13581143D1433FB58FC61ABC62061545E56F93838AD763B03186EAB25AAE88C97EE6AA2553557263D8484EA7A929EDCE06C88D1C125442E3BAA222EB9AFF8DAEED6DA9538A989C62A745BBE928871D1C61864EA670EB8FDBB1D1D88663FF53723F333CE8C8BB621DE4CC8693B571CED8C77AFFB26BEDAD690F1FBAB79BD89558658F615FDEDC551247913665B38E9B028DAEE9CB94DBF1AD58BC308A43E73573DE43DF6F058E32F2E591B4D0FF115435EBBC3FC897E5A9AF799F13F3BF3B96D6EE0889FF627524A6365E28A9EDDC57E9B6EBBDFD9850AEBD77FE8AFB959D36C3CA3864CB9F89884E486DF3FC8FF00E5A766DC073EDDBF372FD98E6826A7F1380CE20D91365BECBEEDD53D37F44D9ED399D77F8AFC0F754469B6BDBF93EBFF0089B8EE898B3F923FCB443E46A404C79A966E9348AEFCBC0167E0F310C36F6FBD0D507D37FE3A9F69FF00D77F8AFC11EE2FFA6DF3FC965679F858C1BB4314BAC17B13F207F950CDB0CC8E29C1C8313CABCBB6B21C66F6112B4E0C1BBC7AE7ADE752DD406E4348E7DBCB61E61C2D91D0311011ABD8D58DF7F8FDA23C8B5BBDA69A2C8EC7F599F33A41FCA4FE17715F0C3C20CD7CA1A2F2AFCA1EE2ED6E938DD1FD49D56C76059E0E58560FD3F71DD55985D275F57D6D3616CE4F538A61D13B2E4C9AD8506E20D544B3233662331DF28A38FF00AAACB7D0E1611A54633D5E2E5C42C5F66CBE46B7A5AC6B8BC63B961DADD333A0CC2314CD732856773904CC97294760F5C4DA979D992598E8FE52CE312AD63363125453B564D6C9F69509495B6F6D889C141D75FC7D8B6EB75EEDB6AAE6DC38894B0A2E7D90A8CE2F91BAECB92B1D5A9A24DE75FB175753F44D8D842BA4B3910CACE2E47708876EE3B6966D350641484AD715C65F709630B8A20C8B9FD2824BCBF875D9F1F6D6B7B2ADF5B4D53254694E0FF32E6B1CFB9BBB92BDD774250FB5E6D2787D2214194B25E9B8F3305955E778F1375F0FB0A6BF0FF4C110931633D84CC5FB566448E2D84B6A69A8F2DF66F8A2F154544BEFEDDD7DB7ADC4B46951CE26ABA634F05919ED6E596DD6BCF53F1875E3132EE2DD5F8C1D463CE0D1C87DD7A9AB0231CD99224B6EB326AC050D05463A0F117109513E8208A8BE8BAAFC5DBDBD9B6D4AF97114849529E9E8B1C7EA4EF5D7DCDCDB16ACF9F7C61DD1E451E56094DFEABEB1A99F0988ACBF77D8B12B5E8860C388EBCD543EC4707B752322E7C5D4E1C1157908EC89A7C6B6DB66DBA1D89B879634ABACF58C27D289DDB9E94EDFED0A5675E8A8D3EAF1820F8ED8D47A1B2EC5AC8AE956D645BDB261969AE04F934164FBC0FB8826068F3C6449CD36E205B2AAEC88B8FBFB366E3D8BD7AE5A49AA4631AB9CA70B947235BB6B72EB56EDAD2509B6B19CDC7D5F7E66EA788A238C7E403C02C89F69A08771E41E678E32EAFC9B7EA4E50D9D39AB2F1839EE24CFA28FB541155E54511431D63F2B4BDDBDDB7446E591C9A71495497387385138EDF1752DAB53536BDBBFB68DE4EB092C791EEFF56034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034034079C8FDD3FD6CB9B7E26B26CC053FB9D21E4578D9D962685C5C69BBEEC785D1D2CDA545DF9941EE37455504F60255DBD3742C48781F9C00B2EC48EE3CE22A39C1F70478037F112B2DBA024EC9F95807D5D6C48C5501D5025E2AAAA83ABCE65096727836E2F270476371B5403077751251546DE2D90D1C6FE8A8888A888BE9A60A09E3CCA7ADC302EB28AE22149556B73246491CE7C548B99B620AA47C5149375FFF00B5363E38FE45486FCE683EAF02AA0AAA993CD83AE8F1D97764D51D0125E048ABB2FBBFF326CA788AE450E4E4F1A39486B99BF29992602DC0027D8458E1C1D279DD9C968C8B86884DAB5B9EFEC2544545512A130B8E322A58943ECEEE2CC6BBAE7A8B07CAB38CE321792253E0982629926799DD97C8A84255784E255D7D96D991B85C805A8AE7144D953D1494DBCE1221477F1C54EF57C52FDB29F943F2686A32ACF702C6FC52C4A5B27323DD791B91AC3CB0ABCA5C688B1E074EE04597E6F16608A3AF8C1C85CC55C269A4157810DB55A4ACB8E3A16D2F383D2C78ADFB49FC0FEAA48175E50F61F6AF96593B2E3EE4EC7A3CE95D09D37211C65B08C1FE94EBCBB95DA3356198AAA8CFCDA6439028227150108092DF45C67FC130B03D1EF41F8C5E39F8AF88AE07E36746754745622EFD914EA3EAAC0F1BC222DC4AAF8CB12359E427415D0A4E47748CA97C93A79C998F1191B8E919912BEA24CE7A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A03CCBFEE1CFC91A74BF573DE0E74E646DC7ED7EEFC4E4CFEFAC8EA65CC66CFA87C7AB022832AAD99B09D8C90333EEC46A5D6B080EACB838D46B59629165BF4D21D03C57B4D056456DD7E07DADC5F476AA20D5846271CAEA1759B2762D5B117E246E0CE52652C27B4C094A4705B48F1BEDE1BF2E28160FDC3DFD892F89B2DC87A1CCE0DBCCBA8CC90F8ADE5024C6AC69DE9766AD4662C24B916740BA10049EF7CAD9A65AA072665240AC6DE9516444B68B6D59F1B0EC49D1BEF588416CE5D5C8DC31798497EA788D73ACCE106DEC532307AC4679AD50BEB91DF0157C4B0E5CE2FE2C78D119830230B12723384DB9109B3C7253501D7EBE445A7C69C19A632DD8422D56505D553EF912B5562FC88B6A0546FCACFC82EEDEBFE90C0E216437B7998D061D86636139233B9365D91DFD7E2B8A510B86D1428C97391DAC68A4FFB598A8F384BBA02A21D2AF00AAE0FD437C0FF0010F0EF06FC5AEAEF1D712583613315A92B3CFF002D8901980F67FDA1909FEAB9EE6B2C05B192ACDA5EBE6D5732F9BCE57534787004D5988D2242E6F164BF236FF5240D00D00D00D00D01D577E6D3107737FC5D79634ED2BE3F618E60198BC71D82904DC3EBBEE1EBCCFE73AE3620E12456A1632E13E689FDB6508F74E3BA56F8D2F5605AC9D5E9C4F181D5F8A46A4A51A572C6631658FE37D72842A1F2024CC62EA041685E75B750C10A245E60EA0A8A1098AEFBA2EB5F8B6A9BEEA27EE4396DB9850B1ACE2A14638C197CAABB155FA2572CE5F7757CBB4CC7478A57E2F94764553ED2ACF8F9CD87142F7CC9276ECC69ECB31D480D49A689E7554F91110FB36FAEB4F7371DB75B7BC5D734B1FABFC3327B767A6EB3FE9EC9E51D9F7EF2E18E15D6B2E056A4269234CACCBDA8CB2BE3488D36FE2952A9085586B993A526B11E5555E488D6DC765E5A94F72DB158B94A6BAE5D7B1D17811163BEE6D51629E3957A22898459948C331F91EA71E354370DAE0BC5E526145051E2E4A5B2016CA029EE0145DB75545ADD76A5A6C69B6E6528E1F4C1E4D1656BB5B772711DBDDCA3ABAF32DDC81B41EC2EA1B19CE22349D9E506432E49168A1C7BAC6000078012FDB30726B94BD37455DF74DC094ACED576E6DDD73BAE6B199D2A5E318C60F3E754673165F095A9E0F16FED4E848D234353DBB9FD3C656DC6D1673F188B7E622234FF00DB544445469D5797754DD15444B64F76A1DB62BAEC6FB6D69CE49567578C282FAAE765B858DA6A337CA23CCC9380E530F17F273C1FC8458891D283CD4E99913AEFE77C6C1CAAC8FB43A76926550B3F3478ADC0FB4394BF29B4664E3A22A6DB4AE2979FF37DCB6EBB7362F8DA9B3D3158B6FB7539CB5513F2893B7E2BB558B6F76D9DD8BAB31576B4B2AA5C4C53F40ED74990D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D01D577E703ABD7B7BF11FF00903C50050E454F8D79DF684015310E569D211E3F7454A211B8D0725B2C01AD914B655F4545FA2903F2A15B1A47A4FCE96958FA590A7DC2B8E4808E0F48271BFBA06D5E526E410F256F7031025514544E1AD31757433E38E3EE60ACBB3CAAA78AFC665CB471D69C090E4736119171D69A50088D8A902B0E091FC9C9C12320354DD774DAAE171C71E05E39169E1F2338EE7976D8EE0D554B5A5594F2EE2C9FBABD8F5710588CE36DC78CC49924C1C9B6B698F0B4C446B938EBCE7B104508873BF72DB16ABDC5A5ECB2EBDC5AA59DE4FE3E3F6E8FE487CE48C598FEA1D11D4DD715C75F56F763763F6951E633FEC9E98856B555BD41D60C65D97339357B5CDD18B9396291E5028BACC8700C5C729B5F236F796ADA7ABCB9E4D4E4F22DBBB3B9B3769DC50FC7967547ACDF133F68E781BD3CB0AF7C9EECCEDEF2EF2C6A43CF4FA549F23A03A66602FC4711B2C13ADAF25760CA58AFA11184ECD2743922A20E47504213D65BC69D86743D27F45F8D9E3DF8C3890E09E39F48F54F4661EBF6C5231EEA9C0B18C12BAC6444695966C2E1AC72B6BCAEAD940895C992D5E94F1999B8E119112A14CE60CD7A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A034BFCFEF34F04F01FC62CEBC84CCE186436B5A0DE35D5FD7ADD9B15361DA3DAF7B1671E1F83419CF3724E0C592501F9F6D35B6251D4D057CFB1561E0886D901F9A2E7DD8BD83DE9D9BD87DEBDC7973F996719A659332CEC7CA9E647E0CBF38B68E2D55D3D6C57DD960DE2D8D5654C4AEA1A78EA4C42AFAE8354DAFC70C8900C4F914E6ED5E3767A57B319F68A05AFC4AD4269E0B782593568B8725F9D01C0B47E3FCB1C6636115F48E33A2D8CA6992C8EB00B3E4D94C7C27BAADB126D4DA6589266EC684E3853CDBBF86365FAD4F8E4A233A4352D9FD7CE2A32DBAD5947BB87F2379AC9029D38A48BB37F5398E1A311A004D724393EA8A3465AE65C8676ECDE246B0854942E48326235D1B55B5EECB4752C68DC96136EC0DB4EBEA9898BD3438B712AA215EE4501B9B90CE6A09D0375F83D0048970B1D159690E445AEAD4BA36A2C5F8A2C6AB192EB5063C769B06100BBFA8AC683C5BF333A17CDB6A92665386F4D66F8DE6BD8388C0082F4CAEC7E966C79B22FF12991A2184DAD8111957E630AD1C96415C7804DD69B453AF683F4F8E9EEDBEBFEF9EAEC13B93AAF23AFCB3AF7B231AADCAB14BFAC951A5C69B5964CA388DB8E447A432D4F80FA1C796C73538D29A71A3D8C09100C91A01A01A01A01A01A0352BCF8C4533CF077CC2C3FE19321DC83C64EF2810D9862A72CEC4FAD72472B3ED5B4FF00D590960DB4A00BBA192222A2A2EDAADEADBAC6AEA5B152D65CEDBD3B719EDF23C1F50DAC9B217E4C196AE40BAEB287943711AE6ACC8B50C7D9761D84563E411726390F921BBB2AA3244A9FD3AD7E2FC88BB734B574B514ABF4AABA4F86533D72F95B2F4EDDD77A625397845CE8B2FDE6664CB67247EDEEC2B06CDD56A7358C5EC41144785D2B3A369B8D21D375B526F8A34BEF4DC8CFD37142514D5EE3B36EEDA730DCB6BCE71CFAAED32F6D5F7DB7A8D49443E9FAAE11522E3531A5C969EA2745721BB2B2BAB7EA9C710144A0D8E35D875D72AFB0DC869623563632EAC4B667FF0072A8E2F2500D8E2D7E856DDA5A96D738AD7FFB75FB069EB6ED57270937D5C72A4A5DDF52C9EB9F8D712FB4470D8975B90DAC3964D228488ED47B49D0F637A408ABA8DA00A2F0415013DD7D47D6B6EDDBA62D6D3973772734ACF4E54ED2CEF7AA6E86A134B9AFF2A65DEFB264A5761B71A9A063B6ACC9592DD276475FDB38F3642E28B36136DA9FE54713E6438CE1CA21351125688517DA8BEA575E95D7EA7AD5D33149A639BD4F05806ADD4ACD2B435119C734B28512FEE5C392460A8F232F11B652425E557C8C45700D5C71B9F5D25C726B6DB5B217D93901BDD108551084B65442D4DEE371BBF069BE52D7351F8A548B14EDA56636B5E7383797DFAE18BFBA4A7D3D750E4F1250C7918C760E399245DDE00622D954B736EA14D902A86DB0DB563431BF80AB6609E9E88BAE5F9BB566E7C3773977A7735E0E3069B9C2298E18337F89B8ECF936A88B6174E9D577A9A6743F47CAF9D1AD2042B384E23D0EC62469D11D4FA3B1A5B21218713F91B4E22FFE3ABA69A95806A1C137A90340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340637EE3EB2A6EEBEA1ED4E9AC8E6D9D6E3DDB7D6F9C7595F58D2B91D9B9AFA6CF718B4C56D26D4BB2E3CC88D59C5836A6E304EB4EB62E88A90126E2A078DAC0FF00682CC851E356E67E61622C42AE41871E663BD21796D3EC634108F1A14E90D59F69D1B55AECE8F1049D862E496E311AA03CEF1E656D4B979FE8AE9EA671F1FBF675F85986E60F649E4F77FF0070F935430AD5B7E8BAE682AABBA03109F428C183D45D876D8BDE659D979299C8714824D26438BF06905B568F6522AB97D9C71CFA9654E65DBF98FF00C2475461DE31F47677F8F3F13F17A185E2B641985976A7497426315B49DBDDBBD519BD25243BECEA832AFD2720CCBB53BC7A8A7621067D2316E5713E6C0916211DB9B2C62D6CDE6F93B3EEEDC2C67C556938E7DCE1E4747C6DD7B7B939351C64741BD57D9DD9EE779E3BE73FE1F7C89B6C7FCAC8F4D8652F71784DDED7B609D71E54D0E3F6F5F499A64FD193B22BC878FE71D7D90B974E5E671D5963691B2EEA5B53B59D88DD48A762A2439C7EEADBDAB7DD57D975B6276DCB1BB276B5FD55CDBAD9752A9D8DC6AB3A1EDBDDDD6B6DAB95D7556114999C61254B94CC43593FD0BFC50F2087C94E9CA6EC09D8FC2C3F33852DFC5BB2F0BABBF4CBAA311EC0A98B064DDD352662D56D4C5CB688E359479506C1A8EC2BD124B68F331E48BF1D9EFD8DC7BBB6AEB945F835D78EA726F6DFB5B8ED4E6DC9F4364B5B190D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D01293E7C1AA8336CECE6C4AEADAE89227D8584F90CC383020C364E44B9B365C836E3C589163B646E386420002A44A888ABA03F37AFCB57E426E7F23BE578C9C1ECE48F8FDD772726EBCF1962458928E35C62A271473DF212EAAE5094F6EF3B5AD1884146D3F1D826B1D8D56CAB11E6BD69F301D5C5ABB5B11B8906ADB136A96A56CEBCC1979D72463CF4994964E13EC43C8A28B567281C0492C575DD7D8236E19C59E2CC94AA02DF493F64032004D024456ED23C90799952DFA18926C6CE44C7A43B2F2D72BA4391DD09C72E2CAC831B7198ED58C8E68A39557816CBAB1182F47A5B2CB4CCE76A5213071161A40930326B3934322AE6C78EDC68902E066FCB8FCB9511A193FA93B1EAD08B29B0032674C62F0EE65397F65123C7A3EBC79263A119B61AAA5B56427BF4102BDB8B02A68A1CB8708DD92F3B018AD371B0568EAA98A5B85620666F177C65CD7F253E5DE13D0F8BD95AD542EC1B95A8BCB98B1597C313C071F17AD3B0F35B661274417AB716A288871DA71F8FF00A8DA3F06B91D6DC9AD929F4C4253D87BACC3FF006E7FE22F12C46A3143F1B322C89D835102B2E726B7F207C87ABBFCCDF86DB08FDC654CE13DA388E3322758C867E6758875D0AB9A5256E3C661840646239B60EDF7A9FAA3AE3A2BAD307E9DEA1C3E9B00EB1EB6C6EAF11C230DC7E3947A9A0C7E9E3846830A3A386F4890E701537A43EE3B2653E66F3CE38E9999128C04C990B520680680680680680A264D430F29C7320C62C5156BF23A4B5A19E89CB75876F01FAF9489C4DB2DD58905F4215FE69A86A54129C393F3A0C120AE2D778A6357C8DB1658EC2C83ACDE65CE450DFBBC5AD25E35610C804F6409112B24820EFB6C83BA2AAEDAC7655BB77377426D26B551CC36FB5BF3E995F7DDD7DBD15CE62BCB8A5791952CD5635F60979F191FFA8FA6E8E3BA52045C70A6D0C993513CA5B482BF23ACA9A23801C50450B8ECBE9AEDDC75B6DD3347318CA757C9A5186072D89BB5B98F52EC875859A99C7124D6D471DCAEBED443ED5BA5B6C56FAC65FF0079241A41C9E91E926D90B8BF0B8D55AC827144537445FA8A6B4B6EB29B76DAE524D5D48998849D30545DC62EDBAB73746DCAE919FE7BFA1529B5EED0F66F6F50920135172FBB90F45531417D2D22337804A44D991B921C94E2090A712534DF6E2BB62D46A9AED2B951BEFED969E26F6DCA8BFF00D1DB8F2E7DB1CB9F4A964767D2FCBD7597C36DA92F488D8D95EB32015D6B93D8CD8575DC7488D39FDD27638891216C0842263F45DF4B9ED2B1EB509394D3C392EB3E657D6EF575AD4B50D351851B8CBF64E76359480CB3A6B3270766B2EC3EA199725A705E611D4389214824486B99A38F0BC8A289C95051091513D61EE25B96EEBB676E79D2B497CEB3CBA97F6E76EEDBB6EF5BF1A6518F2EECCE3DA74F1A7E0F9EABFF0023A1028A2648DC31246D2633437D58F5AB0EEC00031871F7A7192F155554FE29F4DB5BBB6D6E5EBD0DF39AC52BCA1579E7824636DB6DBB8ECB1FAD67D26BDFC753DCC781998399D7865E32E42F3CECA95FF46F09A19B39F006DCB2B0C42A18C46C2D55B6DB69A01B59D46E49140140E2EA71F6ECBAE2D9FF00C69630A3C29D391DBB9FDDBC26BE3536D75A141A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A03A4EF30BF01DE0A7977DCF55E412B7DA5E3A76B3B9BB59E7635F78DB95D560B5DDC77E2FB4F3B7F9EE2F758DE558C45CF9D4590859651C4A7CA6414B7165CF95C584671DCDA5B89DB309E387DF3596535866BB7BAEC6AE6936B0C7EDE0F38A268EE1303C1311EB1C3E8302C12922E3B89E31002BA9AA629C87D19650CDE7E44B9B35E95636B6B632DD724CC9B2DE7E64E96EB92243AEBCE38E1696DAACB55B6E0B8EF33BAE773775D8B2EDD5881A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A03CA1FEE34FC9626158D4BFC7C74DE46E3392E6B410AEFCB2C8282C83EF71BEA9C8A21AE3BD0A030F9BEDE4DDDAD486A45E45371A79BC34DB8CE30E35924679A03C76BCC9D74671242C89393651C51D8611AC1DB4ADAD622C7FF004FD54681121849C82B24B2EBE84CD7058486E7238E2575929B71540B2A37CF6A71DEAE0E5513AD0BF4E7AB25ADB367636AB2466318F8D3CB7A0DF5C48728880DD80E85F4A1AC7126C4CA1B8CE48A40383F28A53D27893D16BE4CE8D6F11F90493A5A1CC8E52E41AFC72AB62DA5DD69C54B271D8B3AA3201784A7BFF7C4C3798C702955B09EB894B1234772D2EED6CEB6BE20D6BABFDCB966C3692C1C279BC7A5C9C844A5FDC30124314C9A1B921B9A938088B20B70332F6C482C231EC67A531A9922C2FE6A38FDEDB3B2197A53B653463B5672564311E0460014882CC7F85969B088C37C9A6DD537140F6FFF00B74BC0067C71F1B1CF28F3AA7619ED5F2569AB9DC3BE68BF14CC67A0E3B8CD86344D0BF0DA930E4F6EDBB2992C8E0E936FD3250B4E004886E26A155CE44E5D4F46FA920680680680680680680680680F021E5CE3B1FA93CE8F21F1784D8C26B17F2AB2DB58714628C987068BB68A2F6641623C6795195646266CA0886A28D90AAA16CA9BF3DFB976DB57DAAEBAEADAF356A994D72AB86B14B99BDB65BB89D8F4A54B9652D2869F877F2C4B7ADC5861BEAA9D35A8F2A35567FDADD79223CC6FE565A4B6FB9CBE877488E8A1B4EC3B58DF1AAFF6D3887A2A22A6BB3E46E2DADB5BEE16D5662AD5BD6316F17DE71EC5BAAE7B557B8E3B1BFB2CBC7BAE6BDA66ECA9AEA8E2C288F2DD57CB8516ED09D3B68476101F852DA908220129A28EEB881191AD977FED98FAA95756D7F6693984DBCFA5B92E79B5DD469DD54988AC75EBCD2EDE8F9164C22867D8676811DB761E6FD798665D1633CFBAFB64E8C476BAC8223EE27CA650DF0651DE5E82DAAEE23BEC987FEC36773E42B6CDA775BB0AEAB5479C442730F9D6B28E8F85BB6ECFAAF49EE461F9AE7D299752F6AE663CDA9C86A6E23B31CB27C727D1428E9F11AC47861CC849F1931FD924BA65A6C94B8897A022A735F5E0B3E27CAF89F336772CDCBAFF008895D6DF357A9C34F184A3D38B73DAE3AAEF91B1F27E36EDB75AADF9147644AA2C57DF935DC6BBE4F38AEFC75EA8C9459786C702C94F17BA71BE0D1473A49FF68E8212BA8FF3178B742240441D91507F8FB374DDB5EE5ABD331D164FABE7D3AD0F32D85BBEDB7EA899CFBDE1947DE8667AE8149915D629557A64CD2665222E276F2049B29706A7318E74F225ABAAAE7C431E2D93845CD0BD17DA9BECA98FCABB776BE35FBBF1AD576F5AA529894BD4EDC25376AA387953134F8FA2FF0092B6F79BB76DE2E306E6DD4AB84E3F5C0F4B7F810ED2999C7828CE0B6F210EEBA3FB4B38EBC79839A931E1AF9CE40CE23C90532596D57ADBE573E2C717904C521900A7C600AB4DBA3B929D132A718693AD15664D6FCA625287185294EE83BB0D6850680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680D49F38FCA181E1F78CBD9FDDDF6749759650E3D6513ACF13C86DC686A332ECA995F30B11C76D2E0977ABA47A7B1F3D94A1DCE35730FBA0246220407E5FD90655D899FE799EF7177BDD3F7B9DE45935AE77976496D22ACE76619EE492E45DDF67071EAE5CEC7E054D39CA0874F0A31FDA57C516D965063448C0D01AF16D615F7709E932AE5D9A734DF86A2033E647B0B0B06BEC123942991AF23376DF6909C681658BAFBCDC576345FD49C6DC835607184B551CE65755C165B72E247FEF0DE711BA6B259B5D2EF632CD9D6AC64F1E389C784C4C462EBF5519ACC7494E595B716AD69C0BADF946E1CB7A4CDBC86B3A3DB31F113D3A53B220235FEB7656E9CB29931C631F9628CD973B476EA92432AB64DDD3444DE668066FEADA8770CC66C7B93218035D5F521718BF5F3CAFABCD3D70C3413722B0AE0922ED83B8DE34CCE518052A54982DCEB137A0C78F21B953A681B95F884F04ED7F223E6753D5E6B5F26674F50B8BD8BDD735A37523B3D5F476A855B86FDF353213C53FB6AEFE3A06C997C663154ED9CE8EBF24131487CB992B9F23F4D58B162C18B1A1428CC43850D8662C4891596E3C58B163B62CC78D1A3B220D30C30D020800A2088A22222226A70A2208FA01A01A01A01A01A01A01A01A03C5F7E71BAC3FD13E7964792553925F5EF2E8CEB8ED34658691838D9675959DAF595E32DC8534649A918B51513A8E7B5C1710C4950782963BB75AAAE7D30DC726DAAF1331D0DF6937E951EA955E6A1D33FB799A49981B3618066B6F5C8E38C51BBD59DA552E8800BCE446A3152DA386AAEB89F22C2AE8FCD76212E489EA8A289DAB6DEE4D909CA5852915C70C61CD73EDE1F71D8F536D44AAF3CB0C7071D394177BD2E6FDDD6C5AD0FBA98ECBAC9B00E53A6CC0196E498E2CCC96408D9B0EB28F2F21453175B5444FF0062E0EDDBA596E97EA85CD358A96A143952EB1E0595F7CCDD30D3ECE90956B9C164DF9AD787545B834D44FF004E671D87D6124D11D06D204E92E6438B3AD191B824C0542C611E42BC80F7DD494575DB7D89BB5C69756A556ECA8AB5C3F0735B7C5B7394D533A2AE6E3BF0A97536FB3593E02AABF1DB6A5AB86A8FA327BB826CA2A4702E646DB4F72444545715145493D553996CEEDD65D2D73AAAA5C939E58BC66A742BECB2F509B97149878E29AF2E5818EB1EC6DCB4C3FC97EB192851E4D75DB7D8D8FB2EC774025575B23AFB0E31CC905E612DD87E39AA1AA2144512DD41135A597B7B3EDDB36DB13CDE4F1EAA1F3833D296E2DCBBD4E63A61D98F910FAEACD9B8EB4C6ACCCE53B775CCC458515CF96B980B280F6F0A5D9588084990D13AC81084641E69EA8F86CA2B16BB1A56C592D437575C3D4DD5774F22D76BB6E6FD70AB4E58D12A3EF8A60778FF0081CCFE1527903E5FF507C10E106775788778E3B1DA56A38AD6BB3A548B348711B226D194B1EC856761DB88C34E22809B272DFEDD9BE961B97DAE932BD0F9E12F54C2CBB0E9B1DD7ED3CEDB6EC707EA5CBA24957A1E9EF5720680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680F3B1F9E1F037CE7F2FAAFAD6FBC567283B230EC3E8ACEA331E869196D575FE6B2ADA75A8CBFF0058E077B97CB81D779049B2AE56A2CD856F63467102B5938D22414975A6601E087CB3EABF277C7C74683C81F1F7BCFC73A76E51D6C5B3ED5EAFCCB0DC6AD67364E8BCD56F65CA8123ABF228EEB8BB36F41B796D19EEA25C5115249866AF61F596772CB16553611ECA24B860C0B55D62CCAA99505E546643530DC4915B320C9202667469887165B288CBCD18118684199AAF16B2F8C5C6ADE245B693361487A23E0AB0922439EC4C2AE1931D3F5D8B0679478C6F368A4C7DD07DDBEC4B98DC57A2817CE2581675955BAC0AFB2C7E053B33DA7DEC842459D91B2AE5E39633ECEAA2C73853A9B21625CD3971E6C790DB052885D7D97AC00AEF4066FF0027615BD163DD6D88505501758D43B598CC64AE5061618097CCFBD675B1E3448EDB992D81B931D9209F1C996EB8AE2293A8A407BD5FDBEBE3A609D33F8F0EB9EC7C7E000E69E44BF699F67166EB4D24A66050DFDF61F81E1AC1A341219AAC4B1BABE64C19BA9FACD8594812FF00DD12242C5BE284BC123BC3D49034034034034034034034034034079CEFDC23D5452B10F16BBEA136D0B98876464FD3390380D3CAFBD4BDBF8E8DB5414A75B306C2042C8BAF1B6514FD45FB01E2BEE512CB7B6EEDCB1DB638B9DAD2E7314F08EAF91B6CDEACB94A9529FE7C733CFEF4A4A4CAE92BF179ADAA3592E299DF5638AFB84AC958418C72E9B88B62442F8263CAD282A2892BFC9177525D74FC75AF6B43896955E4E3B3CB91C9BF366F6BB662DBAB19A9EDFC774150C2E7CAB6C2E82C5C268A6D7C09B59295A695E96C48AB27ABA445336797C0F8BCA0884246E2A9239F42D68AEDCB5BB6EB55CFA2C152AB9F34B05CCC9AB2EAA6EDB552BCF93E5DBDBDA73CC196CF05ECE86C46701D855587F715214953748EC31596DE3F950467DC06F93C14712BDA7D1B1F6A9EE5BAEFCE376EB6EDAD52D5F6DD6BE52964A9CA8E14399CE96DBB6F57E985A2EB5AA7389AF7E12E72ED8EFBB8EBD5ECDBC6BF7AD67D8C1A4B318838ABED57C87A6B508ED6305CCAB56858955AA6AF01B2D488F2F8236082BB2A6566E5D6DCEE8B56DCCA4DCCAA65CAB8629A54C9697EDDB7D8AC9B9DD1129446357C66F991E8720B489E4160B3ECD264587DA5D7B77D756F1EC2493D1E2DBD43AF4DA6683F51765F1416E5CA356CF81897C9C45540B7E9574DAB6EEA3B9C7FF174A6A70D61C9F5839AEB52B9DC9CE95FFF004AB588E4D3C60C4BD6A9331CCB3B3BACEC09E3918CDEBCEC0492A29B4171F57E22351D5C45F87E37C9445111484D10764F44C2D9577B0EC6AEB6F9735D52B9569183A34D38E9BEE43B7DFB6E9B5DB0B28EFE24DCEF0E7B3DDE91F3A7C51ECB6272D355E4994BDD0D9A4B7C9B380545934E8A5547307E544FD3D697229A4DB8A1B327580E02FF006C9063E4A772B771EAD36DDE9A2C30B9B9AE7944793B7C7D365CF6968D575BEA86F15549531EDFD9EE7B54341A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A020C98D1E6477E24B6199512532EC695164B40FC7931DF0269E61F65D126DE65E6C94484914485551536D01D5E77D7E14BF161E474D76EBB07C2AE9CA4CB1D394F9E79D375965E3E67CFCD96C1B073ECB33E8AB3EBCC82FA480126DFA8BF2DB5E28840429C751024E9DBB93F6A3752CA49D33C61F34BBBBAC9F942F92631DF386E0DE42E200D2193B12A2BAD281BE92ECEADAF6788360FCAC82DA4B43C8D55D5D874A8A1D66E5DFB7EBF2ADD0D26AA5D0615E3E795D89D34D9CDB10FA23B99CEA6ECA9905F4E65633316EFDC7312C1E04C905ED2658CC262AB69F1F3E2BBE920D06EEDF1C7CE0A559F89665F8FBF362A2CA649628A0438FE3BE5999C0BAB27E4B89494F4999F55066F84D8DA03A22AD942B024221E63FC74959930CF6B9F813F1AFC9EF173F1ED8960FE58356745D879367795F625175BDD5B8DBDD753E0B92D7E3B1E9B0CBA265F990AAAEA7DA554FBF975CC3EE0D7BF764C3A8D4907D96CB16F8E3EC1E08EE875240D00D00D00D00D00D00D00D00D01A21F936E9295E40F827E4875FD44149F9546C025E7D83B02C2BF31CCDBABA5C4EC5C662D6F01571A9F6D678C841121DB7194405EC2245B5B769732D2E84352A90D9E1A3AA7315A99B756D52FCC6D91B4C2FBA604665CF47E21830F4F64A211B3C855F80B18D0049D20755176DD77BFC6BADB36DBBA5D7054BA9554E89F7E72D19FC9B5DF7D214ACEAB34D4FD797333CC68F1B1DEC2ED3C6629ED50766DF64634D471755A93439B884C8D1DA6FE78CD8C3FD4DB312401522125FEAFAA59B73E9BAAE62152292F973FAC5699356E95AAD8C2B32E561E5E59D0A94798DFEB187158C9925512EEADF04B88FBC3484ED176356255FCAEFDBFBC9C5BCAFAB40E689C763444DF755AC2B94C3765B18D3D2F9F7CF7E191ABB9DAF08DC6B0FFE5DF095316F1EE316614CCA874D2711B5F8DCB6C36EAF70E902FA0B8F1FE9B21C08B29B92F0AB6C36FC11071A1717DEABCD7926CA9D2B4DF5BADF5C76B74A474F174E72735C9DAFD373D1CE612738BCFBE8BB8B67B2D6CEA29E2E4B0D9912AD7AF6FEABB0EB1C26DAF923B35B3158C99C69D71A075A27E9E46C487BB28BCBD3652D6167B5A7DADCB9BDDB9CA7764D52544521C4A95389B5DEE6BD7B76AD09434A93DBE1382267B82F22D3F93181761468EEB14BDAB8A57AC8236784139FF003CC89494433371C65F7108F9A2A7DB2220EE4AA95B93B2FB6EDD776876C3A439545F8FA136FAEC7A34B76B9C5C57F6BBF9977E735F39EC7EF240F38D618EC48DD8353218443319D83CD7AEECC63BCE2B4E366FE14DDC8308D17CBF702D8A210AA26B4B7D74DC71B76CACF17F689EC98A4959D2F5595DCBBE8B0CEAE62AF18CCF78BE3076EC6EFAF1E7A6FB7D8951E5BF9E75F6397370E441408ED64C905B8796426813D046BB268B2E3EC9E88AD6B92CBB55B275DEA2E68CEFAB151A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A01A03890898901889818A8909221090926C4242BBA28AA2FAA680FCEAFB3BAB4BC6CF30BB2BA715AB06E0F55771764F51D6B3690D5A764E079519663D3D32734031C1D8D67436D5AE32E08FC668E2A8AEDF5C6EB7FE5B5EEDCDDB767860E89C44E31CCD65DDB4FDB5A5DBDFDEA70C27973CCBCB2138F067F4EE48D14B9111A8D98F425DBE2D70598CD03CE5BF5ECD741392B72E5E28EC650422E4AE9AF12524D7745FB76D9B964A583E51973C1E3CD2789C0E371DDB7743BB15F7ED515EFA42821DE469B615768115F64E625687E949222FC3258B6884DBF5D626CB244E312425C164DB7177707E3E5BA292AEAD637B6DAB9A5B97C44C429E7182EB1CB262E56DC9352F6ED4E79BE8A7F39F444569E8127B39FC85861B8B07B5700C47B0A180FC2691EDD6A988192B6D384A02CC863E2681C5E69B1B8BBAECBB256F5B2F6F4CAB5E3318B96B1F0A774735AF72757A9DAE535C9476F6D7F3247FD1225E49B3813BE336AFE3D8544C3223256E34D8C71CA342458EA3F1213AEA9BA2A8ABE89BAAAFAD3726DB56E6EDADB744EB83C95652AF73834B17FF9D8D2B562B173CDE531967C8C137F517192F8DF8BDCBED94BC83C77CCDEC7EDC85C06A438DE2F62F4679A966FB6FBACB0708548C78A89271F6AFD357DEDABFD8F6DDD73B5294D65146E79F9BC6B9536772CB77A6D56CB710F3E4A279E3CB04F9EDBC4CA2B2FE1625D8712A60C7A9915B43656D8ED78AA8D8C12AC6872860D24BB2C924DF4249CD9021F06524A088836289AE54F73FD58B2E77DEE62695894D35CDA8C538AC9D172B3FD89BAD56A99A473886BA628F459F843EC6595D15DA5E3F4CB493692BC7DECFB1ADA279D0508A58364EF58055C98086D344ADDCE578CDE5AAA6CA82166D2A2F12155E7F8BEE2DBD3BA95B7E30B29C553ACF2E55897D3F2159AF56DB9B32ECCBCB8C8EEBF5D4738D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D01E34BF700F4FBDD77E6262BDC14D09B895FE42F48C592F49471D45B0ED2F1E2EDB8D6329FE06220727AFF0027C6E1328BB2EF194915577E396F5CADDB8B9C294E6AD2D2D3AA593C2999B6CA6EE95CA32997CA7351D875FD943EDE73D69D88B4C60E5849C3709EFCC6089F3237AE3087DB857ED45907B3BF3BF8E3F5EC88822010324202882429D566E5FF00276F5ABBD18EA9EE69E38532A789C575967C6DCD375AF5CC4476B4D76D79CF42EAAF9F0F22A0A3B4A779C69DC86AA3640DBAA40E21336709C71632B629F0B631D237A8FB84FF00A8D539A22F36DFC9DADEB9EDEE5975BBCAFB929E49C36AEC93C5278DAFA537BFE3EE6D257D975AF6DDA9B8A55A98D3CE90DF39EFB232D89168E9305906EC07C7ADFB319A1912233C4B585D7FDC50D8CA6ABF5075F6218247A0BDB77203A841C187A118FBB826CB3727E37FB5A6F6ED6D34D43A4A74ED536C4A72A3191759FF0037FADAACF524D34E556AABCE3198C0CBC35AE41B69EAA495F36B6438DBFC5C6E693525975A106A12A23CCBCD1A2EFBAAF1709517EBE89AEDEE5BF23675B776955EAE98729AE1252FB2ED8DFD16DAB57DF8A96E6295CD3B9FF7A60339828553DA58B41CF6B197A337B3F6830FF46BD265A0106DC57AD6AD095400450DF4434E0A9BF5EDDFFF000A56369DB6B4D5CA5F9E292AF2CA3239AFB7FE59BD637521C75CB099E918F52C2F1EECB861D6B86CD10299D7F935AD5F22650E47C51DFE55BC81F1169E83219FA73123411415DD07D796F765B75D67FF009E57777DF3E9D549BDB6DCD5B7FF00934A576F3CE99796276AFF008ABEDE8FD4BE75E3F8CCE96DC6A6F20B069F81583329E56518CB31FAD83271BB1741A6863BA6F358457418BC88DE291931A38A444D92E1A7FE4F712F4694B5632DB6975CB178D659D16DD3B5A1BF5EA6E3A44F9CBA4D2288F5CDAD4A0D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D00D01D1B7E7EBA5A3E71E17D7775C4AF09190F8C9D918E67672440DC96B8165F21AEBECF6B1A00DF943712F6BEC257D38B557CB92715D52FFE977FDAFF003E6D2FB560BD9FD976F1C7D8F2E7D1F763120E3636202FD7E099B4EEBDBC3FB72F8FFD07D870BECAA254E569B32762B322745279D1241DA2F255E4BE95FF00D7E8DADA564EB95AF3A2AA6A560D397A5C38EE88F99AF7777DC8D2D7A7BE918F3A57B332E5EAB86B5D8BDF61360C38565D69936498EBAD93CE23E95711D72C6AD464B20E93315E88FF001DF902AA02FAA22892756EAB35C58944A6B1951D3CB97230DBD4D6ABDB9869FEB0E19F32BAF66FC6F71731105CBFAF2FA941B4268418C870907B31C2E7388F360C813D18EC913746D4FE2441DF6D4DD75BBBB2F6AE773B934F951E35F259F2C0AD8AEDADD5B8A126A39CB51C7F28C99D66EDDF6AE2B4590D450DCDA58CE86D499F322C392C52D249DCE9A495CDA39192B6054409709D4279C4065B06D54B8EC8BAF3F76FF8BFFABF8CADDDBADB36AD716B6DDD7397869ADD75D76492C70E6765B66FFCFDED562775D74CD22DA66EEC125DAE3C8ABD075176C76D67984649E3A3551E4565388DBE438B6798EF4064B17B1929F1A9312514AABBDECFC7615CF48E2160D65B451A2242B7C8ABA783D2C8959659664BF1B7B3FF0061B1B9B9162DC6AE49BF4B4D4E09A6BD35C6D7119DB4337F0B7ADDBF53B2D8958D1C3AC73A5352C799BA1E3FFE13BCD4B7CDF3DEE2ED5A3EA7E99A4BEC62CE6E37D0D03BDEE6FF0037BECD9816CE82B3B233CC6BA9B27EBFC3E8A4289B72A5558E5C6C23C440C3AAD872BEE5B6DDB936B8B1E34CAB30A716E1CCA9C2122B62D367A927B8953F0DC2A62A23ACB9A772FE2BFE2BBA7BAF6AF01CE3BFFAE7ABB26EF3C273F8FD9B8E1F5FDA7654CC1F02C8E96C23CEC3CA1DAE6578DDE7655DE32F57C59256B695F5D05EB28B1E545A6AE38B1D027FABBB4BB9D8DE6E6172CA9D32C25C084D5BA92D4964A2BC53AE39B3B67D412340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340630EEDEAFA6EEEE9BED6E9BC84BE3A4ED5EB9CD3AEED1FE02E1C58798E3B638FBD3591245DA4C219FF2B449B10380248A8A88BA03F3CEEB1EB8CCF0EF20BB0BC52EE588CF56F673986653D799337D8F23FE99447B38EB6FB991846518549EC07F198F966279E428832A8ADA013B0EE2098BCC89383F1A46CEEC6E6A4AF5B8DBD295B4595669131318B73D4B6EED3BAC4BD0EC58B6F1CE91559D5C4606E675DF865E64765D8E6FDD4EF8CFE45E1985DF62FD6E33A1D8F59B6D6579D7674C94B894C838AF5FE4B9562F9DC9ADAF69DFB97724B881498FB15A6524A6AB42287A6E6E277EAB25DF9DD55144E5FF00D7CBD330FA26656ED3D11B9092A2B719AE18FA79FAA1BED83B02E88FC3DF76F6CE4F0EB3BCBAFBB07C6DC0F1FB4AEC9A3F6EB9DEBD399177DCBBAA4347AB69F13E9DC6B0CF207A2E363F90C7B0970EEA6DFDE4B98C4711587109D7C9E8D9DBB9F215CDDF76A4E91A52B63B25B6DF3710B2934BB6F61DA95B6C42C65EA97D61425D2ADB3B74E9DFC3A7E3F7A831DC7F1B93D333FBBA2636334AB87C9EEC1CFBC8DA96A6594C976161691304ED9C8B26EB1A2B2993E738F9B9574703FBEA8E22218892213BFDC71EE73849E5C92C229CB2C46A7A742A59CA5FDDBE676574D4B4D8E54D75063D535943454F0D8AFA9A5A68116AEA6AEBE2B68D46835D5D05A621C2871DA1416DA6804005364444D49054F40340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340340521EFD07F5C81F71FA47FA93F4EB2FD2FE6FB3FD73F48F9EBBF57FB0E7FF00BFFD3BEE7ED3EE7E3FED7C9F0F3F5E1A8F4EACB57993EAD39E9F22AFA920680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680680FFFD9
WHERE szItemName = 'M16A2, 5.56x45mm'

--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Suppressor M4-2000 adapted',
--                               @G_att_class = 3,
--                               @G_sub_att = 11,
--                               @id_att_mount = 20
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Supressor (5.56 mm)',
--                               @G_att_class = 3,
--                               @G_sub_att = 10,
--                               @id_att_mount = 20
--EXECUTE @RC = dbo.NEW_ITEM_att @name = '762x51 Suppressor',
--                               @G_att_class = 3,
--                               @G_sub_att = 11,
--                               @id_att_mount = 29
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Silencer CYCLONE-K (7.62x51mm)',
--                               @G_att_class = 3,
--                               @G_sub_att = 10,
--                               @id_att_mount = 29
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'SV98 silencer',
--                               @G_att_class = 3,
--                               @G_sub_att = 11,
--                               @id_att_mount = 30
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'ump45_silencer',
--                               @G_att_class = 3,
--                               @G_sub_att = 10,
--                               @id_att_mount = 11
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'UZI Silencer',
--                               @G_att_class = 3,
--                               @G_sub_att = 11,
--                               @id_att_mount = 16
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'VZ82_silencer',
--                               @G_att_class = 3,
--                               @G_sub_att = 10,
--                               @id_att_mount = 4
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Tactical Bipod TL-BP16',
--                               @G_att_class = 4,
--                               @G_sub_att = 15,
--                               @id_att_mount = 40
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Tactical Bipod BM',
--                               @G_att_class = 4,
--                               @G_sub_att = 15,
--                               @id_att_mount = 39
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'AUG Integrated Bipod',
--                               @G_att_class = 4,
--                               @G_sub_att = 15,
--                               @id_att_mount = 32
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Barret bipod',
--                               @G_att_class = 4,
--                               @G_sub_att = 15,
--                               @id_att_mount = 32
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'FALO Integrated Bipod',
--                               @G_att_class = 4,
--                               @G_sub_att = 15,
--                               @id_att_mount = 32
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'G3SG1 bipod',
--                               @G_att_class = 4,
--                               @G_sub_att = 15,
--                               @id_att_mount = 32
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Galil bipod',
--                               @G_att_class = 4,
--                               @G_sub_att = 15,
--                               @id_att_mount = 32
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'HK Integrated Bipod',
--                               @G_att_class = 4,
--                               @G_sub_att = 15,
--                               @id_att_mount = 32
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'M60 Integrated Bipod',
--                               @G_att_class = 4,
--                               @G_sub_att = 15,
--                               @id_att_mount = 32
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Machinegun Bipod (PKM)',
--                               @G_att_class = 4,
--                               @G_sub_att = 15,
--                               @id_att_mount = 32
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Machinegun Bipod (RPD)',
--                               @G_att_class = 4,
--                               @G_sub_att = 15,
--                               @id_att_mount = 32
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Machinegun Bipod (RPK)',
--                               @G_att_class = 4,
--                               @G_sub_att = 15,
--                               @id_att_mount = 32
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'MG3 bipod',
--                               @G_att_class = 4,
--                               @G_sub_att = 15,
--                               @id_att_mount = 32
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Minimi_bipod',
--                               @G_att_class = 4,
--                               @G_sub_att = 15,
--                               @id_att_mount = 32
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'SIG bipod',
--                               @G_att_class = 4,
--                               @G_sub_att = 15,
--                               @id_att_mount = 32
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Sniper Bipod (DSR-1)',
--                               @G_att_class = 4,
--                               @G_sub_att = 15,
--                               @id_att_mount = 32
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'SVU bipod',
--                               @G_att_class = 4,
--                               @G_sub_att = 15,
--                               @id_att_mount = 32
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'G36 bipod',
--                               @G_att_class = 4,
--                               @G_sub_att = 15,
--                               @id_att_mount = 38
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'L86_Bipod',
--                               @G_att_class = 4,
--                               @G_sub_att = 15,
--                               @id_att_mount = 37
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'L96A1 bipod',
--                               @G_att_class = 4,
--                               @G_sub_att = 15,
--                               @id_att_mount = 36
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Scar_bipod',
--                               @G_att_class = 4,
--                               @G_sub_att = 15,
--                               @id_att_mount = 33
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Sniper Bipod Series 1A2',
--                               @G_att_class = 4,
--                               @G_sub_att = 15,
--                               @id_att_mount = 35
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Harris Bipod WR',
--                               @G_att_class = 4,
--                               @G_sub_att = 15,
--                               @id_att_mount = 33
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Tactical grip',
--                               @G_att_class = 4,
--                               @G_sub_att = 15,
--                               @id_att_mount = 33
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'SV98 bipod',
--                               @G_att_class = 4,
--                               @G_sub_att = 15,
--                               @id_att_mount = 38
----EXECUTE @RC = dbo.NEW_ITEM @name = 'L85A1 (5.56x45mm NATO)',
----                           @class_ofItem = 'gun',
----                           @Returns = @asd OUTPUT
----UPDATE ITEM
----SET Item_Image = 0xFFD8FFE000104A46494600010201004800480000FFE101364578696600004D4D002A000000080007011200030000000100010000011A00050000000100000062011B0005000000010000006A012800030000000100020000013100020000001C0000007201320002000000140000008E8769000400000001000000A4000000D0000AFC8000002710000AFC800000271041646F62652050686F746F73686F70204353332057696E646F777300323031303A30333A30352031393A33373A35360000000003A001000300000001FFFF0000A00200040000000100000320A003000400000001000002580000000000000006010300030000000100060000011A0005000000010000011E011B0005000000010000012601280003000000010002000002010004000000010000012E0202000400000001000000000000000000000048000000010000004800000001FFED061850686F746F73686F7020332E30003842494D04040000000000071C020000020000003842494D0425000000000010E8F15CF32FC118A1A27B67ADC564D5BA3842494D042F00000000004A784F010048000000480000000000000000000000D002000040020000000000000000000018030000640200000001C0030000B004000001000F27010037002E006A007000670000006A003842494D03ED000000000010004800000001000200480000000100023842494D042600000000000E000000000000000000003F8000003842494D040D0000000000040000001E3842494D04190000000000040000001E3842494D03F3000000000009000000000000000001003842494D040A00000000000100003842494D271000000000000A000100000000000000023842494D03F5000000000048002F66660001006C66660006000000000001002F6666000100A1999A0006000000000001003200000001005A00000006000000000001003500000001002D000000060000000000013842494D03F80000000000700000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800003842494D0408000000000010000000010000024000000240000000003842494D041E000000000004000000003842494D041A00000000033D00000006000000000000000000000258000003200000000400370031003000370000000100000000000000000000000000000000000000010000000000000000000003200000025800000000000000000000000000000000010000000000000000000000000000000000000010000000010000000000006E756C6C0000000200000006626F756E64734F626A6300000001000000000000526374310000000400000000546F70206C6F6E6700000000000000004C6566746C6F6E67000000000000000042746F6D6C6F6E670000025800000000526768746C6F6E670000032000000006736C69636573566C4C73000000014F626A6300000001000000000005736C6963650000001200000007736C69636549446C6F6E67000000000000000767726F757049446C6F6E6700000000000000066F726967696E656E756D0000000C45536C6963654F726967696E0000000D6175746F47656E6572617465640000000054797065656E756D0000000A45536C6963655479706500000000496D672000000006626F756E64734F626A6300000001000000000000526374310000000400000000546F70206C6F6E6700000000000000004C6566746C6F6E67000000000000000042746F6D6C6F6E670000025800000000526768746C6F6E67000003200000000375726C54455854000000010000000000006E756C6C54455854000000010000000000004D7367655445585400000001000000000006616C74546167544558540000000100000000000E63656C6C54657874497348544D4C626F6F6C010000000863656C6C546578745445585400000001000000000009686F727A416C69676E656E756D0000000F45536C696365486F727A416C69676E0000000764656661756C740000000976657274416C69676E656E756D0000000F45536C69636556657274416C69676E0000000764656661756C740000000B6267436F6C6F7254797065656E756D0000001145536C6963654247436F6C6F7254797065000000004E6F6E6500000009746F704F75747365746C6F6E67000000000000000A6C6566744F75747365746C6F6E67000000000000000C626F74746F6D4F75747365746C6F6E67000000000000000B72696768744F75747365746C6F6E6700000000003842494D042800000000000C000000013FF00000000000003842494D041100000000000101003842494D0414000000000004000000013842494D042100000000005500000001010000000F00410064006F00620065002000500068006F0074006F00730068006F00700000001300410064006F00620065002000500068006F0074006F00730068006F0070002000430053003300000001003842494D04060000000000070004000000010100FFE10E97687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F003C3F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F726520342E312D633033362034362E3237363732302C204D6F6E2046656220313920323030372032323A34303A30382020202020202020223E203C7264663A52444620786D6C6E733A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61626F75743D222220786D6C6E733A7861703D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C6E733A64633D22687474703A2F2F7075726C2E6F72672F64632F656C656D656E74732F312E312F2220786D6C6E733A70686F746F73686F703D22687474703A2F2F6E732E61646F62652E636F6D2F70686F746F73686F702F312E302F2220786D6C6E733A7861704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A746966663D22687474703A2F2F6E732E61646F62652E636F6D2F746966662F312E302F2220786D6C6E733A657869663D22687474703A2F2F6E732E61646F62652E636F6D2F657869662F312E302F22207861703A437265617465446174653D22323031302D30332D30355431393A32373A34302B30353A303022207861703A4D6F64696679446174653D22323031302D30332D30355431393A33373A35362B30353A303022207861703A4D65746164617461446174653D22323031302D30332D30355431393A33373A35362B30353A303022207861703A43726561746F72546F6F6C3D2241646F62652050686F746F73686F70204353332057696E646F7773222064633A666F726D61743D22696D6167652F6A706567222070686F746F73686F703A436F6C6F724D6F64653D2233222070686F746F73686F703A486973746F72793D2222207861704D4D3A496E7374616E636549443D22757569643A45433141333042303634323844463131393531304542423344444344303945312220746966663A4F7269656E746174696F6E3D22312220746966663A585265736F6C7574696F6E3D223732303030302F31303030302220746966663A595265736F6C7574696F6E3D223732303030302F31303030302220746966663A5265736F6C7574696F6E556E69743D22322220746966663A4E61746976654469676573743D223235362C3235372C3235382C3235392C3236322C3237342C3237372C3238342C3533302C3533312C3238322C3238332C3239362C3330312C3331382C3331392C3532392C3533322C3330362C3237302C3237312C3237322C3330352C3331352C33333433323B43464330383034414434324333313733453938413434433230343843324145372220657869663A506978656C5844696D656E73696F6E3D223830302220657869663A506978656C5944696D656E73696F6E3D223630302220657869663A436F6C6F7253706163653D222D312220657869663A4E61746976654469676573743D2233363836342C34303936302C34303936312C33373132312C33373132322C34303936322C34303936332C33373531302C34303936342C33363836372C33363836382C33333433342C33333433372C33343835302C33343835322C33343835352C33343835362C33373337372C33373337382C33373337392C33373338302C33373338312C33373338322C33373338332C33373338342C33373338352C33373338362C33373339362C34313438332C34313438342C34313438362C34313438372C34313438382C34313439322C34313439332C34313439352C34313732382C34313732392C34313733302C34313938352C34313938362C34313938372C34313938382C34313938392C34313939302C34313939312C34313939322C34313939332C34313939342C34313939352C34313939362C34323031362C302C322C342C352C362C372C382C392C31302C31312C31322C31332C31342C31352C31362C31372C31382C32302C32322C32332C32342C32352C32362C32372C32382C33303B4646453330443144434338364231453641463338433741393341304541354139222F3E203C2F7264663A5244463E203C2F783A786D706D6574613E2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020203C3F787061636B657420656E643D2277223F3EFFEE000E41646F626500640000000001FFDB0084000604040405040605050609060506090B080606080B0C0A0A0B0A0A0C100C0C0C0C0C0C100C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010707070D0C0D18101018140E0E0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080258032003011100021101031101FFDD00040064FFC401A20000000701010101010000000000000000040503020601000708090A0B0100020203010101010100000000000000010002030405060708090A0B1000020103030204020607030402060273010203110400052112314151061361227181143291A10715B14223C152D1E1331662F0247282F12543345392A2B26373C235442793A3B33617546474C3D2E2082683090A181984944546A4B456D355281AF2E3F3C4D4E4F465758595A5B5C5D5E5F566768696A6B6C6D6E6F637475767778797A7B7C7D7E7F738485868788898A8B8C8D8E8F82939495969798999A9B9C9D9E9F92A3A4A5A6A7A8A9AAABACADAEAFA110002020102030505040506040803036D0100021103042112314105511361220671819132A1B1F014C1D1E1234215526272F1332434438216925325A263B2C20773D235E2448317549308090A18192636451A2764745537F2A3B3C32829D3E3F38494A4B4C4D4E4F465758595A5B5C5D5E5F5465666768696A6B6C6D6E6F6475767778797A7B7C7D7E7F738485868788898A8B8C8D8E8F839495969798999A9B9C9D9E9F92A3A4A5A6A7A8A9AAABACADAEAFAFFDA000C03010002110311003F00F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD0F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD1F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD2F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD3F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD4F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD5F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD6F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD7F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD0F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD1F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD2F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD3F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD4F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD5F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD6F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD7F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD0F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD1F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB156B1453B15A6F14BB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFFD2F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AC57F32B5BD4745F25EA3A8E9CDE9DEC5E92452515B87AD32C5CB8B7FAF8ABC47FE56CF9F79A336AD280BF690476FC4FFC92C8DB2A4DB40FCEAF3345A8C4751B817B655559A031C6B271FF002197D3F8FF00E327FD7CC6D69EFD14892C6B244432380CAC3BAE498AA62AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC556B3AA29662028FB44E2AC62EBF343F2E2D2E24B6BAF33E9704D17F791C9770A91F7B62C7893FB1BFB1BFB64BAB2B88EEAD65158E785D648CFF00AACB8AF122B164EC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55FFFD3F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AC1FF398AFF806F158543DC59AFF00D3DC78ABC0E7B54FF6595D365A5C225F5811F694E34B6FA7BF2E750FAEF9434FDEAD6E9F573F28BE15FF0084E396312C9C62C5D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB1576D82916EDB1A5B6B0ADBB15B68B28EA4614DA8BDE59C668F3C694FE66518ADA126F31F97A05769B53B48826EE5A78D78FFADF160B45202E7F30BC876A81EE3CC5A6C6AC78A93770EE7FE0B1B5A404BF9BDF9610B147F3469DCD579B2A5C46F45FF618A5053FE7AFE53431963E63B79155F87284492FC5FEC15F1578AFE697FCE45798752B992C3C95769A5E961B81D4486FACCFF12FC4BF03FD5E1FB5FF0016FC5FEEBC5785E57AA79BF5FBBB3FA95D6B17B7F131E77125C5C4D27AB27ED7C2EDF63E2FDD262BC293DB432CD27A7095E5FB31F255FF0089E066594791BCFBE66F21EB7F59D3E468D58FFA769D37258675FF008B57F9FF00DF53FF00791FFC62F523916A21F66F937CD1A6F9A7CBB63AEE9C596DEF90B189FEDC722B719636FF002E37564FF63FBBF830A84FF164EC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AFFFD4F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AF3CFCF93763F2D351FAA7FBD3EA5B7A3FEB7AEB8ABE5946F3E4A05225E5F6B025A921F3DAB73FABAF2FF3FF002B157D11FF0038E179AD4BA16AB06AD0FA73ADCA4AAC3EC9578953FE6561497B10C58BB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC554E49238A33248C111055989A28C55E3FE65FF009C92F2AE9F7771069504BAB4368ADF5ABE43E9DBAC9B7A51A37F792B48EDC3E04FD993FDF7262AF34D73FE7257F30353B87FD0D1DBE9568C3F76A53D7987F94CCFE9A7FC93C55259FF0039FF003726E05FCC261E3BB714B48EBFF0BFE7CB1E25E14BE7FCD7FCCE756F53CDD2AFC1C578CB0C6C17FD82FDBC7897850971F989E78949F53CE177CBE1F892F245AFFC8AC57852F7F326B921264F335ECBF6B8D6EAF64FF81F8B15E141C8F3DC47C26D46F275A7C4AFF5A97E1FE5F8FF00D5C16BC2B5B4F8269CCE56E66957FDDA6DD99BFE1DB1B5E15D0E85010E21B0BA7E47E2E1146B5FF5BE2C169A6AE6D6CEC881756F796EBFB2DC236A7FB1E58DAD3934C5BAFF008E6DE4575FF1586F4E6FF817C6D3480BCB6BCB59385C44F1BAFC3C5C71C6D69065D88DF1B4DA95C337A640346FD9638DADA6BA7DA456F02564FF00499519EDD633CBE24938716FE4F538B3FF00B34C28445DDDFD72DC19082D147CA36FDA1C1B832FFC373FF618A69EFF00FF003897AD4F2D9F987463FDC5BBDB5EC5BFED5CAC913FFC988F0B507D0B8B2762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFFD5F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AC13F39D1A4F22CE83F6AE2DBBF1FF0076AE2AF993CCDE675D3AE2DEC638655F5C3719E3E3BB237065FB5FEEB7FEF70252C93CEF79EB695A74D642C1BD3FF7AE67E2D78B72DCA2695A56E09E9A7C113FEEE3FF007EFF00BAF157D23F913248D69A9896368E5468D648DC7164653206565FD87C292F5818B1762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55C715785FFCE41F9B6FE736FE4CD32468CDD069751914F58BFDF6DFE47C5FBCFF00571641E07E69B05D3AD22B4B5569B84BE92C6839492DD4CAACCDC7FD468922FF0067910A5ED5E54FF9C59B23A2C1379835167D4AE155E68A34E51C5CB8FEED7E2F8BFD7C9316470FFCE30F916335796573FEAC6B8AA361FF009C70FCBC44A18E666FDA6AAAFF00C6B8AA610FE42FE5C44FC8594847F2993E1C551F07E4DFE5FC2A42E980AB7EC938AA361FCB2F2342004D221F84F2DF961B546A7927CA68A426976E15BED2F1A838DAAFB6F267952D548B6D26D21A8A7EEE245C6D58AF9AFF00257CA9AF40CB11934D9D886F56111C9FF0B2AC9F6F1B578A79A7FE718FCE36A7D4B06B4D5ADD4F2E71AB5B5D2AFF0092A9F03BFF00CF3C8F0B2B605AB794BCFF00E5FE709F52E6D53E1F42E93D78FF00E1FEC7FCF3C7816D8F5CEA1A513C352D2A6B297F6A7B36E51FFC8A97FEAA60A5B536D060D454A68F7D0DF35392C3CBD2B8FF009152FA7FF24F1A5B425C6A37D6517D4B51D3E44950F2E4578D5BEC72E58AA8C177772BBCD27C1CC71551D97157D0DFF38885BF4E7994507136B69F157FE2C9B24C5F4E62AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AFF00FFD6F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AC1BF39BFE505B86A5693407FE4A2E2AF91FCEBE4DB992F06A9A71959DB97A91C6DC5873FB5C7FE327C581297DA68FAE5EEB76775716F334360234B78AE9A468E254FB3C79B737F4DD99E34F53D3FF009E58ABEABFC8C79DE0D564B993D4BA9DE39EE188E2C6499A46766FF5DB0A4BD5862C5D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB1571C55E01F9D5666DFCE9EBAEDF5AB647E5FF00049FF1AE2C83CB97D01E7CF2E49711896DFF004BE9BEB291FEFE93D2FF0089C4B910A5F686498BB15762AEC55D8ABB05ABB1B57636AEC6D5D4C2A84BED36C2FA331DDC11CE94A51D43530DAB02F32FE45F933590C52136B237F28E4B815E29E7DFF9C59D66D6096F74402F9225E5E8C7FDF7FB15FDAFF618ABC420D7B5DD1AE0DADC1FAED8A3709ACEE0557FD8FEDA3FFC63C8B24CAED2CE48E2BDB127EA571C9A353F691BF695BFE31E2AF75FF9C4811FE9FF003191F6BEA769FF0003EA4D9262FA6F15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD7F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AF38FCFEBD4B1FCB4BDBA756758A7B63C50F1FF76AE2AF9747E6968AABC0DBCDF7AE4592FB4FCD0D20C9F0C0C7E617157D01FF0038E5AF5CEB763ADDE491C4912CD0C517A5DFE167F8BFE0B0852F66ED858BB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55E3FF9FF00674FD0F7E07C5FBD81BFE1597FE36C89641F3FF9B8CB143F5B8852E208FD78587FBF2DA48D97FE24D8859BED4D32F61BFD36D2FA021A1BA8A39A2606A0ABAF25C93108CC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AF8A3F3EED3471F999AE9B5400348AD253FDFDE9AFABFF000FCB22C981588886832A0FB3F5BFDCFF00C8BF8BFE35C55EF7FF00388FB6BDE6515FF8F4B4F87FE7A4D9262FA6715762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFFD0F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AF2AFF009C969163FCA9BC627E1FAD5A2B2D78D55A75F87157C6F7126951923EA6397CFF00E35C8B246C3FA1962E11D8832F0576F50B2B71FE65FD8E18ABE9AFF9C59BA825D275C4820FABC514D0714E5CBEDAB610A5EEDDB0B1762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABCFBF3BACBD7F2519FF00E58AE6294FC9B943FF00337225907CD9AFC2B35A475FE764E9FEFE568BFE26CB8859BE97FC8DD55752FCA8F2DCA0D4DBDA2D937FAD66CD6EDFF26F24C433DC55D8ABB15762AEC55D8ABB15762AEC55D8ABB1541EA7A841A769B777F39A416913CD27FAA8BCB157C07E6FD5E7D4753BFD46762F71752C9348DFE53B73C8B242C89E85ADBD993F1409CA6FF8C8FF00137FCD18ABDDBFE711569AF799775FF792D3B7C5FDE4D9262FA7315762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFFD1F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AF3FFCF3F2D6ADE62FCB6D4F4ED2203737FCE19A3B75FB527A52AB32AFF97C57157C3BAC2368DAD4D69A94063BEB57F4AE2CA5F85837ED2B604A22FEFEC61BA824DB8B45FB9643F088F8AA2FC3FCFF006BD5FF00B09EA2ACA3F2DBCF9AD699E60B0B4D27539AC6DEFEF6D12E9633F0C8BEBAAF165FF51993FD9E2125F774B3451A8323AA03DD8D30B158D79683ED4F18F9B2E3B2BBEB967CB8FAF1D7F9792E34AD8BAB62682643FEC9706CAB4DE5A6DFBF8F7DBED2E4B85577D6AD7FDFC9FF0004B8295BFACDBD69EAA57F9792E34AE1736E7A4A87FD92E34AEFAC434AFA894F1E431A56FEB1053FBC5FBF052B7EB45FCEBF78C34AEF5A2FE65FBF07004BBD68BF9D7EF18D21DEB45FCEBF78C55DEAC7FCCBF7E3C2AD86046C41C2ABB05ABB0ABB15762AEC55D8ABB15762AEC55D8ABB15762AC7FCF961F5EF26EB36E4558DAC8E807F344BEAAFFC3AE2AF92B55B8FF71D29EAD171978FFC61656FF8D72003325937E4D7E69DAF90B54BCD1359247973519DA786EC066FABDC7D96E5FF0014C88ABFF18E45FF008B24923982C087D25079DBCA73C093C3AADB3C4FBAB09177C6D14BC79BFCB4C9CD3508597F983AE36B491F9A3F33B45D26C524B1962BCB994D238C48AAA07F336064F19F377FCE4BF9A6CD9E1D352D16E1519D94AFA9E9C7FEFC93E2FF0084C557F93FFE72675FB3F3041A7F9EED922B3BC7556B98E06B66B667E3C5A5595A4F83E2E7FEEBF4FF00E2CC55F445B6BBA2DD461EDEF61991872564756AAE2AADFA534CE25FEB51715FB4DC970A18DF9D3F33FCA1E52D2D2FB54BE558E72C96E62569EB271E5FEEA0F8ABC9BCABFF00394734FA9E9D1F9A6C2DF4DD32F558497B1099B849CB8A7C3FBCE4927FC93C55F4025ED9B2A913A7C4390AB2F4C557FD6201FEED4DBFCA18ABC53F3FFF0034749B4D026F2E69F7026BDBC2AB74F11E4A91A37C49FEBBFC38ABE529A68E5BC40F46557F566FF61FB3FF001A6064A7737AED2C9753AB70793E2900F87962AFA1BFE71047FB96F329DCFF00A359716FD9FB536162FA6F15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD2F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55F0C7E697932C750FCC5F31DECB3C88D36A172CC802FFBF197FE35C096323F2EB4C03FDE998B53C17ED62AC83CA1E58B4D3359D3A68E63CE2BB81F93AAB53848B8C125ED7F9CFE7CB9B8F3745E5A80F0874D0B71232165693D68D7ED7F909C9B2190D3179C6B3E76D3F48923FD237456697ECC60349271FE6F83EC6500154BFF00E56BF970494FAE4BCBF9BD293FE69CB444AA71A379D2C758E674EBC333C5FDE2D1A3907F95C5FF00E27951042A66352BA1BF23CBE7913908563973F9B1A0D9CF2406F257743C1BD24665E5FE4B65B4554C7E71E823E0FACDC8DBE2FDDC9F671A2AC92D7CC72DDDAA5C5ADC992DE51C964476DF2BE22A87D57CE7FA2AD0DD5F5E3C30D78AEECCC5BF9557F6DFE1C6CAA45FF2BAB4A0052EAE97FD84996709545E99F9B1637F7096506A170934BF0C71C9EA46AFFE4F2FB18D154EDFCC5AA8013EB3371F676CA84C9548756FCD8834BBB367717F72D70895916232353FC96F8BEDE5A012A81FF95DF68457EBB7AAD4FB34937FF86C91C642A7DA57E605F6A76BF58B1D4E7921AF16A4922B06FF00297F632A2485653E52FCDCBFF2D5DCB3EA724979652A7068A491B69392F16E4FEA7F95FF000796619DABD07CBDFF003905E4BD4EEC5ADEB1D359CD219A56568DBDB90FB1FECF324C55E976F7F63750C735BDC473452FF76E8CAC0E455138ABB15762AEC55D8ABB15762AC6BCFDE75B1F26F96AEB5EBC825B986DB8D6DE00BEA3736E3FB58ABCA2F3FE72F7C956A53D6D27508D9E359442DE8FA815FF0099397F27C7F6F15437FD0E7F90096034AD43E13F09221DFF00E4A62A83D4BFE7337C9F244D1D9E8B792070E927AC638FE1E9C978B49FF0FE9E2AF9DB51FCC132AC896F18F49F92F172DCB8FF00C0E242DB2B458AF2C2DAE3ED89A089DBFD9AAE409660213F462444FA134B6E1BED2C32346A70DB1A58F6778092351BAFF918D8DAD21A7B7D4C8286FEE4AB72F87D46C2A8786CE258A586AC8B2A709A4FDA2B8AA26E16236A9190B35C28549270CCDCFF00CAE2EBF03FD9FF007662A84B66D56D2DCC76F7B3C312FD9843FEEC7FB1C5550DEEBC4703A84A51BE2E3F0F1C169A5AD77AE4A0892FA4746FE7E2D8DAD211A1B959010FF12FC5CB8AE36B48BFD2BE6509B6A12F2F7E38DAD39F5CF3418F81D4E5E3FB58DAD25F7536AB712739EF19DBF9A98DAD284368B103F17DAFB4C70AA62AF6C639CC843F3767561C7F6FED2B2FFC17FBF3157BC7FCE1F14FD2BE680BB05B7B21C47D91F14D858BE9CAE2AD557C7157721E23157721E23156EB8ABAB8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55FFD3F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15760568B28EA40C34AB7D58BF997EFC16AEF523FE61F7E36AEF562FE65FBF1B577AD17F3AFDF8DABBD68BF9D7EFC6D5DEB447F6D7EFC6D57D30DA29E1BE61FF9CA2D2B4BD56FEC2DFCBF797E2C266B769E36E2A6446E2DFB38DAD3C5355D6D35DD52F75810C907D7EE67B8F4243CA48F9C8DF0B6478A99DA197D7A5444E7F97E16C8F1ADA9DE5CDCDBDA4F308D84B146CEB55FE45F87FD7C1C5BA1190F9C35CF35F9B3EBDACF2F5A0B6FABC2CE9E9C8634939AF2FE7F4F93273C19F70A984BFE20D3B517BED0AD74ABB96E11527FD2D6CB72C9C3ECFA7CFECFF9FF003E43148056FF00C45F99ACDF1E97E58E3F1372FD1D0FFCD3CF2D94C2A1B46D27576D6AEF5CD6059C37B3C6B047069F12C1085E5CD999517873F857FBBCAB2E4056D3E74E4083FB43E2CAA202DA4B672F9BF47B5365A4E97E5E9AD53FB996EACFD493FD973F53E3CC9E309B55D7AF3CEDE60D2AEB4BD434FF002FD9C370178DCD8D9AC73A37F92DC79A63C616D5B42D25748D22DEC39FAC621FBC969C7948EDCD9B8FFB2CC794908D84C10DFDB5ECB656DA87D564E71DB5E2B49096E2C9F12F2FF2B18CE9590A79DD14129E4DF2EAB91FF2CCCCBCBFD5CBBC657986A7E56D4756F3C3F992EFEA7656A64575B1B08F8463D1FEE95578F05FB2B8F8CAC99FAE62A6D13A2EAB068C9388342D26FDE793D7927BEB769662DFEB72FB197C3252DA49F9857BE66F36E98FA64567A36976AD2ACCCB676DE831E1FCCDC5E47CB63942DA55E54F2DCBA0D9C91CD389E69DD598A0E2ABC17ECFFC3653968ADA33589AD62B68E7BBB71756B04F14B35B1FB322A48AECADFF0034638A48B67165FF00393BE538F4A6B1BBF2486E31FA71C70A5B2C2EBC78FC6AEDF07C1FB1FBCCCC0B6F17D3FCFF00E7AB0D62F25D22EA7D3349BBB89675D3FD4E70C51BB37155FF008C69F07FB1C4B1A659A4FE74FE66A6A715A26BD2C6938656978ACADF02F2F879FA9FCB912B4C89FF0039BF3438701E6296BFCFE85BF2FF00935852E7FCEBFCD2F829AF30E26ADFB8B7DFFE17155A3F3ABF350316FD3EF4FE536F0FFCD391E265C2A8BF9DFF009A83FE97B5F9DBC3FF0034E3C4BC2DFF00CAF1FCD4200FD36BC97F6BEAD0FF00CD38F12F0AF6FCF3FCD20053584F84FC5FE8D1EF8F12F0A5BAE7E6AFE616B768D677FA9235BBF1E51AC3C6AC9F1237DAFE7C55806ADA147A9DDBDDDE3FA97127DA93E2DFE1E3FCD8AA01FC93A79E8683FD97FCD58F12F0A9BF91ED0F4948FA31E25E159FE04B63D2E1BEEC78978558794EE638D638F509820FB2A199547FB1C789785BFF000BEA14A0D4E71FECDB0A1AFF000D6A74DF559FFE46362AB0F97B58E9FA4E7FF836C5563E81AD15FF008E9CADFE4F36C556B687AE0DCEA329FF0066D8AB868DAF576D465FA5DB155ADA56B8A6A3509397FAD8AB5FA3FCC7B71BF73F4E2ABDEC3CC35FF8E831DB8E2AD7D4FCC7CEBF5F3D796E1715582CBCC6E6BF5DA9FB5F6571577E8DF30EFF00E942BFEAAE2AA9A7E93A9C97B025F4C64B767546443E9FDBFF0063809A57A55EFE55E9B6F6520803BBCA3F7777CDB946DFEAFD87CACE5A56FCAFE5ED57CB924A6D35199D2E38FD6232AAAAEA9CBF93FD6C7C44322FD29AC7795FE2F7C7C4570D5759005269178FD9F89B21C6ABFF004C6B5403D793E1FF0029B1E3577E9CD794D7EB322B2FF94D8F8ABC2DFF008935FAD3EB32F1FF0059B1F15785B5F32F996941732FFC136D83F30578578F34F9980A0BC97A71FB4D8FE60AF0BBFC5DE68AF2FAECDFF04D92F19785517CE7E6C1D2F65EBCBED63E32F0AF5F3B79BC7FC7F4BF7E1F195B5F3EF9CD4505FCDFF058F8CAA9FF002B0FCE9D3F484EBFEC9B1F112DFF00CAC7F3B01FF1D09BEFC7C4556FF959DE76FF0096F97FE09B27E223851FA77E6FF9CAD5C19641709FB4B20E5F0E3E22F0AAF98BFE726B51B1F5AD63D102CAF12B5B5E093E10DFB7C97FC8CB2257858227FCE4D79E798856E9D9FAED0C2CC7FE171915E14E61FF009CA1F3B45101259C2ED5FEF248BFE35468F05A29915AFF00CE49F989A14924D1EDA4E5F1F20D246BC7FE4A647C45A4CACBFE7251E4B8892E741E30B1FDF490DC729157FC8568F837FB3923C7C44C9ED1A5EA56BA9E9F6FA859BFA96B748B2C2D4A555B25C4C43FFFD4F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15416B1A945A6695757F2FD8B589A53EFC46092BC0350F386AB7F712DC5C4C5E5735FF247F92ABFC998D2CD4A823AFDE6C0D1BE8C8F88AA6DE62BEE892538F87C34C7C4568F9AB57E3E98BB9787F28765C7C45537F356B0680DD4DC57F679B7FCD58F88AA7FE28D5FAFD61F97CF1F1154DFCCFABB5697522FC9995BFD8E3E22AE1E77F3600E89ABDDFC438FF7F26DFF000D92F113490EA33EA57D71EBCF7D7524ABC7948F3C9BF05F8797C58F88B4907922F2FB507D4EEB51984F76F2C6D249556F89D797EC61CA690CB1517B0CA2335770EFB1C265BA5E7A9A9DF69DE72D527B8B79A5B7E5C2DEBCB75E2BF679FEC7C3994770A9D379F2D980AD84EBC4715FEEFECFDBCAFF002E42AA5BF9D22946D6170CD4E4AA0C7FF3563E015575F357EEFF00E39975CBF9408F8FFC4B1FCA9636B9FCCF20FF00A55DD16F947C7FE258FE5C85B529BCEB6B0B0492C6E51BF6AA23FF009AB078052A6FE7CD3C1DACAE8FD11FFCD58F80554DFF003074D076B3B90BFCC7D35FF8DB25E1A511A479BB4ED52F5ECA18A58E6E0CEAD205E27FE01B2A9C2953CC852B44EF8D2A43AAF9BEC74EBF92CA68267740ADEA27A7C4F35E7FB6D9746168410F3CE987ADB5C8FF002A91FF00CD5923895AFF001DE914DE0B95DFF963FF009AB23F96215C9E76D32488B8B7BAE54FEEC246DFF3331F00AA1757F305A5EE9F2DB436F70AF28F859D1557FD97C596431522D8ABDACE3F64D3F6B2FE4B6A7C5ABC712CA915A6AFA7AA5BBEFC7F79FF0026DB22569917356E8705A69B6C6D6939F28792F5CF376AC74AD1BD15BBF49A5F52E99963454E29C9B82C8FFB4B8F0AF1311F3E4DADF933CD577E5CBD367757965E9FAF35B348D19678D5F8FC5C3E28F970C7857891DA6DCFD72C20BAA70F55397107953234BC48FD7344F3369DE4F97CDA2DE0FD06B2470A3C92FEF2499D99595553FDF7C17FE0B1A5E2625A4F9BDAEAEE2827B654139E0AF1B72A37F94B925651C71547685A2DE6B7AC59E936601B9BD91638797D9FF5B1E15E2671E7EFC91D63CA1E53D47CC53EA76B731E9E9CFD00245693E2FB2BFE5E3C2BC4F22F266AB7BE6AF33D8681696F1C3717ACC91BC927C3CB8B32FECE3C2BC49B98E87F97F9B1E15E27A59FC8CD6C7929FCCD25FDB47C6CDEF7EA9272FB3C79AFC7FE5E143C4346F344DAB6B167A6C36AA92DECF1C0AC64F8473655E5F6715667E68F2E5F79735DBBD1EF8A3DC5A3519E33542BC55D597FD832E2ACA3CA7F93BADF993CAF79E6082E2082DEDF9FA31CA5834BE92F26F8BF631578B4BE7511CCD1C9647E03465127ED7FC0E2A9A68BAB26AB14863431C9115F5109E5F6FECFC5FEC7154448FE9DCA42E8C8CFF0C6D4F87155EC943D315752BD3156DED2E648A492115741CB8E2A948BBBC53FDC9F871554FAF5D53680E2A88B2BCBA377695808459E2E5FF04B9092BDFA64FF004600F8662CA2A977A6BE0302167A4B5E83155FE8AFF28C0AEF457B81F762AB0C2B5FB23EEC1C2BC4B4C31F4A0C785789BF4E3A74032561789B30A6D551CB1B0BC4D1B68BF946469789B5822A7D918D2F12EFAB45FCA30D2BBEAC9FCA31A56FEA7177518DA5CD6717FBEC636AB059C43F646368E25C6CE2A7D91CB1B5E260FE7DB68D628885F8A8CABFF0B9930933B619E58B0522F6725C5D2C91A2D07C3C5D5B97C5FF00039692B69E6A6A86C786CCE9929C58D27E36B1B70B4FEEA3CC3995A548215660401F0E4205127D49F96517A5E45D1D77F8E0F577FF002D8BFF00C6D99901B310FF00FFD5977FCE42FE696BBE5ED634CD1345BA6B3AC4D777D3C678C855999224E5FCBF0BBFFC06161093CFB46FF9C97F3859D918A2E5751ABB2FD62E11A56E5FEB636DFC368E1FF3951E6F34012D437ED553FE6EC0D6895FF9CA3F379E34B6B62BFB4DC7FE6EC5561FF9CAAF331B910FA16C8D4F89427FCDD8AB1EBCFF009C90F3C5C6AB71711DEBDB2123D1B6882941CBFC975FE45FF87C551363FF00391BE708EE164BBBC91E2057F77F0EFF001629A7A3C1FF003953A2711EA698480ABC9D67EADFB5F0FA7F0E2B4AA3FE72A7CBDFB7A5B53DAE3FEBDE285C3FE72A7CB95A3E98EBFF003DFF00EBD62AA57BFF003949A30B395ECF4FA4EB4F4FD493903FCDF0AAA7FC9CC36AC5F4DFF9C9ED5DEF51EFDC4568BC7D48E18E32C7FC95E5FF005531B57A927FCE427E5CB2AFFA54A5980AF14F8797ED2FDAC0AA9FF4301F971BFF00A54DD76FDDF5F7FB58AB63F3FF00F2E4D3FD266F8BB705FF009AB156CFE7EFE5C803FD2E52CDDB874FF86C55BFF95F9F9755A0BA948F1E0BFF003562AD2FE7E7E5E9247D626A0FDAE0BFF3562AB7FE57EFE5ED4D279C8A7C2DC177FF0027ED62AE6FCFFF00CBF01A934E4AFD9F8177FF0086C558EF9AFF0039FCB5AEE9171A4597213DD7C31D4F5E0DCB2AC8AC2A1890C236DF31D56BC51D3715C8AA8B42B5FE98AA998529D3155330C7E18AA9B5BA62953F4549E98AB5E8C7D298ABBEAF1F862AA161A669F60AE9656F1DB239F8963555AE2A8A03155933FA71973FB230854AEE7CB7A7DE7EF2E95CCCFF001351D95433FF002FC5F064B8E9541BC95A0D00F4E4F8BC246E4701CE50A1A9F97FCA5A55B1BFBC696D6389B6759645E4DFEC3270992A824FF0C4A2371FA45D1C725A35C71E3F6B2627242EF47CB25A95D47A71FB571F6724272555B0D07CA5AD4725D5A5D5C5CF13C246FAC49C8327F373FB190964304B5AAF967C9DA65B7AFA8DD4D6B131F86B7126EDFE4FF3E31C866AC53555F20CF65C34EBE9A6BA675F4E291E4DFE2FF2F2DB3680DF942DACF4EF32D9A1FDD4B3F24E27BAF16FF8DF8E0CE4D320F562A87312956708FA634AF37F3D68F14DE6079B8BBB3411B35396CBF12FFC6B99782469087B58BF2FC5AC6971ABCE93145F5955E4D9B8FC586CDAA7F0F917CB7796C93C17B73342FF001C7224ECCA729394AA1E7F2E79574A9E2824D52EA092E3934712BB48CFC3FC94F8F271912AB8597967D415D43513B715522E3FE69C1E2495D243E4E881F5F53BB879714F5257B855FF00827C78E4A8CFF01F969E24FDEDC3721C96412C9BFF00C3647C6296ED7C93A0C37F6EC04DCA8DF0BCD237ECFF00978F8A4AA3B54F2D69D65632DCC1CF9A0F86ADCBF6B0C26A900E95A7E196966115617FA969D31B8D3AF26B2B86464696DDDA36E2FF00697927EC6162916A5E57B0D42579EE6491AE1CF2925057D42DFE562A995B5B416B0ADBC2BC21885157025BD4209351B14B0BAB899EC51DA58ED0BF28448FFB4ABF639E2A9669FE53D2EC2F3EB91F3775F8A3E67E14C284DB8E2AA96D797567731DD5A4F25B5D4479433C278C88DFCCAD812ABE61D6FCCBE63B5169ACEB77BA85AA9E5E8CF2725C558F5B7956CADEFA1BDB59A6B69A17E51B40DC1B97FAF8509C3F1E9BFF00C4B154C2FF00CCDE6FBDD11B429F5DBC3A43A2C6D665FE1F4D3ECAFF003F0C55881F27D82C8B34134904B195292C7B3064FE5C5591DE5CDE5E4EF777D7125E5DCA55A6B994F291DB8FDA66C55109E68F36DBE912E8763AC4F67A4DC0659AD23E3C4F3FB7FE5E2AC29BC916343FBE6E5FEAE2A9AE8DA35BE970BC71559E52A6495FBF0FB38AA6772B04C13E121938B75FDA4FFAEB1542C88B5DB1552656A7F6E2A8BB7BA6B504A286E438EF8AA1DF54507FB956DF14222DAFE363FDCAE2AA935C2492DA429188B9DC45C9BFE7A2E097257B44EBFBA198D254B36C821780A7156F8F618AB953DF1558C3BE2AA6C3BE2AE55FF82C8AAF0BB75C55BE3B6495D45C556E2AB80C555151698AAE54E5D3ED62AA9F567FF6B1B5735B37135C6D580F9FD3F7D043D4F0E4DFECFF00EB9CB710A64C56CD65B394C909F85FE19A323E17CBE4ADDCBF28C923E16FD9031645964B171B4B7DA9FBB8FF00E23944D823B44D3E7BFBCB6B1807EFAEA58E18FF00D676E3831B193EB7B4B58AD6D60B684718A0458A31E0A8BC57326943FFD601FF00393763712FE605CDC3FF00BCE967022B31E9FEAFFC13612C211625A4D9EAF636296F0AC6F68A7D5F4248D6457FF5BF9D32A25BF893B3ACB19848FE53F2C3AA9666E7A446CC79FF003372FF0075F2C95B1A43DE5F24EC09F2A79693E0E3FBBD35636E5FCDCBD5C6D698ADCF9691AEAE2FE48E385DDD9D9615F4E34E6DF6557F6123C6D69049A0C6DA818529C95D97FE157FE6AC6D690FAA692905DDB41BFEF4B636CA9183CB6BD9BED7C4B8DAD39BCB4A362FF7E36C69DFE1A5A53910B8DAD36BA1C51CA9197E5CC3371C8DAD21758D2A0B7B78B73C9E555DB1B5A455E6936B25D4925A73B6B573CA182493D5645FE5E5C63E7E9FFC63C95AD2D5D11773F58C6D69DFA1D69FEF4E36B4E6D160237BA38DAD2A0D26D36FF493F49C6D69BFD176753FE9A57E9C6D69A1A6D88A8FAE9FBF1B5A5A34DD340DEFCAAFD9C6D6919A0DAD9C3AFD9BDBDD7ACD593929FF008C6D90C8C5EB107F7436CC755CFDF22AA6F8AA9F2A7FAB8AAC6C554C8C52A646F8AAC65A62AEE3B62AD7DD8AB7C7DB155B0C2D777A9026ECAEABFEC9F0E3DD530D6340D5F48BA8C5DFA6F6F708CD6ED186564E1C792CBCFF00D6FDD3FF00AF929C1500A391E7FB3F65720484251E6AF2ADB7982D22B5B8919045273564FF0080FF008DB250C802B0F93F26A3E64C5A8CAAB4F86A8ADFF1B6640D4C50D47F93AAAE7D4D425917FC9555FF008DB2435315649E4BF2637979AF4FAA644B82BE9A782A2FED7FB366CA32E4124A33CCBE58B3D6840D3C426FABF2E3192CBF6F8FFCD38E2C822AC5AFFF002B34E9B8986078187ECC6FD7FE0F2E9E500A025D1F9075ED275BB3BFD26D84A96BF19F52555776F8B19E514C83355BBF37FA68F2450ABB7DA8C32B53FE1728A55B2DF79C563062861937E2CBC955B8FF0032FC38D2A49ACF94EE75AD55350D456490A47E92C40AAAF1F8BF93FD6CBF0651484BEE3F2B6DE7B876850DB42DC78A83CA9FF06D8F8A2D594793F409F44D116C67904B287676E1F6473FD9CA32C805497CD7E406D5F533A84774D1485142EDCA9C3258730563EDF95BAE7FD5C6BF437FCD59778F155EFF0095DA8BDBBA3DD34935392D4FEEF963E3C55E83A1E9AFA768F6B6323FA92C11AA33FF00959893984BA6B98A0D4209266011393331EDF0E5B8E40AACD63CC9A1DC584F6B05CF3B87E3C63E2CB5F897F9D70C20AC5E5D4D6DE2921F4CBAAF16918765CB4B30AEA558020FC2DF17FB1C2C57EF8AB9B025CDCB155BCB0A1D8AB9D6A2B812B55698AAEAEDD70A1D4AF5C55C062AE64A1C55DC5698AA1C86AF6C557716DF155B4A62AB4BB74A62AA3A95B5E2DB25DC2C78D7FBBA7253FE4E2ABA2DFF00D8E2AAAFC789C5509222D77C50BED8D24E14017154623A47756923FD98A78DDBFD546C12E4AF6F9D3D48438FB2DF6731A4A94B8A3EF9042E4EBBD3155F55F1C5568DF156F8AD3155229BE2AD00B5A5722AA9F0F4C556E495A5C55BA2938AAF4E98AAA20C55DDEA3F67155F3F98741B2E11DF5CA4333FFBAE8CCDFEB370FB1967032A40EA1E77F2BC317EEEE0DCBFECC71A372FF87C78169E6BADEAF2EA57D25D4DF072F856307EC2FF002E5C052A5BCF6EBFEC6B920AB6E0B34612B4E4EABFF0D8B22CDAF450469FCA157FE17289B0675F927A41BDF3A45724562D3E292E24FF005BFBA4FF008973FF006392C618C9F46F6CC850FF00FFD7907FCE4DF97AF9EF2CF52B780CB15DC3F576900FB1242DCD7FE0D1BFE11F1E16203C6A0D1FF35EF50C96503CF6ADF6648D55A8BFF038F0B682A9FE1BFCDDE5E9FE8BBB66F70BFF0034E0E0471AC3A0FE6EF32834B995FF00978E3C0BC6A9A7681F99B7139B7BED3DFEAEC3F78DC3E218F0238D057367E60B2D765E768C8EA78F1A75F878FF00CD3FF078F02F1A1752B0D7AF6EED9D2D592647FDDFBE3C09E367961F933F99D7968B72966DE9B8531D4AEEAFF6597E2FB18F0AF1AF7FC90FCD2E1CC58BFC47ECD63E5FF12C7851C6A47F243F35295FA8BF1A72EABFF3563C2BC6A773F933F98963672DEDD5849FB81CF97C2DFF0010C78578D843F97B5ED5DE3B4F4B8733FBB90FD90DFEB63C0BC6F4FB5FF9C5EF3BCD691CED7D6E19E35709CDB97C7FB3F1AE1A42F7FF009C5AF3D08C14BDB72E0D38FAADC7FE238D2AD3FF0038B3E7B207FA65B7263F15646E23FE17E3C785789637FCE2C79F03AA0BBB621BED3F3F847FC2E3C2BC4A4BFF0038B9F9824FF7F005FB5BBE29B71FF9C5CFCC100FEF6063FF0019315B5397FE717FF313601A227FE322E2B6A12FFCE2EFE6203402375A7DAF51715B43C7F91DE73F28DD26B3AAA20B180F0F503AFDA7F817E1C864432B81BF7207B78E61956C9FF658A14DDBBE2AA65F7FF27F9714ADC5569E871553E4D5C55D4AE297305FF638AA9BAF86057035EB838951DA06A36DA4EB02FA7B73730FDAF4C1E2C1B8FDAC9C66AABE61D665D67507BA20C515152186BF623FF9AE4FF76E3236A820ABF67021DDE94F8715777C55BC55DC7156B8E2AB597DF14ADE1B62AA7C3236AD94A7FAB8DAACE19255DC71558462AD118AAD2322AD2E2AEE3BEF84A18D799AE228019A793844A7E263DB3270B20C564D4F4A96D5E333C6DC4B32B0FB5C9FF6B2D55C756D1644706E01E638B3531544C5ADE8CB10449C7041C576C5563DE5DEA048B46FABDAAFFBBCAFC4EDFE4E2AB4E9D7DB7FB9093EEC55DFA3F503FF004B193E955C55BFD19A8FFD5C1FFCAF8571577E8CD429FF001D093EEC55DFA3B50FF96F7FBB1577E8DD43FE5BDFFE071568697A91FF008FF7FBB156C69BA9D7FE3A0DF762ADAE99A950D6FDFE818AB4DA7EA6053EBEFD3C3156BF45EA447FBDEEDF462AA297977A74DE9DF37AD6EFFDDCE074FF005B154436B9A653FBDFF634C5569D7B4EAFF7BF862AB1B5BD38FF00BB7F0C55AFD3D634E1EB7FB1A62AB3F4CE9DCFFBD1F0FDADB1554333DEAD2D5F822FDA9BC5BFC9C550CDA5EA647FBD8DF762AB7F45EA600A5E11C7DB155C74DD549DEF9FEEC64C5EBDE44F3724FA741A6EAD3817B022A2CEFF000ACABFB3FEA3FF00C9CCA241595C90C4C6A28DF2CAF85562DB21C7855A6B7881DB23C096D6DE2FF9BB1E055C218B7E9C727C2AB0C510A74C7855DE8404EC472F6C7855B16D11E94C7855AFABC431E1572DB455A6D8F0AAA0B68BA6D8F0AAA0B480F832AE3C2ABFEA91501DB8E3C2A80D566B1D3E279EE2509128F1F88FFABFCF8F0ABC5B5E3ABEA7AADCDF25CFA28E7947153E145FB0AB99494045AAB5A830EA24A3AFD9900F85F15537D6ACD8FF007BF0FCB156BF49E9FF00EFDF8BE58ABADB52B39EFADE38DB9F3957B7F95810F45BCB88A5B9E0843AFED30CA2615EE1F907A504D2751D548A35C4AB6F1FFAB0AF2FF894BFF0B96630C03D672E64FF00FFD0F524D0C5346639516446FB48C390C6D56DB5ADADB47E9DB4290C75AF08D5547DCB8DAABD71453AB8AD3A986D69052E91A5CD39B996D217B861C5A56452DC7FD6C6D690EFE59F2EB83CF4BB53CBED5618FF00A6369A4CC2AA8000A01D00C5697531B453A98DAD3A98DAD20BF446960D7EA7072AF2AFA6BF6B1B5A46D323697531B576D8DA29DB636B4EAE15B75715B75715B75715B79EFE77353C99D3FE3EA1FF008964327245BC6EDDFF0074066195B6F9F738A5616A7418AAD6C52E0715584E2AD62AB6AD8A5AC55A25556A4FC3FCD840B5631279BE79AE24874AD324BC588FC531658D4FFAB968C56A9A689E60B4D5ADE5F4C3437101E3716D20FDE46D909E3A54441717771197863AA57E1CA8155455D42BFDC9FBB2486D64BA03E384B7F934C55719E715FDC9C5567D71BAFA4D8AB6B7BFF159C5577D796BBA9C5561BF8BDFEEC52D1D4AD877A7CC62AA7FA56CFF00DFA3E9C3C2ABBF48DA11B4ABF7E3C2AB85D4077120FBF02AE13C47F6862AD7AA9E23156C1E58AB44645568EB8AB646D84A18A79A2558E1790C1F59553FDCD177CC9C2C8317F516E104AB0416B138FDDA705926FF0059BF613FD4FDE65AAE4B652288F1976F18A3C55516CE4A6C61EBCBFB85FF009AB156D6FEF94987EA7EA7A5C78C887D353CFF00971554FD21A874FD1E7FE462E2AEFAFEA54FF8E71FA245C557FE91BE029FA3DB97FC645C55DFA4350AD069E7FD6F5171569750D4FAFE8CFF005BF78B8AAE5D4350A83FA2CFC5FF00162E2ABBF49EA15DB4B3FEB7A8B8AB6352D46BBE99F0FF00C645C55CBA9EA3C093A5FF00B1122E2AD1D5352A7FC72AADFB3FBC5C55CDAAEA036FD163FE462FFCD38AAC7D46F241C0E94AEADF694C8ADFF1AE2AA16C9753C2247B6B7B52E59BD031FA8C3FD66C5551AC27EEB6DC7FE307FCDD8AAD6D3EE400696E07B41FF3762AB1AD27F181BFE782FF00CD58ABBEA73FFBF20E5ED02E2AA91FD7211B4D171FE5F4956B8ABA1D72F986FA5AAB7F2993FE6DC55BFD3BA80A7FB8E8B97ED7EF3FE6DC5569D6F50EBFA313A7DAF53FE6DC4AD3BF4EEA0A7FE39D1FD327FCDB91A5A44C1E67D62A07D5422FFC676FF9A7070AD37FE23F304D28445366B46669448D27C5FCBC7FD963C2B4B86AFE6011987F483046FD9A7C3CBFE0B25C086FF4AEB4053EBA38FF002956FF009AB1E0569F51D624209BC1FF0003FB3FF058F0AA4FABEB5A94079BDF37C5F669F0D7FE1B1E1559A6F9AB52E6234533337C5EABB346BCB1E154FD755F319000B14E2DFF0017B7FCD38F0AAD7D63CCCA399B04E1EF3B7FCD38F0AA1FFC47AF0341651FC3FF0017B7FCD38F0AB50EB7AD4D1832BADB337FBAC0F528BFEB72C78555FF004B6B0C282E8846FB4C53E13FE4FDAC7855B3AF6B50F0411ADDFDA6690B7A54FF0080C78554DF5ED69AA5EC616FE5FDE372FF0088E3C2AD2DC6A72468EF3C68F285668D235F83FC9E4F852A72477720FDE4E196BCB898E3C556DADF3492C8925841C222CAB27ED1FF0063C7E0C5552E350B38454D9C0BFB3B8C5528D412FB5812DBE9F650ABAC6CF232955A2A60084C7C8367A8DB5C48272A179AA491F3AC9C9D5A546FF53E16C8C82BED6FCA9D3BEA3E44D2C1FB7708D7527FCF662FFF001165CB221806618593FFD1F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB1579E7E78AD7C943DAEE2FF008DB04B935CF9BC6209944695FD9CC188DDB7A2A7A9153B6143AB11C55B3E9605584467A1C55690BE38AAC645E95C55CC8BE38A5A64F7C5503AB4529B0B8E1BBB46DF08C30430BD13CE973A398A3BFF005D1EDCFF00A3DEDA95590AF16558E5575E1709C3E08BD4FEEFFE2CFEEF3320A8CF2AC0F77E67BBBFB5593EAB3C4DCBD45E2DF6BE1E4BCB2ACD2B4B334B058C1E154DF96C73142AA2DA3F667FBF2485E96D723F6DF8E2ADFA3720FF007ADD3B8C55BA5C8E921FA462ABBFD27F9C32FBAE2AB3D296BB88FF00D62B8ABBD3DA86285BFD8E2AB3D0888DE08B155BF53B42286D93E2F7C36AB4E9F667FE3D07D071B55BFA3ECE94101FBF1B558DA6DAFF002BE36AD7E8DB3AEFEA2FC8605517B3F4A58DE166E3FEEC523155629BED8A5B10B75C55DE8B53015611E7DF521D1AEDD0D19533270AB07BFF005DA244841E29E9AFA6878FC3C7E1FF005139E5A94DEEB4C5B0D55A38D5A2B7FAC73B781A4F5DA257E4BE9FAAAB1F3FE4E7E9E2ABDAE6E47A120557B79DF86DC95862A8E03FD8E2ABFF00D5C5555315688C55BA5315688A8A1C55DF10E98ABBE3C557FC55E9CB156EBF2C0968BA62AB7F6CFF002E2AEEF8ABBF6BA62AB871EF4A62A839B55D317679CF15FE4566C2874375A6CD531CADC57ED3706E2315444B66CA11D08789BE25906055031B1EAB8AACE12530AAD30BFBFDF8AAD68DAA3155DF547ED8ABBEA8FD003FEB62AD8B69FF00641FA3156D6D6E49A703F762AB9EC6E69B2B62AB05B4E7F64E2A91F9AEC64892DA7753C15FE26A62A99DC4D2FD685BA40E1F9B34D2156F4FD3F8BED7EC62A8D16F6D41CFD43B777C5535D30C51561727EA93FC32733F61BF67154AAE6CEE6399D3D36F84B2ED8AA87D4E724FC38AABA4379E8FA26A6253CB8D3F6B155FF56900A05C0AEFAB4B4FB38AAEFAB3815A1E5F2C52B5E2600D47C3EF8AA5F6AAC15C9FDA767C2845492D8FE8AB8B79A12F34BF6643C76C554BCA68AB36A6F42552D3872FF5DB8E2A99F963936B378908ABFA8AAABFE57A3C3FE36C58DD3EE5D2AC92CB4DB5B34144B68638940FF2142E4DAE011A30363FFFD2F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB1560FF9C7686E3C8979C4126092297FE4A05FF8DB0C7930C9CDF39ADCB000661486ED9D1DF5C6AF5A6450B85EC83AE2ABBF4849E381572DF362ABBEBCDE38AB8DE577C55DF5CF0DD714AE174BE38AAEFAD60E484B6E743D22E25F51E2E0CDF17C078AE4BC6A54758C769670FA76EBC157F1C8715A511F59DFAE1554172DE3850BD2F243DF1554174D5EB8AB7F5BAF7AE2ABC5CB015C557FAECC37C55C264EE31571319ED8AB83278646D5DFBB3DBE2C6D56F08CF8636AD708875AFD18DAB4F1C645457EFC92AC16E84D0D715509D5613FE4E295E268E80D71558F344301579EFE65DFA0B14B44E2D3DEC8B0C6B5E3FECBFE23FF0007993855268ECEFA90BCD346D24438F011F25FF5797EEDDB2D4A1A4B99FD38264902CDF589226A46BC42FC29CBFD7FB58AA2BEA97DEA022E472FF8C4B8AAB3C37919F8F500ADFF0018D7155A04F5FF008E9FC3FF0018D7156C7AFB8FD23DBB46B8AB7FBFE83513C9BFE2B5C557567A7FC741BFE45AE2AEFDFF00FCB7BF1FF8C6B8AB87D67A8D425E3FF18D7156D565623FDC84FD7ED145C5511F53B91422FA4E3FEAAE2AEFAB4E4D7EB92F4FB345C096CC128A9FAECBF17B2E2AA5E9CFBD2F66EBE0B8AA9F0B90282FA6FF0085C557A239A0379371FF00638AAA4968B20A49713CA9FB4A5B8D7154B6EE196EB50B7D361912DE2778E2567658E3469BE156667F81123FB72BFF0091850A9E5EBEBC8AE8D8DD46C36668EBDD7154CA686DBD4FDCBC90EFCB8C6DC5702A49AD2B4484FD72755F77C558E7FA4BC86B7B3F2FE52FC5B0ABBD1BBF5007BB9B8B1E3CBD4E38AAA5B472FAAE45CCC517ECEFFF003762A9DE93A822380F71236FC7E338AB209EFBD3853812EEFF000C6B5EAD8AA808A4A5669E569BFDD8A8FC5462AB8C317135967E4DFF0016362AC66E24BB9F50FAADAB5C3AAFC4DFBD655FF82C5591D9DA5B1887A9EAF35FE7959B154434366C942AC57F94BB362AD3C31754059BECEE59B1542CEEB18A934E3FB38AA065D6FD38DE243CD251C597ED57154B2CAFB4E91B8257937C3C4BB62A9CC2B152A13FD9726C55190B5A08F787E2FF0059B155455B6207EE07DED815502C07A443EF6C5577EE3BC23FCA6C528791E20084851797B62A846660F53850A73FF764FED62A88F2C2B7D5B573B72E11AF5FF29714C592FE5459FD77CEF6F031AACBA8C41BFD5E51F2C5C7CA5F6DE49B00762A5FFFD3F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB1542DFD8DB5F59CD6772BCEDEE11A3953C55F6C36C69E4F7BF909599DAD3505F489F85645F8BFE1720636B48197F20F53E1CA3BD84B7F290D90F042D21EE3F21B5D55AC33C12B53EC96E38F821690F27E4679A547C02173FF001978E0F003243CBF927E7143B411BFCA45C3E005433FE4F79D0494FA813FE5078F8FFC4B2BF055424FCA8F3A83FF001CC938FB71FF009AB1F0550AFF0096FE6D8FAE9773C7F9B833647C1543CDE49F334295934FB855FB5CBD36C7C1542CBE5BD6A1A992D265F9C6D83C34DA97E89D440A98240B5EEACB8F86B6B16C2F00FB0DF764784A1A16D73E071E12ABD60B900554FC591A2ABBD29D7F64AE3455AE32EFB1C788AB7FBD1D8E3C4557879476C34ABF9BF7071A56FD43E182957ACEDD31A56FD76A1C6D5789B6C6D5DF58A0E98DAB6B3AE36ABFD68C76C6D56FA8B5C6D52ED5AF208A17924658A141CA491CF15186304A0B4CBFBCD4BF73A1797F51D638FC3EB8E3042EDCBF679AC99911C4AC8EC746D56DA653AF79335F8EDFE12DF54F4E76E3FEC1708C548637F9BE3F2967F2F5B5EF97AD6F2DBCC5677319682F1245631FC5F6B9FC1F6F8FF77968D9582347A9858C08A37694AAF5E34E782928C7D16EC5BBDD18632F1491A71AFC479AC8EACBFF0018FD06FF00834C69529975A8ED6611C96928761CB62B802597F95B4AB1BDB47BAB88394B2FC4BCCF4CAA6553C5F2FE9407FBCE9C72AF14A151744D33B409F763E295545D174FEBE827DD83890D8D1ECEBFDCA7DD8F12AA2E9363FEF84FBB1E255EBA45981B429F763C4AD3E8F626371E8A74F0C9466CAD82DCA2C733A27D952CAB99315B52A30C34B6A6F8D2DA9B278646995A9B231C696DCA94DF1A5B55E4D4C696D7C0AB15D4576238DE588AB71995648CF06FDA57FF0065FF0007858AA5D4DEBDDC97B271F59C70558C718D17F957154217AD3154B756B6924B8B37E3CE2E6DC97FCAE3F0AFFC1E2AA5E57B583EA12DD22F2779DBD463F1371FD9E5FF000D85532B9B74AFF743EEC55A10C5F5ED291D4345E9CAED191FEB7FCD38AA5B36816B22C93087E26E5D3F9BFD5C550BE523F54D7924B80CB0C427E2AFF67FBB64FF008D97154FA06E48E46DF6792F87EED7E1C551082A77FB3812A561A524135CB97E3EB8FDDB0FF595B8B7F9FF00262AAAB1F04DC8FF005862AD72A362AA97332C56CF253EC8E5CB0A18A243ABEAC0DD1956DAD18B2C723F7E18AA317C9D633E8D2DDFD69DE6824549147F2BFED2FF00B356FF00834C2853B9F21DBDBDAC17515D199678FD58FE1E3F17ED2E2A8CD391C5AA0901E54EF914A2B82D41DD78E2A89546A56BF0D314AF4E542491F0FECE2AB5831EF8A148F5ECCB8AACE2A76A61554D47479DB4A17B6F38E68FC6487F68E2A82B0D5F4AD2ECAFE2BE9BD3B8BAF4FEAE8159B9F06F8BEC2FC1913143D1BFE71F2CE4BCF3B69F7DE937D525BC9DE394AFC2FE8C5FF1A3AFFC264E21AA6FB0F0B63B157FFFD4F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB1576D8295D855D8375763BABAB8ABAB8ABA9855D4C55D8ABB1568852287A6348B5AF0C4EBC591597C08C696D41F4CD3E4FEF2D616F9A2E369516D07466356B1B727FE312E36AA2FE55F2EBB727D3A02DE3C460A0A877F247951C8E7A64278FD9DB0D055293F2FFCA121AB69B1D7FD964682A8B7E5AF940F4B3E3F266C682A1DFF002ABC9E7FDD120F93E0F0D541BF28BCA5D409C7FB3AFF00C6B8F86AA0DF937E59AFC32CE3E655BFE35C1E1AA1CFE4B68BC68B7D32EDDD633F17F363E1AA9C9F927A79AFA7A8BAFF00AD12B7FC6D83C20AA537E49C04521D4A8BFE543FF3763E12A849F920E7EC6A29F4C6DFF35647C15517FC92BEAFC17D0B2FBAB2E3E0AA8FFCA93D5AA7FD2ADB8FECEF27FCD38F82AA0FF937AB428D3DD5EDB436F10E72489CE46E3FB5F0F18FE3C7C15605E40F207FCAC0F37DCDCDF7A8BE59D29D562B7FF7E37F95FB1CDFFBCFF8AF9265DC1497D37A6693A76996AB6D616E96F02F44414C95AA329810C4FCFDF979A279DB466D3353E509AF38AEE10BEB21F8BF69D4FC3F17D8C55F3A7E717E5F69BE446D2E1B6BE96F5EF048645755561C38FA5C78FF00978A522F21B41E64D72C7CB975726CA1D52E151AE5557919218E6E2BF1FF00ACDFF098AA97E6CF902D7CABE6C934D8AE1EE912085D5DD78FDBE5904A69E5783D3D2A21FCC331B2154DF82D321C410B551463C415511695C8D217F1C6957A8F831A55C3DF1A54FBCBFE48D7FCC283EA917A164FB35F4A38A0FF002913F6F2F8E357A41FC93FCB978624B8D2BD59515564944D3C6D237ED3370913E27CC98ECA85BAFC83FCB79A9C2D278056BC639E4FF8DF9B615404FF00F38E1E4474023B8BF8789FD99216FF0089458AA5971FF38C7A0B2FEE35BBA46A7DA78E37FF0088FA7813696DE7FCE2F4857FD0BCC08869BFAB68CD56FF00633E2B697DDFFCE30F98557FD1B56B49CFFC582487FE20B262B695CFFF0038DBE7E51F04B632AFF933C9CBFE1E38F15B4A2FFF0021FF00322D0161A689D00ABBC53DBF10BFECE58DF229600F12824163C97ED2F16C556144007ED333F0F9371E78AB49716C2416F332F27FB2A7BE2A884B0B4129902F095FED489F0B1FF5BF9F0AAAADA405D2AC6AA79712D8AAADD68567184BA0F37AD4E1EA0765A2BFDA55FE4C5505E9E9B64A885782B1F85A8CDFF04D8AA0B5CB380A09F89E6BFDDB03C7154458DBAC76E81076E4D43FB4F8AAB14A0C0973B353638AA9A2495FF5B15770A1A9C557DCC1EBDAC907F3A326142BE816B69068A21BDB669D1626899405668E4E5FF3311BEDE2A85B4B2582D6EED50B4514E3E150397ED2BE46D952BFD6221A5A58471B2BDBC8DFBC7FDB57C6D690C22A57F970B15AB0B01D3155C06DFE4FED6295C12B5AFECE2AD30A0FE5C50A74A74C55B41BD40C2ABA56C55029E588B5ED660B779CDBA2066660BC9B232921EDDF91BA57E8EF36E9560933BDBDAFD65E3562DC47385BECAFD85C889B5C9F4D65CCDD8ABFFFD5F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8AA4BE728659BCA9AAC70B7095ADA4E2DE1F0E2AC73F25B4E82CBC8F1F01FBD96EAEDAE3C7D44B9922A7FC022E4A4ACF4E402BB02BB24AF90FF3E7CD707997F3185AD9BF3B2D117D26907D9327ED7FC3FF00C4324AC6BF2AF41BCF367E70689616F23C36BA24BFA4AEA64ECB6CCAFF00F2526F4A0FF66F9157A2FF00CE47DB57CEDCE95E76507E0D26464C8245A2A7A7A7C03DB3126C648D6C8AB58AAF0283155D5538AAF5C8936ACCBF2E3C91FE20BB3A8DF2FF00B87B57E2B1FF00BFE4FF009A23CC9C5057B7C30C50C4B144A12241C55145140CC8554C55D8ABB15762AEC55D8ABB1540EAF318749BD987DA8ADE571FEC509C52F8BFF4730249FB5912A92B40DF58940DB8DC49F09FF8C78B3B5D796104F0463D31EB29E4CC7FD8FF009FFB3C56D14894C58AB5D5BE9937A72476C12ED5E37FACA1E3FEB2B7F91C315476A2FF00E8C801FE5C55033B453DA885D7ECFC2CD5EAB8AA59AC35611FCAA710A5EADF90DF95FE5CF3445ADDF6AB1CBEA446DA28648A4E3FB32337C3FEC9724C5E972FFCE37791D98B25D5FA1FE5F5232BFF0026B154BEE3FE719BCBEC59A1D5EE9169F0ABA46D46FA3862A8497FE719610AFE86BA4FFBED64B6FF00897EF31A5E24B9FF00E719F5A15E1AC5ABEFB563916ABFF2531A5E2401FF009C71F3AA93C2E6C0A83F0AFAB2FF00C17F7583853C682B8FC86FCC4890B476D0CC7C239E3E47FE0FD3C78578D2F3F933F98CABEACFA2C945F87D31342D5FF9152F3C1C29E34A67FCAEF3EA3BBBE837A89F171A46D2517FD87A98F0AF1A5771E4AF345B6F3E917B12D19B93DB4CABC53ED7ECE34B6819B46D4A0159EDA5853ED72915A3F87FD9E34B68344E40BA1E6ABFB43E2C0B6BF830A9A1C374B6A4E3DFE1C0B6A6537C6AD6DB55D8D3248597F6B771436F711B218A53C597F6B1547F9297D4F31C847FBAA2C8E62AF6BFC998B9F9E91F6AA5B4EFFF00114FF8DB2BC4D727D0597B3762AFFFD6F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8AAC9A2596368DC551C51B15611E4479349D5B59F2BDC921E29DAFF4FA9FB76F727F7857FE8E7D5793FDF7EAA64A4ACE8E402B4CCA0549A0C2AF18FCE6FCF0B3D0AD25D03CB6E2F7CC5701A2678FE28EDD7F699987ED7FCD2F92015F33BB2E9B632CF34BEA5D39696490FEDCD8957D21FF0038B3E449346F264BE68BE04EA7E6665B852C3E25B44E5E97FC8CE4D37FB34C8AA45FF3918B5F375BFF00CC045FF2766C8C990635A70A5A45F2CC49B19221BA5722AB7AE2ABC1C55A6C554E677E2238FF00BD94F08FFD67C61157D39A1E8F69A369369A65AA8586D630836A548FB4DFEB3BFC799D01B2A65855D8ABB15762AEC55D8ABB15762A94F9ADF87963577F0B39FF00E4DB6297C9E1280ED912AC55D59A59E87E16B89597FE0B87FC6B8AA0AEAE7521CD2CA30FC3ED4927D90DFE4E2AA4B79E6154DEDA37FA59714AAD96AF399D20BB80DBBBFC31B03C94B7F2E2A9FBB52D48038B37C38AA103B11BE2A831FBED45D1C73458D7E13F6710A5F4A7FCE33C2ABE54D5E4FE7D4997FE02DE1FF9AB24C5EC38ABB1576D82D14EDB1B5A753256B4EA636B4EAE46D34EAE36B4EC2AD1553D4038AA12E34AD36E07EFED21936A7C71AB608ABC93CDDE44B1B1D424096B1B5B4BF1C3F02FD9FE5CAF215609A8F9774A82F38496E9E8CA3FD5A663CB22B1DD57CBD6704C78423837D9CBB14ED52B9744B4A9D886FF0063972545B41B62BF6BF0C55BF2959AC17FA9CF5E4ABC628F6E394652AF67FC898BD4F345FCA47F7566557FD9CABFF34E1C2D727BB65ECDD8ABFFD7F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB1563BE65F2ECDA97A17DA74C2CF5CB06E765764554FF003432AFEDC327D893FE4647FBD48F2424AB347F37433CC34DD5623A56B80564B39CED271FB52412EC9710FF00969FDDFF00BBA38FEC634A98F987474D6F44BBD34CCF6EB751945B888FC487F6597222455E0B3FFCE30EBF691B1B1D5ED2F2593934CD2C72C123B7FADCAE327C65894B2D3FE7183CCFAB6A7690EBB7505868913F3BC1049EADC4BBD3D35F8782734FDBFF0092584C943E81D57CC7E58F2AE9D14575711DB416F1AC56F6C0FC5C53E05555FF00814C855B27827993F4DFE6B7998DDE8DA48A5AC7F575B97665548D1B9F1965FB1CFF007BF6304A2A8C93F2F3CE1630719F4B9BF743E268F8CABFF0998B2C6A92BAF1347D9B2A92B5C69DB200AB9B26AEC5503A8CD2C2D14D19A3A1E4B20ECD93C655F50F95F5FB4F3068569AA5A9F8675F8D3F9244F85D7FD83E6582A9BE15762AEC55D8ABB15762AEC55D8AB16FCCAD56DF4DF24EAB34EFC0CD0B5BC23B9926F8557157CC0B73112472F8BF94E482B198F8EE4FED492B6FFF00191B2BA656ACB1442293E2FB6FCF61CB1A5B5BC13B48BFF11C28425DC1EACB02210592457661FE462A99CDCBD103FD5F871551095ED8AA1601FEE4A7F92F4C012FA7BFE71CE329E4299D871F57509997DFF771AFFC6B9262F54C55D8ABB15762AEC55D8ABB15762AEC55D8ABB1550BBB3B6BB88C5708244F7ED8AB10D7FC83637513522F513AAB27C320FF009AF2B9C6D5E73ACF942EECC3B85FADDBAFC3D3F78330E7A6B561D7DA2C64992D49E5FEFB3DB0C3544734A47721E10FEA020A8CCC85645427973E1D2A593F6A79D9B31B321ED1FF0038FF00C4EA7AC38A7F730F2FF826CB34E18BDB332193B157FFD0F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15760A54BF56D174AD56DFEAFA8DAC7750D6AAB22F2A37F32FF2B7F97878A95895CFE5D6B76D217F2F799EEEC23AFC36B76BF5D893FD56668E6FF83924C971854B6E749FCEF8008EDF50D3AE7E163EB33491FC5FEAF1C97106250B1F973F3AF50B854D4357B7B3B3A2FAB0C279735FDA5E48B1BA7FB0930505088D1BF227438A74BCD7AF6E358BCAF291646E30BB72E7F12FDB7FF672644C993D22C34EB1D3ED92D6C604B7B78C51228D78A8C8F12A270ABC5BF3A7418ECEF22D5ADE3089741BD6E03FDDC9FB5FECD197FE0331E705799DB5E34828728E15467C54DBF6B1569B6FF5B1543DDC5EA447F6B105597FE4A79B9B48D74E8776F4B1D48D23AFD94B8FD96FF9E9FDDFFC89CCCC6AFA0F26AEC55D8ABB15762AEC55D8ABB1542EA1A6D86A36AD6B7D025CDBBFDA8A41C97157CD7E67F22E9177757F1D933597EF65485A3F8942F26E3F0BFF0091920AC12F7F2EF5230086D6F1690724563C96BC19B22A935CF927CD105C470A5CABBBFC2B42D8AA8AF967CE9CC88C7ABC7ED50E04AD974BF3A5BEF259B32FDAE4072C55525BFD685A46EF62E78FC2CDC5B8E2AA1FA7AEA33492C997E7CB1553B4D7A25BB9DE685939F1F8460087D63FF38F72DABF90123B76E74B87776029F14AAAFF00F09FDDFF00B0C9062F50C593B15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8AA5BAA69315E44C5404B8A7C2FE3FEB6481579B7997C9B7123FA86C6481FF006AE61F8D437F9489FB1FE5E5197009724BCDBCD5A63DA5B4F1DEC5C9A9FB9953BB6638818AB1FD3B4AB9874B823E146FB5C4E4E487AFFE41D85CC375ACDC48BFBA6482357FF2B948D96E20C5ECB96B2762AFFFD1F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15631F989A32EA9E56BB4E3CA5B71EBC7FEC3ED7FC272C8641B2BE68F4DA0B9319F1CC421904D61354AFED6418B99589C55AE1FB38C9529BC85A3943A54329E5C87C396E234AFA5BF2E7CD83CC7E5A82EA461F5E83F717CBFF001627ED7FCF45F8F332D59562AEC55D8ABB15762AEC55D8ABB157CFF33FAB73249D79BB337FB3C9054986E0FF00945BE2FF0065818A5F722BAADB8FE5C551361C7F78722132444BB46FF2C90601AB1B74FA9A55074F876C6296A6B2B568DEB129D9BB632573691A79B44ADBC7C963FB45797ECE12C0BE88D02C2D6C747B4B5B6812DE24893F771AF15E5C7E2C8B64532C593B15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762A83BDD234CBF8F85E5AC570BFF001622B62A921FCB8F2613C8E9FBFF00C649BFE6AC553DD3F4DB1D3AD12D2C604B7B78851628C71518AA2B15762AFF00FFD2F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15592471C91B46E392B8A11E2312AF983CEBA3B697AF5CDA91FDD48C8BEEBFB2DFF01C73132B2084B37A8CA58A268D8ABB8E15435E40ACB5C174AC9FF277CCDFA1BCD1FA3A76A5A6A9C616F69BFDD4DFF06CD1FF00B3CCCC46D5F4376CB0ABB0ABB15762AEC55D8ABB1541EAD742D74ABCB9FF007CC323FF00C0A938ABC257F766BFB2A3241528807EEA3F92E062807DF581FE4272FF0085C551161F624F9FDAC884C91170D485FE5920C02A5B6D691FCB18A5AB8FEE5EBE1C7192A2045C824209F8C70DBFCBF8309605F44C6BC6351E000C8B64553164EC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD3F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157600AF13FCEBD1C45AC477C17E1BC89599BFE2C87E16FF0084F4B31B30579CD937C54CA95315C55D41ED915732A914FB58AA51730C90DC099094653C9581E2D9640ABE98F25F98575EF2D596A2D4F5D9785D2814A4C9F0BFFCD7FEA366644AB20C2AEC55D8ABB15762AEC558FF009E6E8DBF95EF597ED4A162FA1D82B7FC272C2978BDCC94B69C8FB4A8DC7162502BB0A0FD91896012B4DEFAE5FF009538E44B346D82D227FF0028E18A24DDF352D9FF00CAF87192C516A156141ECAB850A13FD9E3FCC557154E34681AE35CD3E01F69EE605E9CBE149159BFE115B09621F4076C8B68762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD4F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB156BB608AB06FCDCD33EB3E5B5BA51F1DA4ABC9BFE2B97E06FF86E195E40AF078D7D29A9EF98AA990DC62ABA8B9156C75C550F7B05549C49567DF91BAF7A37B7BA1CADF05C0FAC5BFF00C644F85FFD9BA71FF91599784DABD9F2E5762AEC55D8ABB15762AC1FF352EBD3D1ED6DD4FC53CFC997C5511BFE3764C297955DBFFA2F0FE7755FF86C58943FC4A09C4B00955B35527907EDBAAE44B34C2D0522427FD6C314494EF8D7D28FF99D7192C518CBD01C28539456E2215FDBE58AB2AF20DAFD6BCDB640FD980C93B7FB05E3FF001365C25887B676C8B68762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFFD5F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762A95799EC3EBFE5FD42D78F367818C6BE3227C69FF000EAB8ABE68BF458EECFF0095F673064128CB6F8A3C8855609850EA5077C55CE9C8632551D0F539344F32596A43E15B7955A4A0E5FBBFB12FFC23365988D2BE9E475740CA6AA4541CCB55D8ABB15762AEC55D8ABCAFF34EF7D6D6ADED07D9B587937FAD337FCD2AB920AC0EE8FEF628FF0094337F9FFC162C4A1AF1FD3B690FF28C058840429C6D2307ED3F27C89669922D1027F28C93143C9C5AFE24FE41CF154572DF155AAB5BDFF513FE278ABD07F296D3D4D5EFAE8AFF00710468ADFF001999B97FC9AC25887AAD36C8B607629762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABFFFD6F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEEB8ABE66F37592DA6AB77020A2C13CB12FF00AA8CCBFF001AE6364094269ED58F31D519C72485DC7156C0C552ED461DC9A6374AFA03F2EB553A9F93B4D9DC932C71FD5E463F699A1F8397FCF4E3CFFD9667AB26C55D8ABB15762AEC55E15E67BE37FE61D42EAA0AB4EC91FF00AB0FEE97FE2392548A47E77321AFC2BC517FE27FF1B62C4A5FACC8C2DD23FDA77C05886D53F7B1C63ECAF15C89668DE3BE498A16DBE2B9B893F97E05C5514B8AADB62C6495FF0098F15FF618ABD7FF002A6C8C3A04B72DFF001F53B32FFAA9FBAFF89AB612C71B36ED81B0B7812EC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFFD7F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AB599514B13403727157CDDE6ED420D4351D42F22DE396E25785BFE2BF51B8B7FC06634D297699C9A3AFECE50A8FA7FC0E143BBE2ABD7070AA16FA2E51E0B57A5FE465CCEDA5EA96A41F461B8478DBFCA75F8D7FE157FE0B33318A621EA396164EC2AEC55D8AA55E67D4DB4CD06F6F47DB8E3E31FFC647F813FE1D9715785F25890B93F0A8C921071AB7A753F69F9337FACF8B0280B9FDF6A71A135580726C8B357B61590BE2C0ABBC8AA09FD951CB25258A9D8A52DEA7ED39E6D822164559CF18CB7F2E585871356CBE9DB827E26A736C8AF13DFFCB3A7FE8ED06C6CCB54C512F26F163F136419C026C316C762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFFD0F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AC3BF33F5A6D3BCAF3411B71B8BF3F578E87E20A7FBD6FF0080FF008962AF04BC5693D3B54FB4FF006A9D9731A694D2DA05862083ED2E50AAD4A6142DFF008962AB95BFE0722256AA2CEB2C896F106B8B894F18E0887A9216FE5E3FEC72D10B57BB7923CB91E83E5FB7B30B4B9907AD76C4F23EB3FDADFF00C8FB19994C4322C593B15762AEC5580FE6BEA1E9D859E9E0FF00BD1234D27FAB0FFCDECBFF00038ABCBEF597EAFE9FFBF4F0FF0063FB59242992A0127ECE2C0A536CDCBEB1707FDDAFC57FD5C8B347DB228881FE6C58159763F72101A339E385422116800FE5CB601AA654EE7E24118FDB3C70165C29E795F4CFD25AF5959D3E032AB49FF18D3E36FF0088FF00C3E45785EF7D0641B80762A5BC52EC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD1F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AC43F317409B55D26396D93D59ACD99F80FB4637FB5C7FE07157885B5B347777323FDB5938FFB1CC39A6D181589CA8456DB7FDD8AC869FF000CD92104712FB0B2D4B5197D1B0B19A67FB3EA3AFC3FF029FF00333D3C9782BC4CCF46FCA8D56E68FAACEB6B153FBA8FE263F0FF00C265E31531A67BA1793741D1406B3B606E78F16BB93E294FFB2FD9FF0061968D9693EC2C9D8ABB15762AEC55E33F9897E6F3CCF728AD58AD425BC7FEC579BFFC3BF0FF0063920C4B1390FA97407ECC09FF000CFF00F5CE31421F529BD1B4908FB4C38AE32540A23470C517B7C5FEB3E4553445A201ED920C4A1DC7A97A3F9621CBFD960648A1D32618953FB571FEA0FF00867C8297A1FE536991CBA85DEA2C01FAAA7A11FB34DF137FC22AFF00C1E2CA2F53C0CDD8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABFFFD2F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55886BBF971A2EAD746F159ECAEDFF00BE9200BC64FF0059597ED7F969E9E4258D16A763F95DE5D801FACB4F765871F89FD203FD5F47D3C4635B465BFE5D794209048B6024706ABEB3C9281FEC5D8E2209A4FEDACED2D6311DB4290C63F663555192B5A44615762AEC55D8ABB15762A87BCBB86D2D27BA94D2282369246FF251791C55E0734924F2C93CC7F7B3BB4B27FACEDCB241894BA2DF9C9FCE79631420B516F56E6DED7DF9B63255909F5AF49FD95F8B22A98F41920C4A1ECF937393F6A57E581922FA2E4C312B2015DE9F6CF2C8297B5FE5CE9EB67E56B77A51EF0B5C357FCBFB3FF08AB8B28B29C0CDD8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABFFFD3F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15621F9977FE8797BEAAAD47BD9562FF60BF1BFFC4787FB3C3157935DBFA56AF4FB4DF0AFFB3F8326589430455000FD9F8572258009473F527B9BAFE5FDD479164111A5C544793F98F15FF570C53243FF0088B46BABCBBD2ED6E449A85BF2592301B8FC1C51BE2FB1FBBE58C96299C28B1A803F6471C286E66A4669FB5F0E2A8BD36C9EEEF2DAD231579E458957FD76E1FF0010F8F12C43E83B78238208E241448D55147B2E45B42B62AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55FFD4F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15797FE635EFD6B5E8ED50F24B28A8CBFF163FC6DFF0008AB862AC1F51E4268A11F65793B7FC457FE36C99625057537A56D249FB4A3225149448AD1DA45183F13FC6DFF001AE459809BDB43E94289FB54F8A9862C649259F95748B1F305C6A96EADF5ABA0CD2733C9539B726E3FC9EA3E3258A7C836FF005B0A16BF13301FCA3962ACD3F2CB4D6B9F30A5C53F75651B3B7FACFF000AFF00C6D89621EC1DB22DA1D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFFD5F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15799F9B3CA9A85ADDDFEB265FAD594F27ACEA1555ADD78AAFF00B34F879F3FEF3E2C95A0B0190FAF3CB28DD58F18D87F2A7F9B636C084B756E4DE95B8FF76BF2FF006391648650B35F841F610FFC43154D570A50F1FC524927ECB1E2BFEAE2A88030B08A9C2393BBFF0031F87FD862B27B07E5769E20D09EE9978BDE4CCCADE31A7C0BFF00116C4B180667916E6F15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AFFFD6F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15688AE2AC6B55FCBFF002F6A1319CC6F6F2B2D18C278AFFC0E28A639AC7E4A68D78EB35A6A57969347F617947247FECB927A9FF253248638DF94BAF695EA3A4A9A8C6A859644568E4F87F67D3FDE7C7FF3D31A549AF74ED46DA3712DB4A8EB1ACACBE9B6D1BFD966FE44C0C5050C3C404FE51F17FAD8ADAE9792C6E47FB1C2B154B4B696468E08456572A91AD3AB7ECE2B27D03A65A2D969D6D68A28B046B1FF00C0AD30167108B18125D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFFD7F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB155B45AD683974C5527D57CA3E5FD4E7371776A1AE3870F551991B8FFB1C55239BF2A7CBD2F2FF0048B9535E51F165DBFE17E2C36C7857681F97167A5EA1F5B9EE0DE08CD6D632BC381FE66F8BE36C6D7859A6064EC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD0F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55AC0AEC55BC2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFFD1F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD2F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD3F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD4F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD5F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD6F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD7F54E00AEC2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABFFFD0F548E98A03B14BB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AFFFD1F54AF4C11BADD5D855D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD2F548E9802BB0ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AFFFD3F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD4F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD5F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD6F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD7F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD0F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD1F54E2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157FFD9
----WHERE szItemName = 'L85A1 (5.56x45mm NATO)'
----EXECUTE @RC = dbo.NEW_ITEM @name = 'L85A1 w/SUSAT (5.56x45mm NATO)',
----                           @class_ofItem = 'gun',
----                           @Returns = @asd OUTPUT
----UPDATE ITEM
----SET Item_Image = 0x4749463837619001A40077000021F90400000000002C000000009001A400870000007B826B3B4129BDC3B552556399A28C1A20105A5D42E1E3DE7C828C6A6D639EA2AD2228313C414AC6C7D66F6D7B8B928CACB2AD0C10008C927B293018F3F3EF8C929C7379634C51394C514ACDCFC6686D52AEB2BD7A827B313431A4AEA50810181C2021D4D7D63F43395A61635A5F52BDC4C69CA39C696F73373B42737A7B939B8CFBFBF7838A7B020800E8EAEFA5ABAD4E545A646973636752848B8CB7BBAD212821DEDFE7464B39949B9C393C31666963C5CBC6A6AA9C727563474B4AB5BBBD151A18101808333921737A73DEDFD6737D8C060B10848A73EAEBE7F8F7FF53594A6363637B7C7BA8AEBD848E9C9C9D9C6A6E6BCED1D68B9394ADB3B53136395A5E5A9CA3A5848B84848D94171C214349312729182C3031081010F5F5F7D5D7CE7F84843F4342C4C7CE939B94AAAEB5292A21BBBEC67B8373E2E5E7949A84202329D6D9DEFFFFFF04090863675A464C523F4331C6CBBD565D639CA6B571757B8B93842E3129767B6B5459424E5352CCD0CE6B755AB5B6A5727573EEEFEF55595A00041063654AADAE9CBCC3BD9BA394595F4A7B86944245526B6E5A423C4AB5BAB5D1D2DE383C39C5CBCEA4AAA55A5D6B0003081E21180B10083033214D5242ADB6C61014215A626B737C84EFEBF7212829474B42949DA5151910363A2963656B7B7D849C9EA5292B29ADAFA58C868C737163ADA6AD312C314A454A94958CB5B4AD94969C84857B393831DEDBD6636152C6C6C6A5A49C737173423C429C9E8C8C8E7BADADAD5A555A6B69528C8D8CE7DFE7BDBDBD211C187B7C7373706BD6D3D6949594B5B5B539383963615AA5A5A58C8D848C8E94211C21101210FFF7F74A45429C9D94848673292429DEDBDE100C086B695A949584D6D3CEC6C5BDA5A29463614A73715ABDBCB565696B72756BDCDFDE5559522C3039EFEFF7CECBC6635D63ADA6B57B757B7B7573423C39CECBCEADAAA500040080866B424529525963212410E6E7DE7F868C6B7163A1A6AD282C3140454AC9CBD66C717B8C968CADB6ADF2F7EF8C969C757D6352554AB3B6BD7B867B3138310F1418212421D6DBD608FF00DB081C48B0A0C18308132A5CC8B0A1C38710234A9C48B1A2C58B18336ADCC8B1A3C78F20438A1C49B2A4C9932853AA5CC9B2240B812F352A6949B3A6CD9B3873568C39F1254F8A499EB5F9A9B3A8D1A3489342244A318D092A39B0D0A0A10B8B3108586561FB4270661B4710948A1D4BB62CCD3FB7605C6451E687075ADC668529D58E86B1AAC6C228C890618F410450869A1D4CB8B0E1A52CD8987B676EDAAB6D089224B1C714611A6E665234D0C3A40E8D63BAA64CC932E55E3B149098E88A4548D8226184605C11E855219062950FEBDECD1BE5CB3D4C9A349915459B713F447CF9DA7755151959B256C12EF70FD82C3DC374D082036EDEE729C79E4CFF79722F0B28759898C898856216FB6CBFBADAF3F6E7C53611C284ADBAD5C44AB1DE000628E0472FDD020513D924B803134CBCC1E083E0104302135658412138142EF3C330DD6C07080A344C114C16349066411628CC81090AF7A890493B0924104A18DBDC6745143B90F0063156CCC10D204082C30D13031669E4910FBD14062061EC30CB0E3264234394A080921E280CEE5025964C68098718C33492C20F563C40032BAC64A14B89539C86C91C73648309265562924D1416CEF1C3840F3231479F4CC091411A48166A68A14A46D2C438EECDD39EA3283C8A42360F4429252832A0806515DD5441CB0FEACCD2CE14A18D764C16EDCCA3A28AA0A030A5AB5346FF8102A8D99060679571D2090A209C4871E8AFC006F84A243AD01046189920ABECB161CC184A284DA8104A2675A85047280D74D1450AF10022C3A85990A88B2EA8CE43027AADA20069A491CE03871EECB61B851F2E263BCC378205ABEFBE63B1C08212E444F28B2853E490432757748270270B5C7185280F77928305A265F10E139B7433660CD94CE531AA34B4530726EA0062441D75508BF2CA99C40047C86ADE9343C830D44CC51D8BF0ABF3CE49C9128924535CB1001554C00004106798A03410FA5001042F269CA10F1057B0114A321E34120FC7A396D84E3B879458072831C4404502342400630299189149269854F10E0C263822051B63E8638F125F7CFFD1C52DF9F22CF8E02CBD1049243BD0531A1432CF2DDB0273BF23341412DFC3CA362484A0713C7A60A242D81E7B3D0F2665CB93F6D7C9BEFD7636559461B40852A421050C4AEC6DCF268F10AEFBEE26BDF44B2477581BAFAC91128F421432201FE92C2A841082079AC540422653914843D8A74112831887CC93290A28479A0D0AEA045F6F185384C16269F724434AE0BCC72FBF466C1CAE400C80E801C7FE70B8AC3F1CB88881FECA56B6068460145D688418F4300715842B74E502041C38378776A880007A80843AD441803934001E65D30320CA3641010A1004399B9F0A57189198BC24039110610A522086068841819A89473C683843CD88210536B8C426FFBAD08DCDCCC133D7F35ADAA8952938DC636E4FA8820E7F100F38C0031E3FCC620AF851051E8AA11FF8CA0D0BC7484682EC211241204117B54544366AAB0A574CA0B642B0867E6C021E34FCC1873E16AE4364E10957B8C7141A10C87BC0A00A5590013CBAE0B24D78A0535DB8A22487D8052FE0AB8C98CC244158C08D486463918BD4163C4641CA2E6C62135D5C83F322F1832E04A10B5284439C42341AD28C463482DC44168040854EAC6113980882166230073BC2E39421D884F3E868032DF4621B9A8CE60A5DF892694482137AD04208B4A0CD6DF62304348844321818897E8020122100453C1A000740A84345E0BA873CD9379A7B6C0204EEDC44204621FF8348B820064C38821636A1CD6EAEA19B92F08034172A3F167CA10210AD401B7610044008819B413080168210845E84E1707A2041248E008D64D8604B9880848A30A136D1B0CF6082EC44230EE782C36D221B87036820B6C9CD9E0AD3995AF8014387AA3B16544032494843122A100415B8A01F42E8875493E18620B4E3703FE86432FA11047F5068A52B420169AC67CB79DE2306A348C60F18F1884808F20EDD024137B5D0CC9FDA200491F80F51F7AA337FD9E3A8498D4C399871B8C21A9606DCF80128CA100F71F6C206F983D31C6250B21759AB0E2ECDC1142C700C0674A31B41D0433BFA41BB4648AF115DB80303B41589142C231EA09829A1F84A5B7DFF39F40F9261073B10C002117C630F1AD8C334C0F08A34C8220CEF28030D1C214E4F04C11950F21313F4E73965DDE945C7A24A3C68318A2BC6230461E88467E461903498370DAD8884396ACB5E60B1C01EF648023B968A0008308118C188CC6DFF0003CC9EA0133C1067102471402DF4A38E2E00413FDCE0CFC3F5C3B0874B660A4E0907704E810CA100421A5E501925F8458CED0D716F8C8A5B6C58C10FC5705113E6810BD886411F5348DEA4685085C206C2C1C97041208210D5A94283AB41F0C424267184C29EF37029CB443680F08599A4610A54D80318B80213115BF948CA6081284E0C853044E10A0653C10631B8C1399486156590071066118F46EC2FFF0570D02309E6808B77F52F06F1F86C0AF4808B3ADC620C26A8D9148CD5046A81A81D7310C31DBAC0093FC881CA20BEB2A4CDE22F1810037D73F0831E64F08E3A940D10040012261486B02BE8436A40E000C43A812A0B28CC02B01ECF318E91095600410A52E065195C778F609C682AED08C63B42810211FEA2093C70840826CD6C0041610EE300841FD467AC5910B09D254B18981D4634A599401F1C0042D4527D6AA6590269DED635D16A56489796280887EB82543D00030498A0D9F8D60D14B2C1043F7003045658D31C64B922EDC5E01E6C2A8DC1AE0003999D40688FA8190CDE519E05B8EE1D742803C3196EB32B40C160132B18281098812A84A01741FFB081AFF2CDF2C1040315473083159A8082991A361EF7F074925D140617D5215A5650411488D0733F684305F0A0011690E78728A840B339B8C2538A26B983E54090091083CBDEA58E0CD0007E2D0F3B5274910C083FB51F93607024B4A082307C311236A005840B3BE0B947E2CBF9286C17D0C6CBA3150D06A53658278839074090000E1E6085D817AF141A78E20836E0C21DC4302440D4790485FD8573A8108C3984A109735FC6E14A8A0C17D434121EA08230C49D0315C0201312A782E324778577BCC30954489A096C0884A1449AF1BCF1D7427CC2B3DF41031055620228B281AB1874C11F3688040D4E10854EDC620A7598052A3CB07D0F2CE30EA84886FF0150E10F67D8A01791C8000F6AAF34155CA1110BA01A0CFE7EF1A29D010863908218D4315BE01BEA250820053C600284F034BC100B42711044F17B3BA1802ED106DF9077DC900DD6320FB39032A1500732100F77300C80500FB2710554100639200BC5001D50C00C57500836800CA3800A39500CE6000191700511C00877F302F7800231F40E8B30370EC371F307358E400BBEF007FE77282F510C0A340C19900A62100F1EC004BC057609E142552618C2277C3D6185214119CA400CD9C01E28E322A190367E300CFD907A577002460303E6D00210A00A58A10BC6100CFE100466E00FA5700C53F00E19E0078EC00377630F8156581900015810068B680C1DFF8005C1F00850500F8D101849882802B1075D70433FD00862B20C24C00359C68024417C25610F692002D3100BDCD01EED81324D302D532103410002C1000374A00F8E1075614003C2E107C2310BB8C00440320B77A207AC7402DBE008FFF002596002612003D16777107602547089BFA27F37340CB440438D8002D0D48059E885E45810A488112CC00E22400D8BB00A19003E28A33A33326B53F0039130028B600240E03A65300546E3087B5006C50005277006B71075FA200526B009911006CC98068B000363302A57F07942E727563021F41208C3800B539080D86824FE720510D0767E000A61D00157200CC51001AB500FA41093A430083DD003D55008D5FF70933D200B35D9933439087D400A7DD00735409435300048490803C00B03800DD85003D8B00835500383B00276300176400A5CC81354B6112CF00708A001ADB10A8D5607F4922CD3823E50400522057799D0012860053B7005FD887F7B6002C2E03451A39752C00487A30D92780F6EB80D68720673B36BB7F00EA220398204031A1706BEC71058588E2169132C90064D1006DA8002809091D2D60161100CB3900FDC509AF9B004E8800FAA89076AD0024B900F7C510979800701D00CB63901BFC00DF9B09BCBC00958C00C85500B6AC00CCD80039CC0093AE00194100D6A30011380042D300D7F50013C718E49F205AFB007BC400AC5B00C17582D61D00EA1FF202353D00954300B62408D1E1001587002EF500CAC7005C5E03011A09753408D91700B22A002489334E2F61430700B65F05FA2D00A3FB18016619D95C91137008C24A00D3D324256803EC420093D94028DA005F9D00C6880062D40049B400BEBD40023200923D00A1DC01C7550057756365D400B2BA00AC19003F4700712322724A007C9C00C2B200D1380074BF02EDCD00484101269A0073BE00B3B70073F9099E1F935674803BD060344D00440300EA030234C800A3F1308AC700CAA473440307F8B106E26B00D65900D19F00B61F00B66000D79070869100527F0088B0004D8400511000350F071A1A102DB000C8EB00849701037000622F00FFF0006FFFF50048EEAA80850040810A993AA5BF375A949F0079A3A9D11F5579EFA05F6D037FEC2850BEA102FB10DDCA0073FF0255B234252410231800932402798F00328D0014DD00110300B5A63433FC009E4500258B00FAD600C0A300AC350053A300CF1300CDC801510400FAA607738F008CCA00AB8D92A94920DC3386834701FC020026030AEE2CAA8882AAEAF90AEAF50048DDAA8E92A02AA880D41C00585C50F73400251222B0972812A40035FF230F2790A30500CC4402C91C00DC7D00E61B026341075A29103EF60027B2005C0C006DBC00821900CC4610359109F4503043F5834650005530005B3E001C3300213400A52E99403400A7880061C2AB348D0A168FF50B3CD009DB6C9A1CD509BB4190001800778800F432BB4421BB4B489071740B4F87001464BB4412BB3521BB368E00B318B07DAE003EEA000D7900B4820072C400A545006AB5006B7A07AF90103A7001BDF50046920519B348E99B40D53B088A0B90F10D002FB8001FB80068F100C3FF003CB3002CBB003FBE00B68B00F2D200D1940B8E4A0038D400C2DF088FB601525F0031980B919F00650B002C1400F10100CADF0063BA000EEE00BAD200B9FEB9C5A723C5D920D0BB22BC140035DA200511005BFA00DBFF00B4450A52AD0764E7A2C6A632C30602C34500CA7309FE6108274A90FA2200A0D233474590CA2100C50C00ACC30A350A00B7D463020473939FF101AA7120CC7128BD6420434A00231400B5FD304D56296EDA102C79320ED211C6280071F500F1F5093277002D0E1BFCC10C0AAB0022BC0A32710C0B580C0AAC0A304CCA3097CADB5B0C031AA0AD2B00210200D76200D74A80AF480C176000176600CD2D00224DC02B6D002CD600B58D00A244CAC1C8A0401900B3E60007A2040963741FD400B75000823E0016F209B1950097CF106CCB085987499615002BED0025840048F880550BC0F9CB00F54CC88C610C587ABB84D80051D6007BA600BC6400FCC91A28A5BB9573187680CADD10ABA6430C02B400F564906203C0133203E0BC22038F20BAE306DB8CA2CBD582A332A3332233412B76B634B054DC30153FFC30B487334FAF89FB160377B200238C806C0F00C37705EF6710337806B6CF0077C633B03511BB45110A49C105E4103785008F07A0349F502B0FC024AA55408605EDB900690810035F20F6CC0CB8A1AAE5230C9C966023C508005B808EDB80854B00811F008A4700B1F700BB7600E1FF0083D500C37099C75EABFFD7BAD107015C6600B89F006ED34ABCE8709A300095950057466034DA000D1A000A680230A50094B40AA65B40A23900162ACB765BC0FF4A000560001A019067D6BB3CBE1A106ADB8361B001DDA0CFBC0A124DC0C6140C2606C0C7690C1D2D0C1706C07044CC08560076AE0D1F83A29CC8725E0E02429008CD0E2A4A5109EE4C23E327330B5FF677BEF6071E1905CBB560640706E7DE73447F39F76230F3C003B8E6037B82602F22005F02A02476DB19CBC61B0FC07DE50D5F3A1A9B04C1FF411CB2F40D556ED0DF3E10D1570036D100678200B26F00F37600F0AF1120FD5067CF305555D019A2A19375023DBC006B0B3078E50374783CC1110011F700511F70827D0A7274006C1100C76400F579CD17640068FF0081F7002F4C0C529DAD81DF006DC000774120220300F1EB02229C048FE80066FF0060AB003D110CF6F8003B24099BB111394F15EB6ED57F0F5571105519331AAFEF20769900FC690B8258C052D400F19900F68E0074D97B5DA60B4BED00C58D00C16DD020150B3667C157660DC5870D158FF60072DB00264900350400664202264400FA0CBC5540C9A561029545225274D0BB3300FC2F12C33129E53A1024E5AB2512739A4A226394005843D7F44E3341F00038F108484ED6D262005495380FAA834DB5037F977CB9CBC0D37F00F1BD6E1F5C1D569F0E1B8655E2F600F3720CB530DCB4950D565ED032750D4B78C840BF1D6A1BCA92F9054B8FC0FF0FA0F3CD0E384A0CC8BF00111F9011F60DEE9ADDEF440031F8CC5061D061F3C05837D025CAC028F080153B0D9894532489602A4A32D31B0064DB003B090DAF1AC0DD1C00917602849D00A7E50B5BED0BB6F9E1CCAD1BB68D004898BA268D001299AE778D002DAC009C6A0B725CCC427C00929C00021FF000F20D0050CB0096BF0E807E5E818F54B77F54BAAB4090CA00524400F19FDDD190D0328D0053A3445AB6AC340A20E0C9400C71032CC128B4DD00E9D210EF53D0BE2200EB1180AA5700710A692857005FC006158201B30F001814D059D647799E00840E008BA408D4D906BFA488D5300DC204EED49D0D5281EE2B5D2A444E007C773BBA0400C73A007D1500B3CF00F08F00FDB50DBA36A8E5F89DB5F70ED239E04798DA877C9034E1301F5100184A0BF895D08EA7D02DBFDDD040FC5C39AA2504C0675FA0853B00F8F4806340001AD3003F9D00032800B931009ECAC43F0C00068A50D4C5002A99D08B71B0D4B900847F21249600815BDD00E4FC58A5BD1C3FF0AF3300FC54CECF00BAB00324FC5C33AACF4D0053F502B240003EF820804C44135C44E7856058A90026B84488D000F2A60DEF490DE58F10173F0E8C9745007D50BDCC455537564D4980CDA801CB3301CFC9D99A0475335C50D6D184EA70752411E71570082F0E602D000611ED0C8A26777A3A0EC8E808C761704BD9C061C4EE2E7B56138DED524A00253A010DB8001F4E008BBB50D4500626E4D1B5FB05F379E06E9FE0F52F00F8E40083F4E087A1AD81190D8F750F5726CF0AEBF0F2EEFE93960D8EB4D0F85300510B00FC4B0045D200304C0008733090DA04DFDC30075F006633E033BB003FC5609D150282A90E77A3EFDBE90AB7AEEF0BE30FD29AAFDB0FFFFF26840067610F3653CACD089D944B00F558AAB1D8A0448609B1EDA0C1DD0A18A8BD1B6E0E4BE10D91040038A13AD50600C460E106482D1A3B782603032854E2C8422AB502135CC6AAD9858CB8EAD16BA3264ABE38788B826617EB988543212961C393A8D3059320B8C7730AEBC2B43855BCB962880E8331106A7C91FB14C9898F2B3A49834FFB6DDB891C6E953A82FD278C324A664102D2136D980D768142D336F268041C0CE691BB469D5A255F2878592365FBE78B397446A9A1BDBD8FC9322C591893340A850112CB3D3897B642060D94703CB63C6765AEC6B81661F16083D7A7C3861070B3D32F4A6A099B1C48C0C487082980C028700812E7E76BC79FF13ED0D13504C461069C362ED6FB4BE810F27FE5BB85AE1C98317EFEDDBF9920E4DF6A9E88086FAF40ED93BECCBCE7DBB76EEDEB587D9B7CF72792C96D15446D3BE450B5F787C4521E2AB3DBD66EFD1D0A3BC9DBB3B32022428B400D178AC85303282C0182C8CA1A7165D183486412C5AB1C80E698CB1C59816A4C1429A5F7EF1A30E159A6822141A8E0966C51C8239E61E28AEE8040A5162BC62A69960D0B18C19A1802207568281020861CEA0C284774E102525264D00028833C68021461F5382E20646F6FA27AFA7B649C34BA7A4B24B843D8099468469A428471E47F690C70F4390D8C69E2F8E43EB0FE0FE98930516ECB147097B5EB0CBA97FFED94B8AFF3D862284102AEA89E08A475222638A49F7590C02F4C2600C323B6838A18747C80843D32918234D0F49508861D5061A69200675D489A19B28662881B6688879A3044E8C612E2D3E6F51E118598A2926981C9841B6456C9E3992174280B802862F884B629B6DBEB16739E7962BEE38DFA6E1661F223A50813AEAAAD32E3BF2BA5B57DD75F721AF3C6314088318347CA1C7BEF6D6E3448B51EE10831F93B8996C1F3B0CF96994130A0A8DA0868D2262C11520E0C4A848386166413B266CE1223B1450609E8E7C39319430126827C529A6B88749267FBC22871B7584C9661D6F29A326C10233610C130839E30C5E76029A979F9336C111A67990820DA895BA61CBFFA5D260A36AA7B679E10F41994AE20604C056628A4A26D84609E5EC04B637B4DF0254D03F924882D06D0A25930742167932022A6008F06F82A680800CC720C382BCC3F701ED9113AEA0A7D3C78CC1630943FAC926063862C0459D396205248614762D819819DEB0E20D40B658E5D7B44689C4051A32D0C18531D878669B674400A69148A02129925E2221068A5BCCB985945B6E59051B2C220962046E7E488375D61779633A74A923E2DCEB462DCF3F77CBFB5EFCED5AC162091AE2D10310333A68A13ACB9A4826885EB4D0A2171BFC896494065BC022887E48C21FFE584D069A70013C2430006850031602D80B027A42781B5B410724D08F754822083FF8C1FF327A71871C742C43178140C7DE900D15CC42057E2851CAC24083141DE3451648C9CB3A7105C4CCE411EF98D6B46852132AD4441854D00794809034A201C604B138C3509A3814478C21168E90871444F0B4A9B1616A79D912D8F0F225AAE5054C605B0A332A210D30A8AD3880FA539F0215B7B85D4B04852AD41E7830947A2C02061F8041E3EED1B21C044E3134588CE13AF019947046408FEB40004AC00D4E8CE255995B5525E10087145861065628C10C88F1496EF0630FD48341243C10095A782008FE40862FC6410C3D700215C0EB872792A103E04D0263774886243C10BC1FE821033F1826277EC0896588419923A045231AD1CC6134B3113A1841E6B8FF410C6DA8003B44E066BAD2252FF179279CE1E94E7926138D304421123100040AB0408356C4B3195818813239118F1F4C7304DB4183F978D5414E90031520B883190A7A873B78E00EC684831E2E390C6E04C31876204809F2910F6ED00214B388022068908305694843238C4614FC300F3F643313282B451674718C96B9EC652999D96172C04399DC282633D9D9606A52C4A20D45284A3CA2939E189827FEC51157DC0B239CB4A52E1AAA503760035E9682AD1B5C6B6A2F600527D4B007B8A425AC6AEC8D3DFAF48237724D6E5FDA831498F20F47DC518F1180C1236E44861C1422313938418020F057C738465E9A82C042F0E00305BC619325B0681CAC2083FF78A440B2934D411552100F382C61576F8085E98851020178AB3877F841F0306612DFB921126E1846EF920102682463129348466D6B1B891F44C21FBD70466F47E18C5104F7B709F58065274B8B14209716B4884714E6F0866E46777BDA14CF7636F5BD78916F1FAD40831FA250077864030EFD30513C5BD18C78FACF168F09C3846CD10C343443BE2D808034FEAA0A3BCC600423D001354710071CB86363C1500533A040417A488322CC288481A1201066A84215D2B0C3459AB18F15D86105C488820AEAB0BDED8501452FCC024CEF110C0BB8AC1339B8478B6F74821B4EEB6630B845DF0633180E1C716848736260A00418A4FE780C7FA9E21EE0CA86A531FFC250547D1AD4EAB6942573890D604843303861071E24A13964DDB2DBFCA40441D565ADDBD8C31CEB66C7A00161AE0BB9C7090A3B8513F09520F428E11420470F42D2E3117820C10E96C00D6E94A01262F8C40FB2010A506022D1898684AC1CCD09DA3076747308B4688913095DE0E477A7A545064E5B12D5228309FDB06D10B0423F2D040104B5ED0703BA50855737C2B25568440A1AA10838FC400120361737B7879D7D64E23BDFC1AE765A519E63EFA3194D50401636E10750FCC00F7E68422B3A70EC662041BEE78D2F1AE4135F74843BDBEF41C279E14B847CF5AB15EF69812D305261FB52B4848FB34309EB8B215564B863CD308634A4418F37B0B00EFF1F3ED1A85606435DE4600A1620C34C6B989818DBAC0C30E869DF8058C426426968437192119F248C8E6F9C692367C45F08E188A729992F7D81DAD5AE465527B3610F08D0472390D003046C4D0980A24B9F0005A82F04CA4F74F943A092C0B534CC0D015E62C70DA400D73B0281518B681415E8FA81477C00EB3894D4E00447904714220A25588D4940D0851860221B8AC6C41CDA4E02CE397A0E2348440934A92B62E4431B961E4E24CC10895F98601A99F6BB2E64610E73A8D6249230EDA723910C0F2463B56E38C211A051F964B841F320704608B4B2097830001E5D787571650D875F48B79BD6E10E79C2F0AEF1113B3CED22C115BA80C21FE0E11709F4FF85B9E5AB6DF9C6F7C2F135CFEFDFE36E2424BF05F0B54C7A5BE16E916288C2D3C750858D51DF09FB5B1AF8B5031A34ACE0441021132AD85E13DAD18E17D280645140C1C0EB8002158C5F05248EE98D6464FF77C464E265E0DB608AB8931FE3B8BF380379D01B282104A019B92B629AA5619AB6620344E90B116084A570B226FB8757108117E8875FB0831AF887ACC1AAA6D08B2D811A95D312BE28B33A323229000344E1813DD80347D000BC21048EE38123CA1BC158847AA8072AE04118B8BABAFA003BB0023D400114C8866C20011240014403051460BB3968B4B88B1512F0007790B4D121810CF015EA31896C480360188792008534F88631F803676809FFCB73BCDFE907C703355203A07EA81FFB098135D8043DD4023DA00F6EF2886EEA8E79C12E71CA0E34000FF0E0062048013168871F888204D2063C688F66E8806CDB877263BE7C89A7F650B6F36A01246037E0CBB6E44B3EE8DB900D99900A5BC58EF9900899A87FA3300CF10563D8075FE88012208226E09EF94B8030C8022698852CA82132E884159B82156BB19679993FCA020890A160689920699963608529D0051A9802973A0608A001F41B95516102467812019407111839281A3907EC8B3D60033A312B369A0B16A08B6AB98211F0817D38014288C139FA8718B4A3738C410D48C1186C4123FB4784940239B8231B8C161B5C8445913A1E54331E6C14FF4709C208C03AAD3B012220012BA883074001191849501849924C344C20012A0484CEC1044A183B49FBA44FD0806E610E0830896DD0045C8A843090873110066A20869FD834A358C3DE710368300A92708340700310A81FACE807CF9BCA35C043102881D44B3D10DB1E78B98CEADA8E79F10FEE38B60EE0049BE8827600843748A0FAF005FBF00EF95236F8E9976D432F767B8F756BB7ED5AB7BC7437BF348609B00556B4BE5454C58982376350033CE0049644A176C88430A08E50383F1882832978916070389A593163C49189F3218A0B227D20A22112B229621A96030636601329D80616DB0328190379F80711B8A205AC22D4443911D80B2DEA8739001DFF0FE80678D0C34D60804DD0824840CE4DB0023C300F53C1820A7B9C8FA9B0C8980C2C9880C799004CFC980960457A5B45E8F40C8A028D1520037D9B333CFBAB294889C771076E100338C02C3840429294014C60BBFB74BB46EB1C1490041F90B45D21064A6007BE5B9BDE6007E0D19F4808815E903C9C0882D84ACA648006677085E032035418053370067F5886D8EA056470035C00056200045CC0053D385114CDB5545004454801E16480355883AC483533B08294F2351D2D172220A7EAA88FED3898ECEA8037D8832B88847680031B2082C3F28149940FFB88D26EE3AE7E12BE16E8CBBB64B775C3088C980C76E352E8EB9889C282F582BE7EABB0FAF237FF3C8003258C0250C80619880219408128C80624CC06978991FC93890590B8BA82811BF32922128CFF1B8C2721C721FB0BA0491AA10082DA61821CB12B1818CDFF731213B8A374443947080246E0134F250E25480315F0004EB815C6A28D1DD824DA58D5D3998D3770D5D24955DA4804C5AA553E98D557A5D5C48A345B89B455FDD53748841D208112888724844248E80238988739BD5319483412B8CF68B58239A8032DD086472A0158E8A44F4000D661810A600161700554200626C00525FC856CD8012600871D00076E60D10C98254008056C1C151AD0141A68821F4885614006C003025EE0056A801642A0865848D858F88684FD8672D883852D8758A086FF3D80026C22028F00C4ED41831E5D17EB4003E920B677618C1F30069E8C8139A80226700758700727C5037C482005724B99AD595F58207EE12E4D24BE7E1ABEBCF498F5EA98556C01C014A954AC3E8A0A997AAA2C58EB86578BB52A882659AB35658A8778E0845CE3203DD08318E05AAEC5052B50072BB082DC208127B4D35998853A30119481A1179A8214D1859679875181CC30C804F88B3F70CC57B7CDC66CBC0742E80BC1ED0B946BAB2B52B2DD9C1A2A881426A194C4882918EAC6C7A0810E60A194D286751D5B4E5A8247CA870CA8840CE004D1E5041C18DD1120DDFDC2811128DDD53D5DD52D5D38A0814951994C98074C90B5CACADD5AAB35469CB5FF14E8076DE05C6D658237F8840A600EE7A880A4FB066180801569056310121FF9911539065DC0C660C88654F80528D005282830656106596888620803085805E3218555585FF65DDF1A10861A5804F6150661208508589E5CC10349E4266DD0585FB30C1E1DB65B34C4EC70CB28C01F3D20013850872AE00605E00443D056CE7A835C88060B8E8644700753F0016DF0010E9E447ED959F3B2446C8B2724503614C6C4755B8F8E29533235CC7853033B8886617086597853B3554214C80418CA822C403156F8A365E44C63640595C091FBBB8205108518CB118AAB382AB88263680240808376B257262906512886290983840B0684CB0218D2C62908862C1895FF25E406F5C9353148017E80B52A7863D2D34349D0827EC80A1B08817E10021028897ED80ACFB3013B0601C50B0493F0022FE80745EE87530B8210B01F2DC86349B6014990E435B00133006448360010E8E43BF680E374E43CDC846EA8AC2E60805180073CC443E2D48AD1AB827D309D5D998168E084DE405E70FD030400065EA801595890EB9D90080983786A02930109637829E7253002DB185DF8AB609005F515066C18D845A18683A50684C5E689FD061EA08601E0056C208501C80748D45140F40515B08E72C98EEB081FF0C90E3CD8817C28D6CDB1824888026DC8873FE3DC25F8677EF6DC7CA8848BEAE77F3E6858486862800562C06077B80677D006FF04E23D4A54E1E333073C6861919A288EB6030963062488861D8881DC008579C8063DC8842648C243C38D4343344CD8014C60829946342664826CB00212980326EC696A9D032BC0853900042BF81CCD612740E05ACD61499C86C23A458139C8041858312356B863F0E17C5D19970A833FA22197B1BFCFDC53FD03A21B2B839DA038400D031298D33A40A91121915DF48376208C23228C49A5D4C1B0191E92116354893FAA035801051200846C688704F0C54CC80485030415E8044CB8A45C43841F40844BAA02CB765AD21B3D7880872A2889128080B1DDA419A01E16F8820AB8160D30016C58056168DFF5250573900559883055600566B8825B205868C106FFDE5E6DF4358755E0853D008357288222C0166CB91DE45E6EBD100130A04142E0845DEB5F22904449E4586EF2857676CB5B7CCBEFB845EEF0831200E52EC0847CE88711C00274EB00ED66D2694B200F7607973585875600FA560061A555CE2A016B28812520686E30046E10DE7F06346DD595DA70878CDE908F21DA544C45890800E8A28543D39C390005F19BCC2C00249AA9199BB9B1D1A46BA4421AA2D9B89FF1C9311883BE6084A6700AA7CB4D296084C3BD9A17608336F10BA6F1C99F89A206A4C0BCA84D1C474DBF10DCB642C7A139A243354029F0862F91F1BC80C0A1B06B1A50816CE087C158842C483BF68B4298166C4C2086CEE91C1278807BC802FF91CC824CE8DA4BFA81F88C07CCB9A404104993543478B8CF948484DF8484AE8D011480C348F80312F8AC37C0816FED8D0AA8005DC696A5DB86A52BEE0C048369D0806F4043879D064657F4467F8557F88733F9077638BA3F40F42438F4513F7444AF006F40F438620704288258B88319D0EFD9D8015A17190EF6356DE0DF94F208B76C8202F6056DD8811128BB48580224C003F8922FF9B2C47E49B79D6D76F4BAB0633BAF15F605E6B30F28D55F0E966F7750003460860C394C0A2337129E8800808565688479500140B88217C886950A03AD2E3197C94C95689C9898B19DA98932D019B4EEF7403554BD198A14FF994355B327F1B18417327234D4FF039AFF04542AD4A42AE4CE0BA6B8AAAB11C116B7AA1BB8222B7204231ACD32A089BEE1003198072988844090827BA082FCAB094B789210778291BF914EA0812C98071E3E3F314E80C4864C9FF779151049289CD379400178B870699D8339884F76EA73FD21847BB1952528F43650822F50865037ED0A5006255006AE971BB3288B24F8F4503FF4503FFBD3DE9A2448753E090E4F8D7BB9F7D42F50AB3D30037E0EB44E3A55DAC8069189829252802810996E17196DF805770891FE7D0362500049B40F2645206CF7369975CBF6E017650B3E4ACC0FBE8C2F134E2F2E9D10D16F10C3BC0858CC90CA900F995D8F2CFC015A38A978680720803F705C1908D87098B987FF1B92D420EAFD40E5004325227D184DC100C0A462C028F238247F92713CF8832F929E79A2066CA226FA8B07543225C39697AB40BDD07EA6F8126C39478E3B781D09071D497A04A00210F003C3C88118404E8CE9E42A78071862A14330EC4C78CC9F8F3F0F3B7A390708143264CC4B0108D31C129030419A134F1D091441984402D26547891227DAB068E3F12348901D3DB250C6E2244A2527957C69D9126548922847C6AC6993638524452870CA90E7871E6E804A5821FAE6E8512B488F123BCA249182680A90267A13ED6822A8DA7CB8F371C107D8AF78B48DC563D6171EB4BED0B06D1B004D33B8CDF6B56AD1AA6E8BBC7AF3DA3266CBCEDF15828DED1B0BFFD61D62053EA22DE1D4A84E93597A48CC5391204C3B63BAB21CB3C02AC7BD1C39AEBCBB720506EA3265A850D1C79A3590D840A8C89E4DDB046E138E763BCA7D06B7BE45B11D0139333B36876059681CD3159A0C1029BBC7E4DEAD5B049B6DDBB067DFC6E6C6B61B69C0FFBB017EBC79367BE4399282FBF7192A304E2F8037278DB72840EEBD9BA2C28A68531C3345186184124A132AD4D1450A40D0B0DC21ED64924918135A38611D28CC238340287888420A318032224273A8732224A030A04D248BA42003314B1473138D35DA78238E31A1F447053AE8B005273D653024371995506491191559D491463A39C30C564479145150BE318355475D150D545D2AFFD05557609975161E01A8B5565B7135D34C2B72D585570BC6D821D80A583483870F512D85E50CF97012CF81A1A850200D58D0600C04F4E4D00969A8391A016AB411821B0F26C4B2DB1EBDF126DD18BB4921C53FD9DDD0DD0BDAB1C18608ED393286148C88E09E6E264811C926218410442020F413442457B011EB6FEC61875D78A8DE505E792FA451AA7969A4B1CD0B49383BDE3F5288208F09C6B906C323EFBC334A1784C4F60E0D5074D2C819F32DB080289D88169A05A345620184988591808575D49189BE75CC33CF87030D04071C32808209C2EA98682228F0F81209339DCCF1062CADE47831C619DFD4110BF6B0A08D19382C1324C93FE4A3473EDCA8FF9CCFC979E8B144502AABBC0437862CC1F21234D37CA4CC393BE9242CB0CC10CDD0D118CD25978920668A0F785C8067597810E10B5A68ACE54B331D64DD4C0B2BD063470B68FDA2273141C352C20C2504D9CD266BDC6143109E2493CC11D0447237DE79EBADB704C904F1B7169B083E0A3CA380DB45171E78D0053F2934D2C00F62FC00871E56C46005099833C14436758441433B572C73C60DAF4A919DAB3944428509B389669A6930D016DBECB34F8A1B21BCEDF1E93FFF30D2BBB522BCEA9BEC65A8738716FD6C92832357A8800215EE2E70450E16D0DB4E02A0DF034A24FA2CD0C93D4F4C01BA8497B583FD85FCEA8B42260D147C300908297C222655ECFF13C912ED3011A3311AFBFFFFC53A668F24984007231801C93821860472821B411952068404C17C64A01295F841252A584196E5A3121DF449043991079CDD8C65234CD9126CA6C28C046D6857B28AD112C12505284D695F72C756B441163C18A30577C20362DE60249529291F2358063746340726CCA2094D004507424183291EA38A5308C66744930328400176A6619469A6E72E77693118661CA316B798852B1E230BF6CA448254308B2880C20A56C806151C018332DC03064030C118A2930331AC21045AB0811642D08F40B8616F91D0C2F33C940DCC91400F3FF801271CA9C94DE26D139638412718B500D090AF1D5938A50526C149BD05C2059170E52BFFEFD6C884202C7E98989F3A30910277448213C67BC312EA01C06112D3262CA8003BD871827C94006514CC2026599601074A530F111C52032118429265E08341AA04272A81836F72629CE1FCA6057BE2410E8E90673F035A09DE50362C5DE92A55E90A1A889027792A85090AF8E73FDD118D1150420FBA085426A4A8827960A61D348897288AF18E62A4860AC2880D2F78110BDCECE6529DE28D6E7820526C703416DAD2876E7E539C6CAD541FAE810D10505AAE3F668B38ACBBC10B5EE00D6FD863A77FF8024954A2047B88A10D393DAA3DBE905416BC80046D68C91FA20A9E5765CA04193D03218CC39A32DC0206C5B80210BC780577592F0BEDB8070AEE95FF802C64C20F75F0C32CB241826C602273B888811E0806871F20221EF16880186851053DCC0161853D2C24E6470B3F44E20E4000042C9640856252B6B23901C31E1EB18F0E38D1177ED0A1367E318B5F44610751C84614A2408C1D58617FC4184A09CE66A49C718383302B01CCF2A0C1675A109C0C0CA7053578C27CC0AC841CC4D9715396A48C48E54AF11C1B3FDFB003D2FA221F9270462A2A1705B74EB10958D0852A7C81431DFEC2073AE4CA780DA3433CB9E3B39EC5831F884004AB7560111188803E68570618BCA335AFB9E8ECF4819A77EC77BFFA50413BD8F047181067358B308E7172B39E50412B097FB8013CFE702A11F8EE538C600323A4A0076FFFA4CA3AB5910F6BF4710B6F5D41A2A871D71540399A4EBCA3135958543B3A118314FC200BFB9A100AD49109F42DF45FB300D82C3864B08381C2963288DF1CE6D0908515160E56E8850D7800871DE4831995FD32008F9904300CA018FB584B07D2DC8102B5220CADC04218B070172C602118CC80403020A00B38B759CD1DF085363E1B857FEE00294CB80A2C88410C239D4DB64D9A99CC8EA4B39B519A1B39A334A54F58029CC5339EAAE506263931027E74E16D7790840DC851050FC00DCB1EB8032D7E60051D4CA000052043014E5088421460D7BE7EC4AE7B7D820F9C8019CC20033D2060070848831EC6C0028A634A9BADC274A57F2C8E6D5EC38B3950E1FF0A521030B65A43D3D8748A58E231410EE6F3822EBCC07722F8DDEF4E07AA78FCE153BC09E4195ECA0161B0A6C5A4995E17AF708F319EE01DDCEE44266430854ED0E10A4E3825E832310F5064025FF3F0436500F600146C7C20020185C1E84AA283CD6F0EB8C00524F410830648A01E28389B97C12CF38CFD2109FF20440F5AE10777EC201BFF8C866949AB8D7138B115B3004432A0E1865E7880181D30869B5B10E743410002748680B1E9F1E6651B831E2BC8B32E74310563140ACE6148B32F88F0D95FB883D0F2640A9682568245333AB676B7FB1BB4C15A6244411BD9D881A2995068622CE30EAF0C422F928E372F44C20CFBB0C39C04A30669AC80F294FF174C2D7A500866A8A1005F93530FE5342708188310F9ADCDE9631A1B0863BB36D21EC32CC280EED888C0A5AC394384C373E124E8F41D369842155EE001A6FE631B9FFA94B3FEF0023DBCE0A3D401422001D93A9796C634EF98DE15A0700FEAF1A71345B5071D72C0012068A10BF1D80403AAD08D6E4C4805995050BFE6B13E0D7948C9D9003993130B8A2897FC443168C41CB8410444C11BE4C364CD1C02E2C817240102EC8130400104B859A0ED00372C83078C820D20432FFC0D3298810E2C430600821500C2900C85E0658329FC8236104113BC410634820D84003784011AD0E09AB58231E420A2EC20D6154231141B1930031408E1099001197C9DB3D1FFC39E495D0BB0459B500D1180D60E005E14F8C2A04501116443068C40360C4A2BB096631C513680030AA01620985C3CDC811988501EE44125B4211CE6C1012CC11CAA902194C01D5AC3D9CC80D940C512E8024BE5174BAD5EEBE0C6B519A271C8066BB0010DA400284C011B4CDB4AB5CE0D00812384000954121984012D90C00F5CC11A44C21C24000A2441C7DC4008224E1774827B38020FF486AC38C219F0824A95C169CC0769B8CB1480C668B88123E8430AEC463FB0C202B4481B8C8103C8C31574010DE80B86E88B5BC95FC008C44030996199883A24963AE8012DC0C11CC4C028C8408BC8551EAC42029E638D1CD3B348012FAC022914832C0CA1D5D1FF8013358138F8C12F90D60E6CCE6B3910272C033934C2302CCE28A8A10DDCC11D3442231C11436212375881A24DA102F88102648018B8C21DE8801FDC4507A04107D0452B3401E0BDC12F7400E90543B2D1832A04A1AEF5C0073CC2099C80B3854D13B4991FE8420EC84218849D2E985130E842A191431D8442023C628184013748421E58035332252CE8A12008CD0CE4C2544E652E5CE55264895524022C9C4005948E74E4C6188C010F7C94A6744A6EE486229A00788CC1ECA8DE1F39C22398402644413B84010A4841168CC892CD010AF8010AA81C20FC40BAED9123FE832B628B0928A309C0C018F8517EA506B7BC83F6C54BBA254024A4811E64261B6CFF022E984024C0C01FE00623948107B4030A10C0FB5DDCBF000C0AF80BC0C840360C0426A0008994883ADC953A344036CE01014C448B80021394801DA0A3711A534E6C031800C31EECC1377C835561C32AAC026A9843319C4231FC600E304330E4802A1C839EE942A1B0593DFE821F0CDA3E32C11BA8CC0F2CC342929A41DA4041BA82E23482071C5106548EE09516135881CA10030B760047B6429AED032CE80027C45307B4C082DA812EB4C22D08431830833060C36C9C0004E85C2B70C328884313B443064888E764802454823508822118028A1AC20CB02894F0495524820B6D0955F0C197ACC3DD780009840214E49108BCC01F2CCBA8648A74C062B624FFE24BA598EBADD41890001544421786C12C384213E042366403137CC89536590C88C1B27C81123C062360CA6E000104BC431AECC63BCC46A4C88769DC43686C1F6399803844020D844224C00130448215A040E4A44020784016A0400CA8CFFAC066C018CC922D595D69A33AC40020C4C00F9C881580000944C22A4CCC0C58CC711E274DB481125440CD2100A96A471114C12B88C01E80C134ACAA48C502ACC22A2F104246F10236608330E4EA2ADC42043C82393C822C006BB1991104A842D5ED99D9D5E338E0E32F4C613F46D00135023FBC1A429A81E18C82E2F848238020DF45438CC08236A08131B4020DF0423DA8422CF04046094357C9420EB4023164FF800744C1E7D0800A84420EE80237D84025A0A8D0A0CD0C58C39540898CCAE806CC4056BC418C2E850CE1803BC842B092812EA84036FC800DDC4D1758411304035889401A285FE91047EB481BEBFDD1F315E20F2C42240C4315858208B48315C8C02CCCEC88FC252864030A00823778C41774830A880047011214884218BC8023DC0014B4CE3B14CF80810619C44B3BACAC3714830584412794810AB84123315224A8C314B4431DB89FA1EECBF3B82687D0950C20CCC118D68900C2A312C0A3C6C0A566432488E770CAC2477C6AA7A2230B84AAA8D65C4E2481E026C10D200003A60102202E026807023CC33614C13FBCC23F701818880030B46A736A802B5AFF0AAC1202AD0201AE52C174DEC2AE72CB57C9C20988864F86271694020D18881311C11C29C0DF11037B8A411C48AB07980105F00304BC023640411ABCC21E68402CD8EA2A984330B44214A4CC0E2CC3267880180C8318F48224DC411E08CDC0BEA89540C906BC011F282C9674C91B28C00C284009E8000E0403A0792416E0593040013C521414D04318F8C10E70422FDC4D2390801F848E250ACFE964CA58A6E56FD040159800324482067681AD200306F28ADD4482175C6032985F06C04015F80123640A2C5A023F884014384230BC833C2CC26BEC177DBC4B0E88C230448207740A1088633F844021458224CCC214E08B85B85FD8F68BBF080CC2184C5D15FF31099C886FC66DDCCE4124245D32E8C00EC00219EC2D15D7C44CA844057C4105788C3D548017F3481278B1858DF1E0A64112B0C3194B4BE2922AA916C136BCC233BC821C0B0F1D176F397C030F9443AC12422C7CEE224CE7AEDE82205BA72C5C41350C61101A61100EE123600318FCC11E140302FC013B2CAE760083BA920204F882152CC30189411404030CF801D37D0227106C56C66855206C56B4F2C246833B8CC0127C403D7C8007B89A0E4CD37EFA4218C4892EE019199CC023908269E480BD66032E5401AF6C821ED441163C421910C2871DC719CC422440C12D50C12D848309E04230CCC129E0823F7083368F414BA4C1677443150182094C0A2C3AFF02CE4622EBF0C06CEC177F354AF6898228B0C231BCF0DD044136840290CD830764C0EB5A8811F00B86C85F86B8A6DA1631424C1936B62D01E0550C40822A4D423200DE9154F1DEEAAD159344DECEC44C289549DB4352B544177B710578038F445554F19EB494B1B4B083E222AE76E4F41C0BCFE40A4F73EE0135C46A2C50830904F5AA16DF1893C23370044AB4444E20800860033374003770421C8C00311CC309C82B25E88035E44222EC802BABB22BF381D2F04162D0900FE84007C80133D0C33EF01C3148EA080C830EBC9A3378800171423E100313FC020B1E6518ECC3E74C816183AD276E423204C2DD80556C30421A60871400832380000C07C13454FF81F24D831E9FC1647F0A1B000320DC80097040EE18A23C04430C648309304222CA87A3DC33ECB0022B40012B4C88057C2DD80EC85D52C884C8401DE08BBF78C870C7A63536D9C29C486E9A480C34371C34372624432F8CC21AA827E1793476EB08476CB7481B13777F2A78F72D0B7C414A8CF749A8B4376C717A8BEADF8AEAB2F09E192B8BB4A047A9B271E25AD84E55000BC4021030B58EB0C01F20C034486834189137330302E9C027E4C106408558179AC2468502983554F8C035840958F8002768831CB400047C000A5367310C619ED1A0DEB1560658E028184010D880070CC308C40337F0239301822529422354812444C29ACAC7A48CC11E3C034EF1FF421814431A54801900432CEC010FC8434CA9872394031B648382ADD4AAD0943C4847EB51816A6C55F5510FF860119C9AD583704F24DC250FDFDFFB658287000CC0640887DC2C26AC6D43CC4F0CF89F73C7C07363423F30811FF467A7E56D760F3AA173F776937479BB040B788300B1774B8BAA3790B74AF46D1B9C003BD8C8020E38048C437EFEE41B444125C48121B872D2D0D00D2146869B57D3C4D70C8C000F50412C70181B4CAE143467E78ACB6BDC423170A7318402FE92A01878002A48C2065E172594DADB60993F44C22DCC865B16E92B5A22308CC10DFCC1264887B514A2301CDF94C30A0FEC0E3DA7A5B80301AECB4769C8D83DD4769CDEC3D7D2FFC01464C283F4B6D80E74FD75486CA66DFC9000FF4D7473F7FB73130C2484C01059012CFC4077173AC2273C987D010C00958DB0401288C02AE82B31B06F30840131C4012CB8F23F794986E7D0985C0D1E7880341481E046D5DF96F1B42CAEE482813C540A212C02BB8E3833EC59186421378CC0AB61A033D8803FECF8235C54EB58CBAA38823064B925A6810774F0A700412C8C65B548C10DCCC2B7F9C114F8110F88407A14A95AD6060ADB22ECB030BB67C1663C48BDE4CB706F1C35728896CE394328776201020144AA9EEB790A54C19D33B3ED42E41B0C81C7283CE057314857160B988312A42349A4412C980313340119EC80999A020ECC8059DBA88D9EFF3A58EC9059A0415ED0993B5002189037797FC4E19BB716A7777AC774B498CA3F4CC3371C2FAD0A8339C8020DF8021358242A38037D4682393842EE1C1F48B50E75A4013CB0417BACC775FC8EC7A28008BC432428005E8DC026DC0D3F9040186C9F3EEC46C8E2C66B9C868C81C6149CD213E8C221D040029CCF42EBCB2CC0B96CA6ED406C48DA223773C7ADBFEB391CA480CA11401770024600C2A201848E226D58B43178106142850B193674F8106244891329563C58D0E2A32F13FF6CE3452C18136C2664115936C35D2205D714B873E9CE474C3C7802A041D3C2969D29760CE5496210A3447B4AECD9FBF2E74F92344BD36C7B25620FA155278CF921A603FFD50F72FD9850E171E38BD13F6CD8383261028809295D448860F48FCD363622A4D0DDA6C251996410C2D08070EF0A9429EDE6A120F16354A4489BE2A10833E5CAA33240802CA2F24ED43D0BF7B26469972541964C990AA3308D4246B6D49858CB90819AF59C3990E6C4B06D1BCEEDDB29E0608AD16D84822556AC44D3C12EA845E5CB993777FE1CBA41187F083E2C18966F075D69F6DC6A8203E5CB97317DE02182C7269A66FB8CD12B74C2D0920A2CE84367F1A5C21F6F49926C9B46E8165D9A20470762F4C8671B2A740903902E361183091A8239C31111D2F0E6876D6E48E3060DE7A24B8A6D9A7004864896D103941D9A0863C5305CA4618A1C72608615FFBE5088C28A7836514C8B2AF4C06496503E9BC282CE46ABE335D7649887354CE62001936C5893124A02D489419DDA7083834B44708B21B718BA18E597124AB0829838FEA92EBA36DD7C13CE3811DA2316EB8212A68956C250EA15615AC900161FAE716750F27CD066269A7C51AF053B5688009B442840C0B9E414C22F0D114C2846971F1AC98618315E09F1056FBCB1673F464CB84217194600219218B0808C8A3D5EB0E705FDFE68C7912BFAB121887E24E827087F3CA0E5075CAC606216719A68318C766024038A2B7208A69D3A409923832E147383812A7E10034B191E302D36DA6883720E4CB2BC52372EE59D37372E63A842126DB8E1A60458965841CEFF80051E98E084306241164B152AE80508FCF0E3167B92F2080B40C53354A699165DCF167A7A20C49116865005283831FA2209308060861B729AF0A38A721691679B6D5EB8410A794470848D0DBF28B5042A4C808106C3C4D0228839C268248C534639A6893A660107970C1A20E70E1BD6082208496CB8A38A46F4C8C00A12B289E261154279F1981CA01025987BA648601626C4484CB1643681A78A06C408938039AED4E34B30BB941711797FE03285207CE0C60A40CC8C82CD822DBF1C738B3072C49187BCB1228328CCF9A328FC10E0858612A2B9581B431345AF999C6AB965803D9831640876DAA48F77169430E88F1BF68001906558E4870D1EA618019EFF14ACA8030218CE0AF10C1ED8200108367466430A297A66E20A29A088849658F4A1E2965B8AB136181A4A69621C5098C0058E6568F100151B90E92588513CF040077A801C1398108528D4ED079108423BDE91033240600A53A0810A76A087146841319100411036C180E62102845D42443C429838C4A5C00DFADAD71BB83183CCBD1086316C080BAE401D85118405CFF086419471900AA4811A10E006271470286DC0E48830B9C04C9AB11E2CD8E1048B20C43F3E908B38606160F4F98314A8900D721C8306A8B88123F4000425FCE30C40A0C2145060851F90002D8EE8CA3F387796B330A20E3C90C21942B08C24BCE215C0D8C31EBE110BB408830AE85B1FFF1482A10B1A84A209BF900113B8F183540C237FBD0841107A7187636520187AD841367E318B2610C10F4DE8800AB0101A1A24201451400128480087511C216F0C48410A7EC01B3898505E8D88C42F966026401023036DD8880C99D9CC2CF2B00DB24843C90CB6B082D8631ABE78031914C08911E0200F5648840FF8D0BAF210A119ADB0852A0AF1086C8880072DB00605D6849082DC70392CF0C6364C308B6504E318A340803CACF08E4C718E738C6083371A010490316111DBA88B3CECC8083F3CC2114EB8C40F588014FE3005010878CA3FA4C08358181208D810C62D60B0BE6BE9E218ADC80628AC000E40E8211E62F0802436C1BF208460148D68C4DFB8FF1103C2199513621043233891014EE8C00F78E08618E2B0D364643012FD580303EE17895994605FC4B0C22792804F679E15ADF964133622B0CC85DC934D2F90C52F9AB00353408019B220430BA2B1857CAC6E89B0DB872DF0DA036CF0C01185D8401E12914525DCC0047E58062B8E818C1BB0211B61A8D00D5EF082A5D4AC018430C11848408534C4857B090DC3234C50865E70A23AF7094B7EFEF08224D8360D08B801026AD696419ED404BCC006154E210B190503A0020A853866910D26E8010E621846176C108210D86013A308C10FB8E1D411E463099CF040347C7101418D3326D15000091AE101335C551B6035C43139C18BB4DE17BF6A55427D2A4085FF476C03222670E41E4470821D70630477A0C41D46D00108E0A0122859A22F38668C15F460113CD80336D0010B0150A37221AE9412922085262CE35A47F01E10AA80D54854811B99788707442B02504420536491826AA170860568410FF6B08E51C2E251DBB2A3290828C2369EF10F4196231684E0853084A18F55A8CFB8CC8080236379185A74E10EA3B8433EAA968F4A80B7129F30444B7CF0866844231130310531DC5C8248F882186105443E56915F3FFF7939B138010C46F20D29444518AB406E39AE830042140302BFE0C63274200049CCA00338C8C73596589356B4C20ECC784404348C0D3BF001038DADCF45DCF4024784E19F61144139D8F0871F4AFF81173080423BAC008F3A38820763C8C60992C0886DECCC2CF20803144C40072D0062D514F1DD1794811F6F2405B7B9BD4111E6328D6994C3A4680142A26F71856084210A7A18C61D36A1036EE4231FDC5802BF3270873BE0A0040A48C41BDED0926BCC0016B0E04624DC61055894E098DC7804A019DE7089282353DF20F0340DF6C322FCC71C5830452574600334180207B0B8C0A26ED22866F42002B5D3C007D0110D010CA07266D55C1BC6820572E4A009FEA80313FC108A0440262D8EE0EC3EF7C00346A84017C726E98E4D208F2C18A3B5BD6082909F03D72FD0A70259AFED473FCBE40FF1C0041110450298E001078D80090A38DB2C52498428708212FF1EA844091291885CB8E40DC4304424B4F106338915162370F8E0090F91A01C4C191578814863218B562C4100DCD0865F13819E9B184315CC38C123A6F80F6AD8E21A8C8DB68899C33036B46307B700C5117E110A5080621634604518324104B3A9A01D6438011500118634BCE506746C7A1668D0EC4D405BE633070AEFAA8D1FDAF22709BBFDC71ECE200C5680C203A3C82EDA1510851DFC82081D30861DDC91874FE820C295C7833B881189391FFC9856D0C12B0A5FFFFC2AECF076AA003BF6B08A5654A212B0000742CE07D4C316DA43F34EA076C0E01F22000FAC680092AF39BCE11F72801C900115DEA17CC60006AE8006B2AB0B9EC730A2E031822113FF38A103A2C431B2A0139C40421C810352801BA82E3A241087A60D3FFEA029E421166E210C70E17ECCE06B38811814E017C821123CC00AF6A103A2A1047020034A200ADC211A2241017600ACC48A09704018ECCF0BBF70865E40038AC1143CA016F2600B9620112E2000404DF73EE01148011BF6A00808A105CACF1D46CF4DBE800DA060191A2103CC610480611ADA621BEA2003C2A01F1A210960800C60200C66410C40600716640A208848DECE34688109AEAE0D7E2786E8E36732650F78C10325AD11EC0D6C324045DE409832E0943A201398C00A20471212211A6081188841172B6107C010188391209220168C210E5AC0143E610B66A0009B01F336AF07FF3E001B088107C6100F04610BE4206058801DA8200A5281136E8116E4A01C06890DE6C10A2200383420CAB0E10CC6401F46400FA2000AF080097EC019FCE16BB2211432E00DFE01AE9A89059461F1442016562A07B060160041BAEE60181A01107CC145886045A02007E8210C92EA0EBC69044640A824E117855124EDAF02444016B861076C4100E2A012D6F02620801E36EF1656E1B0F660005A20112A010F6C70395E8010C26009326015C4601AF6400ABE611B42011CCC61A8F6801A7860CA568509586467F6C011C6A00A82610EB62104BA600FF4B09912EF05D86154A841188A010A1412107E6004686118C82103E020A968410CE261199A2A08BCC00DFF32C80DEE200D787224035320D300087C8013AA610BE2000704C114D0803DF08A1948610006601AC0C0762E600630601A02A602CA210790491896619006A91C1E80188A811674002A17811728030AA69208FE6115444B1F682107B8E1197021182A80F40452097E88B7A0C22C6160F6242D0396811CE0D20A76C00A4A800954800C3E6011A8E11BC0A008A80E3005533B61E80B34A01504401696C015D2B0F29AE1898241F3488D1A2C93149A2111F2C10EA8690FB7E11676201F78A1118AD211BE41045480042280161A010CA46C1584E10C8A612A7DE120B1A13569010AB8410A40010AFE203B31873EC4B229D8E01BB0E116A0A009F42015B80114C6A109FF76733B4F140C59A0088A811374010F04600B2A21170A10D4E861054EA00766933A096105F0C01AF2A00878E74D58000180601CB88117C4400E80A1A4CE91188441A8C0801708011B80E04013B4FF56610CC6E007C8004299000A78B34233471451A62980E10C144D1C7EA10E7C81063EA0AC50544EEB2F0D16E10DB44115E2801CB6C01AAE010FCC13025461F368121BA69119022011F2E004E4333A488C07C6E10D62E10710C02ABF0118B2610748A10A3841048060CA84C10444211B54690C56810A5A931C440110A4201B728042078F3E944019FE80B7A6E11B84C11C8AA118CC811A28744CE7145833E70BF6E0F17A0003D2610B0CA1F21CD30E32AF1AFF4E00526A6011CCC10E12C110A2E1277EF521FE805877E01B86C12047730EB2C11CBA8113A68117E460CA78010A46B51578210222C040C5E041636116A040C8B4F5720E8F05F2A33F2C331634EC3AC132580BF6AC58601B98A112CC011694911366140F3AA051A86510466D116A20027A34170EA0CFE2C41E44000B14B411283516F6800D70E11716C003B861431721A5F421077EC10F5AC1040A940AF4211542620FE8D1ADEC4F19F623B7786B1B92A0670DD668D1EA0584610720000D3E4131AD810FD0A30530EF460B4116EAE1CA4881AF0E001F8A363A2A800D68A009CA6118766134D9400FF0E00AAAA0044420D1A84018C6C002B4A10EB08017A6B31CFFA8E00772C01D62A1094E405F0FF63E6CAD02BCF6680F5786BE20167C010F56600BC6330FA2013D5A01F32020186E340EB16115ECC00704610936134EBE601BB08006086104B8630FC6A01C68A1152CC019DE60C3AA141BC6006AB28119A8601578811716000E82411BCEC00F726024F78B6011D7783347195E010A9660102A612531600696080D021502A4013D4FA0065661114E000F66C01A562070192287B0201880801BB6E1B7CEA011B0C002C8E41FEA4177ABAC098C411D6481AD46E236A7C01784210C822118C3F77803D84DD28061A12017286119304010DCE14F9F285055811ED2730048A115AE0116A2813ADEE40BFEA114AEE016B2010162E11BFFCE021554E1189CC117A480416B561EB22118B8010A122D02CA201808000BC22002C280190498877BD839FE801A7CC0185A210E046004FA747275C10EEC801E54819D202563BBD71A6A80519D4374C3800A64210C5E2116A8C104F4E10E98211442000BA44CCA661710FCD01C6E0177CF401746150202C47F7D988EEB3822BAD3187E8119B64019957572B1C01874C18921600564E11648810C0220174AA00542F71F9A201668000AD0D50408E114C2381482201878417B75D704E0000AC4405E138D7FC5610764811990CB8E5799950D661B64E10D64211F5C210EF20062D180729D58974FC01C1E010ADC730666E027F6900D5A610FB24118A28C1742D503FF8A41066C401616411816813519E1078AA10A54AA4081C094ACE0168281915A599C593909945616AE61083E0103901897A7B689E9E17A7BE004EC000FA26106BA10800FE2637D610F88212D74770C4281138A811B9C210274D793816019A06004A4029178011468400F8A6116D0729C2F9A8EBFA01CC40F0204801C1458FDD4030BA40126E9A159578019E8391160A191F3D92086350C4480134E8A10CE20166460098A2115F8A14AF56124D2C84139415E554A1FE0200796411842E10ACC01A39B5A805940047CB707F838596FF9D3A61690AB57156A411A9AC11DDE201186F96B4D40155E81165EC104CE6099F5E017AE400732E01BC66D11D21A067A971BFF48415EF50108464014C8610F64E00A08814D5CDAA90B1BD00A220D6EA10448210F68D910EE6E26D4A315A67688477A89F7E102DE001604DB3EDA4019B0010A62811B4400A1CF801C7498164A8017CA800A3CF50C82A1F77E211656C154CB20054E6019CA810944E11B0CDBB78DF60F08E11764410186600BA0B78834269DAE9A7297B805EA7906E8A13795A3026E011B64C10F70CD32CA0015F802157E21D784A135CB0192B2A115A41991A8C0035821036E5A14F6C09E7E5BBEB79305A6210C46FA13C821FDFC34B2D3A905B0A005704215EC000DF62D1178333ABC010AF6A009A0E01BA44C1F580115AE401CCCC0188AA10CA86C7641411732E00434171BFFCA40147E801576C004C421180682B0E79BC5D12A0D9861B8D34100300016766050028BC2261BC07382C0A9B004E03B3A922018FE811B4C20163E350CAE9918A05914CA60153C750F008115C4C01CE4D55475011C5884144281065EB58A5B1CCC0BAF2092800A14A007208F136001ACAFE15034A69D8D616AA5E1B9DFC01A16EECBA5ED0698E11946201618F466C18118AE2015EE4016AEE01456AA0CCE400F44C11516A11E8461B8C401057E010272A0147461BAC35CD309AF0262E1170A211A3E0107AC01CE8AA83C943BC071C2188CA19E61611F6A7078E4811B366C1154AA01C641D0976111309C8D572107688119C4800AAA1C91C0411770810A640FD3FF379DD9BF501940D6187C4100420EAC5D226326B7052877FC7C2111662017C4BA395840CA38E5C8D11B1568E018945018AE0006CC6132085A1788811748219184A101AEE00784A1A2E7B8D9FBBDF01236DB455DCD55C275F020C771E2B2DBCC10C0003A94A10CF6A00E6EE16259130A46C14347C117744D578B014F6681EDD4E7546FC10344610478011C72C0BEFC5DE51BAEA3CC61055AE10EF26006AA1D264EBDBF29DB0E9E7B06962002A0A302CCE11500811A846BCA54400C6481096C8015D0F20AD6E714C0219498E116CC6115F44114868115F4C0E4A10018327DE5BF9E992A001B486106E20016664001F8607562025112C5311B45155AC017A2A112FF38DB3910A00C5E611962C165858110B80117DEE10750C11CAEA0D0997E19AE801C6080141E415713001074E117CA00148E2183C11EF3D3AA0208A1063CC01082391A7620CEA220262EA0ED29EC0097B81996C01010DC394A3102668110589B0ACAE00E1A1C2ECB607D0A5D14DE6118A0A01156C1F0D707F67E414242A115EE3CF3971F737EE80D9671E6670017EBAEE6CB83C2D6C30E6CE11786C017E2B452784104A2A01816411F10291824E1DCEEC0174E010A6441168A2107C2801B68001C56A1FDAF401472F6076060165801D30182459B81040B1A3C8830A1C2850C1B3A7C0831A2C489142B5ABC8831E3426671DEC09A01F24DA2440ADCB9F3E1431BFF9E9589708CB093A40D0B8118BF08DB9601DB2A6140F4F91926CBCA2866A2A0E480C2EA18A0264C9A14639683681559A9800082724BA3D6AD5CBB7AFD0A36ACD888AB3EC1FA48ECCD0C2B6FA28D54E0E3029F25713875C0566120CD8C6984ED5976860A953254E0E062B5CC4331288CAF5C29F6239898A364A088A2E1CAC2127DDCA07C1B0B5AACC0D1A14B9B3E8DDA60121D6B677C2CF16683C8198966701290C7588D69AF2AECD52AC2842C154006DFBA85AAC9311D3F56E5785CEC312A668D164765F580583B5FA7B46149933ABCF8F1E4CB8727946E462E43250CCDB006320F8E8E76164D038320E6D75822A2BC2B03C32D650463030DA18CB2030CA2C8FFF24E74A57042033765E440460E3900120613C1E8824513E67D981069BF81486289E1FD514C2533A8059F2195C481832F3D100246114924F1DB4C5C0983C00FC2C0500661E20C230A2066E862CE735038C6841FB338954330AC8842CE15B4AC928D2C6198C8254123760966985A218085299CE451C908719460CC077B80F14F12152801DA1FD8EC318C3000960104373188920A2AC5C8B26430CFE9114C2A8C9D70540E1E88B28C3EC4C8428598E6916669A69A56B40D19DAF8E2071627C4F20F02ECE0F865580898608E1F3F06F80E3CE21C33CC32491A254A0EA20C038518D14141C61561FC508A15EF68F8D9A6A9E5A86CB3CE22F405188410F2CD2B6924FF61CF17E195334D14C1DC02C33B301C13C2314D8CC2C42A509C00AC28EDFCA0CB0F5758180C144CCC020A16C1A0118632CF2EFB6FC0FFB2F045B63ACAA4174DA972C502366C0C032E0C8F9431CB30EFE0E20C163018655431D9CC124514E62C7AC530C1C423CB2CBA6C29F0583A8EB670CB32CFEC953784C422863E305CF1080C3F7073C5325D3CE258AE392CD048A28606234AAE77B022863057C942B36808232C62D55A6F4D1102B10433CB2A3044274A17DA04E3C1321CC822CA15ACE8DA450EE4E46001D3A2242006042498630519B170CDB08831034E78E106ED210213C1EE5C0C0D3604732E1354148594284D2C43C3325720A52B20D9FCA24B0E7E84FF029EE11A657D35A6A6AFAE350BBC6CD348192738764514B4C8028A3F58149DC3944C80320B1348B102C531CBE892C12D4D40CEFA45A90EDE7CF4FF5660422C3F50C1AE63CB64538CD05734CD9894C31CF34318514A594ADCB43C02480E10485FD1CB57EB8535FCF6379B442C504471CB15EC76E2812674C21523884E2786778C5138AA78520A461868718C0CAC420F39C0C6FD22A2BAFA5D7083CA12C13F983005595C810C34C8060E82A1823B10A31816320A2B9A908A634C261834B4403680970D51FC220C22E0A043E4C7ACF9F97088242AC73682303BA384411D7A60863A46E10BA3DDC350E000850C76C0405640AD141938862F74310BE811316BF223FFA21949F4855BAC82177BE85F303A410B2B74221EC3B010F158310556548106A908050D6B888A1C0CA318ED63D9194354BF0C1E7291E14942181A418B28BCE20A84E0453F9A40835A198D1534A48133D046C32704E318A120C7B082C60C2030F2206414E22A5F591A7B504317C4E0870788F18B28F8020A7E088215A0F0C7518E0373B438C11446C98A1DCCC10F8A63822E80E14A46B6528CB0ACE6E92AB00D0D084316BFF8811924418E26982318D83087DBEAA5876C64C30A3998C21474210A5A34410F3420822EFC404D1F4ED39AFC74D94C2AC08E7F50C31CADE0C61D22818A0C988250F5B2412832308E291CE318121D052B5C91032B04A30EFD4CA406FF3B0AD28C909105F6F8431AA6210C6698C9194170053766013A0FD000023438862E4A798C544C811B3980413F81F8D1900AD579AC54461210300D5E98230CC41886331A410C70D0200CC1A82937E6D0042B9C200ABAE041476702D4A18A152382F3520592B08D72AC8296CB4005319AA08F6094631EF30C450EB0300BFD5893600A0BEA58FFBA151628230DDB104E86966180114421034D20C638C61105287CD55F6105AC65BDF287172040043C48E90EB8410C6388A01C5288E62AF9EAD1CBAAD62B824D421A8A300D11E028A42C508232809ACFD5EAF68732F9025887FADBD4EE76B8C48508497DEB5BB01EACB8CCC520FD4C0B4B1654A0A4F6C056B62A902997E66A77BB6DA0AE3DBE5BB02F8897BBE465EE77CF0B5E829577BDBA3D2FB6FE70DEF1B277BE800D08003B
----WHERE szItemName = 'L85A1 w/SUSAT (5.56x45mm NATO)'
----EXECUTE @RC = dbo.NEW_ITEM @name = 'L85A2 (5.56x45mm NATO)',
----                           @class_ofItem = 'gun',
----                           @Returns = @asd OUTPUT
----EXECUTE @RC = dbo.NEW_ITEM @name = 'L85A2 w/SUSAT (5.56x45mm NATO)',
----                           @class_ofItem = 'gun',
----                           @Returns = @asd OUTPUT
----EXECUTE @RC = dbo.NEW_ITEM @name = 'L86A1 (5.56x45mm NATO)',
----                           @class_ofItem = 'gun',
----                           @Returns = @asd OUTPUT
----EXECUTE @RC = dbo.NEW_ITEM @name = 'L86A1 LSW, 5.56x45mm, Guns(LtAu)',
----                           @class_ofItem = 'gun',
----                           @Returns = @asd OUTPUT
----EXECUTE @RC = dbo.NEW_ITEM @name = 'L86A2 (5.56x45mm NATO)',
----                           @class_ofItem = 'gun',
----                           @Returns = @asd OUTPUT
----EXECUTE @RC = dbo.NEW_ITEM @name = 'M1A1 Carbine, .30 Carbine',
----                           @class_ofItem = 'gun',
----                           @Returns = @asd OUTPUT
----EXECUTE @RC = dbo.NEW_ITEM @name = 'M1C Garand, .30-06',
----                           @class_ofItem = 'gun',
----                           @Returns = @asd OUTPUT
----EXECUTE @RC = dbo.NEW_ITEM @name = 'M24 SWS, .308 Win',
----                           @class_ofItem = 'gun',
----                           @Returns = @asd OUTPUT
----EXECUTE @RC = dbo.NEW_ITEM @name = 'M24A1 SWS w/AN/PVS10, .300 Win Mag',
----                           @class_ofItem = 'gun',
----                           @Returns = @asd OUTPUT
----EXECUTE @RC = dbo.NEW_ITEM @name = 'M24A1 SWS, .300 Win Mag',
----                           @class_ofItem = 'gun',
----                           @Returns = @asd OUTPUT
----EXECUTE @RC = dbo.NEW_ITEM @name = 'M24A2 SWS w/AN/PVS1, .338 Lapua Magnum',
----                           @class_ofItem = 'gun',
----                           @Returns = @asd OUTPUT
----EXECUTE @RC = dbo.NEW_ITEM @name = 'M24A2 SWS, .338 Lapua Magnum',
----                           @class_ofItem = 'gun',
----                           @Returns = @asd OUTPUT
----EXECUTE @RC = dbo.NEW_ITEM @name = 'Springfield M1903, .30-06',
----                           @class_ofItem = 'gun',
----                           @Returns = @asd OUTPUT
----EXECUTE @RC = dbo.NEW_ITEM @name = 'Springfield M1903A4, .30-06',
----                           @class_ofItem = 'gun',
----                           @Returns = @asd OUTPUT
----EXECUTE @RC = dbo.NEW_ITEM @name = 'SVD Dragunov, 7.62x54mmR',
----                           @class_ofItem = 'gun',
----                           @Returns = @asd OUTPUT
----
------
--
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Beamshot 5000S (BM)',
--                               @G_att_class = 2,
--                               @G_sub_att = 7,
--                               @id_att_mount = 44
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Surefire CUS IR-Laser Sight (BM)',
--                               @G_att_class = 2,
--                               @G_sub_att = 7,
--                               @id_att_mount = 44
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Surefire CUS Laser Sight (BM)',
--                               @G_att_class = 2,
--                               @G_sub_att = 7,
--                               @id_att_mount = 44
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Laser Aiming Module (Rifle)',
--                               @G_att_class = 2,
--                               @G_sub_att = 7,
--                               @id_att_mount = 41
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'MARS Laser',
--                               @G_att_class = 2,
--                               @G_sub_att = 7,
--                               @id_att_mount = 41
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'XM-8 Laser',
--                               @G_att_class = 2,
--                               @G_sub_att = 7,
--                               @id_att_mount = 41
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Laser Aiming Module (F2000)',
--                               @G_att_class = 2,
--                               @G_sub_att = 7,
--                               @id_att_mount = 45
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Beamshot 5000S (HK)',
--                               @G_att_class = 2,
--                               @G_sub_att = 7,
--                               @id_att_mount = 43
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Surefire CUS IR-Laser Sight (HK)',
--                               @G_att_class = 2,
--                               @G_sub_att = 7,
--                               @id_att_mount = 43
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Surefire CUS Laser Sight (HK)',
--                               @G_att_class = 2,
--                               @G_sub_att = 7,
--                               @id_att_mount = 43
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Beamshot 5000S (WR)',
--                               @G_att_class = 2,
--                               @G_sub_att = 7,
--                               @id_att_mount = 42
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Surefire CUS IR-Laser Sight (WR)',
--                               @G_att_class = 2,
--                               @G_sub_att = 7,
--                               @id_att_mount = 42
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Surefire CUS Laser Sight (WR)',
--                               @G_att_class = 2,
--                               @G_sub_att = 7,
--                               @id_att_mount = 42
--
--
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Insight M3 Tactical Flashlight (BM)',
--                               @G_att_class = 2,
--                               @G_sub_att = 6,
--                               @id_att_mount = 67
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Surefire CUS Flashlight (BM)',
--                               @G_att_class = 2,
--                               @G_sub_att = 6,
--                               @id_att_mount = 67
--
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Tactical Light Module (F2000)',
--                               @G_att_class = 2,
--                               @G_sub_att = 6,
--                               @id_att_mount = 64
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Insight M3 Tactical Flashlight (HK)',
--                               @G_att_class = 2,
--                               @G_sub_att = 6,
--                               @id_att_mount = 66
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Surefire CUS Flashlight (HK)',
--                               @G_att_class = 2,
--                               @G_sub_att = 6,
--                               @id_att_mount = 66
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Insight M3 Tactical Flashlight (WR)',
--                               @G_att_class = 2,
--                               @G_sub_att = 6,
--                               @id_att_mount = 65
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Surefire CUS Flashlight (WR)',
--                               @G_att_class = 2,
--                               @G_sub_att = 6,
--                               @id_att_mount = 65
--
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Collimator AEK919K',
--                               @G_att_class = 2,
--                               @G_sub_att = 3,
--                               @id_att_mount = 68
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Collimator Aimpoint Comp M (AK)',
--                               @G_att_class = 2,
--                               @G_sub_att = 3,
--                               @id_att_mount = 69
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Collimator EKP-8-02 Cobra (AK)',
--                               @G_att_class = 2,
--                               @G_sub_att = 3,
--                               @id_att_mount = 69
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'EOTech Holosight 552 (AK)',
--                               @G_att_class = 2,
--                               @G_sub_att = 4,
--                               @id_att_mount = 69
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight 1PN93-1 (AK)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 69
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight AN/PVS-4 (AK)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 69
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight Leupold Mark4+KN250 (AK)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 69
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight ACOG 4x32 (AK)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 69
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight Leupold Mark 4 10x40 (AK)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 69
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight PSO1-M2-02 (AK)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 69
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Collimator XM-8',
--                               @G_att_class = 2,
--                               @G_sub_att = 3,
--                               @id_att_mount = 79
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Groza GP sight',
--                               @G_att_class = 2,
--                               @G_sub_att = 2,
--                               @id_att_mount = 79
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Integrated Collimator (P90)',
--                               @G_att_class = 2,
--                               @G_sub_att = 3,
--                               @id_att_mount = 79
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Integrated Sight (AUG)',
--                               @G_att_class = 2,
--                               @G_sub_att = 3,
--                               @id_att_mount = 79
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'm203 sight',
--                               @G_att_class = 2,
--                               @G_sub_att = 2,
--                               @id_att_mount = 79
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'm79 sight',
--                               @G_att_class = 2,
--                               @G_sub_att = 2,
--                               @id_att_mount = 79
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'MARS',
--                               @G_att_class = 2,
--                               @G_sub_att = 2,
--                               @id_att_mount = 79
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight Nimrod 6x40 (Galatz)',
--                               @G_att_class = 2,
--                               @G_sub_att = 2,
--                               @id_att_mount = 79
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'RG-6 sight',
--                               @G_att_class = 2,
--                               @G_sub_att = 2,
--                               @id_att_mount = 79
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight (F2000)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 89
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Std. Optical Sight (G11)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 93
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Collimator Aimpoint Comp M (Galil)',
--                               @G_att_class = 2,
--                               @G_sub_att = 3,
--                               @id_att_mount = 71
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'EOTech Holosight 552 (Galil)',
--                               @G_att_class = 2,
--                               @G_sub_att = 4,
--                               @id_att_mount = 71
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight AN/PVS-4 (Galil)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 71
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight Leupold Mark4+KN250 (Galil)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 71
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight ACOG 4x32 (Galil)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 71
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight Leupold Mark 4 10x40 (Galil)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 71
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight PO4x34 (G)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 91
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Collimator Aimpoint Comp M (G36)',
--                               @G_att_class = 2,
--                               @G_sub_att = 3,
--                               @id_att_mount = 70
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'EOTech Holosight 552 (G36)',
--                               @G_att_class = 2,
--                               @G_sub_att = 4,
--                               @id_att_mount = 70
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'G36 Handle',
--                               @G_att_class = 2,
--                               @G_sub_att = 3,
--                               @id_att_mount = 70
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight AN/PVS-4 (G36)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 70
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight Hendsoldt G36E 1.5x+NSA80 (G36)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 70
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight Hendsoldt G36E 3.5x+NSA80 (G36)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 70
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight Leupold Mark4+KN250 (G36)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 70
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight ACOG 4x32 (G36)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 70
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight Hendsoldt G36E 1.5x (G36)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 70
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight Hendsoldt G36E 3.5x (G36)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 70
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight Leupold Mark 4 10x40 (G36)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 70
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Collimator Aimpoint Comp ML XD (MP5)',
--                               @G_att_class = 2,
--                               @G_sub_att = 3,
--                               @id_att_mount = 77
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'EOTech Holosight 552 (HK)',
--                               @G_att_class = 2,
--                               @G_sub_att = 4,
--                               @id_att_mount = 77
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight AN/PVS-4 (MP5)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 77
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight Leupold Mark4+KN250 (MP5)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 77
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight ACOG 4x32 (MP5)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 77
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight Leupold Mark 4 10x40 (MP5)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 77
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight ZF Hensoldt 10x42+KN250 (MSG)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 88
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight ZF Hensoldt 10x42 (MSG)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 88
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight SUSAT L9A1+KN250 (SA80)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 86
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight SUSAT L9A1 (SA80)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 86
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight L1A1 Schmidt und Bender+KN250 (AW)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 83
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight L1A1 Schmidt und Bender (AW)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 83
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Collimator Aimpoint Comp M (M14)',
--                               @G_att_class = 2,
--                               @G_sub_att = 3,
--                               @id_att_mount = 72
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'EOTech Holosight 552 (M14)',
--                               @G_att_class = 2,
--                               @G_sub_att = 4,
--                               @id_att_mount = 72
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight AN/PVS-4 (M14)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 72
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight Leatherwood 3-9x (M14)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 72
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight Leupold Mark4+KN250 (M14)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 72
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight SN-3 5-25x TPAL (M14)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 72
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight ACOG 4x32 (M14)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 72
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight Leatherwood 3-9x (M14)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 72
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight Leupold Mark 4 10x40 (M14)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 72
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight SN-3 5-25x TPAL (M14)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 72
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Collimator M68 CCO (M16)',
--                               @G_att_class = 2,
--                               @G_sub_att = 3,
--                               @id_att_mount = 78
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'EOTech Holosight 552 (M16)',
--                               @G_att_class = 2,
--                               @G_sub_att = 4,
--                               @id_att_mount = 78
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight AN/PVS-4 (M16)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 78
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight Leupold Mark4+KN250 (M16)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 78
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight ACOG 4x32 (M16)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 78
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight Leupold Mark 4 10x40 (M16)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 78
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'M16 Handle',
--                               @G_att_class = 2,
--                               @G_sub_att = 2,
--                               @id_att_mount = 81
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight Leupold Mark4+KN250 (M24)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 84
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight Leupold Mark 4 10x40 (M24)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 84
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight Leupold Rifleman 3-9x (M24)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 84
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Collimator Aimpoint Comp M (Mini14)',
--                               @G_att_class = 2,
--                               @G_sub_att = 3,
--                               @id_att_mount = 73
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'EOTech Holosight 552 (Mini14)',
--                               @G_att_class = 2,
--                               @G_sub_att = 4,
--                               @id_att_mount = 73
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight AN/PVS-4 (Mini14)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 73
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight Leupold Mark4+KN250 (Mini14)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 73
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight ACOG 4x32 (Mini14)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 73
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight Leupold Mark 4 10x40 (Mini14)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 73
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight PU',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 92
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight ZF Hendsoldt 6x42+KN250 (PSG)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 87
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight ZF Hendsoldt 6x42 (PSG)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 87
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'L85A2 Handle',
--                               @G_att_class = 2,
--                               @G_sub_att = 2,
--                               @id_att_mount = 80
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Collimator Aimpoint Comp M (Scout)',
--                               @G_att_class = 2,
--                               @G_sub_att = 3,
--                               @id_att_mount = 74
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'EOTech Holosight 552 (Scout)',
--                               @G_att_class = 2,
--                               @G_sub_att = 4,
--                               @id_att_mount = 74
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight ACOG 4x32 (Scout)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 74
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight Leupold Mark4+KN250 (SIG L)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 85
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical sight Leupold Mark 4 10x40 LR/T M3 (SIG L)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 85
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Collimator Aimpoint Comp M (SIG)',
--                               @G_att_class = 2,
--                               @G_sub_att = 3,
--                               @id_att_mount = 75
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'EOTech Holosight 552 (SIG)',
--                               @G_att_class = 2,
--                               @G_sub_att = 4,
--                               @id_att_mount = 75
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight AN/PVS-4 (SIG)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 75
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight Leupold Mark4+KN250 (SIG)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 75
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight ZF Hensoldt BL+KN250 (SIG)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 75
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight ACOG 4x32 (SIG)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 75
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical sight Leupold Mark 4 10x40 LR/T M3 (SIG)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 75
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight ZF Hensoldt 6x42 BL (SIG)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 75
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight 1PN93-4 (Dragunov)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 82
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight PO6x39 (SVD)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 82
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight PSO1-M2 (Dragunov)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 82
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Collimator Aimpoint Comp M (WR)',
--                               @G_att_class = 2,
--                               @G_sub_att = 3,
--                               @id_att_mount = 76
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Collimator Aimpoint CompM High (WR)',
--                               @G_att_class = 2,
--                               @G_sub_att = 3,
--                               @id_att_mount = 76
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'EOTech Holosight 552 (WR)',
--                               @G_att_class = 2,
--                               @G_sub_att = 4,
--                               @id_att_mount = 76
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight 1P69 Giperon+KN250 (WR)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 76
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight AN/PVS-4 (WR)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 76
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight Leatherwood 3-9x (WR)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 76
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight Leupold Mark4+KN250 (WR)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 76
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Night Sight SN-3 5-25x TPAL (WR)',
--                               @G_att_class = 2,
--                               @G_sub_att = 5,
--                               @id_att_mount = 76
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight 1P69 Giperon (WR)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 76
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight ACOG 4x32 (WR)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 76
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight Leatherwood 3-9x (WR)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 76
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight Leupold Mark 4 10x40 (WR)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 76
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight Leupold VX-1 3-9x50 (WR)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 76
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight SN-3 5-25x TPAL (WR)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 76
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Sight Aimpoint + Magnifier (WR)',
--                               @G_att_class = 2,
--                               @G_sub_att = 3,
--                               @id_att_mount = 76
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Sight EOTech + Magnifier (WR)',
--                               @G_att_class = 2,
--                               @G_sub_att = 3,
--                               @id_att_mount = 76
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight ON-M76 4x',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 90
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight ON-M91 6x42',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 90
--EXECUTE @RC = dbo.NEW_ITEM_att @name = 'Optical Sight Zrak M89 (Z)',
--                               @G_att_class = 2,
--                               @G_sub_att = 1,
--                               @id_att_mount = 90
--EXECUTE @RC = dbo.NEW_ITEM_att @name = '762x51 Suppressor (.300 BLK)',
--                               @G_att_class = 3,
--                               @G_sub_att = 11,
--                               @id_att_mount = 1
USE Item1
GO

DECLARE @RC int
DECLARE @name nvarchar(80)
DECLARE @class_ofItem nvarchar(80)
DECLARE @Weight DECIMAL(7, 3)
DECLARE @ST int
DECLARE @Bulk nvarchar(80)
DECLARE @Cost money
DECLARE @Lcin nvarchar(10)
DECLARE @TLin nvarchar(10)
DECLARE @Desc nvarchar(max)
DECLARE @TwoHanded bit
DECLARE @WeaponClass nvarchar(80)
DECLARE @WeaponType nvarchar(80)
DECLARE @Full_auto bit
DECLARE @ACCAddin int
DECLARE @ROF_for_Sh int
DECLARE @ROF int
DECLARE @Recoill int
DECLARE @DefACCc int
DECLARE @Half_Rangee int
DECLARE @FullRangee int
DECLARE @Damagee nvarchar(50)
DECLARE @Shotss int
DECLARE @AddinChamber bit
DECLARE @TimeForreload int
DECLARE @singlereload bit
DECLARE @Damage nvarchar(80)
DECLARE @ArmorDivision decimal(38, 2)
DECLARE @TypeOfDamage1 nvarchar(50)
DECLARE @TypeOfDamage2 nvarchar(50)
DECLARE @TypeOfDam1 nvarchar(50)
DECLARE @TypeOfDam2 nvarchar(50)
DECLARE @Returns INT


SET @name = N'Mecar 35mm HE-RFL-35 Rifle Grenade'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Grenade Launcher'	SET @Weight =2	SET @ST =11	SET @Bulk = N'-'	SET @Cost =50	SET @TLin = N'TL7'	SET @Lcin = N'LC1'	SET @Desc = N'[2, 13]'	SET @TwoHanded = 1	SET @Damagee = N'8d'	SET @Half_Rangee  = 150	SET @FullRangee = 400	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 1	SET @AddinChamber  = 0	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'cr'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'ex'	SET @TypeOfDam2 = N'[3d]'	SET @DefACCc = 1	SET @ACCAddin = null	SET @Recoill = 2
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'M72A2 (66mm)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Light Anti-Armor Weapon'	SET @Weight =5	SET @ST =10	SET @Bulk = N'-4'	SET @Cost =250	SET @TLin = N'TL7'	SET @Lcin = N'LC1'	SET @Desc = N'[5, 7]'	SET @TwoHanded = 1	SET @Damagee = N'6dx4'	SET @Half_Rangee  = 200	SET @FullRangee = 300	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 1	SET @AddinChamber  = 0	SET @TimeForreload  = 0	SET @singlereload  = 0	SET @ArmorDivision  = 10	SET @TypeOfDamage1 = N'cr'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'ex'	SET @TypeOfDam2 = N''	SET @DefACCc = 4	SET @ACCAddin = null	SET @Recoill = 1	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Armbrust (80mm)'	          SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Light Anti-Armor Weapon'	SET @Weight =13	SET @ST =10	SET @Bulk = N'-4'	SET @Cost =1052	SET @TLin = N'TL8'	SET @Lcin = N'LC1'	SET @Desc = N'[2]'	SET @TwoHanded = 1	SET @Damagee = N'5dx7'	SET @Half_Rangee  = 300	SET @FullRangee = 500	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 1	SET @AddinChamber  = 0	SET @TimeForreload  = 0	SET @singlereload  = 0	SET @ArmorDivision  = 10	SET @TypeOfDamage1 = N'cr'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'ex'	SET @TypeOfDam2 = N''	SET @DefACCc = 4	SET @ACCAddin = null	SET @Recoill = 1	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'IMI BT/AT 52 Rifle Grenade'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Grenade Launcher'     	  SET @Weight =1.1	SET @ST =11	SET @Bulk = N'-'	SET @Cost =75	SET @TLin = N'TL8'	SET @Lcin = N'LC1'	SET @Desc = N'[2, 12]'	SET @TwoHanded = 1	SET @Damagee = N'6d'	SET @Half_Rangee  = 100	SET @FullRangee = 300	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 1	SET @AddinChamber  = 0	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 10	SET @TypeOfDamage1 = N'cr'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'ex'	SET @TypeOfDam2 = N''	SET @DefACCc = 2	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,    @class_ofItem,                                          @Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'H&K P7K3 (.380 ACP)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Pistol'	SET @Weight =1.75	SET @ST =8	SET @Bulk = N'-2'	SET @Cost =1050	SET @TLin = N'TL8'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 0	SET @Damagee = N'2d'	SET @Half_Rangee  = 125	SET @FullRangee = 1500	SET @ROF  = 3	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 8	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 2	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Walther PP (.380 ACP)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Pistol'	SET @Weight =1.8	SET @ST =8	SET @Bulk = N'-1'	SET @Cost =500	SET @TLin = N'TL6'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 0	SET @Damagee = N'2d'	SET @Half_Rangee  = 120	SET @FullRangee = 1300	SET @ROF  = 3	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 7	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 1	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Izhmekh Makarov (9x18mm Makarov)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Pistol'	SET @Weight =1.8	SET @ST =8	SET @Bulk = N'-2'	SET @Cost =250	SET @TLin = N'TL7'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 0	SET @Damagee = N'2d'	SET @Half_Rangee  = 110	SET @FullRangee = 1200	SET @ROF  = 3	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 8	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 2	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Z.M. Lucznik P-64 (9x18mm Makarov)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Pistol'	SET @Weight =1.8	SET @ST =8	SET @Bulk = N'-1'	SET @Cost =450	SET @TLin = N'TL7'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 0	SET @Damagee = N'2d'	SET @Half_Rangee  = 125	SET @FullRangee = 1500	SET @ROF  = 3	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 8	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 1	SET @ACCAddin = null	SET @Recoill = 3	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Z.M. Lucznik P-83 (9x18mm Makarov)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Pistol'	SET @Weight =1.8	SET @ST =8	SET @Bulk = N'-1'	SET @Cost =450	SET @TLin = N'TL7'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 0	SET @Damagee = N'2d'	SET @Half_Rangee  = 125	SET @FullRangee = 1500	SET @ROF  = 3	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 8	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 1	SET @ACCAddin = null	SET @Recoill = 3	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'H&K P7M8 (9x19mm Parabellum)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Pistol'	SET @Weight =1.8	SET @ST =9	SET @Bulk = N'-2'	SET @Cost =1050	SET @TLin = N'TL8'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 0	SET @Damagee = N'2d+2'	SET @Half_Rangee  = 160	SET @FullRangee = 1800	SET @ROF  = 3	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 8	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 2	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Walther PP (.22 LR)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Pistol'	SET @Weight =1.8	SET @ST =7	SET @Bulk = N'-1'	SET @Cost =500	SET @TLin = N'TL6'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 0	SET @Damagee = N'1d+1'	SET @Half_Rangee  = 70	SET @FullRangee = 1400	SET @ROF  = 3	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 10	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi-'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 2	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Walther PP (.32 ACP)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Pistol'	SET @Weight =1.8	SET @ST =8	SET @Bulk = N'-1'	SET @Cost =500	SET @TLin = N'TL6'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 0	SET @Damagee = N'2d-1'	SET @Half_Rangee  = 120	SET @FullRangee = 1300	SET @ROF  = 3	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 8	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi-'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 1	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Izhmash SVD (7.62x54mmR)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =10.1	SET @ST =11	SET @Bulk = N'-5'	SET @Cost =1200	SET @TLin = N'TL7'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'7d'	SET @Half_Rangee  = 800	SET @FullRangee = 3900	SET @ROF  = 3	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 10	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 5	SET @ACCAddin = 2	SET @Recoill = 3	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'H&K G41 (5.56x45mm NATO)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =10.1	SET @ST =8	SET @Bulk = N'-5'	SET @Cost =750	SET @TLin = N'TL8'	SET @Lcin = N'LC2'	SET @Desc = N'[4]'	SET @TwoHanded = 1	SET @Damagee = N'5d'	SET @Half_Rangee  = 500	SET @FullRangee = 3200	SET @ROF  = 14	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 30	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 5	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Guide Lamp M-3A1  Greasegun  (.45 ACP)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Submachine Gun'	SET @Weight =10.2	SET @ST =11	SET @Bulk = N'-4'	SET @Cost =450	SET @TLin = N'TL7'	SET @Lcin = N'LC2'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'2d+1'	SET @Half_Rangee  = 190	SET @FullRangee = 1750	SET @ROF  = 8	SET @ROF_for_Sh  = null	SET @Full_auto  = 1	SET @Shotss  = 30	SET @AddinChamber  = 0	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi+'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 3	SET @ACCAddin = null	SET @Recoill = 3	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Springfield M14 (7.62x51mm)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =10.3	SET @ST =11	SET @Bulk = N'-5'	SET @Cost =950	SET @TLin = N'TL7'	SET @Lcin = N'LC2'	SET @Desc = N'[7]'	SET @TwoHanded = 1	SET @Damagee = N'7d'	SET @Half_Rangee  = 1000	SET @FullRangee = 4200	SET @ROF  = 3	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 20	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 5	SET @ACCAddin = null	SET @Recoill = 3	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Diemaco C-7FT w/C79 ELCAN (5.56x45mm NATO)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =10.4	SET @ST =8	SET @Bulk = N'-5'	SET @Cost =1600	SET @TLin = N'TL7'	SET @Lcin = N'LC2'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'5d'	SET @Half_Rangee  = 500	SET @FullRangee = 3200	SET @ROF  = 13	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 30	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 5	SET @ACCAddin = 1	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'ERMA MP.40 (9x19mm Parabellum)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Submachine Gun'	SET @Weight =10.5	SET @ST =10	SET @Bulk = N'-4'	SET @Cost =1000	SET @TLin = N'TL6'	SET @Lcin = N'LC2'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'3d-1'	SET @Half_Rangee  = 160	SET @FullRangee = 1900	SET @ROF  = 8	SET @ROF_for_Sh  = null	SET @Full_auto  = 1	SET @Shotss  = 32	SET @AddinChamber  = 0	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 3	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Enfield L42A1 (7.62x51mm)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =10.7	SET @ST =11	SET @Bulk = N'-5'	SET @Cost =1700	SET @TLin = N'TL6'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'7d'	SET @Half_Rangee  = 1000	SET @FullRangee = 4200	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 10	SET @AddinChamber  = 1	SET @TimeForreload  = 5	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 5	SET @ACCAddin = 2	SET @Recoill = 3	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Parker-Hale C3A1 MRSW (7.62x51mm)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =10.9	SET @ST =11	SET @Bulk = N'-5'	SET @Cost =4000	SET @TLin = N'TL7'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'7d'	SET @Half_Rangee  = 1000	SET @FullRangee = 4200	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 5	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 5	SET @ACCAddin = 3	SET @Recoill = 3	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'FN FAL (7.62x51mm)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =11	SET @ST =11	SET @Bulk = N'-5'	SET @Cost =900	SET @TLin = N'TL7'	SET @Lcin = N'LC2'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'7d'	SET @Half_Rangee  = 1000	SET @FullRangee = 4200	SET @ROF  = 11	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 20	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 5	SET @ACCAddin = null	SET @Recoill = 3	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Royal Ordnance L1A1 (7.62x51mm)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =11	SET @ST =11	SET @Bulk = N'-5'	SET @Cost =900	SET @TLin = N'TL7'	SET @Lcin = N'LC2'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'7d'	SET @Half_Rangee  = 1000	SET @FullRangee = 4200	SET @ROF  = 3	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 20	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 5	SET @ACCAddin = null	SET @Recoill = 3	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Royal Ordnance L85A1 (5.56x45mm NATO)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =11.2	SET @ST =8	SET @Bulk = N'-4'	SET @Cost =800	SET @TLin = N'TL8'	SET @Lcin = N'LC2'	SET @Desc = N'[6]'	SET @TwoHanded = 1	SET @Damagee = N'5d'	SET @Half_Rangee  = 500	SET @FullRangee = 3200	SET @ROF  = 12	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 30	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 4	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Royal Ordnance L85A2 (5.56x45mm NATO)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =11.2	SET @ST =8	SET @Bulk = N'-4'	SET @Cost =1100	SET @TLin = N'TL8'	SET @Lcin = N'LC2'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'5d'	SET @Half_Rangee  = 500	SET @FullRangee = 3200	SET @ROF  = 12	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 30	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 4	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'H&K G11 (4.73x33mm CLTA)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =11.25	SET @ST =8	SET @Bulk = N'-4'	SET @Cost =1500	SET @TLin = N'TL8'	SET @Lcin = N'LC1'	SET @Desc = N'[5,10]'	SET @TwoHanded = 1	SET @Damagee = N'4d+2'	SET @Half_Rangee  = 500	SET @FullRangee = 3000	SET @ROF  = 9	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 45	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi-'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 5	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Izhmash AKM (7.62x39mm M-43)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =11.3	SET @ST =9	SET @Bulk = N'-5'	SET @Cost =290	SET @TLin = N'TL7'	SET @Lcin = N'LC2'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'5d+1'	SET @Half_Rangee  = 500	SET @FullRangee = 3100	SET @ROF  = 10	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 30	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 4	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'H&K G3 (7.62x51mm)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =11.4	SET @ST =11	SET @Bulk = N'-5'	SET @Cost =550	SET @TLin = N'TL7'	SET @Lcin = N'LC2'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'7d'	SET @Half_Rangee  = 1000	SET @FullRangee = 4200	SET @ROF  = 10	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 20	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 5	SET @ACCAddin = null	SET @Recoill = 3	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Royal Ordnance L1A1 w/SUIT (7.62x51mm)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =11.5	SET @ST =11	SET @Bulk = N'-5'	SET @Cost =1100	SET @TLin = N'TL7'	SET @Lcin = N'LC2'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'7d'	SET @Half_Rangee  = 1000	SET @FullRangee = 4200	SET @ROF  = 3	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 20	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 5	SET @ACCAddin = 2	SET @Recoill = 3	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Izhmash RPK-74 (5.45x39mm M-74)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =12	SET @ST =10	SET @Bulk = N'-5'	SET @Cost =500	SET @TLin = N'TL7'	SET @Lcin = N'LC1'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'5d+1'	SET @Half_Rangee  = 600	SET @FullRangee = 3200	SET @ROF  = 11	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 45	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 4	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Royal Ordnance L85A1 w/SUSAT (5.56x45mm NATO)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =12.1	SET @ST =8	SET @Bulk = N'-4'	SET @Cost =1200	SET @TLin = N'TL8'	SET @Lcin = N'LC2'	SET @Desc = N'[6]'	SET @TwoHanded = 1	SET @Damagee = N'5d'	SET @Half_Rangee  = 500	SET @FullRangee = 3200	SET @ROF  = 12	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 30	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 5	SET @ACCAddin = 2	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Royal Ordnance L85A2 w/SUSAT (5.56x45mm NATO)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =12.1	SET @ST =8	SET @Bulk = N'-4'	SET @Cost =1500	SET @TLin = N'TL8'	SET @Lcin = N'LC2'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'5d'	SET @Half_Rangee  = 500	SET @FullRangee = 3200	SET @ROF  = 12	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 30	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 5	SET @ACCAddin = 2	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'ZB Vz.54 (7.62x54mmR)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =12.4	SET @ST =10	SET @Bulk = N'-5'	SET @Cost =300	SET @TLin = N'TL6'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'7d'	SET @Half_Rangee  = 800	SET @FullRangee = 3900	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 5	SET @AddinChamber  = 0	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 5	SET @ACCAddin = 2	SET @Recoill = 4	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Izhmash RPK (7.62x39mm M-43)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =12.4	SET @ST =10	SET @Bulk = N'-5'	SET @Cost =490	SET @TLin = N'TL7'	SET @Lcin = N'LC1'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'5d+2'	SET @Half_Rangee  = 400	SET @FullRangee = 3000	SET @ROF  = 10	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 40	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 4	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Remington M21 (7.62x51mm)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =12.7	SET @ST =11	SET @Bulk = N'-5'	SET @Cost =2400	SET @TLin = N'TL7'	SET @Lcin = N'LC2'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'7d'	SET @Half_Rangee  = 1000	SET @FullRangee = 4200	SET @ROF  = 3	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 20	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 6	SET @ACCAddin = 3	SET @Recoill = 3	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Royal Ordnance L86A1 (5.56x45mm NATO)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =13	SET @ST =9	SET @Bulk = N'-5'	SET @Cost =1600	SET @TLin = N'TL8'	SET @Lcin = N'LC2'	SET @Desc = N'[6]'	SET @TwoHanded = 1	SET @Damagee = N'5d'	SET @Half_Rangee  = 500	SET @FullRangee = 3500	SET @ROF  = 13	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 30	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 6	SET @ACCAddin = 2	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Royal Ordnance L86A2 (5.56x45mm NATO)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =13	SET @ST =9	SET @Bulk = N'-5'	SET @Cost =1900	SET @TLin = N'TL8'	SET @Lcin = N'LC2'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'5d'	SET @Half_Rangee  = 500	SET @FullRangee = 3500	SET @ROF  = 13	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 30	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 6	SET @ACCAddin = 2	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Remington M24 SWS (7.62x51mm)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =13.4	SET @ST =11	SET @Bulk = N'-5'	SET @Cost =3400	SET @TLin = N'TL8'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'7d'	SET @Half_Rangee  = 1000	SET @FullRangee = 4200	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 6	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 1	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 6	SET @ACCAddin = 3	SET @Recoill = 3	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Remington M24A1 SWS (.300 Win Mag)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =13.4	SET @ST =11	SET @Bulk = N'-5'	SET @Cost =3400	SET @TLin = N'TL8'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'8d+1'	SET @Half_Rangee  = 1300	SET @FullRangee = 5000	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 5	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 6	SET @ACCAddin = 3	SET @Recoill = 3	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Remington M24A2 SWS (.338 Lapua Magnum)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =13.9	SET @ST =11	SET @Bulk = N'-5'	SET @Cost =3400	SET @TLin = N'TL8'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'9d+1'	SET @Half_Rangee  = 1500	SET @FullRangee = 5500	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 4	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 6	SET @ACCAddin = 3	SET @Recoill = 4	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'9M1114 Kokon ATGM'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Artillery'	SET @WeaponType = N'Guided Missile'	SET @Weight =132.5	SET @ST =0	SET @Bulk = N'--'	SET @Cost =6400	SET @TLin = N'TL8'	SET @Lcin = N'LC1'	SET @Desc = N'[1, 2, 4]'	SET @TwoHanded = 0	SET @Damagee = N'6dx13'	SET @Half_Rangee  = 450	SET @FullRangee = 5000	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 2	SET @AddinChamber  = 0	SET @TimeForreload  = 20	SET @singlereload  = 0	SET @ArmorDivision  = 10	SET @TypeOfDamage1 = N'cr'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'ex'	SET @TypeOfDam2 = N''	SET @DefACCc = 3	SET @ACCAddin = null	SET @Recoill = 1	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'M136 AT-4 (84mm)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Light Anti-Armor Weapon'	SET @Weight =425	SET @ST =10	SET @Bulk = N'-5'	SET @Cost =1500	SET @TLin = N'TL8'	SET @Lcin = N'LC1'	SET @Desc = N'[5, 7]'	SET @TwoHanded = 1	SET @Damagee = N'6dx6'	SET @Half_Rangee  = 330	SET @FullRangee = 2300	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 1	SET @AddinChamber  = 0	SET @TimeForreload  = 0	SET @singlereload  = 0	SET @ArmorDivision  = 10	SET @TypeOfDamage1 = N'cr'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'ex'	SET @TypeOfDam2 = N''	SET @DefACCc = 3	SET @ACCAddin = null	SET @Recoill = 1	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Remington M40A3 RWS (7.62x51mm)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =14.8	SET @ST =11	SET @Bulk = N'-5'	SET @Cost =3400	SET @TLin = N'TL8'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'7d'	SET @Half_Rangee  = 1000	SET @FullRangee = 4200	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 6	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 1	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 7	SET @ACCAddin = 3	SET @Recoill = 3	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Accuracy International L96A1 (7.62x51mm)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =15	SET @ST =11	SET @Bulk = N'-6'	SET @Cost =5200	SET @TLin = N'TL8'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'7d'	SET @Half_Rangee  = 1000	SET @FullRangee = 4200	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 10	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 6	SET @ACCAddin = 3	SET @Recoill = 3	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Accuracy International G22 (.300 Win Mag)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =15.8	SET @ST =11	SET @Bulk = N'-5'	SET @Cost =5650	SET @TLin = N'TL8'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'8d+1'	SET @Half_Rangee  = 1300	SET @FullRangee = 5000	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 5	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 6	SET @ACCAddin = 3	SET @Recoill = 3	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'H&K PSG1 (7.62x51mm)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =16	SET @ST =11	SET @Bulk = N'-5'	SET @Cost =4500	SET @TLin = N'TL7'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'7d'	SET @Half_Rangee  = 1000	SET @FullRangee = 4200	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 1	SET @AddinChamber  = 0	SET @TimeForreload  = 4	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 6	SET @ACCAddin = 2	SET @Recoill = 3	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Remington M24 SWS w/AN/PVS10 (7.62x51mm)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =17.4	SET @ST =11	SET @Bulk = N'-5'	SET @Cost =12000	SET @TLin = N'TL8'	SET @Lcin = N'LC2'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'7d'	SET @Half_Rangee  = 1000	SET @FullRangee = 4200	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 6	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 1	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 6	SET @ACCAddin = 3	SET @Recoill = 3	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Remington M24A1 SWS w/AN/PVS10 (.300 Win Mag)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =17.4	SET @ST =11	SET @Bulk = N'-5'	SET @Cost =12000	SET @TLin = N'TL8'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'8d+1'	SET @Half_Rangee  = 1300	SET @FullRangee = 5000	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 5	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 6	SET @ACCAddin = 3	SET @Recoill = 3	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Accuracy International L115A1 (.338 Lapua Magnum)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =17.5	SET @ST =11	SET @Bulk = N'-6'	SET @Cost =5650	SET @TLin = N'TL8'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'9d+1'	SET @Half_Rangee  = 1500	SET @FullRangee = 5500	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 4	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 6	SET @ACCAddin = 3	SET @Recoill = 4	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Remington M24A2 SWS w/AN/PVS10 (.338 Lapua Mag)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =17.9	SET @ST =11	SET @Bulk = N'-5'	SET @Cost =12000	SET @TLin = N'TL8'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'9d+1'	SET @Half_Rangee  = 1500	SET @FullRangee = 5500	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 4	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 6	SET @ACCAddin = 3	SET @Recoill = 4	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Remington M40A3 RWS w/Simrad KN-200 (7.62x51mm)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =18.2	SET @ST =11	SET @Bulk = N'-5'	SET @Cost =4900	SET @TLin = N'TL8'	SET @Lcin = N'LC3'	SET @Desc = N'[9]'	SET @TwoHanded = 1	SET @Damagee = N'7d'	SET @Half_Rangee  = 1000	SET @FullRangee = 4200	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 6	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 1	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 7	SET @ACCAddin = 3	SET @Recoill = 3	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Remington M40A3 RWS w/AN/PVS10 (7.62x51mm)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =18.8	SET @ST =11	SET @Bulk = N'-5'	SET @Cost =12000	SET @TLin = N'TL8'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'7d'	SET @Half_Rangee  = 1000	SET @FullRangee = 4200	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 6	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 1	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 7	SET @ACCAddin = 3	SET @Recoill = 3	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'SIG-Sauer M11 (9x19mm Parabellum)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Pistol'	SET @Weight =2.1	SET @ST =9	SET @Bulk = N'-2'	SET @Cost =700	SET @TLin = N'TL8'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 0	SET @Damagee = N'2d+1'	SET @Half_Rangee  = 140	SET @FullRangee = 1800	SET @ROF  = 3	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 13	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 1	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Tokarev TT-33 (7.62x25mm Tokarev)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Pistol'	SET @Weight =2.1	SET @ST =9	SET @Bulk = N'-2'	SET @Cost =350	SET @TLin = N'TL6'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 0	SET @Damagee = N'2d+2'	SET @Half_Rangee  = 180	SET @FullRangee = 2000	SET @ROF  = 3	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 8	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi-'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 2	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'S&W Military and Police (.38 Special)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Pistol'	SET @Weight =2.2	SET @ST =9	SET @Bulk = N'-2'	SET @Cost =300	SET @TLin = N'TL6'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 0	SET @Damagee = N'2d'	SET @Half_Rangee  = 110	SET @FullRangee = 1200	SET @ROF  = 3	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 6	SET @AddinChamber  = 0	SET @TimeForreload  = 3	SET @singlereload  = 1	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 2	SET @ACCAddin = null	SET @Recoill = 3	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'H&K P7M13 (9x19mm Parabellum)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Pistol'	SET @Weight =2.3	SET @ST =9	SET @Bulk = N'-2'	SET @Cost =1100	SET @TLin = N'TL8'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 0	SET @Damagee = N'2d+2'	SET @Half_Rangee  = 160	SET @FullRangee = 1800	SET @ROF  = 3	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 13	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 2	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Browning  Highpower  (9x19mm Parabellum)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Pistol'	SET @Weight =2.4	SET @ST =9	SET @Bulk = N'-2'	SET @Cost =780	SET @TLin = N'TL6'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 0	SET @Damagee = N'2d+2'	SET @Half_Rangee  = 160	SET @FullRangee = 1800	SET @ROF  = 3	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 13	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 2	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Springfield Armory XD-45 (.45 ACP)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Pistol'	SET @Weight =2.4	SET @ST =10	SET @Bulk = N'-2'	SET @Cost =500	SET @TLin = N'TL8'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 0	SET @Damagee = N'2d'	SET @Half_Rangee  = 150	SET @FullRangee = 1600	SET @ROF  = 3	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 13	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi+'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 2	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Ruger Standard MK1 (.22 LR)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Pistol'	SET @Weight =2.5	SET @ST =7	SET @Bulk = N'-2'	SET @Cost =300	SET @TLin = N'TL7'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 0	SET @Damagee = N'1d+1'	SET @Half_Rangee  = 70	SET @FullRangee = 1400	SET @ROF  = 3	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 9	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi-'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 3	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Beretta M92 (9x19mm Parabellum)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Pistol'	SET @Weight =2.8	SET @ST =9	SET @Bulk = N'-2'	SET @Cost =700	SET @TLin = N'TL7'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 0	SET @Damagee = N'2d+2'	SET @Half_Rangee  = 160	SET @FullRangee = 1800	SET @ROF  = 3	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 15	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 2	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Colt M1911A1 (.45 ACP)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Pistol'	SET @Weight =2.8	SET @ST =10	SET @Bulk = N'-2'	SET @Cost =850	SET @TLin = N'TL6'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 0	SET @Damagee = N'2d'	SET @Half_Rangee  = 150	SET @FullRangee = 1600	SET @ROF  = 3	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 7	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi+'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 2	SET @ACCAddin = null	SET @Recoill = 3	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Mk.153 Mod.1 SMAW (83mm Rocket)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Light Anti-Armor Weapon'	SET @Weight =29.5	SET @ST =10	SET @Bulk = N'-5'	SET @Cost =13000	SET @TLin = N'TL8'	SET @Lcin = N'LC1'	SET @Desc = N'[5, 7]'	SET @TwoHanded = 1	SET @Damagee = N'6dx6'	SET @Half_Rangee  = 500	SET @FullRangee = 1000	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 1	SET @AddinChamber  = 0	SET @TimeForreload  = 4	SET @singlereload  = 0	SET @ArmorDivision  = 5	SET @TypeOfDamage1 = N'cr'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'ex'	SET @TypeOfDam2 = N'[6d]'	SET @DefACCc = 4	SET @ACCAddin = null	SET @Recoill = 1	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'KBP GP-30 (40mm VOG-25)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Grenade Launcher'	SET @Weight =3.3	SET @ST =11	SET @Bulk = N'-'	SET @Cost =250	SET @TLin = N'TL7'	SET @Lcin = N'LC1'	SET @Desc = N'[2, 3]'	SET @TwoHanded = 1	SET @Damagee = N'1d+2'	SET @Half_Rangee  = 150	SET @FullRangee = 460	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 1	SET @AddinChamber  = 0	SET @TimeForreload  = 4	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'cr'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'ex'	SET @TypeOfDam2 = N'[2d]'	SET @DefACCc = 2	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Colt M203 (40x46mmSR)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Grenade Launcher'	SET @Weight =3.5	SET @ST =11	SET @Bulk = N'-'	SET @Cost =500	SET @TLin = N'TL7'	SET @Lcin = N'LC1'	SET @Desc = N'[2, 4]'	SET @TwoHanded = 1	SET @Damagee = N'4d'	SET @Half_Rangee  = 150	SET @FullRangee = 4400	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 1	SET @AddinChamber  = 0	SET @TimeForreload  = 4	SET @singlereload  = 0	SET @ArmorDivision  = 10	SET @TypeOfDamage1 = N'cr'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'ex'	SET @TypeOfDam2 = N'[2d]'	SET @DefACCc = 2	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Barrett M82A1A (.50 BMG)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =32	SET @ST =13	SET @Bulk = N'-7'	SET @Cost =6900	SET @TLin = N'TL8'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'13d'	SET @Half_Rangee  = 2200	SET @FullRangee = 7400	SET @ROF  = 3	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 10	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi+'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 7	SET @ACCAddin = 3	SET @Recoill = 4	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Barrett M82A1A w/Simrad KN-200 (.50 BMG)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =35.4	SET @ST =13	SET @Bulk = N'-7'	SET @Cost =7400	SET @TLin = N'TL8'	SET @Lcin = N'LC3'	SET @Desc = N'[9]'	SET @TwoHanded = 1	SET @Damagee = N'13d'	SET @Half_Rangee  = 2200	SET @FullRangee = 7400	SET @ROF  = 3	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 10	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi+'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 7	SET @ACCAddin = 3	SET @Recoill = 4	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Barrett M82A1A w/AN/PVS10 (.50 BMG)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =36	SET @ST =13	SET @Bulk = N'-7'	SET @Cost =15500	SET @TLin = N'TL8'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'13d'	SET @Half_Rangee  = 2200	SET @FullRangee = 7400	SET @ROF  = 3	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 10	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi+'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 7	SET @ACCAddin = 3	SET @Recoill = 4	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'9K116 Bastion ATGM (100mm Tank Round)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Artillery'	SET @WeaponType = N'Guided Missile'	SET @Weight =39	SET @ST =0	SET @Bulk = N'--'	SET @Cost =13400	SET @TLin = N'TL8'	SET @Lcin = N'LC1'	SET @Desc = N'[1, 3]'	SET @TwoHanded = 0	SET @Damagee = N'6dx6'	SET @Half_Rangee  = 330	SET @FullRangee = 5000	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 1	SET @AddinChamber  = 0	SET @TimeForreload  = 5	SET @singlereload  = 0	SET @ArmorDivision  = 10	SET @TypeOfDamage1 = N'cr'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'ex'	SET @TypeOfDam2 = N''	SET @DefACCc = 6	SET @ACCAddin = null	SET @Recoill = 1
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'9M119 Svir ATGM (125mm Tank Round)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Artillery'	SET @WeaponType = N'Guided Missile'	SET @Weight =41.4	SET @ST =0	SET @Bulk = N'--'	SET @Cost =13400	SET @TLin = N'TL8'	SET @Lcin = N'LC1'	SET @Desc = N'[1, 3]'	SET @TwoHanded = 0	SET @Damagee = N'5dx12'	SET @Half_Rangee  = 340	SET @FullRangee = 4100	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 1	SET @AddinChamber  = 0	SET @TimeForreload  = 6	SET @singlereload  = 0	SET @ArmorDivision  = 10	SET @TypeOfDamage1 = N'cr'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'ex'	SET @TypeOfDam2 = N''	SET @DefACCc = 8	SET @ACCAddin = null	SET @Recoill = 1	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'9K112 Kobra ATGM (125mm Tank Round)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Artillery'	SET @WeaponType = N'Guided Missile'	SET @Weight =45.3	SET @ST =0	SET @Bulk = N'--'	SET @Cost =8200	SET @TLin = N'TL8'	SET @Lcin = N'LC1'	SET @Desc = N'[1, 4]'	SET @TwoHanded = 0	SET @Damagee = N'5dx15'	SET @Half_Rangee  = 250	SET @FullRangee = 4000	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 1	SET @AddinChamber  = 0	SET @TimeForreload  = 6	SET @singlereload  = 0	SET @ArmorDivision  = 10	SET @TypeOfDamage1 = N'cr'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'ex'	SET @TypeOfDam2 = N''	SET @DefACCc = 3	SET @ACCAddin = null	SET @Recoill = 1	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'9K120 Refleks ATGM (125mm Tank Round)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Artillery'	SET @WeaponType = N'Guided Missile'	SET @Weight =46.4	SET @ST =0	SET @Bulk = N'--'	SET @Cost =13800	SET @TLin = N'TL8'	SET @Lcin = N'LC1'	SET @Desc = N'[1, 3]'	SET @TwoHanded = 0	SET @Damagee = N'5dx12'	SET @Half_Rangee  = 330	SET @FullRangee = 5000	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 1	SET @AddinChamber  = 0	SET @TimeForreload  = 6	SET @singlereload  = 0	SET @ArmorDivision  = 10	SET @TypeOfDamage1 = N'cr'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'ex'	SET @TypeOfDam2 = N''	SET @DefACCc = 7	SET @ACCAddin = null	SET @Recoill = 1	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Ruger 10/22 (.22 LR)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =5.2	SET @ST =6	SET @Bulk = N'-4'	SET @Cost =150	SET @TLin = N'TL7'	SET @Lcin = N'LC4'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'1d+2'	SET @Half_Rangee  = 85	SET @FullRangee = 1200	SET @ROF  = 3	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 10	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi-'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 3	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Marlin Model 881 (.22 LR)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =5.6	SET @ST =6	SET @Bulk = N'-4'	SET @Cost =655	SET @TLin = N'TL7'	SET @Lcin = N'LC4'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'1d+2'	SET @Half_Rangee  = 85	SET @FullRangee = 1200	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 17	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 1	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi-'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 5	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'BGM-71F TOW2B ATGM'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Artillery'	SET @WeaponType = N'Guided Missile'	SET @Weight =50	SET @ST =0	SET @Bulk = N'--'	SET @Cost =7100	SET @TLin = N'TL8'	SET @Lcin = N'LC1'	SET @Desc = N'[1, 2, 4, 5]'	SET @TwoHanded = 0	SET @Damagee = N'6dx17'	SET @Half_Rangee  = 300	SET @FullRangee = 5700	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 1	SET @AddinChamber  = 0	SET @TimeForreload  = 20	SET @singlereload  = 0	SET @ArmorDivision  = 10	SET @TypeOfDamage1 = N'cr'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'ex'	SET @TypeOfDam2 = N''	SET @DefACCc = 3	SET @ACCAddin = null	SET @Recoill = 1	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'BGM-71D TOW2 ATGM'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Artillery'	SET @WeaponType = N'Guided Missile'	SET @Weight =50	SET @ST =0	SET @Bulk = N'--'	SET @Cost =6300	SET @TLin = N'TL8'	SET @Lcin = N'LC1'	SET @Desc = N'[1, 2, 4]'	SET @TwoHanded = 0	SET @Damagee = N'6dx25'	SET @Half_Rangee  = 300	SET @FullRangee = 5400	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 1	SET @AddinChamber  = 0	SET @TimeForreload  = 20	SET @singlereload  = 0	SET @ArmorDivision  = 10	SET @TypeOfDamage1 = N'cr'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'ex'	SET @TypeOfDam2 = N''	SET @DefACCc = 3	SET @ACCAddin = null	SET @Recoill = 1	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'9P135M Konkurs-M ATGM'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Artillery'	SET @WeaponType = N'Guided Missile'	SET @Weight =51	SET @ST =0	SET @Bulk = N'--'	SET @Cost =5700	SET @TLin = N'TL8'	SET @Lcin = N'LC1'	SET @Desc = N'[1, 2, 4]'	SET @TwoHanded = 0	SET @Damagee = N'6dx13'	SET @Half_Rangee  = 200	SET @FullRangee = 4000	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 1	SET @AddinChamber  = 0	SET @TimeForreload  = 20	SET @singlereload  = 0	SET @ArmorDivision  = 10	SET @TypeOfDamage1 = N'cr'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'ex'	SET @TypeOfDam2 = N''	SET @DefACCc = 4	SET @ACCAddin = null	SET @Recoill = 1	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'H&K MP5A2 (9x19mm Parabellum)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Submachine Gun'	SET @Weight =6	SET @ST =10	SET @Bulk = N'-4'	SET @Cost =1100	SET @TLin = N'TL7'	SET @Lcin = N'LC2'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'3d-1'	SET @Half_Rangee  = 160	SET @FullRangee = 1900	SET @ROF  = 13	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 30	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 4	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'H&K MP5SD2 (9x19mm Parabellum)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Submachine Gun'	SET @Weight =6.8	SET @ST =10	SET @Bulk = N'-4'	SET @Cost =1850	SET @TLin = N'TL7'	SET @Lcin = N'LC1'	SET @Desc = N'[1]'	SET @TwoHanded = 1	SET @Damagee = N'2d'	SET @Half_Rangee  = 100	SET @FullRangee = 1100	SET @ROF  = 13	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 30	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 4	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Stoeger/IGA Uplander (12ga 2 3/4 )'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Shotgun'	SET @Weight =7	SET @ST =11	SET @Bulk = N'-5'	SET @Cost =450	SET @TLin = N'TL7'	SET @Lcin = N'LC4'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'1d+2'	SET @Half_Rangee  = 50	SET @FullRangee = 125	SET @ROF  = 2	SET @ROF_for_Sh  = 9	SET @Full_auto  = 0	SET @Shotss  = 2	SET @AddinChamber  = 0	SET @TimeForreload  = 3	SET @singlereload  = 1	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 2	SET @ACCAddin = null	SET @Recoill = 1	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Marlin Model 336 (.30-30 Win)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =7	SET @ST =10	SET @Bulk = N'-4'	SET @Cost =300	SET @TLin = N'TL6'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'5d'	SET @Half_Rangee  = 450	SET @FullRangee = 3000	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 6	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 1	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 4	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Izhmash AKS-74U (5.45x39mm M-74)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =7	SET @ST =8	SET @Bulk = N'-4*'	SET @Cost =250	SET @TLin = N'TL7'	SET @Lcin = N'LC2'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'4d'	SET @Half_Rangee  = 300	SET @FullRangee = 2500	SET @ROF  = 11	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 30	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi-'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 3	SET @ACCAddin = null	SET @Recoill = 3	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Colt M4A1 (5.56x45mm NATO)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =7.25	SET @ST =8	SET @Bulk = N'-4'	SET @Cost =900	SET @TLin = N'TL8'	SET @Lcin = N'LC2'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'4d+1'	SET @Half_Rangee  = 420	SET @FullRangee = 2700	SET @ROF  = 15	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 30	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi-'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 4	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Ruger Mini-14 (5.56x45mm)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =7.3	SET @ST =9	SET @Bulk = N'-4'	SET @Cost =600	SET @TLin = N'TL7'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'5d'	SET @Half_Rangee  = 500	SET @FullRangee = 3000	SET @ROF  = 3	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 20	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 5	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'H&K MP5A3 (9x19mm Parabellum)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Submachine Gun'	SET @Weight =7.5	SET @ST =10	SET @Bulk = N'-4'	SET @Cost =1100	SET @TLin = N'TL7'	SET @Lcin = N'LC2'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'3d-1'	SET @Half_Rangee  = 160	SET @FullRangee = 1900	SET @ROF  = 13	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 30	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 4	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Enfield Sterling L-2A3 (9x19mm Parabellum)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Submachine Gun'	SET @Weight =7.6	SET @ST =10	SET @Bulk = N'-4'	SET @Cost =350	SET @TLin = N'TL7'	SET @Lcin = N'LC2'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'3d-1'	SET @Half_Rangee  = 160	SET @FullRangee = 1900	SET @ROF  = 9	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 34	SET @AddinChamber  = 0	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 3	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Remington Model 870P (12ga 3 )'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Shotgun'	SET @Weight =8	SET @ST =10	SET @Bulk = N'-5'	SET @Cost =400	SET @TLin = N'TL7'	SET @Lcin = N'LC4'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'1d+2'	SET @Half_Rangee  = 50	SET @FullRangee = 125	SET @ROF  = 2	SET @ROF_for_Sh  = 9	SET @Full_auto  = 0	SET @Shotss  = 7	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 1	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 2	SET @ACCAddin = null	SET @Recoill = 1	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Colt M16A1 (5.56x45mm M-193)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =8	SET @ST =8	SET @Bulk = N'-5'	SET @Cost =540	SET @TLin = N'TL7'	SET @Lcin = N'LC2'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'5d'	SET @Half_Rangee  = 500	SET @FullRangee = 3200	SET @ROF  = 13	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 30	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 5	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'CZ Vz.24 (7.62x25mm Tokarev)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Submachine Gun'	SET @Weight =8.1	SET @ST =10	SET @Bulk = N'-4'	SET @Cost =300	SET @TLin = N'TL7'	SET @Lcin = N'LC2'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'3d-1'	SET @Half_Rangee  = 160	SET @FullRangee = 1900	SET @ROF  = 10	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 32	SET @AddinChamber  = 0	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi-'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 3	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Remington 396 Sporting (12ga 2 3/4 )'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Shotgun'	SET @Weight =8.3	SET @ST =11	SET @Bulk = N'-5'	SET @Cost =2660	SET @TLin = N'TL7'	SET @Lcin = N'LC4'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'1d+2'	SET @Half_Rangee  = 50	SET @FullRangee = 125	SET @ROF  = 2	SET @ROF_for_Sh  = 9	SET @Full_auto  = 0	SET @Shotss  = 2	SET @AddinChamber  = 0	SET @TimeForreload  = 3	SET @singlereload  = 1	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 4	SET @ACCAddin = null	SET @Recoill = 1	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'H&K MP5SD3 (9x19mm Parabellum)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Submachine Gun'	SET @Weight =8.3	SET @ST =10	SET @Bulk = N'-4'	SET @Cost =1850	SET @TLin = N'TL7'	SET @Lcin = N'LC1'	SET @Desc = N'[1]'	SET @TwoHanded = 1	SET @Damagee = N'2d'	SET @Half_Rangee  = 100	SET @FullRangee = 1100	SET @ROF  = 13	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 30	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 4	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Benelli M1014 (12ga 3 )'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Shotgun'	SET @Weight =8.4	SET @ST =10	SET @Bulk = N'-5'	SET @Cost =950	SET @TLin = N'TL8'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'1d+1'	SET @Half_Rangee  = 50	SET @FullRangee = 125	SET @ROF  = 3	SET @ROF_for_Sh  = 9	SET @Full_auto  = 0	SET @Shotss  = 6	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 1	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 3	SET @ACCAddin = null	SET @Recoill = 1	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Mossberg M590 (12ga 3 )'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Shotgun'	SET @Weight =8.7	SET @ST =10	SET @Bulk = N'-5'	SET @Cost =600	SET @TLin = N'TL8'	SET @Lcin = N'LC4'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'1d+1'	SET @Half_Rangee  = 50	SET @FullRangee = 125	SET @ROF  = 2	SET @ROF_for_Sh  = 9	SET @Full_auto  = 0	SET @Shotss  = 9	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 1	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 3	SET @ACCAddin = null	SET @Recoill = 1	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Winchester Model 70 (.30-06)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =8.7	SET @ST =10	SET @Bulk = N'-5'	SET @Cost =1640	SET @TLin = N'TL7'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'7d'	SET @Half_Rangee  = 1000	SET @FullRangee = 4200	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 4	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 1	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 6	SET @ACCAddin = 3	SET @Recoill = 4	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Tulamash SKS (7.62x39mm M-43)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =8.9	SET @ST =9	SET @Bulk = N'-5'	SET @Cost =150	SET @TLin = N'TL7'	SET @Lcin = N'LC3'	SET @Desc = N'[11]'	SET @TwoHanded = 1	SET @Damagee = N'5d+1'	SET @Half_Rangee  = 500	SET @FullRangee = 3100	SET @ROF  = 3	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 10	SET @AddinChamber  = 0	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 5	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Diemaco C-7 (5.56x45mm NATO)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =8.9	SET @ST =8	SET @Bulk = N'-5'	SET @Cost =800	SET @TLin = N'TL7'	SET @Lcin = N'LC2'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'5d'	SET @Half_Rangee  = 500	SET @FullRangee = 3200	SET @ROF  = 13	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 30	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 5	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Bushmaster M15 (5.56x45mm)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =8.9	SET @ST =8	SET @Bulk = N'-5'	SET @Cost =1500	SET @TLin = N'TL8'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'5d'	SET @Half_Rangee  = 500	SET @FullRangee = 3200	SET @ROF  = 3	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 30	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 5	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Colt M16A2 (5.56x45mm NATO)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =8.9	SET @ST =8	SET @Bulk = N'-5'	SET @Cost =800	SET @TLin = N'TL8'	SET @Lcin = N'LC2'	SET @Desc = N'[8]'	SET @TwoHanded = 1	SET @Damagee = N'5d'	SET @Half_Rangee  = 500	SET @FullRangee = 3200	SET @ROF  = 9	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 30	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 5	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Mauser K.98k (7.92x57mm)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =8.9	SET @ST =10	SET @Bulk = N'-5'	SET @Cost =300	SET @TLin = N'TL6'	SET @Lcin = N'LC3'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'7d'	SET @Half_Rangee  = 1000	SET @FullRangee = 4000	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 5	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 5	SET @ACCAddin = null	SET @Recoill = 4	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'SA-19 SAM'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Artillery'	SET @WeaponType = N'Guided Missile'	SET @Weight =89	SET @ST =0	SET @Bulk = N'--'	SET @Cost =12500	SET @TLin = N'TL8'	SET @Lcin = N'LC1'	SET @Desc = N'[1, 2, 3]'	SET @TwoHanded = 0	SET @Damagee = N'6dx50'	SET @Half_Rangee  = 600	SET @FullRangee = 8000	SET @ROF  = 1	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 1	SET @AddinChamber  = 0	SET @TimeForreload  = 20	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'cr'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'ex'	SET @TypeOfDam2 = N'[12d]'	SET @DefACCc = 6	SET @ACCAddin = null	SET @Recoill = 1	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Izhmash AK-74 (5.45x39mm M-74)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =9	SET @ST =8	SET @Bulk = N'-5'	SET @Cost =250	SET @TLin = N'TL7'	SET @Lcin = N'LC2'	SET @Desc = N'[2]'	SET @TwoHanded = 1	SET @Damagee = N'5d'	SET @Half_Rangee  = 500	SET @FullRangee = 3800	SET @ROF  = 11	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 30	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 4	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'IMI MP1  Uzi  (9x19mm Parabellum)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Submachine Gun'	SET @Weight =9.5	SET @ST =10	SET @Bulk = N'-4'	SET @Cost =300	SET @TLin = N'TL7'	SET @Lcin = N'LC2'	SET @Desc = N''	SET @TwoHanded = 1	SET @Damagee = N'3d-1'	SET @Half_Rangee  = 160	SET @FullRangee = 1900	SET @ROF  = 10	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 32	SET @AddinChamber  = 0	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 4	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Enfield Sterling L-34A1 (9x19mm Parabellum)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Submachine Gun'	SET @Weight =9.5	SET @ST =10	SET @Bulk = N'-4'	SET @Cost =1200	SET @TLin = N'TL7'	SET @Lcin = N'LC1'	SET @Desc = N'[1]'	SET @TwoHanded = 1	SET @Damagee = N'2d-1'	SET @Half_Rangee  = 100	SET @FullRangee = 1100	SET @ROF  = 8	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 34	SET @AddinChamber  = 0	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 3	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO
SET @name = N'Izhmash AN-94 (5.45x39mm M-74)'	SET @class_ofItem = N'Gun'	SET @WeaponClass = N'Guns'	SET @WeaponType = N'Rifle'	SET @Weight =9.7	SET @ST =8	SET @Bulk = N'-5*'	SET @Cost =1150	SET @TLin = N'TL8'	SET @Lcin = N'LC2'	SET @Desc = N'[2, 3]'	SET @TwoHanded = 1	SET @Damagee = N'5d'	SET @Half_Rangee  = 500	SET @FullRangee = 3800	SET @ROF  = 10	SET @ROF_for_Sh  = null	SET @Full_auto  = 0	SET @Shotss  = 30	SET @AddinChamber  = 1	SET @TimeForreload  = 3	SET @singlereload  = 0	SET @ArmorDivision  = 1	SET @TypeOfDamage1 = N'pi'	SET @TypeOfDam1 = N''	SET @TypeOfDamage2 = N'null'	SET @TypeOfDam2 = N''	SET @DefACCc = 4	SET @ACCAddin = null	SET @Recoill = 2	 
EXECUTE @RC = dbo.NEW_ITEMWeap @name ,@class_ofItem,@Weight,@ST,@Bulk ,@Cost,@Lcin,@TLin,@Desc ,@TwoHanded,@WeaponClass ,@WeaponType,@Full_auto ,@ACCAddin ,@ROF_for_Sh ,@ROF,@Recoill,@DefACCc ,@Half_Rangee ,@FullRangee,@Damagee,@Shotss,@AddinChamber,@TimeForreload ,@singlereload ,@Damage,@ArmorDivision ,@TypeOfDamage1 ,@TypeOfDamage2,@TypeOfDam1,@TypeOfDam2,@Returns OUTPUT
GO

USE Item1
GO

DECLARE @RC int
DECLARE @name nvarchar(80)
DECLARE @weigth decimal(38, 3)
DECLARE @price MONEY

EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.175 BB',@weigth=0.0008, @price=0.003
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.22 Long Rifle (5.7x16mmR)',@weigth=0.0077, @price=0.1
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.220 Swift (5.56x56mmSR)',@weigth=0.033, @price=1
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.223 Remington  (5.56x45mm NATO)',@weigth=0.026, @price=0.5
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.25 ACP (6.35x16mmSR Browning)',@weigth=0.012, @price=0.1
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.28 Caplock (Colt Number 1)',@weigth=0.006, @price=0.1
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.280 Remington (7x65mm Express)',@weigth=0.054, @price=1
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.30 M1 Carbine (7.62x33mm)',@weigth=0.029, @price=0.4
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.30 Remington (7.62x52mm)',@weigth=0.044, @price=0.8
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.300 Remington Ultra Magnum (7.62x72mmRB)',@weigth=0.075, @price=2
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.300 Winchester Magnum (7.62x66mmB)',@weigth=0.068, @price=1.5
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.30-06 Springfield (7.62x63mm)',@weigth=0.056, @price=0.8
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.303 British (7.7x56mmR)',@weigth=0.055, @price=0.8
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.30-30 Winchester (7.62x51mmR)',@weigth=0.047, @price=0.8
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.30-40 Krag (7.62x59mmR)',@weigth=0.059, @price=0.8
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.308 Winchester (7.62x51mm NATO)',@weigth=0.056, @price=0.8
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.31 Caplock (Allen)',@weigth=0.007, @price=0.1
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.32 Long Rifle (7.92x24mmR)',@weigth=0.022, @price=0.2
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.338 Lapua Magnum (8.6x70mm)',@weigth=0.096, @price=3.50
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.35 Remington (8.9x49mm)',@weigth=0.052, @price=0.8
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.357 Magnum (9x33mmR)',@weigth=0.035, @price=0.4
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.357 SIG (9x22mm)',@weigth=0.029, @price=0.4
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.36 Caplock (M1851 Navy)',@weigth=0.023, @price=0.1
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.375 H&H Magnum (9.35x72mmB)',@weigth=0.086, @price=2.50
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.38 ACP (9x23mmSR)',@weigth=0.029, @price=0.2
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.38 Long Colt (9x26mmR)',@weigth=0.033, @price=0.2
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.38 S&W (9x20mmR)',@weigth=0.035, @price=0.2
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.38 Special (9x29mmR)',@weigth=0.033, @price=0.3
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.38 Super Auto (9x23mmSR)',@weigth=0.029, @price=0.3
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.38 Volcanic',@weigth=0.015, @price=0.25
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.380 ACP (9x17mm)',@weigth=0.021, @price=0.2
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.38-40 Winchester (10x33mmR)',@weigth=0.04, @price=0.8
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.40 S&W (10x21mm)',@weigth=0.035, @price=0.3
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.41 Long Colt (10x29mmR)',@weigth=0.04, @price=0.2
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.41 Short Remington (10x12mmR)',@weigth=0.025, @price=0.2
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.42 Caplock (LeMat)',@weigth=0.018, @price=0.2
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.44 Colt (11.25x28mmR)',@weigth=0.045, @price=0.4
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.44 Magnum (10.9x33mmR)',@weigth=0.054, @price=0.7
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.442 Caplock (Adams)',@weigth=0.019, @price=0.2
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.442 RIC (11.2x17mmR)',@weigth=0.043, @price=0.4
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.444 Marlin (10.9x57mmR)',@weigth=0.052, @price=1.5
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.44-40 Winchester (10.8x33mmR)',@weigth=0.043, @price=0.6
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.44-90 Remington Special (11.2x62mmR)',@weigth=0.11, @price=2.8
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.44-90 Sharps (11.3x61mmR)',@weigth=0.11, @price=2.8
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.45 ACP (11.43x23mm)',@weigth=0.047, @price=0.5
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.45 Flintlock (Kentucky)',@weigth=0.025, @price=0.3
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.45 Flintlock (Wogdon)',@weigth=0.023, @price=0.2
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.45 GAP (11.43x19mm)',@weigth=0.045, @price=0.5
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.45 Long Colt (11.43x33mmR)',@weigth=0.05, @price=0.5
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.45 S&W (11.43x28mmR)',@weigth=0.045, @price=0.5
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.450 Adams (12.05x17mmR)',@weigth=0.045, @price=0.3
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.450 Gardner-Gatling (11.43x63mmR)',@weigth=0.12, @price=1.2
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.450 Martini-Henry (11.43x59mmR)',@weigth=0.11, @price=1
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.45-110 Sharps (11.43x73mmR)',@weigth=0.12, @price=1.8
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.454 Casull (11.43x35mmR)',@weigth=0.066, @price=1
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.455 Webley (11.5x19mmR)',@weigth=0.05, @price=0.5
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.45-55 Springfield (11.43x53mmR)',@weigth=0.08, @price=0.9
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.45-70 Springfield (11.43x53mmR)',@weigth=0.086, @price=1
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.45-75 Winchester (11.43x48mmR)',@weigth=0.085, @price=1
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.458 Winchester Magnum (11.63x64mmB)',@weigth=0.11, @price=4
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.460 Weatherby Magnum (11.63x74mmB)',@weigth=0.14, @price=7.50
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.470 Nitro Express (12x83mmR)',@weigth=0.12, @price=10
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.476 Enfield (12.05x22mmR)',@weigth=0.055, @price=0.5
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.50 Action Express (12.7x33mm)',@weigth=0.067, @price=1
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.50 Flintlock (Collier)',@weigth=0.026, @price=0.3
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.50 Flintlock (North West)',@weigth=0.035, @price=0.4
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.50-140 Sharps (12.9x83mmR)',@weigth=0.15, @price=1.5
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.50-70 Government (13x44mmR)',@weigth=0.086, @price=1
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.50-90 Sharps (12.9x64mmR)',@weigth=0.11, @price=1.3
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.50-95 Winchester Express (12.7x49mmR)',@weigth=0.06, @price=1.3
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.50BMG (12.7x99mm)',@weigth=0.25, @price=4
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.54 Caplock (Elgin Cutlass)',@weigth=0.05, @price=0.4
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.54 Flintlock (Hall M1819)',@weigth=0.044, @price=0.3
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.56 Flintlock (Tower Sea Service)',@weigth=0.05, @price=0.4
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.56-50 Spencer (13x29mmR)',@weigth=0.062, @price=0.6
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.56-56 Spencer (14x22mmR)',@weigth=0.073, @price=0.6
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.577 Caplock (Enfield)',@weigth=0.086, @price=0.4
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.577 Snider (14.6x51mmR)',@weigth=0.1, @price=0.8
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.58 Berdan (15x44mmR)',@weigth=0.12, @price=0.7
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.600 Nitro Express (15.2x76mmR)',@weigth=0.2, @price=20
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.625 Flintlock (Baker)',@weigth=0.062, @price=0.4
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.68 FN',@weigth=0.019, @price=1.5
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.68 Paintball',@weigth=0.0068, @price=0.05
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.700 Nitro Express (17.8x89mmR)',@weigth=0.25, @price=75
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.75 Flintlock (Brown Bess)',@weigth=0.09, @price=0.4
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.75 Flintlock (Rigby)',@weigth=0.075, @price=0.5
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'1" Flare (25.4x107mmR)',@weigth=0.2, @price=1
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'1" Gatling (25.5x97mmR)',@weigth=0.82, @price=10
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'1.5" Caplock (Greener)',@weigth=5, @price=10
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'10.75x58mmR Berdan',@weigth=0.088, @price=1
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'10.75x68mm Mauser',@weigth=0.088, @price=1.5
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'105x371mmR',@weigth=40, @price=75
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'106x607mmR',@weigth=38, @price=185
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'10-gauge 2.875" (19.7x73mmR)',@weigth=0.15, @price=1.3
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'10x25mm Auto',@weigth=0.042, @price=0.6
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'11.15x58mmR (.43 Spanish Remington)',@weigth=0.092, @price=1
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'11.4x50mmR (.43 Egyptian Remington)',@weigth=0.094, @price=1
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'11.75mm Girandoni',@weigth=0.021, @price=0.2
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'11-gauge Flintlock',@weigth=0.12, @price=0.5
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'11mm Syringe',@weigth=0.02, @price=15
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'12.7x108mm',@weigth=0.31, @price=5
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'12.7x77mm',@weigth=0.25, @price=1.6
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'120mm',@weigth=35.2, @price=60
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'125x408mmR',@weigth=73, @price=255
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'12-gauge 2.5" (18.5x63mmR)',@weigth=0.1, @price=0.5
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'12-gauge 2.75" (18.5x70mmR)',@weigth=0.11, @price=0.5
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'12-gauge 2.75" (18.5x70mmR)',@weigth=0.13, @price=0.7
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'12-gauge 3" (18.5x76mmR)',@weigth=0.18, @price=0.7
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'12-pounder Cannonlock',@weigth=15, @price=25
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'12x16mm Lefaucheux',@weigth=0.05, @price=0.5
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'13x36mm Gyrojet',@weigth=0.03, @price=7.50
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'13x92mmSR Mauser',@weigth=0.26, @price=4.4
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'14.5х114 мм (М41/44)',@weigth=0.44, @price=6.7
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'15.43x54mm Dreyse',@weigth=0.085, @price=0.4
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'16-gauge 2.75" (16.8x70mmR)',@weigth=0.09, @price=0.4
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'16-gauge Flintlock',@weigth=0.085, @price=0.5
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'17.1mm Flintlock (AN IX)',@weigth=0.076, @price=0.4
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'17.5mm Flintlock (Mle 1777)',@weigth=0.087, @price=0.4
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'2"2.25',@weigth=1, @price=15
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'2.5" Caplock (Screw-Gun)',@weigth=7.4, @price=11
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'20-gauge 2.5" (15.6x63mmR)',@weigth=0.07, @price=0.4
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'20-gauge 2.75" (15.6x70mmR)',@weigth=0.08, @price=0.4
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'20-gauge Caplock',@weigth=0.075, @price=0.4
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'20x102mm',@weigth=0.57, @price=10
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'20x110mmRB Oerlikon',@weigth=0.54, @price=10
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'20x138mmB Solothurn',@weigth=0.74, @price=10
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'20x28mm',@weigth=0.21, @price=6
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'20x82mm Mauser',@weigth=0.45, @price=8
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'25x137mm Oerlikon',@weigth=1.1, @price=15
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'25x59mmB',@weigth=0.37, @price=7.50
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'26.5x103mmR',@weigth=0.22, @price=1
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'3"10',@weigth=1, @price=35
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'30x28mmB',@weigth=0.77, @price=7
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'32-gauge 2.75" (12.5x70mmR)',@weigth=0.06, @price=0.4
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'37x122mmR',@weigth=0.37, @price=5
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'37x249mmR',@weigth=2.9, @price=20
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'37x94mmR Hotchkiss',@weigth=1.4, @price=16.5
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'4.6x30mm Royal Ordnance',@weigth=0.013, @price=0.4
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'4.73x33mm Dynamit-Nobel',@weigth=0.011, @price=0.5
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'40mm VOG-25',@weigth=0.55, @price=5
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'40x53mmSR',@weigth=0.75, @price=7.50
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'5.45x39mm',@weigth=0.023, @price=0.4
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'5.66x39mm',@weigth=0.062, @price=2
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'5.6x57mmB',@weigth=0.016, @price=1
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'5.7x26mm Usel',@weigth=0.011, @price=0.4
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'5.7x28mm Fabrique Nationale',@weigth=0.013, @price=0.4
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'5.8x42mm',@weigth=0.028, @price=0.5
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'52mm',@weigth=1.7, @price=15
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'57x305mmR',@weigth=5.5, @price=70
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'6.5x55mm Mauser',@weigth=0.053, @price=0.8
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'60mm',@weigth=3.2, @price=20
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'6x60mm Lee (.236 Navy)',@weigth=0.044, @price=0.8
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'7.5x54mm MAS',@weigth=0.053, @price=0.8
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'7.62x25mm Tokarev',@weigth=0.024, @price=0.2
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'7.62x39mm',@weigth=0.036, @price=0.6
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'7.62x39mmR Nagant',@weigth=0.028, @price=0.2
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'7.62x42mm',@weigth=0.053, @price=0.5
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'7.62x54mmR Mosin',@weigth=0.05, @price=0.8
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'7.63x25mm Mauser',@weigth=0.023, @price=0.2
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'7.65x21mm Parabellum',@weigth=0.023, @price=0.2
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'7.65x53mm Mauser',@weigth=0.053, @price=0.8
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'7.7x58mm Arisaka',@weigth=0.049, @price=0.8
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'7.7x58mmSR Arisaka',@weigth=0.061, @price=0.8
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'7.92x33mm Kurz',@weigth=0.037, @price=0.6
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'7.92x57mm Mauser',@weigth=0.059, @price=0.8
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'75x350mmR',@weigth=20, @price=55
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'75x495mmR',@weigth=23, @price=60
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'76.2x539mmR (3")',@weigth=24, @price=60
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'7x57mm Mauser',@weigth=0.054, @price=0.8
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'7x64mmB Remington Magnum',@weigth=0.062, @price=1.5
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'81mm',@weigth=11.7, @price=35
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'82mm',@weigth=7.4, @price=25
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'84x250mmR',@weigth=5.7, @price=75
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'8-bore (21.2x70mmR)',@weigth=0.26, @price=4
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'8x21mm Nambu',@weigth=0.025, @price=0.2
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'8x50mmR Lebel',@weigth=0.061, @price=0.8
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'8x50mmR Mannlicher',@weigth=0.062, @price=0.8
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'8x58mmR Krag',@weigth=0.064, @price=0.8
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'8x60mm Mauser',@weigth=0.055, @price=0.8
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'8x63mm Bofors',@weigth=0.064, @price=1
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'9.3x74mmR',@weigth=0.074, @price=2
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'9x18mm Makarov',@weigth=0.022, @price=0.2
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'9x19mm Parabellum',@weigth=0.026, @price=0.3
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'9x21mm Gyurza',@weigth=0.024, @price=0.4
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'9x23mm Bergmann-Bayard',@weigth=0.027, @price=0.3
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'9x25mm Mauser',@weigth=0.029, @price=0.4
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'9x39mm',@weigth=0.051, @price=0.5
