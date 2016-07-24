--
-- Скрипт сгенерирован Devart dbForge Studio for SQL Server, Версия 5.1.178.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/sql/studio
-- Дата скрипта: 18.07.2016 19:40:34
-- Версия сервера: 10.00.5538
-- Версия клиента: 
--


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

  IF OBJECT_ID(N'[dbo].[FK_ITEM_ItemSubClass_id]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[ITEM] DROP CONSTRAINT [FK_ITEM_ItemSubClass_id]

  IF OBJECT_ID(N'[dbo].[FK_ItemSubClass_ItemClass_id]', 'F') IS NOT NULL
  ALTER TABLE [dbo].[ItemSubClass] DROP CONSTRAINT [FK_ItemSubClass_ItemClass_id]




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
IF OBJECT_ID(N'[dbo].[ItemSubClass]', 'U') IS NOT NULL
  DROP TABLE [dbo].[ItemSubClass];
GO
IF OBJECT_ID(N'[dbo].[GurpsClass]', 'U') IS NOT NULL
  DROP TABLE [dbo].[GurpsClass];
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




USE Item1
GO

IF DB_NAME() <> N'Item1' SET NOEXEC ON
GO

--
-- Создать таблицу "dbo.WeaponDamage"
--
PRINT (N'Создать таблицу "dbo.WeaponDamage"')
GO
CREATE TABLE dbo.WeaponDamage (
  id int IDENTITY,
  idWeapon int NOT NULL,
  idWeaponAttackType int NOT NULL,
  Damage nvarchar(50) NULL,
  ArmorDivision decimal(5, 2) NOT NULL DEFAULT (1),
  idTypeOfDamage1 int NULL,
  idTypeOfDamage2 int NULL,
  TypeOfDamage1text nvarchar(50) NULL,
  TypeOfDamage2text nvarchar(50) NULL,
  Descrip nvarchar(50) NULL,
  CONSTRAINT PK_WeaponDamage PRIMARY KEY CLUSTERED (id),
  CONSTRAINT UK_WeaponattacktypeWeapon UNIQUE (idWeapon, idWeaponAttackType)
)
ON [PRIMARY]
GO

--
-- Создать таблицу "dbo.WeaponAttackType"
--
PRINT (N'Создать таблицу "dbo.WeaponAttackType"')
GO
CREATE TABLE dbo.WeaponAttackType (
  id int IDENTITY,
  name nvarchar(20) NULL,
  descr nvarchar(150) NULL,
  CONSTRAINT PK_WeaponAttackType PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу "dbo.WEAPON"
--
PRINT (N'Создать таблицу "dbo.WEAPON"')
GO
CREATE TABLE dbo.WEAPON (
  uiIndex int NOT NULL,
  szWeaponName nvarchar(80) NOT NULL,
  DefACC int NOT NULL DEFAULT (1),
  ACCAddin int NULL,
  Half_Range decimal(10, 4) NOT NULL DEFAULT (1),
  FullRange decimal(10, 4) NOT NULL DEFAULT (1),
  MinRange bit NOT NULL DEFAULT (0),
  AWeight decimal(5, 3) NOT NULL DEFAULT (1),
  ROF int NOT NULL DEFAULT (1),
  Full_auto bit NOT NULL DEFAULT (0),
  ROF_for_Sh int NULL,
  Shots int NOT NULL DEFAULT (1),
  Time_For_reload int NOT NULL DEFAULT (3),
  single_reload bit NOT NULL DEFAULT (0),
  Recoil int NOT NULL DEFAULT (1),
  HeavyWeapon bit NOT NULL DEFAULT (0),
  Add_in_Chamber bit NOT NULL DEFAULT (0),
  CutOff_shots bit NOT NULL DEFAULT (0),
  CutOff_shotsCount int NOT NULL DEFAULT (0),
  GrenadeLauncher bit NOT NULL DEFAULT (0),
  RocketLauncher bit NOT NULL DEFAULT (0),
  Mortar bit NOT NULL DEFAULT (0),
  Cannon bit NOT NULL DEFAULT (0),
  SingleShot_RocketLauncher bit NOT NULL DEFAULT (0),
  RocketRifle bit NOT NULL DEFAULT (0),
  Bulkfolded bit NOT NULL DEFAULT (0),
  HCROF bit NOT NULL DEFAULT (0),
  HCROFValue int NOT NULL DEFAULT (0),
  CONSTRAINT PK_WEAPON PRIMARY KEY CLUSTERED (uiIndex)
)
ON [PRIMARY]
GO

--
-- Создать таблицу "dbo.TypeOfDamage"
--
PRINT (N'Создать таблицу "dbo.TypeOfDamage"')
GO
CREATE TABLE dbo.TypeOfDamage (
  id int IDENTITY,
  name nvarchar(5) NOT NULL,
  LongName nvarchar(30) NULL,
  mDamage nvarchar(5) NOT NULL,
  CONSTRAINT PK_TypeOfDamage PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу "dbo.Type_of_Box"
--
PRINT (N'Создать таблицу "dbo.Type_of_Box"')
GO
CREATE TABLE dbo.Type_of_Box (
  id int IDENTITY,
  nameOfType varchar(50) NULL,
  CONSTRAINT PK_Type_of_Box PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу "dbo.TL"
--
PRINT (N'Создать таблицу "dbo.TL"')
GO
CREATE TABLE dbo.TL (
  Id_Tl int IDENTITY,
  name_TL nvarchar(50) NULL,
  Description nvarchar(60) NULL,
  StartMoney decimal(19, 4) NULL,
  CONSTRAINT PK_TL PRIMARY KEY CLUSTERED (Id_Tl)
)
ON [PRIMARY]
GO

--
-- Создать таблицу "dbo.LC"
--
PRINT (N'Создать таблицу "dbo.LC"')
GO
CREATE TABLE dbo.LC (
  Id_LC int IDENTITY,
  Name_LC nvarchar(10) NULL,
  ShortDes nvarchar(15) NULL,
  Description nvarchar(300) NULL,
  CONSTRAINT PK_LC PRIMARY KEY CLUSTERED (Id_LC)
)
ON [PRIMARY]
GO

--
-- Создать таблицу "dbo.LaserColorEf"
--
PRINT (N'Создать таблицу "dbo.LaserColorEf"')
GO
CREATE TABLE dbo.LaserColorEf (
  id int IDENTITY,
  name nvarchar(10) NULL,
  LaserColorDayEfect decimal(4, 2) NULL,
  CONSTRAINT PK_LaserColorEf PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу "dbo.ItemSubClass"
--
PRINT (N'Создать таблицу "dbo.ItemSubClass"')
GO
CREATE TABLE dbo.ItemSubClass (
  id int IDENTITY,
  NameSub nvarchar(50) NULL,
  IdItemClass int NOT NULL,
  Type nvarchar(50) NULL,
  idGurpsSubClass int NULL,
  CONSTRAINT PK_ItemSubClass PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу "dbo.ItemClass"
--
PRINT (N'Создать таблицу "dbo.ItemClass"')
GO
CREATE TABLE dbo.ItemClass (
  id int IDENTITY,
  name nvarchar(70) NOT NULL,
  CONSTRAINT PK_ItemClass PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу "dbo.ITEM"
--
PRINT (N'Создать таблицу "dbo.ITEM"')
GO
CREATE TABLE dbo.ITEM (
  uiIndex int IDENTITY,
  szItemName nvarchar(80) NOT NULL DEFAULT (1),
  szLongItemName nvarchar(80) NULL,
  szItemDesc nvarchar(max) NULL,
  usItemClass int NOT NULL DEFAULT (1),
  ubClassIndex int NOT NULL DEFAULT (1),
  ubWeight decimal(7, 3) NOT NULL DEFAULT (1),
  ItemSize nvarchar(80) NOT NULL DEFAULT (1),
  usPrice money NOT NULL DEFAULT (1),
  ubCalibre int NULL,
  Damageable bit NOT NULL DEFAULT (1),
  Repairable bit NOT NULL DEFAULT (1),
  WaterDamages bit NOT NULL DEFAULT (1),
  Metal bit NOT NULL DEFAULT (0),
  TwoHanded bit NOT NULL DEFAULT (0),
  Electronic bit NOT NULL DEFAULT (0),
  HT bit NOT NULL DEFAULT (0),
  UT bit NOT NULL DEFAULT (0),
  RemoteTrigger bit NOT NULL DEFAULT (0),
  GasMask bit NOT NULL DEFAULT (0),
  Alcohol bit NOT NULL DEFAULT (0),
  Hardware bit NOT NULL DEFAULT (0),
  Medical bit NOT NULL DEFAULT (0),
  CamouflageKit bit NOT NULL DEFAULT (0),
  LocksmithKit bit NOT NULL DEFAULT (0),
  Toolkit bit NOT NULL DEFAULT (0),
  FirstAidKit bit NOT NULL DEFAULT (0),
  MedicalKit bit NOT NULL DEFAULT (0),
  WireCutters bit NOT NULL DEFAULT (0),
  Canteen bit NOT NULL DEFAULT (0),
  GasCan bit NOT NULL DEFAULT (0),
  Batteries bit NOT NULL DEFAULT (0),
  NeedsBatteries bit NOT NULL DEFAULT (0),
  ContainsLiquid bit NOT NULL DEFAULT (0),
  MetalDetector bit NOT NULL DEFAULT (0),
  FingerPrintID bit NOT NULL DEFAULT (0),
  TripWireActivation bit NOT NULL DEFAULT (0),
  TripWire bit NOT NULL DEFAULT (0),
  Mount bit NOT NULL DEFAULT (0),
  TL int NOT NULL DEFAULT (2),
  LC int NOT NULL DEFAULT (1),
  SizeBatteries nvarchar(4) NULL,
  FoodType int NOT NULL DEFAULT (1),
  LockPickModifier int NOT NULL DEFAULT (1),
  CrowbarModifier int NOT NULL DEFAULT (1),
  DisarmModifier int NOT NULL DEFAULT (1),
  RepairModifier int NOT NULL DEFAULT (1),
  DamageChance int NOT NULL DEFAULT (1),
  clothestype int NOT NULL DEFAULT (1),
  DrugType int NOT NULL DEFAULT (1),
  Item_Image varbinary(max) NULL,
  minST int NOT NULL DEFAULT (1),
  Link nvarchar(max) NULL,
  used bit NOT NULL DEFAULT (0),
  dt datetime NULL,
  Count_of_Bat int NOT NULL DEFAULT (1),
  Works_on_Bat nvarchar(15) NOT NULL DEFAULT (1),
  CONSTRAINT PK_ITEM PRIMARY KEY CLUSTERED (uiIndex)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

--
-- Создать индекс "IX_FK_Calibre" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать индекс "IX_FK_Calibre" для объекта типа таблица "dbo.ITEM"')
GO
CREATE INDEX IX_FK_Calibre
  ON dbo.ITEM (ubCalibre)
  ON [PRIMARY]
GO

--
-- Создать индекс "IX_FK_ITEM_Clothes" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать индекс "IX_FK_ITEM_Clothes" для объекта типа таблица "dbo.ITEM"')
GO
CREATE INDEX IX_FK_ITEM_Clothes
  ON dbo.ITEM (clothestype)
  ON [PRIMARY]
GO

--
-- Создать индекс "IX_FK_ITEM_DrugType" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать индекс "IX_FK_ITEM_DrugType" для объекта типа таблица "dbo.ITEM"')
GO
CREATE INDEX IX_FK_ITEM_DrugType
  ON dbo.ITEM (DrugType)
  ON [PRIMARY]
GO

--
-- Создать индекс "IX_FK_ITEM_Food" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать индекс "IX_FK_ITEM_Food" для объекта типа таблица "dbo.ITEM"')
GO
CREATE INDEX IX_FK_ITEM_Food
  ON dbo.ITEM (FoodType)
  ON [PRIMARY]
GO

--
-- Создать индекс "IX_FK_Item_ItemClass" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать индекс "IX_FK_Item_ItemClass" для объекта типа таблица "dbo.ITEM"')
GO
CREATE INDEX IX_FK_Item_ItemClass
  ON dbo.ITEM (usItemClass)
  ON [PRIMARY]
GO

--
-- Создать индекс "IX_FK_ITEM_LC" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать индекс "IX_FK_ITEM_LC" для объекта типа таблица "dbo.ITEM"')
GO
CREATE INDEX IX_FK_ITEM_LC
  ON dbo.ITEM (LC)
  ON [PRIMARY]
GO

--
-- Создать индекс "IX_FK_ITEM_TL" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать индекс "IX_FK_ITEM_TL" для объекта типа таблица "dbo.ITEM"')
GO
CREATE INDEX IX_FK_ITEM_TL
  ON dbo.ITEM (TL)
  ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

--
-- Создать процедуру "dbo.NEW_ITEMWeap"
--
GO
PRINT (N'Создать процедуру "dbo.NEW_ITEMWeap"')
GO


CREATE PROCEDURE dbo.NEW_ITEMWeap (
--item
@name NVARCHAR(80), @class_ofItem NVARCHAR(80),
@Weight DECIMAL(7, 3), @ST INT,
@Bulk NVARCHAR(80), @Cost MONEY,
@Lcin NVARCHAR(10), @TLin NVARCHAR(10),
@Desc NVARCHAR(MAX), @TwoHanded BIT,

@WeaponClass NVARCHAR(80),
@WeaponType NVARCHAR(80),
@Full_auto BIT,
@ACCAddin INT,
@ROF_for_Sh INT,

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
@TypeOfDam1 NVARCHAR(50),
@TypeOfDam2 NVARCHAR(50),

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

  SET @IDLCFind = (SELECT TOP (1)
      l.Id_LC
    FROM LC l
    WHERE l.Name_LC = @Lcin)
  SET @IDTLFind = (SELECT TOP (1)
      t.Id_Tl
    FROM TL t
    WHERE t.name_TL = @TLin)
  
  SET @IDClass = (SELECT TOP (1)
      ic.id
    FROM ItemClass ic
    WHERE ic.name = @class_ofItem)

  SET @idWeapAttackType = (SELECT TOP (1)
      wat.id
    FROM WeaponAttackType wat
    WHERE wat.name LIKE ('prim%'))

  SET @idWeaponClass = (SELECT TOP (1)
      id
    FROM GurpsClass
    WHERE Name LIKE (@WeaponClass))
 
 SET @idWeaponType = (SELECT TOP (1)
      id
    FROM ItemSubClass
    WHERE NameSub LIKE (@WeaponType))


  SET @TypeOfDamageFind1 = (SELECT TOP (1)
      tod.id
    FROM TypeOfDamage tod
    WHERE tod.name = @TypeOfDamage1)
  SET @TypeOfDamageFind2 = (SELECT TOP (1)
      tod.id
    FROM TypeOfDamage tod
    WHERE tod.name = @TypeOfDamage2)
  -- SET @IDubCalibre = (SELECT    a.id  FROM AMMO a  WHERE a.Caliber_name LIKE @ubCalibre)


  INSERT INTO ITEM (szItemName, usItemClass, ubWeight, minST, ItemSize, usPrice, LC, TL, szItemDesc, TwoHanded)
    VALUES (@name, @idWeaponType, @Weight, @ST, @Bulk, @Cost, @IDLCFind, @IDTLFind, @Desc, @TwoHanded)
  SELECT
    @newID = @@identity


  INSERT INTO Item1.dbo.WEAPON (
    uiIndex,
  szWeaponName,

  ROF,
  Full_auto,
  Recoil,
  DefACC,
  ACCAddin,
  ROF_for_Sh,
  Half_Range,
  FullRange, Shots, Add_in_Chamber, Time_For_reload, single_reload)


    VALUES (@newID, @name,  @ROF, @Full_auto, @Recoill, @DefACCc, @ACCAddin, @ROF_for_Sh, @Half_Rangee, @FullRangee, @Shotss, @AddinChamber, @TimeForreload, @singlereload)


  INSERT INTO Item1.dbo.WeaponDamage (idWeapon,
  idWeaponAttackType,
  Damage,
  ArmorDivision,
  idTypeOfDamage1,
  idTypeOfDamage2,
  TypeOfDamage1text,
  TypeOfDamage2text)
    VALUES (@newID, @idWeapAttackType, @Damagee, @ArmorDivision, @TypeOfDamageFind1, @TypeOfDamageFind2, @TypeOfDam1, @TypeOfDam2);

  SET @Returns = @newID

END
--http://www.cyberguru.ru/dotnet/ado-net/entity-framework-faq.html



GO

--
-- Создать таблицу "dbo.GurpsClass"
--
PRINT (N'Создать таблицу "dbo.GurpsClass"')
GO
CREATE TABLE dbo.GurpsClass (
  id int IDENTITY,
  name nvarchar(16) NOT NULL,
  CONSTRAINT PK_WeaponClass PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу "dbo.G_SubAttachClass"
--
PRINT (N'Создать таблицу "dbo.G_SubAttachClass"')
GO
CREATE TABLE dbo.G_SubAttachClass (
  id int IDENTITY,
  SubAttach_name nvarchar(50) NOT NULL,
  AttachClass int NOT NULL,
  SubAttachDescription nvarchar(max) NULL,
  ATTACHMENTSLOT int NOT NULL,
  CONSTRAINT PK_G_SubAttachClass PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

--
-- Создать индекс "IX_FK_G_SubAttachClass_ATTACHMENTSLOT1" для объекта типа таблица "dbo.G_SubAttachClass"
--
PRINT (N'Создать индекс "IX_FK_G_SubAttachClass_ATTACHMENTSLOT1" для объекта типа таблица "dbo.G_SubAttachClass"')
GO
CREATE INDEX IX_FK_G_SubAttachClass_ATTACHMENTSLOT1
  ON dbo.G_SubAttachClass (ATTACHMENTSLOT)
  ON [PRIMARY]
GO

--
-- Создать индекс "IX_FK_G_SubAttachClass_G_AttachClass" для объекта типа таблица "dbo.G_SubAttachClass"
--
PRINT (N'Создать индекс "IX_FK_G_SubAttachClass_G_AttachClass" для объекта типа таблица "dbo.G_SubAttachClass"')
GO
CREATE INDEX IX_FK_G_SubAttachClass_G_AttachClass
  ON dbo.G_SubAttachClass (AttachClass)
  ON [PRIMARY]
GO

--
-- Создать таблицу "dbo.G_AttachClass"
--
PRINT (N'Создать таблицу "dbo.G_AttachClass"')
GO
CREATE TABLE dbo.G_AttachClass (
  id int IDENTITY,
  name_class nvarchar(50) NULL,
  CONSTRAINT PK_G_AttachClass PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу "dbo.FOOD"
--
PRINT (N'Создать таблицу "dbo.FOOD"')
GO
CREATE TABLE dbo.FOOD (
  id int IDENTITY,
  name nvarchar(50) NULL,
  CONSTRAINT PK_FOOD PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу "dbo.Drug"
--
PRINT (N'Создать таблицу "dbo.Drug"')
GO
CREATE TABLE dbo.Drug (
  id int IDENTITY,
  name nvarchar(255) NULL,
  IdDrugType int NULL,
  CONSTRAINT PK_Drug PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу "dbo.Clothes"
--
PRINT (N'Создать таблицу "dbo.Clothes"')
GO
CREATE TABLE dbo.Clothes (
  id int IDENTITY,
  name nvarchar(255) NULL,
  CONSTRAINT PK_Clothes PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу "dbo.CharacterDB"
--
PRINT (N'Создать таблицу "dbo.CharacterDB"')
GO
CREATE TABLE dbo.CharacterDB (
  id int IDENTITY,
  Name nvarchar(80) NULL,
  StrengthPoints int NOT NULL,
  DexterityPoints int NOT NULL,
  IntelligencePoints int NOT NULL,
  HealthPoints int NOT NULL,
  MaxHPPoints int NOT NULL,
  MaxFPPoints int NOT NULL,
  PerceptionPoints int NOT NULL,
  WillpowerPoints int NOT NULL,
  BasicSpeedPoints real NOT NULL,
  BasicMovePoints int NOT NULL,
  CONSTRAINT PK_cha PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу "dbo.Caliber"
--
PRINT (N'Создать таблицу "dbo.Caliber"')
GO
CREATE TABLE dbo.Caliber (
  id int IDENTITY,
  Caliber_name nvarchar(255) NOT NULL,
  alt_caliber_name nvarchar(255) NULL,
  Class_of_Caliber nvarchar(50) NOT NULL,
  Dim_of_bullet_SI decimal(8, 4) NULL,
  Dim_of_bullet_US decimal(8, 4) NULL,
  CONSTRAINT PK_Caliber PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать процедуру "dbo.NEW_ITEM_Ammo"
--
GO
PRINT (N'Создать процедуру "dbo.NEW_ITEM_Ammo"')
GO
USE Item1
GO

IF OBJECT_ID(N'dbo.NEW_ITEM_Ammo', 'P') IS NOT NULL
  EXEC sp_executesql N'DROP PROCEDURE dbo.NEW_ITEM_Ammo'
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE PROCEDURE dbo.NEW_ITEM_Ammo @name NVARCHAR(80),
@weigth DECIMAL(7, 3),
@price MONEY,
@sClass NVARCHAR(80)

AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @Class INT
  DECLARE @Call INT
  DECLARE @newID INT
  SET @Class = (SELECT TOP (1)
      ic.id
    FROM ItemSubClass ic 
    WHERE ic.NameSub LIKE(@sClass))

  SET @Call = (SELECT TOP (1)
      c.id
    FROM Caliber c
    WHERE c.Caliber_name = @name)

  INSERT INTO ITEM (szItemName, usItemClass, ubWeight, usPrice, ubCalibre)
    VALUES          (@name,     @Class,     @weigth,    @price, @Call)
  SELECT
    @newID = @@identity
--  INSERT INTO AMMO (id, Caliber_name, alt_caliber_name)
--    VALUES (@newID, @name, N'');


END

GO

--
-- Создать таблицу "dbo.Battery"
--
PRINT (N'Создать таблицу "dbo.Battery"')
GO
CREATE TABLE dbo.Battery (
  id int IDENTITY,
  name nvarchar(50) NOT NULL,
  SmolName nvarchar(50) NULL,
  Description nvarchar(500) NULL,
  CPP money NULL,
  WPP decimal(7, 3) NULL,
  CONSTRAINT PK_Battery PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу "dbo.ATTACHMENTSLOT"
--
PRINT (N'Создать таблицу "dbo.ATTACHMENTSLOT"')
GO
CREATE TABLE dbo.ATTACHMENTSLOT (
  uiSlotIndex int IDENTITY,
  szSlotName nvarchar(50) NOT NULL,
  CONSTRAINT PK_ATTACHMENTSLOT PRIMARY KEY CLUSTERED (uiSlotIndex)
)
ON [PRIMARY]
GO

--
-- Создать таблицу "dbo.Attachmentmount"
--
PRINT (N'Создать таблицу "dbo.Attachmentmount"')
GO
CREATE TABLE dbo.Attachmentmount (
  id int IDENTITY,
  name nvarchar(50) NULL,
  idAttacClass int NOT NULL DEFAULT (1),
  CONSTRAINT PK_Attachmentmount PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать индекс "IX_FK_Attachmentmount_NasAttachmentClass1" для объекта типа таблица "dbo.Attachmentmount"
--
PRINT (N'Создать индекс "IX_FK_Attachmentmount_NasAttachmentClass1" для объекта типа таблица "dbo.Attachmentmount"')
GO
CREATE INDEX IX_FK_Attachmentmount_NasAttachmentClass1
  ON dbo.Attachmentmount (idAttacClass)
  ON [PRIMARY]
GO

--
-- Создать таблицу "dbo.Attachment"
--
PRINT (N'Создать таблицу "dbo.Attachment"')
GO
CREATE TABLE dbo.Attachment (
  uiIndex int NOT NULL,
  szAttName nvarchar(80) NOT NULL,
  rAttachmentClass int NOT NULL DEFAULT (1),
  Attachmentmount nvarchar(50) NULL,
  HiddenAttachment bit NOT NULL DEFAULT (0),
  NoiseReduction int NULL,
  HideMuzzleFlash bit NOT NULL DEFAULT (0),
  RangeBonus int NULL,
  AimBonus int NULL,
  MinRangeForAimBonus int NULL,
  MagSizeBonus int NULL,
  BurstSizeBonus int NULL,
  RateOfFireBonus int NULL,
  DamageBonus int NULL,
  ScopeMagFactor decimal(4, 2) NULL,
  HearingRangeBonus int NULL,
  VisionRangeBonus int NULL,
  NightVisionRangeBonus int NULL,
  DayVisionRangeBonus int NULL,
  CaveVisionRangeBonus int NULL,
  BrightLightVisionRangeBonus int NULL,
  PercentTunnelVision int NULL,
  FlashLightRange int NULL,
  RecoilModifier int NULL,
  G_SubAttachClass int NOT NULL DEFAULT (1),
  G_AttachClass int NOT NULL DEFAULT (1),
  Darkness int NULL,
  Bulk_add int NULL,
  Fix bit NOT NULL DEFAULT (0),
  BatTimeWork int NULL,
  Tritium bit NOT NULL DEFAULT (0),
  ScopeMagMin int NULL,
  ScopeMagMax int NULL,
  AccAddmax int NULL,
  id_Attachmentmount int NOT NULL DEFAULT (1),
  ImpVisSights bit NOT NULL DEFAULT (0),
  BlockIronSight bit NOT NULL DEFAULT (0),
  Collimator bit NOT NULL DEFAULT (0),
  Reflex bit NOT NULL DEFAULT (0),
  Targetingprogram bit NOT NULL DEFAULT (0),
  Laserrangefinder bit NOT NULL DEFAULT (0),
  LaserRFrange int NULL,
  LaserRFAcc int NULL,
  NightVision int NULL,
  NeedIRillumination bit NOT NULL DEFAULT (0),
  Infravision bit NOT NULL DEFAULT (0),
  IRFilter bit NOT NULL DEFAULT (0),
  LightRange int NULL,
  IRLigRange int NULL,
  LaserRange int NULL,
  LaserColor nvarchar(10) NULL,
  LaserColorEf decimal(4, 2) NULL,
  usedBatType int NULL,
  CONSTRAINT PK_Attachment PRIMARY KEY CLUSTERED (uiIndex)
)
ON [PRIMARY]
GO

--
-- Создать индекс "IX_FK_Attachment_Attachmentmount" для объекта типа таблица "dbo.Attachment"
--
PRINT (N'Создать индекс "IX_FK_Attachment_Attachmentmount" для объекта типа таблица "dbo.Attachment"')
GO
CREATE INDEX IX_FK_Attachment_Attachmentmount
  ON dbo.Attachment (id_Attachmentmount)
  ON [PRIMARY]
GO

--
-- Создать индекс "IX_FK_Attachment_G_AttachClass" для объекта типа таблица "dbo.Attachment"
--
PRINT (N'Создать индекс "IX_FK_Attachment_G_AttachClass" для объекта типа таблица "dbo.Attachment"')
GO
CREATE INDEX IX_FK_Attachment_G_AttachClass
  ON dbo.Attachment (G_AttachClass)
  ON [PRIMARY]
GO

--
-- Создать индекс "IX_FK_rAttachmentClass" для объекта типа таблица "dbo.Attachment"
--
PRINT (N'Создать индекс "IX_FK_rAttachmentClass" для объекта типа таблица "dbo.Attachment"')
GO
CREATE INDEX IX_FK_rAttachmentClass
  ON dbo.Attachment (rAttachmentClass)
  ON [PRIMARY]
GO

--
-- Создать процедуру "dbo.NEW_ITEM"
--
GO
PRINT (N'Создать процедуру "dbo.NEW_ITEM"')
GO



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
    WHERE wat.name LIKE ('prim%'))

  INSERT INTO ITEM (szItemName, usItemClass)
    VALUES (@name, @IDClass)
  SELECT
    @newID = @@identity

  IF (@class_ofItem = N'Gun')
  BEGIN
    INSERT INTO Item1.dbo.WEAPON (uiIndex, szWeaponName)
      VALUES (@newID, @name)

    INSERT INTO Item1.dbo.WeaponDamage (idWeapon, idWeaponAttackType, Damage, ArmorDivision)
      VALUES (@newID, @idWeapAttackType, 'd6', DEFAULT);
  END

  ELSE
  IF (@class_ofItem = N'Attachment')
  BEGIN
    INSERT INTO Item1.dbo.Attachment (uiIndex, szAttName)
      VALUES (@newID, @name)
  END

  SET @Returns = @newID

END
--http://www.cyberguru.ru/dotnet/ado-net/entity-framework-faq.html
GO

--
-- Создать таблицу "dbo.AnyBoxNameType"
--
PRINT (N'Создать таблицу "dbo.AnyBoxNameType"')
GO
CREATE TABLE dbo.AnyBoxNameType (
  id int IDENTITY,
  nameOfBox varchar(50) NULL,
  TypeOfBox int NOT NULL,
  ParentBoxName int NULL,
  CONSTRAINT PK_AnyBoxNameType PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу "dbo.AMMOUPGRATES"
--
PRINT (N'Создать таблицу "dbo.AMMOUPGRATES"')
GO
CREATE TABLE dbo.AMMOUPGRATES (
  id int IDENTITY,
  name nvarchar(150) NOT NULL,
  shortname nvarchar(20) NOT NULL,
  malf int NOT NULL,
  AR_divX decimal(4, 2) NOT NULL,
  ACC_add int NOT NULL,
  ACC_x decimal(4, 2) NOT NULL,
  damage_x decimal(4, 2) NOT NULL,
  Dam_Type nvarchar(5) NULL,
  range_x12 decimal(4, 2) NOT NULL,
  range_x decimal(4, 2) NOT NULL,
  ST_x decimal(4, 2) NOT NULL,
  WPS_x decimal(4, 2) NOT NULL,
  CPS_x decimal(4, 2) NOT NULL,
  Hearing int NOT NULL,
  Ammo_Class nvarchar(15) NULL,
  min_Caliber decimal(4, 2) NULL,
  Max_Calider decimal(4, 2) NULL,
  DT_Min_Ammo_CAliber decimal(4, 2) NULL,
  Condition_DT_Min_ammo_Cal nvarchar(3) NULL,
  hearing_table int NOT NULL,
  Upgrates nvarchar(150) NOT NULL,
  Follow_Up nvarchar(50) NULL,
  Linked nvarchar(50) NULL,
  CONSTRAINT PK_AMMOUPGRATES PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу "dbo.G_AvAttachClass"
--
PRINT (N'Создать таблицу "dbo.G_AvAttachClass"')
GO
CREATE TABLE dbo.G_AvAttachClass (
  id_attach int NOT NULL,
  id_GSubClass int NOT NULL,
  id_AttachClass int NULL,
  CONSTRAINT PK_G_AvAttachClass PRIMARY KEY CLUSTERED (id_attach, id_GSubClass)
)
ON [PRIMARY]
GO

--
-- Создать индекс "IX_FK_G_AvAttachClass_G_AttachClass" для объекта типа таблица "dbo.G_AvAttachClass"
--
PRINT (N'Создать индекс "IX_FK_G_AvAttachClass_G_AttachClass" для объекта типа таблица "dbo.G_AvAttachClass"')
GO
CREATE INDEX IX_FK_G_AvAttachClass_G_AttachClass
  ON dbo.G_AvAttachClass (id_AttachClass)
  ON [PRIMARY]
GO

--
-- Создать индекс "IX_FK_G_AvAttachClass_G_SubAttachClass" для объекта типа таблица "dbo.G_AvAttachClass"
--
PRINT (N'Создать индекс "IX_FK_G_AvAttachClass_G_SubAttachClass" для объекта типа таблица "dbo.G_AvAttachClass"')
GO
CREATE INDEX IX_FK_G_AvAttachClass_G_SubAttachClass
  ON dbo.G_AvAttachClass (id_GSubClass)
  ON [PRIMARY]
GO

--
-- Создать процедуру "dbo.NEW_ITEM_att"
--
GO
PRINT (N'Создать процедуру "dbo.NEW_ITEM_att"')
GO

CREATE PROCEDURE dbo.NEW_ITEM_att @name NVARCHAR(80), @G_att_class INT, @G_sub_att INT, @id_att_mount NVARCHAR(80)
AS
BEGIN
  SET NOCOUNT ON;

  DECLARE @newID INT
  DECLARE @mount INT

  SET @mount = (SELECT
      a.id
    FROM Attachmentmount a
    WHERE a.name LIKE (@id_att_mount))

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
GO

--
-- Создать таблицу "dbo.LOADBEARINGEQUIPMENT"
--
PRINT (N'Создать таблицу "dbo.LOADBEARINGEQUIPMENT"')
GO
CREATE TABLE dbo.LOADBEARINGEQUIPMENT (
  lbeIndex int NOT NULL,
  LBEClass int NOT NULL,
  lbeCombo int NOT NULL,
  lbeFilledSize int NOT NULL,
  lbeAvailableVolume int NOT NULL,
  lbePocketsAvailable int NOT NULL,
  lbePocketIndex1 int NOT NULL,
  lbePocketIndex2 int NOT NULL,
  lbePocketIndex3 int NOT NULL,
  lbePocketIndex4 int NOT NULL,
  lbePocketIndex5 int NOT NULL,
  lbePocketIndex6 int NOT NULL,
  lbePocketIndex7 int NOT NULL,
  lbePocketIndex8 int NOT NULL,
  lbePocketIndex9 int NOT NULL,
  lbePocketIndex10 int NOT NULL,
  lbePocketIndex11 int NOT NULL,
  lbePocketIndex12 int NOT NULL,
  CONSTRAINT PK_LOADBEARINGEQUIPMENT PRIMARY KEY CLUSTERED (lbeIndex),
  UNIQUE (lbeIndex)
)
ON [PRIMARY]
GO

--
-- Создать индекс "IX_FK_LOADBEARINGEQUIPMENT" для объекта типа таблица "dbo.LOADBEARINGEQUIPMENT"
--
PRINT (N'Создать индекс "IX_FK_LOADBEARINGEQUIPMENT" для объекта типа таблица "dbo.LOADBEARINGEQUIPMENT"')
GO
CREATE INDEX IX_FK_LOADBEARINGEQUIPMENT
  ON dbo.LOADBEARINGEQUIPMENT (LBEClass)
  ON [PRIMARY]
GO

--
-- Создать таблицу "dbo.EXPLOSIVE"
--
PRINT (N'Создать таблицу "dbo.EXPLOSIVE"')
GO
CREATE TABLE dbo.EXPLOSIVE (
  uiIndex int NOT NULL,
  ubType int NOT NULL,
  ubDamage int NOT NULL,
  ubStunDamage int NOT NULL,
  ubRadius int NOT NULL,
  ubDuration int NOT NULL,
  ubStartRadius int NOT NULL,
  ubMagSize int NOT NULL,
  usNumFragments int NOT NULL,
  ubFragType int NOT NULL,
  ubFragDamage int NOT NULL,
  ubFragRange int NOT NULL,
  ubHorizontalDegree int NOT NULL,
  ubVerticalDegree int NOT NULL,
  bIndoorModifier decimal(38) NOT NULL,
  fExplodeOnImpact bit NOT NULL,
  GLGrenade bit NOT NULL,
  RLGrenade bit NOT NULL,
  Mine bit NOT NULL,
  Flare bit NOT NULL,
  Directional bit NOT NULL,
  ShapedCharge bit NOT NULL,
  CONSTRAINT PK_EXPLOSIVE PRIMARY KEY CLUSTERED (uiIndex),
  UNIQUE (uiIndex)
)
ON [PRIMARY]
GO

--
-- Создать индекс "IX_FK_EXPLOSIVE" для объекта типа таблица "dbo.EXPLOSIVE"
--
PRINT (N'Создать индекс "IX_FK_EXPLOSIVE" для объекта типа таблица "dbo.EXPLOSIVE"')
GO
CREATE INDEX IX_FK_EXPLOSIVE
  ON dbo.EXPLOSIVE (ubType)
  ON [PRIMARY]
GO

--
-- Создать таблицу "dbo.CombineWeap"
--
PRINT (N'Создать таблицу "dbo.CombineWeap"')
GO
CREATE TABLE dbo.CombineWeap (
  id int IDENTITY,
  idWeapon int NOT NULL,
  ScopeSelect int NULL,
  LaserSelect int NULL,
  LightSelect int NULL,
  BipodSelect int NULL,
  SilenserSelect int NULL,
  LauncherSelect int NULL,
  BayonetSelect int NULL,
  MagazineSelect int NULL,
  InternalSelect int NULL,
  ExternalSelect int NULL,
  StockSelect int NULL,
  CONSTRAINT PK_CombineWeap PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу "dbo.BoxItem"
--
PRINT (N'Создать таблицу "dbo.BoxItem"')
GO
CREATE TABLE dbo.BoxItem (
  id int IDENTITY,
  BoxName int NOT NULL,
  Items int NOT NULL,
  CountItems int NOT NULL DEFAULT (0),
  CONSTRAINT PK_BoxItem PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу "dbo.AvailableAttachSlot"
--
PRINT (N'Создать таблицу "dbo.AvailableAttachSlot"')
GO
CREATE TABLE dbo.AvailableAttachSlot (
  id int IDENTITY,
  rItemId int NOT NULL,
  rATTACHMENTSLOT int NOT NULL,
  rAttachmentmount int NOT NULL,
  CONSTRAINT PK_AvailableAttachSlot PRIMARY KEY CLUSTERED (id),
  CONSTRAINT UK_AvailableAttachSlot UNIQUE (rItemId, rATTACHMENTSLOT, rAttachmentmount)
)
ON [PRIMARY]
GO

--
-- Создать индекс "IX_FK_AVeAttachmentmount" для объекта типа таблица "dbo.AvailableAttachSlot"
--
PRINT (N'Создать индекс "IX_FK_AVeAttachmentmount" для объекта типа таблица "dbo.AvailableAttachSlot"')
GO
CREATE INDEX IX_FK_AVeAttachmentmount
  ON dbo.AvailableAttachSlot (rAttachmentmount)
  ON [PRIMARY]
GO

--
-- Создать таблицу "dbo.ARMOUR"
--
PRINT (N'Создать таблицу "dbo.ARMOUR"')
GO
CREATE TABLE dbo.ARMOUR (
  uiIndex int NOT NULL,
  ubArmourClass int NOT NULL,
  ubProtection int NOT NULL,
  ubCoverage int NOT NULL,
  ubDegradePercent int NOT NULL,
  FlakJacket bit NOT NULL DEFAULT (1),
  LeatherJacket bit NOT NULL DEFAULT (1),
  CONSTRAINT PK_ARMOUR PRIMARY KEY CLUSTERED (uiIndex),
  UNIQUE (uiIndex)
)
ON [PRIMARY]
GO

--
-- Создать индекс "IX_FK_ARMOUR" для объекта типа таблица "dbo.ARMOUR"
--
PRINT (N'Создать индекс "IX_FK_ARMOUR" для объекта типа таблица "dbo.ARMOUR"')
GO
CREATE INDEX IX_FK_ARMOUR
  ON dbo.ARMOUR (ubArmourClass)
  ON [PRIMARY]
GO
-- 
-- Вывод данных для таблицы AMMOUPGRATES
--
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

-- 
-- Вывод данных для таблицы AnyBoxNameType
--
-- Таблица Item1.dbo.AnyBoxNameType не содержит данных
-- 
-- Вывод данных для таблицы ARMOUR
--
-- Таблица Item1.dbo.ARMOUR не содержит данных
-- 
-- Вывод данных для таблицы Attachment
--
-- Таблица Item1.dbo.Attachment не содержит данных
-- 
-- Вывод данных для таблицы Attachmentmount
--
INSERT INTO [dbo].[Attachmentmount]
  VALUES 
  
--  (N'Scope Attachments'),      --1
  (N'AK', 1),   (N'M16A1-A2', 1),   (N'm16a3', 1),  (N'Mini14 Scope', 1),  (N'HK G36 Scope', 1),
  (N'Galil', 1),  (N'M14_Scope', 1),  (N'Scout', 1),  (N'SIG551_Scope', 1),  (N'WR', 1),
  (N'HK MP5', 1),  (N'built-in', 1),  (N'SA80 Handle', 1), (N'SVD', 1), (N'L96A1 optic', 1),
  (N'M24_Scope', 1), (N'SIG Sniper Scope', 1), (N'L85A2 SCOPE', 1), (N'PSG', 1),
  (N'HK MSG-90', 1), (N'F2000 Scope', 1), (N'Zrak', 1), (N'Groza scope', 1), (N'Mosin_PU', 1),
  (N'G11 built-in', 1),
  
--(N'Laser Attachments'),      --2
  (N'built-in', 2), (N'WR', 2),   (N'HK', 2), (N'Barrel Mount', 2),   (N'F2000 Laser', 2), 

--  (N'Light Attachments'),      --3
  (N'F2000 Light', 3),   (N'WR', 3),   (N'HK', 3),  (N'Barrel Mount', 3),

--  (N'Bipod Attachments'),      --4
  (N'built-in', 4), (N'WR', 4),  (N'Г‘Г‚98', 4), (N'SniperBipod', 4),  (N'L96A1 bipod', 4), (N'L86_Bipod', 4),  (N'G36_bipod', 4), (N'BM1', 4),  (N'AssaultBipod', 4),
  (N'None', 1),  (N'None', 2),  (N'None', 3),  (N'None', 4),  (N'None', 5),  (N'None', 6),  (N'None', 7),  (N'None', 8),   (N'None', 9),  (N'None', 10),  (N'None', 11),

--  (N'Silenser Attachments'),   --5
  (N'.300 BLK', 5),    (N'5,7mm (FN)', 5),  (N'5,7mm (P90)', 5),   (N'VZ82', 5),    (N'Std 9mm Para', 5),  (N'APB', 5),           (N'Bizon 9x18', 5),    (N'GSh-18', 5),  (N'HK MP5-40', 5),
  (N'Std 45 ACP', 5),  (N'UMP45', 5),       (N'AEK919K', 5),       (N'M24x1,5', 5), (N'MAC', 5),           (N'PBS-7,62x39', 5),   (N'UZI', 5),           (N'RM', 5),      (N'QM', 5),
  (N'Supressor-5,56', 5),                  (N'L85A2', 5),         (N'SR25', 5),    (N'SIG - 7,62', 5),    (N'Saiga', 5),         (N'AK', 5),            (N'Galil', 5),   (N'M76', 5),
  (N'PBS - 5,45', 5),                      (N'Supressor-7,62', 5),(N'SV98', 5),    (N'built-in', 5),

--  (N'Launcher Attachments'),   --6
  (N'Scar', 6), (N'built-in', 6),   (N'M203PI', 6), (N'M203', 6),  (N'GP-30', 6), (N'hk', 6),  (N'F2000 Launcher', 6), (N'IMC40', 6),  
  
--(N'Stock Attachments'),      --7
   (N'WR', 7),   (N'built-in', 7),

  --(N'Bayonet Attachments'),    --8  
  (N'Knifes', 8), (N'StdBayonet', 8),   (N'built-in', 8), (N'Mosin_Bayonet', 8),   (N'M9', 8), (N'FAL', 8),  (N'HK', 8), (N'throw', 8);


   

-- 
-- Вывод данных для таблицы ATTACHMENTSLOT
--
SET IDENTITY_INSERT dbo.ATTACHMENTSLOT ON
GO
INSERT dbo.ATTACHMENTSLOT(uiSlotIndex, szSlotName) VALUES (1, N'Scope Attachments')
INSERT dbo.ATTACHMENTSLOT(uiSlotIndex, szSlotName) VALUES (2, N'Laser Attachments')
INSERT dbo.ATTACHMENTSLOT(uiSlotIndex, szSlotName) VALUES (3, N'Light Attachments')
INSERT dbo.ATTACHMENTSLOT(uiSlotIndex, szSlotName) VALUES (4, N'Bipod Attachments')
INSERT dbo.ATTACHMENTSLOT(uiSlotIndex, szSlotName) VALUES (5, N'Silenser Attachments')
INSERT dbo.ATTACHMENTSLOT(uiSlotIndex, szSlotName) VALUES (6, N'Launcher Attachments')
INSERT dbo.ATTACHMENTSLOT(uiSlotIndex, szSlotName) VALUES (7, N'Stock Attachments')
INSERT dbo.ATTACHMENTSLOT(uiSlotIndex, szSlotName) VALUES (8, N'Bayonet Attachments')
INSERT dbo.ATTACHMENTSLOT(uiSlotIndex, szSlotName) VALUES (9, N'Magazine Attachments')
INSERT dbo.ATTACHMENTSLOT(uiSlotIndex, szSlotName) VALUES (10, N'Internal Attachments')
INSERT dbo.ATTACHMENTSLOT(uiSlotIndex, szSlotName) VALUES (11, N'External Attachments')
INSERT dbo.ATTACHMENTSLOT(uiSlotIndex, szSlotName) VALUES (12, N'Rifle Grenade')
INSERT dbo.ATTACHMENTSLOT(uiSlotIndex, szSlotName) VALUES (13, N'Rocket Launcher Slot')
GO
SET IDENTITY_INSERT dbo.ATTACHMENTSLOT OFF
GO
-- 
-- Вывод данных для таблицы AvailableAttachSlot
--
-- Таблица Item1.dbo.AvailableAttachSlot не содержит данных
-- 
-- Вывод данных для таблицы Battery
--
SET IDENTITY_INSERT dbo.Battery ON
GO
INSERT dbo.Battery(id, name, SmolName, Description, CPP, WPP) VALUES (1, N'Tiny', N'T', N'A button- or coin-sized battery for watches, mini-flashlights, hearing aids, laser sights, tiny bugs, etc.	', 0.2500, 0.020)
INSERT dbo.Battery(id, name, SmolName, Description, CPP, WPP) VALUES (2, N'Extra-Small', N'XS', N'A battery used in such portable consumer electronics as audio recorders, CD/MP3 players, digital cameras, and night-vision goggles. Similar to a 9-volt or AA battery', 0.5000, 0.100)
INSERT dbo.Battery(id, name, SmolName, Description, CPP, WPP) VALUES (3, N'Small', N'S', N'A standard battery for flashlights, portable radios, or cellular phones. Similar to a D-cell or C-cell battery.', 1.0000, 0.330)
INSERT dbo.Battery(id, name, SmolName, Description, CPP, WPP) VALUES (4, N'Medium', N'M', N'common power source for lanterns or squad-level radios. More expensive rechargeable models are used in laptops, video cameras, and the like.', 5.0000, 2.000)
INSERT dbo.Battery(id, name, SmolName, Description, CPP, WPP) VALUES (5, N'Large', N'L', N'A lunchbox-sized battery. At TL5, it?’s used in telegraph stations. At TL6+, rechargeables are found in small vehicles (such as ATVs, motorcycles, and snowmobiles), base-camp radios, and the like	', 10.0000, 10.000)
INSERT dbo.Battery(id, name, SmolName, Description, CPP, WPP) VALUES (6, N'Very Large', N'VL', N'A toolbox-sized battery found in cars, trucks, golf carts, etc. It can power radios or other heavyduty electronics for extended periods. A bank of these is often used for external power', 20.0000, 50.000)
GO
SET IDENTITY_INSERT dbo.Battery OFF
GO
-- 
-- Вывод данных для таблицы BoxItem
--
-- Таблица Item1.dbo.BoxItem не содержит данных
-- 
-- Вывод данных для таблицы Caliber
--
SET IDENTITY_INSERT dbo.Caliber ON
GO
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (1, N'.175 BB', NULL, N'винтовки', 4.4000, 0.1750)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (2, N'.22 Long Rifle (5.7x16mmR)', NULL, N'винтовки', 5.6000, 0.2200)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (3, N'.220 Swift (5.56x56mmSR)', NULL, N'винтовки', 5.5600, 0.2200)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (4, N'.223 Remington  (5.56x45mm NATO)', NULL, N'винтовки', 5.5600, 0.2230)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (5, N'.25 ACP (6.35x16mmSR Browning)', NULL, N'пистолет', 6.3500, 0.2500)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (6, N'.28 Caplock (Colt Number 1)', NULL, N'пистолет', 0.0000, 0.2800)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (7, N'.280 Remington (7x65mm Express)', NULL, N'винтовки', 7.0000, 0.2800)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (8, N'.30 M1 Carbine (7.62x33mm)', NULL, N'винтовки', 7.6200, 0.3000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (9, N'.30 Remington (7.62x52mm)', NULL, N'винтовки', 7.6200, 0.3000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (10, N'.300 Remington Ultra Magnum (7.62x72mmRB)', NULL, N'винтовки', 7.6200, 0.3000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (11, N'.300 Winchester Magnum (7.62x66mmB)', NULL, N'винтовки', 7.6200, 0.3000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (12, N'.30-06 Springfield (7.62x63mm)', NULL, N'винтовки', 7.6200, 0.3006)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (13, N'.303 British (7.7x56mmR)', NULL, N'винтовки', 7.7000, 0.3030)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (14, N'.30-30 Winchester (7.62x51mmR)', NULL, N'винтовки', 7.6200, 0.3030)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (15, N'.30-40 Krag (7.62x59mmR)', NULL, N'винтовки', 7.6200, 0.3040)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (16, N'.308 Winchester (7.62x51mm NATO)', NULL, N'винтовки', 7.6200, 0.3080)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (17, N'.31 Caplock (Allen)', NULL, N'пистолет', 0.0000, 0.3100)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (18, N'.32 Long Rifle (7.92x24mmR)', NULL, N'винтовки', 7.9200, 0.3200)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (19, N'.338 Lapua Magnum (8.6x70mm)', NULL, N'винтовки', 8.6000, 0.3380)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (20, N'.35 Remington (8.9x49mm)', NULL, N'винтовки', 8.9000, 0.3500)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (21, N'.357 Magnum (9x33mmR)', NULL, N'пистолет', 9.0000, 0.3570)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (22, N'.357 SIG (9x22mm)', NULL, N'пистолет', 9.0000, 0.3570)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (23, N'.36 Caplock (M1851 Navy)', NULL, N'пистолет', 9.0000, 0.3600)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (24, N'.375 H&H Magnum (9.35x72mmB)', NULL, N'винтовки', 9.3500, 0.3750)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (25, N'.38 ACP (9x23mmSR)', NULL, N'пистолет', 9.0000, 0.3800)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (26, N'.38 Long Colt (9x26mmR)', NULL, N'пистолет', 9.0000, 0.3800)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (27, N'.38 S&W (9x20mmR)', NULL, N'пистолет', 9.0000, 0.3800)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (28, N'.38 Special (9x29mmR)', NULL, N'пистолет', 9.0000, 0.3800)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (29, N'.38 Super Auto (9x23mmSR)', NULL, N'пистолет', 9.0000, 0.3800)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (30, N'.38 Volcanic', NULL, N'винтовки', 9.0000, 0.3800)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (31, N'.380 ACP (9x17mm)', NULL, N'пистолет', 9.0000, 0.3800)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (32, N'.38-40 Winchester (10x33mmR)', NULL, N'винтовки', 10.0000, 0.3840)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (33, N'.40 S&W (10x21mm)', NULL, N'пистолет', 10.0000, 0.4000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (34, N'.41 Long Colt (10x29mmR)', NULL, N'пистолет', 10.0000, 0.4100)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (35, N'.41 Short Remington (10x12mmR)', NULL, N'пистолет', 10.0000, 0.4100)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (36, N'.42 Caplock (LeMat)', NULL, N'пистолет', 0.0000, 0.4200)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (37, N'.44 Colt (11.25x28mmR)', NULL, N'пистолет', 11.2500, 0.4400)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (38, N'.44 Magnum (10.9x33mmR)', NULL, N'пистолет', 10.9000, 0.4400)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (39, N'.442 Caplock (Adams)', NULL, N'пистолет', 11.2000, 0.4420)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (40, N'.442 RIC (11.2x17mmR)', NULL, N'пистолет', 11.2000, 0.4420)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (41, N'.444 Marlin (10.9x57mmR)', NULL, N'винтовки', 10.9000, 0.4440)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (42, N'.44-40 Winchester (10.8x33mmR)', NULL, N'винтовки', 10.8000, 0.4440)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (43, N'.44-90 Remington Special (11.2x62mmR)', NULL, N'винтовки', 11.2000, 0.4490)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (44, N'.44-90 Sharps (11.3x61mmR)', NULL, N'винтовки', 11.3000, 0.4490)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (45, N'.45 ACP (11.43x23mm)', NULL, N'пистолет', 11.4300, 0.4500)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (46, N'.45 Flintlock (Kentucky)', NULL, N'винтовки', 11.4300, 0.4500)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (47, N'.45 Flintlock (Wogdon)', NULL, N'пистолет', 11.4300, 0.4500)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (48, N'.45 GAP (11.43x19mm)', NULL, N'пистолет', 11.4300, 0.4500)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (49, N'.45 Long Colt (11.43x33mmR)', NULL, N'пистолет', 11.4300, 0.4500)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (50, N'.45 S&W (11.43x28mmR)', NULL, N'пистолет', 11.4300, 0.4500)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (51, N'.450 Adams (12.05x17mmR)', NULL, N'пистолет', 12.0500, 0.4500)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (52, N'.450 Gardner-Gatling (11.43x63mmR)', NULL, N'винтовки', 11.4300, 0.4500)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (53, N'.450 Martini-Henry (11.43x59mmR)', NULL, N'винтовки', 11.4300, 0.4500)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (54, N'.45-110 Sharps (11.43x73mmR)', NULL, N'винтовки', 11.4300, 0.4511)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (55, N'.454 Casull (11.43x35mmR)', NULL, N'пистолет', 11.4300, 0.4540)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (56, N'.455 Webley (11.5x19mmR)', NULL, N'пистолет', 11.5000, 0.4550)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (57, N'.45-55 Springfield (11.43x53mmR)', NULL, N'винтовки', 11.4300, 0.4555)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (58, N'.45-70 Springfield (11.43x53mmR)', NULL, N'винтовки', 11.4300, 0.4570)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (59, N'.45-75 Winchester (11.43x48mmR)', NULL, N'винтовки', 11.4300, 0.4575)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (60, N'.458 Winchester Magnum (11.63x64mmB)', NULL, N'винтовки', 11.6300, 0.4580)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (61, N'.460 Weatherby Magnum (11.63x74mmB)', NULL, N'винтовки', 11.6300, 0.4600)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (62, N'.470 Nitro Express (12x83mmR)', NULL, N'винтовки', 12.0000, 0.4700)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (63, N'.476 Enfield (12.05x22mmR)', NULL, N'пистолет', 12.0500, 0.4700)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (64, N'.50 Action Express (12.7x33mm)', NULL, N'пистолет', 12.7000, 0.5000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (65, N'.50 Flintlock (Collier)', NULL, N'пистолет', 12.7000, 0.5000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (66, N'.50 Flintlock (North West)', NULL, N'винтовки', 12.7000, 0.5000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (67, N'.50-140 Sharps (12.9x83mmR)', NULL, N'винтовки', 12.9000, 0.5014)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (68, N'.50-70 Government (13x44mmR)', NULL, N'винтовки', 13.0000, 0.5070)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (69, N'.50-90 Sharps (12.9x64mmR)', NULL, N'винтовки', 12.9000, 0.5090)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (70, N'.50-95 Winchester Express (12.7x49mmR)', NULL, N'винтовки', 12.7000, 0.5095)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (71, N'.50BMG (12.7x99mm)', NULL, N'винтовки', 12.7000, 0.5000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (72, N'.54 Caplock (Elgin Cutlass)', NULL, N'пистолет', 0.0000, 0.5400)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (73, N'.54 Flintlock (Hall M1819)', NULL, N'винтовки', 0.0000, 0.5400)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (74, N'.56 Flintlock (Tower Sea Service)', NULL, N'пистолет', 0.0000, 0.5600)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (75, N'.56-50 Spencer (13x29mmR)', NULL, N'винтовки', 13.0000, 0.5650)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (76, N'.56-56 Spencer (14x22mmR)', NULL, N'винтовки', 14.0000, 0.5656)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (77, N'.577 Caplock (Enfield)', NULL, N'винтовки', 14.6000, 0.5770)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (78, N'.577 Snider (14.6x51mmR)', NULL, N'винтовки', 14.6000, 0.5770)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (79, N'.58 Berdan (15x44mmR)', NULL, N'винтовки', 15.0000, 0.5800)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (80, N'.600 Nitro Express (15.2x76mmR)', NULL, N'винтовки', 15.2000, 0.6000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (81, N'.625 Flintlock (Baker)', NULL, N'винтовки', 15.9000, 0.6200)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (82, N'.68 FN', NULL, N'винтовки', 0.0000, 0.6800)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (83, N'.68 Paintball', NULL, N'пистолет', 0.0000, 0.6800)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (84, N'.700 Nitro Express (17.8x89mmR)', NULL, N'винтовки', 17.8000, 0.7000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (85, N'.75 Flintlock (Brown Bess)', NULL, N'винтовки', 0.0000, 0.7500)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (86, N'.75 Flintlock (Rigby)', NULL, N'пистолет', 0.0000, 0.7500)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (87, N'1" Flare (25.4x107mmR)', NULL, N'Гранатомёты', 25.4000, 1.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (88, N'1" Gatling (25.5x97mmR)', NULL, N'Автоматические Пушки', 25.5000, 1.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (89, N'1.5" Caplock (Greener)', NULL, N'Автоматические Пушки', 0.0000, 1.5000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (90, N'10.75x58mmR Berdan', NULL, N'винтовки', 12.7500, 10.7500)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (91, N'10.75x68mm Mauser', NULL, N'винтовки', 10.7500, 10.7500)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (92, N'105x371mmR', NULL, N'Автоматические Пушки', 105.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (93, N'106x607mmR', NULL, N'Автоматические Пушки', 106.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (94, N'10-gauge 2.875" (19.7x73mmR)', NULL, N'дробовики', 19.7000, 2.8750)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (95, N'10x25mm Auto', NULL, N'пистолет', 10.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (96, N'11.15x58mmR (.43 Spanish Remington)', NULL, N'винтовки', 10.1500, 0.4300)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (97, N'11.4x50mmR (.43 Egyptian Remington)', NULL, N'винтовки', 11.4000, 0.4300)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (98, N'11.75mm Girandoni', NULL, N'винтовки', 11.7500, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (99, N'11-gauge Flintlock', NULL, N'дробовики', 11.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (100, N'11mm Syringe', NULL, N'винтовки', 11.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (101, N'12.7x108mm', NULL, N'винтовки', 12.7000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (102, N'12.7x77mm', NULL, N'винтовки', 12.7000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (103, N'120mm', NULL, N'миномёты', 120.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (104, N'125x408mmR', NULL, N'Автоматические Пушки', 125.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (105, N'12-gauge 2.5" (18.5x63mmR)', NULL, N'дробовики', 18.5000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (106, N'12-gauge 2.75" (18.5x70mmR)', NULL, N'дробовики', 18.5000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (107, N'12-gauge 2.75" (18.5x70mmR)', NULL, N'дробовики', 18.5000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (108, N'12-gauge 3" (18.5x76mmR)', NULL, N'дробовики', 18.5000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (109, N'12-pounder Cannonlock', NULL, N'Автоматические Пушки', 12.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (110, N'12x16mm Lefaucheux', NULL, N'пистолет', 12.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (111, N'13x36mm Gyrojet', NULL, N'пистолет', 13.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (112, N'13x92mmSR Mauser', NULL, N'винтовки', 13.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (113, N'14.5х114 мм (М41/44)', NULL, N'винтовки', 14.5000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (114, N'15.43x54mm Dreyse', NULL, N'винтовки', 15.4300, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (115, N'16-gauge 2.75" (16.8x70mmR)', NULL, N'дробовики', 16.8000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (116, N'16-gauge Flintlock', NULL, N'дробовики', 16.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (117, N'17.1mm Flintlock (AN IX)', NULL, N'пистолет', 17.1000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (118, N'17.5mm Flintlock (Mle 1777)', NULL, N'винтовки', 17.5000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (119, N'2"2.25', NULL, N'миномёты', 0.0000, 2.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (120, N'2.5" Caplock (Screw-Gun)', NULL, N'Автоматические Пушки', 63.5000, 2.5000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (121, N'20-gauge 2.5" (15.6x63mmR)', NULL, N'дробовики', 15.6000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (122, N'20-gauge 2.75" (15.6x70mmR)', NULL, N'дробовики', 15.6000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (123, N'20-gauge Caplock', NULL, N'дробовики', 15.6000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (124, N'20x102mm', NULL, N'Автоматические Пушки', 20.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (125, N'20x110mmRB Oerlikon', NULL, N'Автоматические Пушки', 20.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (126, N'20x138mmB Solothurn', NULL, N'Автоматические Пушки', 20.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (127, N'20x28mm', NULL, N'Гранатомёты', 20.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (128, N'20x82mm Mauser', NULL, N'Автоматические Пушки', 20.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (129, N'25x137mm Oerlikon', NULL, N'Автоматические Пушки', 25.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (130, N'25x59mmB', NULL, N'Гранатомёты', 25.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (131, N'26.5x103mmR', NULL, N'Гранатомёты', 26.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (132, N'3"10', NULL, N'миномёты', 0.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (133, N'30x28mmB', NULL, N'Гранатомёты', 30.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (134, N'32-gauge 2.75" (12.5x70mmR)', NULL, N'дробовики', 12.5000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (135, N'37x122mmR', NULL, N'Гранатомёты', 37.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (136, N'37x249mmR', NULL, N'Автоматические Пушки', 37.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (137, N'37x94mmR Hotchkiss', NULL, N'Автоматические Пушки', 37.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (138, N'4.6x30mm Royal Ordnance', NULL, N'пистолет', 4.6000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (139, N'4.73x33mm Dynamit-Nobel', NULL, N'винтовки', 4.7300, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (140, N'40mm VOG-25', NULL, N'Гранатомёты', 40.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (141, N'40x53mmSR', NULL, N'Гранатомёты', 40.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (142, N'5.45x39mm', NULL, N'винтовки', 5.4500, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (143, N'5.66x39mm', NULL, N'винтовки', 5.6600, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (144, N'5.6x57mmB', NULL, N'винтовки', 5.6000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (145, N'5.7x26mm Usel', NULL, N'винтовки', 5.7000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (146, N'5.7x28mm Fabrique Nationale', NULL, N'пистолет', 5.7000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (147, N'5.8x42mm', NULL, N'винтовки', 5.8000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (148, N'52mm', NULL, N'миномёты', 52.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (149, N'57x305mmR', NULL, N'противотанковые пушки', 57.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (150, N'6.5x55mm Mauser', NULL, N'винтовки', 6.5000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (151, N'60mm', NULL, N'миномёты', 60.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (152, N'6x60mm Lee (.236 Navy)', NULL, N'винтовки', 6.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (153, N'7.5x54mm MAS', NULL, N'винтовки', 7.5000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (154, N'7.62x25mm Tokarev', NULL, N'пистолет', 7.6200, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (155, N'7.62x39mm', NULL, N'винтовки', 7.6200, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (156, N'7.62x39mmR Nagant', NULL, N'пистолет', 7.6200, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (157, N'7.62x42mm', NULL, N'пистолет', 7.6200, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (158, N'7.62x54mmR Mosin', NULL, N'винтовки', 7.6200, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (159, N'7.63x25mm Mauser', NULL, N'пистолет', 7.6300, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (160, N'7.65x21mm Parabellum', NULL, N'пистолет', 7.6500, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (161, N'7.65x53mm Mauser', NULL, N'винтовки', 7.6500, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (162, N'7.7x58mm Arisaka', NULL, N'винтовки', 7.7000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (163, N'7.7x58mmSR Arisaka', NULL, N'винтовки', 7.7000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (164, N'7.92x33mm Kurz', NULL, N'винтовки', 7.9200, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (165, N'7.92x57mm Mauser', NULL, N'винтовки', 7.9200, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (166, N'75x350mmR', NULL, N'Автоматические Пушки', 75.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (167, N'75x495mmR', NULL, N'Автоматические Пушки', 75.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (168, N'76.2x539mmR (3")', NULL, N'Автоматические Пушки', 76.2000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (169, N'7x57mm Mauser', NULL, N'винтовки', 7.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (170, N'7x64mmB Remington Magnum', NULL, N'винтовки', 7.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (171, N'81mm', NULL, N'миномёты', 81.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (172, N'82mm', NULL, N'миномёты', 82.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (173, N'84x250mmR', NULL, N'противотанковые пушки', 84.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (174, N'8-bore (21.2x70mmR)', NULL, N'винтовки', 21.2000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (175, N'8x21mm Nambu', NULL, N'пистолет', 8.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (176, N'8x50mmR Lebel', NULL, N'винтовки', 8.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (177, N'8x50mmR Mannlicher', NULL, N'винтовки', 8.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (178, N'8x58mmR Krag', NULL, N'винтовки', 8.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (179, N'8x60mm Mauser', NULL, N'винтовки', 8.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (180, N'8x63mm Bofors', NULL, N'винтовки', 8.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (181, N'9.3x74mmR', NULL, N'винтовки', 9.3000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (182, N'9x18mm Makarov', NULL, N'пистолет', 9.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (183, N'9x19mm Parabellum', NULL, N'пистолет', 9.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (184, N'9x21mm Gyurza', NULL, N'пистолет', 9.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (185, N'9x23mm Bergmann-Bayard', NULL, N'пистолет', 9.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (186, N'9x25mm Mauser', NULL, N'пистолет', 9.0000, 0.0000)
INSERT dbo.Caliber(id, Caliber_name, alt_caliber_name, Class_of_Caliber, Dim_of_bullet_SI, Dim_of_bullet_US) VALUES (187, N'9x39mm', NULL, N'винтовки', 9.0000, 0.0000)
GO
SET IDENTITY_INSERT dbo.Caliber OFF
GO
-- 
-- Вывод данных для таблицы CharacterDB
--
-- Таблица Item1.dbo.CharacterDB не содержит данных
-- 
-- Вывод данных для таблицы Clothes
--
SET IDENTITY_INSERT dbo.Clothes ON
GO
INSERT dbo.Clothes(id, name) VALUES (1, N'None')
INSERT dbo.Clothes(id, name) VALUES (2, N'YELLOWVEST')
INSERT dbo.Clothes(id, name) VALUES (3, N'BLACKSHIRT')
INSERT dbo.Clothes(id, name) VALUES (4, N'REDVEST')
INSERT dbo.Clothes(id, name) VALUES (5, N'GREENVEST')
INSERT dbo.Clothes(id, name) VALUES (6, N'JEANVEST')
INSERT dbo.Clothes(id, name) VALUES (7, N'BLUEVEST')
INSERT dbo.Clothes(id, name) VALUES (8, N'grey shirt')
INSERT dbo.Clothes(id, name) VALUES (9, N'light green')
INSERT dbo.Clothes(id, name) VALUES (10, N'WHITEVEST')
INSERT dbo.Clothes(id, name) VALUES (11, N'PURPLESHIRT')
INSERT dbo.Clothes(id, name) VALUES (12, N'BROWNVEST')
INSERT dbo.Clothes(id, name) VALUES (13, N'Army trousers')
INSERT dbo.Clothes(id, name) VALUES (14, N'BLACKPANTS')
INSERT dbo.Clothes(id, name) VALUES (15, N'BEIGEPANTS')
INSERT dbo.Clothes(id, name) VALUES (16, N'TANPANTS')
INSERT dbo.Clothes(id, name) VALUES (17, N'JEANPANTS')
INSERT dbo.Clothes(id, name) VALUES (18, N'Bluejeans')
INSERT dbo.Clothes(id, name) VALUES (19, N'white t-shirt and jeans')
GO
SET IDENTITY_INSERT dbo.Clothes OFF
GO
-- 
-- Вывод данных для таблицы CombineWeap
--
-- Таблица Item1.dbo.CombineWeap не содержит данных
-- 
-- Вывод данных для таблицы Drug
--
-- Таблица Item1.dbo.Drug не содержит данных
-- 
-- Вывод данных для таблицы EXPLOSIVE
--
-- Таблица Item1.dbo.EXPLOSIVE не содержит данных
-- 
-- Вывод данных для таблицы FOOD
--
SET IDENTITY_INSERT dbo.FOOD ON
GO
INSERT dbo.FOOD(id, name) VALUES (1, N'(none)')
INSERT dbo.FOOD(id, name) VALUES (2, N'Canteen')
INSERT dbo.FOOD(id, name) VALUES (3, N'Alcohol')
INSERT dbo.FOOD(id, name) VALUES (4, N'Beer')
INSERT dbo.FOOD(id, name) VALUES (5, N'Wine')
INSERT dbo.FOOD(id, name) VALUES (6, N'Calory bars')
INSERT dbo.FOOD(id, name) VALUES (7, N'MRE')
INSERT dbo.FOOD(id, name) VALUES (8, N'EPA')
INSERT dbo.FOOD(id, name) VALUES (9, N'Calorie Mate')
INSERT dbo.FOOD(id, name) VALUES (10, N'Peak EPA')
INSERT dbo.FOOD(id, name) VALUES (11, N'Hotdog')
INSERT dbo.FOOD(id, name) VALUES (12, N'Hamburger')
INSERT dbo.FOOD(id, name) VALUES (13, N'Fries')
INSERT dbo.FOOD(id, name) VALUES (14, N'Pizza')
INSERT dbo.FOOD(id, name) VALUES (15, N'Spam')
INSERT dbo.FOOD(id, name) VALUES (16, N'Spam 2')
INSERT dbo.FOOD(id, name) VALUES (17, N'C. vegetables')
INSERT dbo.FOOD(id, name) VALUES (18, N'C. scorpions')
INSERT dbo.FOOD(id, name) VALUES (19, N'Cat food')
INSERT dbo.FOOD(id, name) VALUES (20, N'Baked beans')
INSERT dbo.FOOD(id, name) VALUES (21, N'Steak')
INSERT dbo.FOOD(id, name) VALUES (22, N'Bean stew')
INSERT dbo.FOOD(id, name) VALUES (23, N'French toast')
INSERT dbo.FOOD(id, name) VALUES (24, N'Crepes')
INSERT dbo.FOOD(id, name) VALUES (25, N'Pasta')
INSERT dbo.FOOD(id, name) VALUES (26, N'Omelet')
INSERT dbo.FOOD(id, name) VALUES (27, N'Cow meat')
INSERT dbo.FOOD(id, name) VALUES (28, N'Bloodcat meat')
INSERT dbo.FOOD(id, name) VALUES (29, N'Bread')
INSERT dbo.FOOD(id, name) VALUES (30, N'Applepie')
INSERT dbo.FOOD(id, name) VALUES (31, N'Water drum')
INSERT dbo.FOOD(id, name) VALUES (32, N'PET bottle')
INSERT dbo.FOOD(id, name) VALUES (33, N'Vegetable juice')
INSERT dbo.FOOD(id, name) VALUES (34, N'Milk')
INSERT dbo.FOOD(id, name) VALUES (35, N'Energy drink')
INSERT dbo.FOOD(id, name) VALUES (36, N'Energy drink 2')
INSERT dbo.FOOD(id, name) VALUES (37, N'Coffee')
INSERT dbo.FOOD(id, name) VALUES (38, N'Oatmeal')
INSERT dbo.FOOD(id, name) VALUES (39, N'Bag of rice')
GO
SET IDENTITY_INSERT dbo.FOOD OFF
GO
-- 
-- Вывод данных для таблицы G_AttachClass
--
SET IDENTITY_INSERT dbo.G_AttachClass ON
GO
INSERT dbo.G_AttachClass(id, name_class) VALUES (1, N'Def')
INSERT dbo.G_AttachClass(id, name_class) VALUES (2, N'SIGHTS AND AIMING AIDS')
INSERT dbo.G_AttachClass(id, name_class) VALUES (3, N'SOUND SUPPRESSORS')
INSERT dbo.G_AttachClass(id, name_class) VALUES (4, N'STOCKS, TRIPODS, AND BIPODS')
INSERT dbo.G_AttachClass(id, name_class) VALUES (5, N'HOLSTERS, SCABBARDS, AND SLINGS')
INSERT dbo.G_AttachClass(id, name_class) VALUES (6, N'MAGAZINE MODIFICATIONS AND RELOADING AIDS')
INSERT dbo.G_AttachClass(id, name_class) VALUES (7, N'MISCELLANEOUS ACCESSORIES AND MODIFICATIONS')
GO
SET IDENTITY_INSERT dbo.G_AttachClass OFF
GO
-- 
-- Вывод данных для таблицы G_AvAttachClass
--
-- Таблица Item1.dbo.G_AvAttachClass не содержит данных
-- 
-- Вывод данных для таблицы G_SubAttachClass
--
SET IDENTITY_INSERT dbo.G_SubAttachClass ON
GO
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (1, N'Telescopic Sights', 2, N'', 1)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (2, N'Improved-Visibility Sights', 2, N'', 1)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (3, N'Collimating Sight', 2, N'', 1)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (4, N'Reflex Sight', 2, N'', 1)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (5, N'Night Sights', 2, N'', 1)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (6, N'Computer Sights', 2, N'', 1)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (7, N'Thermal-Imaging Sights', 2, N'', 1)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (8, N'Targeting Lasers', 2, N'', 2)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (9, N'Tactical Lights', 2, N'', 3)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (10, N'Tripods and Other Mounts', 4, N'', 4)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (11, N'Bipods', 4, N'', 4)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (12, N'Baffle Suppressors', 3, N'', 5)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (13, N'Wiper Suppressors', 3, N'', 5)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (14, N'Extended Magazines', 6, N'', 9)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (15, N'Drum magazines', 6, N'', 9)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (16, N'High-density magazines', 6, N'', 9)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (17, N'Speedloaders', 6, N'', 9)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (18, N'Clamped Magazines', 6, N'', 9)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (19, N'Pistol Stocks', 4, N'', 7)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (20, N'Shooting Sticks', 4, N'', 7)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (21, N'Folding Stock', 4, N'', 7)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (22, N'Belt Holster (TL5)', 5, N'', 11)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (23, N'Lanyard (TL5)', 5, N'', 11)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (24, N'Military Holster (TL5)', 5, N'', 11)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (25, N'Rifle Sling (TL5)', 5, N'', 11)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (26, N'Scabbard (TL5)', 5, N'', 11)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (27, N'Shoulder Holster (TL5)', 5, N'', 11)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (28, N'Sleeve Holster (TL6)', 5, N'', 11)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (29, N'Fast-Draw Rig (TL7)', 5, N'', 11)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (30, N'Patrol Sling (TL7)', 5, N'', 11)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (31, N'Undercover Holster (TL7)', 5, N'', 11)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (32, N'Retention Holster (TL8)', 5, N'', 11)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (33, N'Gun-Cleaning Kit', 7, N'', 11)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (34, N'Gun Case', 7, N'', 11)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (35, N'Brass Catchers', 7, N'', 11)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (36, N'Slide-Lock', 7, N'', 11)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (37, N'Accessory Rails', 7, N'', 11)
INSERT dbo.G_SubAttachClass(id, SubAttach_name, AttachClass, SubAttachDescription, ATTACHMENTSLOT) VALUES (38, N'Drag Bag', 7, N'', 11)
GO
SET IDENTITY_INSERT dbo.G_SubAttachClass OFF
GO
-- 
-- Вывод данных для таблицы GurpsClass
--
SET IDENTITY_INSERT dbo.GurpsClass ON
GO
INSERT dbo.GurpsClass(id, name) VALUES (1, N'None')
INSERT dbo.GurpsClass(id, name) VALUES (2, N'Artillery')
INSERT dbo.GurpsClass(id, name) VALUES (3, N'Beam Weapons')
INSERT dbo.GurpsClass(id, name) VALUES (4, N'Gunner')
INSERT dbo.GurpsClass(id, name) VALUES (5, N'Guns')
INSERT dbo.GurpsClass(id, name) VALUES (6, N'Liquid Projector')
INSERT dbo.GurpsClass(id, name) VALUES (7, N'Thrown Weapon')
GO
SET IDENTITY_INSERT dbo.GurpsClass OFF
GO
-- 
-- Вывод данных для таблицы ITEM
--
-- Таблица Item1.dbo.ITEM не содержит данных
-- 
-- Вывод данных для таблицы ItemClass
--
SET IDENTITY_INSERT dbo.ItemClass ON
GO
INSERT dbo.ItemClass(id, name) VALUES (1, N'All')
INSERT dbo.ItemClass(id, name) VALUES (2, N'Weapon')
INSERT dbo.ItemClass(id, name) VALUES (3, N'Ammo')
INSERT dbo.ItemClass(id, name) VALUES (4, N'Attachment')
INSERT dbo.ItemClass(id, name) VALUES (5, N'Random Item')
INSERT dbo.ItemClass(id, name) VALUES (6, N'EXPLOSIVE')
INSERT dbo.ItemClass(id, name) VALUES (7, N'Drug')
INSERT dbo.ItemClass(id, name) VALUES (8, N'LOADBEARINGEQUIPMENT')
INSERT dbo.ItemClass(id, name) VALUES (9, N'ARMOUR')
INSERT dbo.ItemClass(id, name) VALUES (10, N'Attachment')
GO
SET IDENTITY_INSERT dbo.ItemClass OFF
GO
-- 
-- Вывод данных для таблицы ItemSubClass
--
SET IDENTITY_INSERT dbo.ItemSubClass ON
GO
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (1, N'Normal', 6, N'ExplosionType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (2, N'Stun', 6, N'ExplosionType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (3, N'Tear Gas', 6, N'ExplosionType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (4, N'Mustard Gas', 6, N'ExplosionType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (5, N'Flare', 6, N'ExplosionType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (6, N'Noise', 6, N'ExplosionType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (7, N'Smoke', 6, N'ExplosionType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (8, N'Creature Gas', 6, N'ExplosionType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (9, N'Fire', 6, N'ExplosionType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (10, N'Flashbang', 6, N'ExplosionType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (11, N'Signal Shell', 6, N'ExplosionType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (12, N'None', 7, N'DrugType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (13, N'Adrenaline', 7, N'DrugType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (14, N'Alcohol', 7, N'DrugType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (15, N'Regeneration', 7, N'DrugType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (16, N'Damage Resistance', 7, N'DrugType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (17, N'Strength', 7, N'DrugType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (18, N'Agility', 7, N'DrugType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (19, N'Dexterity', 7, N'DrugType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (20, N'Wisdom', 7, N'DrugType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (21, N'Perception', 7, N'DrugType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (22, N'Psychosis', 7, N'DrugType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (23, N'Nervousness', 7, N'DrugType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (24, N'Reflex', 7, N'DrugType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (25, N'Claustrophobia', 7, N'DrugType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (26, N'Heat Intolerance', 7, N'DrugType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (27, N'Fear of Insects', 7, N'DrugType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (28, N'Forgetfulness', 7, N'DrugType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (29, N'Stim', 7, N'DrugType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (30, N'Blindness', 7, N'DrugType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (31, N'Unconsciousness', 7, N'DrugType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (32, N'Barrage', 7, N'DrugType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (33, N'Vision', 7, N'DrugType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (34, N'Tunnel Vision', 7, N'DrugType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (35, N'Occulin', 7, N'DrugType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (36, N'Cure', 7, N'DrugType', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (37, N'Nothing', 8, N'LBEClass', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (38, N'Thigh Pack', 8, N'LBEClass', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (39, N'Vest', 8, N'LBEClass', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (40, N'Combat Pack', 8, N'LBEClass', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (41, N'Backpack', 8, N'LBEClass', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (42, N'Helmet', 9, N'ArmourClass', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (43, N'Vest', 9, N'ArmourClass', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (44, N'Leggings', 9, N'ArmourClass', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (45, N'Plate', 9, N'ArmourClass', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (46, N'Vehicle', 9, N'ArmourClass', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (47, N'Firearm', 2, N'Weapon', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (48, N'винтовки', 3, N'Ammo', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (49, N'пистолет', 3, N'Ammo', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (50, N'Гранатомёты', 3, N'Ammo', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (51, N'Автоматические Пушки', 3, N'Ammo', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (52, N'дробовики', 3, N'Ammo', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (53, N'миномёты', 3, N'Ammo', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (54, N'противотанковые пушки', 3, N'Ammo', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (55, N'Attachment', 10, N'Attachment', NULL)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (57, N'Normal', 2, N'WeaponType', 6)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (58, N'Guided Missile', 2, N'WeaponType', 2)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (59, N'Torpedoes', 2, N'WeaponType', 2)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (60, N'Catapult', 2, N'WeaponType', 2)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (61, N'Cannon', 2, N'WeaponType', 2)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (62, N'Beams', 2, N'WeaponType', 2)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (63, N'Bombs', 2, N'WeaponType', 2)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (64, N'Projector', 2, N'WeaponType', 3)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (65, N'Pistol', 2, N'WeaponType', 3)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (66, N'Rifle', 2, N'WeaponType', 3)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (67, N'Machine Gun', 2, N'WeaponType', 4)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (68, N'Catapult', 2, N'WeaponType', 4)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (69, N'Rockets', 2, N'WeaponType', 4)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (70, N'Cannon', 2, N'WeaponType', 4)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (71, N'Beams', 2, N'WeaponType', 4)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (72, N'Light Anti-Armor Weapon', 2, N'WeaponType', 5)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (73, N'Light Machine Gun', 2, N'WeaponType', 5)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (74, N'Grenade Launcher', 2, N'WeaponType', 5)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (75, N'Submachine Gun', 2, N'WeaponType', 5)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (76, N'Shotgun', 2, N'WeaponType', 5)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (77, N'Musket', 2, N'WeaponType', 5)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (78, N'Pistol', 2, N'WeaponType', 5)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (79, N'Gyroc', 2, N'WeaponType', 5)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (80, N'Rifle', 2, N'WeaponType', 5)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (81, N'Flamethrower', 2, N'WeaponType', 6)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (82, N'Water Cannon', 2, N'WeaponType', 6)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (83, N'Squirt Gun', 2, N'WeaponType', 6)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (84, N'Sprayer', 2, N'WeaponType', 6)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (85, N'Axe/Mace', 2, N'WeaponType', 7)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (86, N'Shuriken', 2, N'WeaponType', 7)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (87, N'Harpoon', 2, N'WeaponType', 7)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (88, N'Knife', 2, N'WeaponType', 7)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (89, N'Spear', 2, N'WeaponType', 7)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (90, N'Stick', 2, N'WeaponType', 7)
INSERT dbo.ItemSubClass(id, NameSub, IdItemClass, Type, idGurpsSubClass) VALUES (91, N'Dart', 2, N'WeaponType', 7)
GO
SET IDENTITY_INSERT dbo.ItemSubClass OFF
GO
-- 
-- Вывод данных для таблицы LaserColorEf
--
SET IDENTITY_INSERT dbo.LaserColorEf ON
GO
INSERT dbo.LaserColorEf(id, name, LaserColorDayEfect) VALUES (1, N'Red', 0.33)
INSERT dbo.LaserColorEf(id, name, LaserColorDayEfect) VALUES (2, N'Orange', 0.50)
INSERT dbo.LaserColorEf(id, name, LaserColorDayEfect) VALUES (3, N'Green', 2.00)
INSERT dbo.LaserColorEf(id, name, LaserColorDayEfect) VALUES (4, N'Infrared', 1.00)
GO
SET IDENTITY_INSERT dbo.LaserColorEf OFF
GO
-- 
-- Вывод данных для таблицы LC
--
SET IDENTITY_INSERT dbo.LC ON
GO
INSERT dbo.LC(Id_LC, Name_LC, ShortDes, Description) VALUES (1, N'LC4', N'Открытый', N'Открытый. В большинстве обществ изделие свободно доступно, но в обществах с сильным контролем его доступ или использование могут быть ограничены. Примеры: компьютер; меч;ружьё; мотороллер')
INSERT dbo.LC(Id_LC, Name_LC, ShortDes, Description) VALUES (2, N'LC3', N'Лицензируемый', N'Лицензируемый. В большинстве обществ изделие нуждается в государственной регистрации. Регистрация может включать в себя плату или освидетельствование и быть запрещенной для преступников, несовершеннолет них и т.д. Примеры: автомобиль; пистолет; охотничья винтовка')
INSERT dbo.LC(Id_LC, Name_LC, ShortDes, Description) VALUES (3, N'LC2', N'Ограниченный', N'Ограниченный. В большинстве обществ только представители военных, полицейских, или разведывательных служб могут владеть таким изделием, хотя некоторым гражданам с лицензией могут разрешить его получаение в частную собственность. Примеры: штурмовая винтовка, бронеавтомобиль.')
INSERT dbo.LC(Id_LC, Name_LC, ShortDes, Description) VALUES (4, N'LC1', N'Военный', N'Военный. В большинстве обществ изделие доступно только вооруженным силам или секретным разведслужбам. Примеры: противотанковое оружие; боевая техника.')
INSERT dbo.LC(Id_LC, Name_LC, ShortDes, Description) VALUES (5, N'LC0', N'Запрещенный', N'Запрещенный. Изделие ограничено вооруженными силами отдельных государств, которые очень постараются не допустить к нему частных лиц и страны «третьего мира». Примеры: ядерное и биологическое оружие.')
GO
SET IDENTITY_INSERT dbo.LC OFF
GO
-- 
-- Вывод данных для таблицы LOADBEARINGEQUIPMENT
--
-- Таблица Item1.dbo.LOADBEARINGEQUIPMENT не содержит данных
-- 
-- Вывод данных для таблицы TL
--
SET IDENTITY_INSERT dbo.TL ON
GO
INSERT dbo.TL(Id_Tl, name_TL, Description, StartMoney) VALUES (1, N'TL0', N'Каменный век (доисторический период и далее). $250', 250.0000)
INSERT dbo.TL(Id_Tl, name_TL, Description, StartMoney) VALUES (2, N'TL1', N'Бронзовый век (3500 лет до н.э. и позже). $500', 500.0000)
INSERT dbo.TL(Id_Tl, name_TL, Description, StartMoney) VALUES (3, N'TL2', N'Железный век (1200 лет до н.э. и позже). $750', 750.0000)
INSERT dbo.TL(Id_Tl, name_TL, Description, StartMoney) VALUES (4, N'TL3', N'Средневековье (600 г. н.э. и позже). $1.000', 1000.0000)
INSERT dbo.TL(Id_Tl, name_TL, Description, StartMoney) VALUES (5, N'TL4', N'Эпоха парусов (1450 г. и позже). $2.000', 2000.0000)
INSERT dbo.TL(Id_Tl, name_TL, Description, StartMoney) VALUES (6, N'TL5', N'Промышленный переворот (1730 г. и позже). $5.000', 5000.0000)
INSERT dbo.TL(Id_Tl, name_TL, Description, StartMoney) VALUES (7, N'TL6', N'Эпоха механики (1880 г. и позже). $10.000', 10000.0000)
INSERT dbo.TL(Id_Tl, name_TL, Description, StartMoney) VALUES (8, N'TL7', N'Атомная эпоха (1940 г. и позже). $15.000', 15000.0000)
INSERT dbo.TL(Id_Tl, name_TL, Description, StartMoney) VALUES (9, N'TL8', N'Цифровая эпоха (1980 г. и позже). $20.000', 20000.0000)
INSERT dbo.TL(Id_Tl, name_TL, Description, StartMoney) VALUES (10, N'TL9', N'Эпоха микротехники (2025 г. и позже?). $30.000', 30000.0000)
INSERT dbo.TL(Id_Tl, name_TL, Description, StartMoney) VALUES (11, N'TL10', N'Эпоха роботизации (2070 г. и позже?) $50.000', 50000.0000)
INSERT dbo.TL(Id_Tl, name_TL, Description, StartMoney) VALUES (12, N'TL11', N'Эпоха экзотических материалов. $75.000', 75000.0000)
INSERT dbo.TL(Id_Tl, name_TL, Description, StartMoney) VALUES (13, N'TL12', N'Все что пожелает Мастер $100.000', 100000.0000)
GO
SET IDENTITY_INSERT dbo.TL OFF
GO
-- 
-- Вывод данных для таблицы Type_of_Box
--
SET IDENTITY_INSERT dbo.Type_of_Box ON
GO
INSERT dbo.Type_of_Box(id, nameOfType) VALUES (1, N'Type1')
INSERT dbo.Type_of_Box(id, nameOfType) VALUES (2, N'Type2')
INSERT dbo.Type_of_Box(id, nameOfType) VALUES (3, N'Type3')
GO
SET IDENTITY_INSERT dbo.Type_of_Box OFF
GO
-- 
-- Вывод данных для таблицы TypeOfDamage
--
SET IDENTITY_INSERT dbo.TypeOfDamage ON
GO
INSERT dbo.TypeOfDamage(id, name, LongName, mDamage) VALUES (1, N'pi+', N'piersing', N'0.5')
INSERT dbo.TypeOfDamage(id, name, LongName, mDamage) VALUES (2, N'pi-', N' ', N'0.5')
INSERT dbo.TypeOfDamage(id, name, LongName, mDamage) VALUES (3, N'pi', N' ', N'1.0')
INSERT dbo.TypeOfDamage(id, name, LongName, mDamage) VALUES (4, N'pi++', N' ', N'2.0')
INSERT dbo.TypeOfDamage(id, name, LongName, mDamage) VALUES (5, N'spec', N' ', N'1.0')
INSERT dbo.TypeOfDamage(id, name, LongName, mDamage) VALUES (6, N'tox', N' ', N'1.0')
INSERT dbo.TypeOfDamage(id, name, LongName, mDamage) VALUES (7, N'aff', N' ', N'1.0')
INSERT dbo.TypeOfDamage(id, name, LongName, mDamage) VALUES (8, N'burn', N' ', N'1.0')
INSERT dbo.TypeOfDamage(id, name, LongName, mDamage) VALUES (9, N'cor', N' ', N'1.0')
INSERT dbo.TypeOfDamage(id, name, LongName, mDamage) VALUES (10, N'cr', N' ', N'1.0')
INSERT dbo.TypeOfDamage(id, name, LongName, mDamage) VALUES (11, N'cut', N' ', N'1.5')
INSERT dbo.TypeOfDamage(id, name, LongName, mDamage) VALUES (12, N'fat', N' ', N'1.0')
INSERT dbo.TypeOfDamage(id, name, LongName, mDamage) VALUES (13, N'imp', N' ', N'2.0')
INSERT dbo.TypeOfDamage(id, name, LongName, mDamage) VALUES (14, N'ex', N' ', N'1.0')
GO
SET IDENTITY_INSERT dbo.TypeOfDamage OFF
GO
-- 
-- Вывод данных для таблицы WEAPON
--
-- Таблица Item1.dbo.WEAPON не содержит данных
-- 
-- Вывод данных для таблицы WeaponAttackType
--
SET IDENTITY_INSERT dbo.WeaponAttackType ON
GO
INSERT dbo.WeaponAttackType(id, name, descr) VALUES (1, N'Primary', N'ee')
INSERT dbo.WeaponAttackType(id, name, descr) VALUES (2, N'Follow-up', N'ee')
INSERT dbo.WeaponAttackType(id, name, descr) VALUES (3, N'Linked', N'ee')
GO
SET IDENTITY_INSERT dbo.WeaponAttackType OFF
GO
-- 
-- Вывод данных для таблицы WeaponDamage
--
-- Таблица Item1.dbo.WeaponDamage не содержит данных

USE Item1
GO

IF DB_NAME() <> N'Item1' SET NOEXEC ON
GO

--
-- Создать внешний ключ "FK_ItemSubClass_ItemClass_id" для объекта типа таблица "dbo.ItemSubClass"
--
PRINT (N'Создать внешний ключ "FK_ItemSubClass_ItemClass_id" для объекта типа таблица "dbo.ItemSubClass"')
GO
ALTER TABLE dbo.ItemSubClass
  ADD CONSTRAINT FK_ItemSubClass_ItemClass_id FOREIGN KEY (IdItemClass) REFERENCES dbo.ItemClass (id)
GO

--
-- Создать внешний ключ "FK_ItemSubClass_WeaponClass_id" для объекта типа таблица "dbo.ItemSubClass"
--
PRINT (N'Создать внешний ключ "FK_ItemSubClass_WeaponClass_id" для объекта типа таблица "dbo.ItemSubClass"')
GO
ALTER TABLE dbo.ItemSubClass
  ADD CONSTRAINT FK_ItemSubClass_WeaponClass_id FOREIGN KEY (idGurpsSubClass) REFERENCES dbo.GurpsClass (id)
GO

--
-- Создать внешний ключ "FK_Calibre" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать внешний ключ "FK_Calibre" для объекта типа таблица "dbo.ITEM"')
GO
ALTER TABLE dbo.ITEM
  ADD CONSTRAINT FK_Calibre FOREIGN KEY (ubCalibre) REFERENCES dbo.Caliber (id)
GO

--
-- Создать внешний ключ "FK_ITEM_Clothes" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать внешний ключ "FK_ITEM_Clothes" для объекта типа таблица "dbo.ITEM"')
GO
ALTER TABLE dbo.ITEM
  ADD CONSTRAINT FK_ITEM_Clothes FOREIGN KEY (clothestype) REFERENCES dbo.Clothes (id)
GO

--
-- Создать внешний ключ "FK_ITEM_Food" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать внешний ключ "FK_ITEM_Food" для объекта типа таблица "dbo.ITEM"')
GO
ALTER TABLE dbo.ITEM
  ADD CONSTRAINT FK_ITEM_Food FOREIGN KEY (FoodType) REFERENCES dbo.FOOD (id)
GO

--
-- Создать внешний ключ "FK_ITEM_ItemSubClass_id" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать внешний ключ "FK_ITEM_ItemSubClass_id" для объекта типа таблица "dbo.ITEM"')
GO
ALTER TABLE dbo.ITEM
  ADD CONSTRAINT FK_ITEM_ItemSubClass_id FOREIGN KEY (usItemClass) REFERENCES dbo.ItemSubClass (id)
GO

--
-- Создать внешний ключ "FK_ITEM_LC" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать внешний ключ "FK_ITEM_LC" для объекта типа таблица "dbo.ITEM"')
GO
ALTER TABLE dbo.ITEM
  ADD CONSTRAINT FK_ITEM_LC FOREIGN KEY (LC) REFERENCES dbo.LC (Id_LC)
GO

--
-- Создать внешний ключ "FK_ITEM_TL" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать внешний ключ "FK_ITEM_TL" для объекта типа таблица "dbo.ITEM"')
GO
ALTER TABLE dbo.ITEM
  ADD CONSTRAINT FK_ITEM_TL FOREIGN KEY (TL) REFERENCES dbo.TL (Id_Tl)
GO

--
-- Создать внешний ключ "FK_WEAPON_ITEM_uiIndex" для объекта типа таблица "dbo.WEAPON"
--
PRINT (N'Создать внешний ключ "FK_WEAPON_ITEM_uiIndex" для объекта типа таблица "dbo.WEAPON"')
GO
ALTER TABLE dbo.WEAPON
  ADD CONSTRAINT FK_WEAPON_ITEM_uiIndex FOREIGN KEY (uiIndex) REFERENCES dbo.ITEM (uiIndex) ON DELETE CASCADE ON UPDATE CASCADE
GO

--
-- Создать внешний ключ "FK_WeaponDamage_TypeOfDamage_id1" для объекта типа таблица "dbo.WeaponDamage"
--
PRINT (N'Создать внешний ключ "FK_WeaponDamage_TypeOfDamage_id1" для объекта типа таблица "dbo.WeaponDamage"')
GO
ALTER TABLE dbo.WeaponDamage
  ADD CONSTRAINT FK_WeaponDamage_TypeOfDamage_id1 FOREIGN KEY (idTypeOfDamage1) REFERENCES dbo.TypeOfDamage (id)
GO

--
-- Создать внешний ключ "FK_WeaponDamage_TypeOfDamage_id2" для объекта типа таблица "dbo.WeaponDamage"
--
PRINT (N'Создать внешний ключ "FK_WeaponDamage_TypeOfDamage_id2" для объекта типа таблица "dbo.WeaponDamage"')
GO
ALTER TABLE dbo.WeaponDamage
  ADD CONSTRAINT FK_WeaponDamage_TypeOfDamage_id2 FOREIGN KEY (idTypeOfDamage2) REFERENCES dbo.TypeOfDamage (id)
GO

--
-- Создать внешний ключ "FK_WeaponDamage_WEAPON_uiIndex" для объекта типа таблица "dbo.WeaponDamage"
--
PRINT (N'Создать внешний ключ "FK_WeaponDamage_WEAPON_uiIndex" для объекта типа таблица "dbo.WeaponDamage"')
GO
ALTER TABLE dbo.WeaponDamage
  ADD CONSTRAINT FK_WeaponDamage_WEAPON_uiIndex FOREIGN KEY (idWeapon) REFERENCES dbo.WEAPON (uiIndex) ON DELETE CASCADE ON UPDATE CASCADE
GO

--
-- Создать внешний ключ "FK_WeaponDamage_WeaponAttackType_id" для объекта типа таблица "dbo.WeaponDamage"
--
PRINT (N'Создать внешний ключ "FK_WeaponDamage_WeaponAttackType_id" для объекта типа таблица "dbo.WeaponDamage"')
GO
ALTER TABLE dbo.WeaponDamage
  ADD CONSTRAINT FK_WeaponDamage_WeaponAttackType_id FOREIGN KEY (idWeaponAttackType) REFERENCES dbo.WeaponAttackType (id)
GO

--
-- Создать внешний ключ "FK_LOADBEARINGEQUIPMENT_ITEM_uiIndex" для объекта типа таблица "dbo.LOADBEARINGEQUIPMENT"
--
PRINT (N'Создать внешний ключ "FK_LOADBEARINGEQUIPMENT_ITEM_uiIndex" для объекта типа таблица "dbo.LOADBEARINGEQUIPMENT"')
GO
ALTER TABLE dbo.LOADBEARINGEQUIPMENT
  ADD CONSTRAINT FK_LOADBEARINGEQUIPMENT_ITEM_uiIndex FOREIGN KEY (lbeIndex) REFERENCES dbo.ITEM (uiIndex) ON DELETE CASCADE ON UPDATE CASCADE
GO

--
-- Создать внешний ключ "FK_EXPLOSIVE_ITEM_uiIndex" для объекта типа таблица "dbo.EXPLOSIVE"
--
PRINT (N'Создать внешний ключ "FK_EXPLOSIVE_ITEM_uiIndex" для объекта типа таблица "dbo.EXPLOSIVE"')
GO
ALTER TABLE dbo.EXPLOSIVE
  ADD CONSTRAINT FK_EXPLOSIVE_ITEM_uiIndex FOREIGN KEY (uiIndex) REFERENCES dbo.ITEM (uiIndex) ON DELETE CASCADE ON UPDATE CASCADE
GO

--
-- Создать внешний ключ "FK_Drug_ITEM_uiIndex" для объекта типа таблица "dbo.Drug"
--
PRINT (N'Создать внешний ключ "FK_Drug_ITEM_uiIndex" для объекта типа таблица "dbo.Drug"')
GO
ALTER TABLE dbo.Drug
  ADD CONSTRAINT FK_Drug_ITEM_uiIndex FOREIGN KEY (id) REFERENCES dbo.ITEM (uiIndex)
GO

--
-- Создать внешний ключ "FK_ARMOUR_ITEM_uiIndex" для объекта типа таблица "dbo.ARMOUR"
--
PRINT (N'Создать внешний ключ "FK_ARMOUR_ITEM_uiIndex" для объекта типа таблица "dbo.ARMOUR"')
GO
ALTER TABLE dbo.ARMOUR
  ADD CONSTRAINT FK_ARMOUR_ITEM_uiIndex FOREIGN KEY (uiIndex) REFERENCES dbo.ITEM (uiIndex) ON DELETE CASCADE ON UPDATE CASCADE
GO

--
-- Создать внешний ключ "FK_G_SubAttachClass_ATTACHMENTSLOT1" для объекта типа таблица "dbo.G_SubAttachClass"
--
PRINT (N'Создать внешний ключ "FK_G_SubAttachClass_ATTACHMENTSLOT1" для объекта типа таблица "dbo.G_SubAttachClass"')
GO
ALTER TABLE dbo.G_SubAttachClass
  ADD CONSTRAINT FK_G_SubAttachClass_ATTACHMENTSLOT1 FOREIGN KEY (ATTACHMENTSLOT) REFERENCES dbo.ATTACHMENTSLOT (uiSlotIndex)
GO

--
-- Создать внешний ключ "FK_G_SubAttachClass_G_AttachClass" для объекта типа таблица "dbo.G_SubAttachClass"
--
PRINT (N'Создать внешний ключ "FK_G_SubAttachClass_G_AttachClass" для объекта типа таблица "dbo.G_SubAttachClass"')
GO
ALTER TABLE dbo.G_SubAttachClass
  ADD CONSTRAINT FK_G_SubAttachClass_G_AttachClass FOREIGN KEY (AttachClass) REFERENCES dbo.G_AttachClass (id)
GO

--
-- Создать внешний ключ "FK_Attachmentmount_NasAttachmentClass1" для объекта типа таблица "dbo.Attachmentmount"
--
PRINT (N'Создать внешний ключ "FK_Attachmentmount_NasAttachmentClass1" для объекта типа таблица "dbo.Attachmentmount"')
GO
ALTER TABLE dbo.Attachmentmount
  ADD CONSTRAINT FK_Attachmentmount_NasAttachmentClass1 FOREIGN KEY (idAttacClass) REFERENCES dbo.ATTACHMENTSLOT (uiSlotIndex)
GO

--
-- Создать внешний ключ "FK_AvailableAttachSlot_ITEM_uiIndex" для объекта типа таблица "dbo.AvailableAttachSlot"
--
PRINT (N'Создать внешний ключ "FK_AvailableAttachSlot_ITEM_uiIndex" для объекта типа таблица "dbo.AvailableAttachSlot"')
GO
ALTER TABLE dbo.AvailableAttachSlot
  ADD CONSTRAINT FK_AvailableAttachSlot_ITEM_uiIndex FOREIGN KEY (rItemId) REFERENCES dbo.ITEM (uiIndex)
GO

--
-- Создать внешний ключ "FK_AVeAttachmentmount" для объекта типа таблица "dbo.AvailableAttachSlot"
--
PRINT (N'Создать внешний ключ "FK_AVeAttachmentmount" для объекта типа таблица "dbo.AvailableAttachSlot"')
GO
ALTER TABLE dbo.AvailableAttachSlot
  ADD CONSTRAINT FK_AVeAttachmentmount FOREIGN KEY (rAttachmentmount) REFERENCES dbo.Attachmentmount (id)
GO

--
-- Создать внешний ключ "FK_Attachment_Attachmentmount" для объекта типа таблица "dbo.Attachment"
--
PRINT (N'Создать внешний ключ "FK_Attachment_Attachmentmount" для объекта типа таблица "dbo.Attachment"')
GO
ALTER TABLE dbo.Attachment
  ADD CONSTRAINT FK_Attachment_Attachmentmount FOREIGN KEY (id_Attachmentmount) REFERENCES dbo.Attachmentmount (id)
GO

--
-- Создать внешний ключ "FK_Attachment_ITEM_uiIndex" для объекта типа таблица "dbo.Attachment"
--
PRINT (N'Создать внешний ключ "FK_Attachment_ITEM_uiIndex" для объекта типа таблица "dbo.Attachment"')
GO
ALTER TABLE dbo.Attachment
  ADD CONSTRAINT FK_Attachment_ITEM_uiIndex FOREIGN KEY (uiIndex) REFERENCES dbo.ITEM (uiIndex) ON DELETE CASCADE ON UPDATE CASCADE
GO

--
-- Создать внешний ключ "FK_G_AvAttachClass_Attachment" для объекта типа таблица "dbo.G_AvAttachClass"
--
PRINT (N'Создать внешний ключ "FK_G_AvAttachClass_Attachment" для объекта типа таблица "dbo.G_AvAttachClass"')
GO
ALTER TABLE dbo.G_AvAttachClass
  ADD CONSTRAINT FK_G_AvAttachClass_Attachment FOREIGN KEY (id_attach) REFERENCES dbo.Attachment (uiIndex) ON DELETE CASCADE
GO

--
-- Создать внешний ключ "FK_G_AvAttachClass_G_SubAttachClass" для объекта типа таблица "dbo.G_AvAttachClass"
--
PRINT (N'Создать внешний ключ "FK_G_AvAttachClass_G_SubAttachClass" для объекта типа таблица "dbo.G_AvAttachClass"')
GO
ALTER TABLE dbo.G_AvAttachClass
  ADD CONSTRAINT FK_G_AvAttachClass_G_SubAttachClass FOREIGN KEY (id_GSubClass) REFERENCES dbo.G_SubAttachClass (id)
GO

--
-- Создать внешний ключ "FK_AnyBoxNameType_AnyBoxNameType_id" для объекта типа таблица "dbo.AnyBoxNameType"
--
PRINT (N'Создать внешний ключ "FK_AnyBoxNameType_AnyBoxNameType_id" для объекта типа таблица "dbo.AnyBoxNameType"')
GO
ALTER TABLE dbo.AnyBoxNameType
  ADD CONSTRAINT FK_AnyBoxNameType_AnyBoxNameType_id FOREIGN KEY (ParentBoxName) REFERENCES dbo.AnyBoxNameType (id)
GO

--
-- Создать внешний ключ "FK_AnyBoxNameType_Type_of_Box_id" для объекта типа таблица "dbo.AnyBoxNameType"
--
PRINT (N'Создать внешний ключ "FK_AnyBoxNameType_Type_of_Box_id" для объекта типа таблица "dbo.AnyBoxNameType"')
GO
ALTER TABLE dbo.AnyBoxNameType
  ADD CONSTRAINT FK_AnyBoxNameType_Type_of_Box_id FOREIGN KEY (TypeOfBox) REFERENCES dbo.Type_of_Box (id) ON DELETE CASCADE
GO

--
-- Создать внешний ключ "FK_BoxItem_AnyBoxNameType_id" для объекта типа таблица "dbo.BoxItem"
--
PRINT (N'Создать внешний ключ "FK_BoxItem_AnyBoxNameType_id" для объекта типа таблица "dbo.BoxItem"')
GO
ALTER TABLE dbo.BoxItem
  ADD CONSTRAINT FK_BoxItem_AnyBoxNameType_id FOREIGN KEY (BoxName) REFERENCES dbo.AnyBoxNameType (id) ON DELETE CASCADE
GO

--
-- Создать внешний ключ "FK_BoxItem_ITEM_uiIndex" для объекта типа таблица "dbo.BoxItem"
--
PRINT (N'Создать внешний ключ "FK_BoxItem_ITEM_uiIndex" для объекта типа таблица "dbo.BoxItem"')
GO
ALTER TABLE dbo.BoxItem
  ADD CONSTRAINT FK_BoxItem_ITEM_uiIndex FOREIGN KEY (Items) REFERENCES dbo.ITEM (uiIndex)
GO
SET NOEXEC OFF
GO

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

--DECLARE @RC int
--DECLARE @name nvarchar(80)
--DECLARE @weigth decimal(38, 3)
DECLARE @price money
DECLARE @sClass nvarchar(80)

EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.175 BB',@weigth=0.0008, @price=0.003,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.22 Long Rifle (5.7x16mmR)',@weigth=0.0077, @price=0.1,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.220 Swift (5.56x56mmSR)',@weigth=0.033, @price=1,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.223 Remington  (5.56x45mm NATO)',@weigth=0.026, @price=0.5,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.25 ACP (6.35x16mmSR Browning)',@weigth=0.012, @price=0.1,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.28 Caplock (Colt Number 1)',@weigth=0.006, @price=0.1,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.280 Remington (7x65mm Express)',@weigth=0.054, @price=1,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.30 M1 Carbine (7.62x33mm)',@weigth=0.029, @price=0.4,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.30 Remington (7.62x52mm)',@weigth=0.044, @price=0.8,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.300 Remington Ultra Magnum (7.62x72mmRB)',@weigth=0.075, @price=2,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.300 Winchester Magnum (7.62x66mmB)',@weigth=0.068, @price=1.5,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.30-06 Springfield (7.62x63mm)',@weigth=0.056, @price=0.8,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.303 British (7.7x56mmR)',@weigth=0.055, @price=0.8,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.30-30 Winchester (7.62x51mmR)',@weigth=0.047, @price=0.8,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.30-40 Krag (7.62x59mmR)',@weigth=0.059, @price=0.8,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.308 Winchester (7.62x51mm NATO)',@weigth=0.056, @price=0.8,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.31 Caplock (Allen)',@weigth=0.007, @price=0.1,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.32 Long Rifle (7.92x24mmR)',@weigth=0.022, @price=0.2,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.338 Lapua Magnum (8.6x70mm)',@weigth=0.096, @price=3.50,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.35 Remington (8.9x49mm)',@weigth=0.052, @price=0.8,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.357 Magnum (9x33mmR)',@weigth=0.035, @price=0.4,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.357 SIG (9x22mm)',@weigth=0.029, @price=0.4,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.36 Caplock (M1851 Navy)',@weigth=0.023, @price=0.1,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.375 H&H Magnum (9.35x72mmB)',@weigth=0.086, @price=2.50,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.38 ACP (9x23mmSR)',@weigth=0.029, @price=0.2,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.38 Long Colt (9x26mmR)',@weigth=0.033, @price=0.2,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.38 S&W (9x20mmR)',@weigth=0.035, @price=0.2,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.38 Special (9x29mmR)',@weigth=0.033, @price=0.3,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.38 Super Auto (9x23mmSR)',@weigth=0.029, @price=0.3,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.38 Volcanic',@weigth=0.015, @price=0.25,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.380 ACP (9x17mm)',@weigth=0.021, @price=0.2,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.38-40 Winchester (10x33mmR)',@weigth=0.04, @price=0.8,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.40 S&W (10x21mm)',@weigth=0.035, @price=0.3,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.41 Long Colt (10x29mmR)',@weigth=0.04, @price=0.2,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.41 Short Remington (10x12mmR)',@weigth=0.025, @price=0.2,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.42 Caplock (LeMat)',@weigth=0.018, @price=0.2,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.44 Colt (11.25x28mmR)',@weigth=0.045, @price=0.4,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.44 Magnum (10.9x33mmR)',@weigth=0.054, @price=0.7,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.442 Caplock (Adams)',@weigth=0.019, @price=0.2,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.442 RIC (11.2x17mmR)',@weigth=0.043, @price=0.4,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.444 Marlin (10.9x57mmR)',@weigth=0.052, @price=1.5,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.44-40 Winchester (10.8x33mmR)',@weigth=0.043, @price=0.6,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.44-90 Remington Special (11.2x62mmR)',@weigth=0.11, @price=2.8,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.44-90 Sharps (11.3x61mmR)',@weigth=0.11, @price=2.8,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.45 ACP (11.43x23mm)',@weigth=0.047, @price=0.5,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.45 Flintlock (Kentucky)',@weigth=0.025, @price=0.3,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.45 Flintlock (Wogdon)',@weigth=0.023, @price=0.2,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.45 GAP (11.43x19mm)',@weigth=0.045, @price=0.5,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.45 Long Colt (11.43x33mmR)',@weigth=0.05, @price=0.5,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.45 S&W (11.43x28mmR)',@weigth=0.045, @price=0.5,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.450 Adams (12.05x17mmR)',@weigth=0.045, @price=0.3,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.450 Gardner-Gatling (11.43x63mmR)',@weigth=0.12, @price=1.2,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.450 Martini-Henry (11.43x59mmR)',@weigth=0.11, @price=1,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.45-110 Sharps (11.43x73mmR)',@weigth=0.12, @price=1.8,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.454 Casull (11.43x35mmR)',@weigth=0.066, @price=1,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.455 Webley (11.5x19mmR)',@weigth=0.05, @price=0.5,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.45-55 Springfield (11.43x53mmR)',@weigth=0.08, @price=0.9,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.45-70 Springfield (11.43x53mmR)',@weigth=0.086, @price=1,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.45-75 Winchester (11.43x48mmR)',@weigth=0.085, @price=1,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.458 Winchester Magnum (11.63x64mmB)',@weigth=0.11, @price=4,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.460 Weatherby Magnum (11.63x74mmB)',@weigth=0.14, @price=7.50,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.470 Nitro Express (12x83mmR)',@weigth=0.12, @price=10,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.476 Enfield (12.05x22mmR)',@weigth=0.055, @price=0.5,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.50 Action Express (12.7x33mm)',@weigth=0.067, @price=1,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.50 Flintlock (Collier)',@weigth=0.026, @price=0.3,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.50 Flintlock (North West)',@weigth=0.035, @price=0.4,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.50-140 Sharps (12.9x83mmR)',@weigth=0.15, @price=1.5,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.50-70 Government (13x44mmR)',@weigth=0.086, @price=1,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.50-90 Sharps (12.9x64mmR)',@weigth=0.11, @price=1.3,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.50-95 Winchester Express (12.7x49mmR)',@weigth=0.06, @price=1.3,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.50BMG (12.7x99mm)',@weigth=0.25, @price=4,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.54 Caplock (Elgin Cutlass)',@weigth=0.05, @price=0.4,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.54 Flintlock (Hall M1819)',@weigth=0.044, @price=0.3,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.56 Flintlock (Tower Sea Service)',@weigth=0.05, @price=0.4,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.56-50 Spencer (13x29mmR)',@weigth=0.062, @price=0.6,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.56-56 Spencer (14x22mmR)',@weigth=0.073, @price=0.6,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.577 Caplock (Enfield)',@weigth=0.086, @price=0.4,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.577 Snider (14.6x51mmR)',@weigth=0.1, @price=0.8,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.58 Berdan (15x44mmR)',@weigth=0.12, @price=0.7,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.600 Nitro Express (15.2x76mmR)',@weigth=0.2, @price=20,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.625 Flintlock (Baker)',@weigth=0.062, @price=0.4,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.68 FN',@weigth=0.019, @price=1.5,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.68 Paintball',@weigth=0.0068, @price=0.05,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.700 Nitro Express (17.8x89mmR)',@weigth=0.25, @price=75,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.75 Flintlock (Brown Bess)',@weigth=0.09, @price=0.4,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.75 Flintlock (Rigby)',@weigth=0.075, @price=0.5,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'1" Flare (25.4x107mmR)',@weigth=0.2, @price=1,@sClass=N'Гранатомёты'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'1" Gatling (25.5x97mmR)',@weigth=0.82, @price=10,@sClass=N'Автоматические Пушки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'1.5" Caplock (Greener)',@weigth=5, @price=10,@sClass=N'Автоматические Пушки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'10.75x58mmR Berdan',@weigth=0.088, @price=1,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'10.75x68mm Mauser',@weigth=0.088, @price=1.5,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'105x371mmR',@weigth=40, @price=75,@sClass=N'Автоматические Пушки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'106x607mmR',@weigth=38, @price=185,@sClass=N'Автоматические Пушки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'10-gauge 2.875" (19.7x73mmR)',@weigth=0.15, @price=1.3,@sClass=N'дробовики'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'10x25mm Auto',@weigth=0.042, @price=0.6,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'11.15x58mmR (.43 Spanish Remington)',@weigth=0.092, @price=1,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'11.4x50mmR (.43 Egyptian Remington)',@weigth=0.094, @price=1,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'11.75mm Girandoni',@weigth=0.021, @price=0.2,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'11-gauge Flintlock',@weigth=0.12, @price=0.5,@sClass=N'дробовики'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'11mm Syringe',@weigth=0.02, @price=15,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'12.7x108mm',@weigth=0.31, @price=5,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'12.7x77mm',@weigth=0.25, @price=1.6,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'120mm',@weigth=35.2, @price=60,@sClass=N'миномёты'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'125x408mmR',@weigth=73, @price=255,@sClass=N'Автоматические Пушки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'12-gauge 2.5" (18.5x63mmR)',@weigth=0.1, @price=0.5,@sClass=N'дробовики'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'12-gauge 2.75" (18.5x70mmR)',@weigth=0.11, @price=0.5,@sClass=N'дробовики'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'12-gauge 2.75" (18.5x70mmR)',@weigth=0.13, @price=0.7,@sClass=N'дробовики'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'12-gauge 3" (18.5x76mmR)',@weigth=0.18, @price=0.7,@sClass=N'дробовики'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'12-pounder Cannonlock',@weigth=15, @price=25,@sClass=N'Автоматические Пушки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'12x16mm Lefaucheux',@weigth=0.05, @price=0.5,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'13x36mm Gyrojet',@weigth=0.03, @price=7.50,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'13x92mmSR Mauser',@weigth=0.26, @price=4.4,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'14.5х114 мм (М41/44)',@weigth=0.44, @price=6.7,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'15.43x54mm Dreyse',@weigth=0.085, @price=0.4,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'16-gauge 2.75" (16.8x70mmR)',@weigth=0.09, @price=0.4,@sClass=N'дробовики'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'16-gauge Flintlock',@weigth=0.085, @price=0.5,@sClass=N'дробовики'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'17.1mm Flintlock (AN IX)',@weigth=0.076, @price=0.4,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'17.5mm Flintlock (Mle 1777)',@weigth=0.087, @price=0.4,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'2"2.25',@weigth=1, @price=15,@sClass=N'миномёты'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'2.5" Caplock (Screw-Gun)',@weigth=7.4, @price=11,@sClass=N'Автоматические Пушки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'20-gauge 2.5" (15.6x63mmR)',@weigth=0.07, @price=0.4,@sClass=N'дробовики'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'20-gauge 2.75" (15.6x70mmR)',@weigth=0.08, @price=0.4,@sClass=N'дробовики'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'20-gauge Caplock',@weigth=0.075, @price=0.4,@sClass=N'дробовики'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'20x102mm',@weigth=0.57, @price=10,@sClass=N'Автоматические Пушки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'20x110mmRB Oerlikon',@weigth=0.54, @price=10,@sClass=N'Автоматические Пушки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'20x138mmB Solothurn',@weigth=0.74, @price=10,@sClass=N'Автоматические Пушки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'20x28mm',@weigth=0.21, @price=6,@sClass=N'Гранатомёты'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'20x82mm Mauser',@weigth=0.45, @price=8,@sClass=N'Автоматические Пушки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'25x137mm Oerlikon',@weigth=1.1, @price=15,@sClass=N'Автоматические Пушки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'25x59mmB',@weigth=0.37, @price=7.50,@sClass=N'Гранатомёты'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'26.5x103mmR',@weigth=0.22, @price=1,@sClass=N'Гранатомёты'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'3"10',@weigth=1, @price=35,@sClass=N'миномёты'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'30x28mmB',@weigth=0.77, @price=7,@sClass=N'Гранатомёты'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'32-gauge 2.75" (12.5x70mmR)',@weigth=0.06, @price=0.4,@sClass=N'дробовики'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'37x122mmR',@weigth=0.37, @price=5,@sClass=N'Гранатомёты'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'37x249mmR',@weigth=2.9, @price=20,@sClass=N'Автоматические Пушки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'37x94mmR Hotchkiss',@weigth=1.4, @price=16.5,@sClass=N'Автоматические Пушки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'4.6x30mm Royal Ordnance',@weigth=0.013, @price=0.4,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'4.73x33mm Dynamit-Nobel',@weigth=0.011, @price=0.5,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'40mm VOG-25',@weigth=0.55, @price=5,@sClass=N'Гранатомёты'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'40x53mmSR',@weigth=0.75, @price=7.50,@sClass=N'Гранатомёты'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'5.45x39mm',@weigth=0.023, @price=0.4,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'5.66x39mm',@weigth=0.062, @price=2,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'5.6x57mmB',@weigth=0.016, @price=1,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'5.7x26mm Usel',@weigth=0.011, @price=0.4,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'5.7x28mm Fabrique Nationale',@weigth=0.013, @price=0.4,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'5.8x42mm',@weigth=0.028, @price=0.5,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'52mm',@weigth=1.7, @price=15,@sClass=N'миномёты'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'57x305mmR',@weigth=5.5, @price=70,@sClass=N'противотанковые пушки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'6.5x55mm Mauser',@weigth=0.053, @price=0.8,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'60mm',@weigth=3.2, @price=20,@sClass=N'миномёты'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'6x60mm Lee (.236 Navy)',@weigth=0.044, @price=0.8,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'7.5x54mm MAS',@weigth=0.053, @price=0.8,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'7.62x25mm Tokarev',@weigth=0.024, @price=0.2,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'7.62x39mm',@weigth=0.036, @price=0.6,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'7.62x39mmR Nagant',@weigth=0.028, @price=0.2,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'7.62x42mm',@weigth=0.053, @price=0.5,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'7.62x54mmR Mosin',@weigth=0.05, @price=0.8,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'7.63x25mm Mauser',@weigth=0.023, @price=0.2,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'7.65x21mm Parabellum',@weigth=0.023, @price=0.2,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'7.65x53mm Mauser',@weigth=0.053, @price=0.8,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'7.7x58mm Arisaka',@weigth=0.049, @price=0.8,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'7.7x58mmSR Arisaka',@weigth=0.061, @price=0.8,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'7.92x33mm Kurz',@weigth=0.037, @price=0.6,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'7.92x57mm Mauser',@weigth=0.059, @price=0.8,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'75x350mmR',@weigth=20, @price=55,@sClass=N'Автоматические Пушки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'75x495mmR',@weigth=23, @price=60,@sClass=N'Автоматические Пушки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'76.2x539mmR (3")',@weigth=24, @price=60,@sClass=N'Автоматические Пушки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'7x57mm Mauser',@weigth=0.054, @price=0.8,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'7x64mmB Remington Magnum',@weigth=0.062, @price=1.5,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'81mm',@weigth=11.7, @price=35,@sClass=N'миномёты'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'82mm',@weigth=7.4, @price=25,@sClass=N'миномёты'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'84x250mmR',@weigth=5.7, @price=75,@sClass=N'противотанковые пушки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'8-bore (21.2x70mmR)',@weigth=0.26, @price=4,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'8x21mm Nambu',@weigth=0.025, @price=0.2,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'8x50mmR Lebel',@weigth=0.061, @price=0.8,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'8x50mmR Mannlicher',@weigth=0.062, @price=0.8,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'8x58mmR Krag',@weigth=0.064, @price=0.8,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'8x60mm Mauser',@weigth=0.055, @price=0.8,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'8x63mm Bofors',@weigth=0.064, @price=1,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'9.3x74mmR',@weigth=0.074, @price=2,@sClass=N'винтовки'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'9x18mm Makarov',@weigth=0.022, @price=0.2,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'9x19mm Parabellum',@weigth=0.026, @price=0.3,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'9x21mm Gyurza',@weigth=0.024, @price=0.4,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'9x23mm Bergmann-Bayard',@weigth=0.027, @price=0.3,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'9x25mm Mauser',@weigth=0.029, @price=0.4,@sClass=N'пистолет'
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'9x39mm',@weigth=0.051, @price=0.5,@sClass=N'винтовки'
GO