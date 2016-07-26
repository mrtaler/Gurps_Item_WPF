--
-- Скрипт сгенерирован Devart dbForge Studio for SQL Server, Версия 5.2.177.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/sql/studio
-- Дата скрипта: 26.07.2016 20:34:48
-- Версия сервера: 12.00.0811
-- Версия клиента: 
--



USE Item1
 
 
--select 'alter table ' + 
--  object_name(parent_object_id) 
--  + ' drop constraint ' + 
--  name from sys.foreign_keys
  

SET NOCOUNT ON;
DECLARE @SQL NVARCHAR(MAX)=N'';

SELECT @SQL=@SQL+N'ALTER TABLE'+QUOTENAME(CTU.TABLE_CATALOG)+N'.'+QUOTENAME(CTU.TABLE_SCHEMA)+N'.'+QUOTENAME(CTU.TABLE_NAME)+N'DROP CONSTRAINT'+QUOTENAME(RC.CONSTRAINT_NAME)+N';'+NCHAR(0x0D)+NCHAR(0x0A)
FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS RC
JOIN INFORMATION_SCHEMA.CONSTRAINT_TABLE_USAGE CTU
  ON RC.CONSTRAINT_CATALOG=CTU.CONSTRAINT_CATALOG
 AND RC.CONSTRAINT_SCHEMA=CTU.CONSTRAINT_SCHEMA
 AND RC.CONSTRAINT_NAME=CTU.CONSTRAINT_NAME;

IF @SQL>N'' EXECUTE(@SQL);

SET @SQL=N'';
SELECT @SQL=@SQL+N','+QUOTENAME(T.TABLE_SCHEMA)+N'.'+QUOTENAME(T.TABLE_NAME)
FROM INFORMATION_SCHEMA.TABLES T
WHERE TABLE_TYPE=N'BASE TABLE';

IF @SQL>N''
BEGIN
 SET @SQL=N'DROP TABLE'+STUFF(@SQL,1,1,N'')+';';
 EXECUTE(@SQL);
END;


IF OBJECT_ID(N'dbo.NEW_ITEM', 'P') IS NOT NULL
  EXEC sp_executesql N'DROP PROCEDURE dbo.NEW_ITEM'
GO
IF OBJECT_ID(N'dbo.NEW_ITEM_att', 'P') IS NOT NULL
  EXEC sp_executesql N'DROP PROCEDURE dbo.NEW_ITEM_att'
GO
IF OBJECT_ID(N'dbo.NEW_ITEMWeap', 'P') IS NOT NULL
  EXEC sp_executesql N'DROP PROCEDURE dbo.NEW_ITEMWeap'
GO
IF OBJECT_ID(N'dbo.NEW_ITEM_Ammo', 'P') IS NOT NULL
  EXEC sp_executesql N'DROP PROCEDURE dbo.NEW_ITEM_Ammo'
GO

--
-- Создать схему "CharDB"
--
IF SCHEMA_ID(N'CharDB') IS NULL
  EXEC sp_executesql N'CREATE SCHEMA CharDB AUTHORIZATION dbo'
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
GO

--
-- Создать индекс "IX_FK_Calibre" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать индекс "IX_FK_Calibre" для объекта типа таблица "dbo.ITEM"')
GO
CREATE INDEX IX_FK_Calibre
  ON dbo.ITEM (ubCalibre)
GO

--
-- Создать индекс "IX_FK_ITEM_Clothes" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать индекс "IX_FK_ITEM_Clothes" для объекта типа таблица "dbo.ITEM"')
GO
CREATE INDEX IX_FK_ITEM_Clothes
  ON dbo.ITEM (clothestype)
GO

--
-- Создать индекс "IX_FK_ITEM_DrugType" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать индекс "IX_FK_ITEM_DrugType" для объекта типа таблица "dbo.ITEM"')
GO
CREATE INDEX IX_FK_ITEM_DrugType
  ON dbo.ITEM (DrugType)
GO

--
-- Создать индекс "IX_FK_ITEM_Food" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать индекс "IX_FK_ITEM_Food" для объекта типа таблица "dbo.ITEM"')
GO
CREATE INDEX IX_FK_ITEM_Food
  ON dbo.ITEM (FoodType)
GO

--
-- Создать индекс "IX_FK_Item_ItemClass" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать индекс "IX_FK_Item_ItemClass" для объекта типа таблица "dbo.ITEM"')
GO
CREATE INDEX IX_FK_Item_ItemClass
  ON dbo.ITEM (usItemClass)
GO

--
-- Создать индекс "IX_FK_ITEM_LC" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать индекс "IX_FK_ITEM_LC" для объекта типа таблица "dbo.ITEM"')
GO
CREATE INDEX IX_FK_ITEM_LC
  ON dbo.ITEM (LC)
GO

--
-- Создать индекс "IX_FK_ITEM_TL" для объекта типа таблица "dbo.ITEM"
--
PRINT (N'Создать индекс "IX_FK_ITEM_TL" для объекта типа таблица "dbo.ITEM"')
GO
CREATE INDEX IX_FK_ITEM_TL
  ON dbo.ITEM (TL)
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
GO

--
-- Создать индекс "IX_FK_G_SubAttachClass_ATTACHMENTSLOT1" для объекта типа таблица "dbo.G_SubAttachClass"
--
PRINT (N'Создать индекс "IX_FK_G_SubAttachClass_ATTACHMENTSLOT1" для объекта типа таблица "dbo.G_SubAttachClass"')
GO
CREATE INDEX IX_FK_G_SubAttachClass_ATTACHMENTSLOT1
  ON dbo.G_SubAttachClass (ATTACHMENTSLOT)
GO

--
-- Создать индекс "IX_FK_G_SubAttachClass_G_AttachClass" для объекта типа таблица "dbo.G_SubAttachClass"
--
PRINT (N'Создать индекс "IX_FK_G_SubAttachClass_G_AttachClass" для объекта типа таблица "dbo.G_SubAttachClass"')
GO
CREATE INDEX IX_FK_G_SubAttachClass_G_AttachClass
  ON dbo.G_SubAttachClass (AttachClass)
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
GO

--
-- Создать таблицу "dbo.CharacterDB"
--
PRINT (N'Создать таблицу "dbo.CharacterDB"')
GO
CREATE TABLE CharDB.CharacterDB (
  id int IDENTITY,
  name nvarchar(80) NULL,
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
GO

--
-- Создать процедуру "dbo.NEW_ITEM_Ammo"
--
GO
PRINT (N'Создать процедуру "dbo.NEW_ITEM_Ammo"')
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
GO

--
-- Создать индекс "IX_FK_Attachmentmount_NasAttachmentClass1" для объекта типа таблица "dbo.Attachmentmount"
--
PRINT (N'Создать индекс "IX_FK_Attachmentmount_NasAttachmentClass1" для объекта типа таблица "dbo.Attachmentmount"')
GO
CREATE INDEX IX_FK_Attachmentmount_NasAttachmentClass1
  ON dbo.Attachmentmount (idAttacClass)
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
GO

--
-- Создать индекс "IX_FK_Attachment_Attachmentmount" для объекта типа таблица "dbo.Attachment"
--
PRINT (N'Создать индекс "IX_FK_Attachment_Attachmentmount" для объекта типа таблица "dbo.Attachment"')
GO
CREATE INDEX IX_FK_Attachment_Attachmentmount
  ON dbo.Attachment (id_Attachmentmount)
GO

--
-- Создать индекс "IX_FK_Attachment_G_AttachClass" для объекта типа таблица "dbo.Attachment"
--
PRINT (N'Создать индекс "IX_FK_Attachment_G_AttachClass" для объекта типа таблица "dbo.Attachment"')
GO
CREATE INDEX IX_FK_Attachment_G_AttachClass
  ON dbo.Attachment (G_AttachClass)
GO

--
-- Создать индекс "IX_FK_rAttachmentClass" для объекта типа таблица "dbo.Attachment"
--
PRINT (N'Создать индекс "IX_FK_rAttachmentClass" для объекта типа таблица "dbo.Attachment"')
GO
CREATE INDEX IX_FK_rAttachmentClass
  ON dbo.Attachment (rAttachmentClass)
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
GO

--
-- Создать индекс "IX_FK_G_AvAttachClass_G_AttachClass" для объекта типа таблица "dbo.G_AvAttachClass"
--
PRINT (N'Создать индекс "IX_FK_G_AvAttachClass_G_AttachClass" для объекта типа таблица "dbo.G_AvAttachClass"')
GO
CREATE INDEX IX_FK_G_AvAttachClass_G_AttachClass
  ON dbo.G_AvAttachClass (id_AttachClass)
GO

--
-- Создать индекс "IX_FK_G_AvAttachClass_G_SubAttachClass" для объекта типа таблица "dbo.G_AvAttachClass"
--
PRINT (N'Создать индекс "IX_FK_G_AvAttachClass_G_SubAttachClass" для объекта типа таблица "dbo.G_AvAttachClass"')
GO
CREATE INDEX IX_FK_G_AvAttachClass_G_SubAttachClass
  ON dbo.G_AvAttachClass (id_GSubClass)
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
GO

--
-- Создать индекс "IX_FK_LOADBEARINGEQUIPMENT" для объекта типа таблица "dbo.LOADBEARINGEQUIPMENT"
--
PRINT (N'Создать индекс "IX_FK_LOADBEARINGEQUIPMENT" для объекта типа таблица "dbo.LOADBEARINGEQUIPMENT"')
GO
CREATE INDEX IX_FK_LOADBEARINGEQUIPMENT
  ON dbo.LOADBEARINGEQUIPMENT (LBEClass)
GO

--
-- Создать таблицу "dbo.InventoryOfChar"
--
PRINT (N'Создать таблицу "dbo.InventoryOfChar"')
GO
CREATE TABLE CharDB.InventoryOfChar (
  id int NOT NULL,
  IdCharacter int NOT NULL,
  IdItem int NOT NULL,
  Count bigint NOT NULL DEFAULT (1),
  CONSTRAINT PK_InventoryOfChar_id PRIMARY KEY CLUSTERED (id)
)
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
GO

--
-- Создать индекс "IX_FK_EXPLOSIVE" для объекта типа таблица "dbo.EXPLOSIVE"
--
PRINT (N'Создать индекс "IX_FK_EXPLOSIVE" для объекта типа таблица "dbo.EXPLOSIVE"')
GO
CREATE INDEX IX_FK_EXPLOSIVE
  ON dbo.EXPLOSIVE (ubType)
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
GO

--
-- Создать индекс "IX_FK_AVeAttachmentmount" для объекта типа таблица "dbo.AvailableAttachSlot"
--
PRINT (N'Создать индекс "IX_FK_AVeAttachmentmount" для объекта типа таблица "dbo.AvailableAttachSlot"')
GO
CREATE INDEX IX_FK_AVeAttachmentmount
  ON dbo.AvailableAttachSlot (rAttachmentmount)
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
GO

--
-- Создать индекс "IX_FK_ARMOUR" для объекта типа таблица "dbo.ARMOUR"
--
PRINT (N'Создать индекс "IX_FK_ARMOUR" для объекта типа таблица "dbo.ARMOUR"')
GO
CREATE INDEX IX_FK_ARMOUR
  ON dbo.ARMOUR (ubArmourClass)
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
-- Создать внешний ключ "FK_InventoryOfChar_CharacterDB_id" для объекта типа таблица "dbo.InventoryOfChar"
--
PRINT (N'Создать внешний ключ "FK_InventoryOfChar_CharacterDB_id" для объекта типа таблица "dbo.InventoryOfChar"')
GO
ALTER TABLE CharDB.InventoryOfChar
  ADD CONSTRAINT FK_InventoryOfChar_CharacterDB_id FOREIGN KEY (IdCharacter) REFERENCES CharDB.CharacterDB (id) ON DELETE CASCADE ON UPDATE CASCADE
GO

--
-- Создать внешний ключ "FK_InventoryOfChar_ITEM_uiIndex" для объекта типа таблица "dbo.InventoryOfChar"
--
PRINT (N'Создать внешний ключ "FK_InventoryOfChar_ITEM_uiIndex" для объекта типа таблица "dbo.InventoryOfChar"')
GO
ALTER TABLE CharDB.InventoryOfChar
  ADD CONSTRAINT FK_InventoryOfChar_ITEM_uiIndex FOREIGN KEY (IdItem) REFERENCES dbo.ITEM (uiIndex) ON DELETE CASCADE ON UPDATE CASCADE
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
ALTER TABLE dbo.G_AvAttachClass WITH CHECK
  ADD CONSTRAINT FK_G_AvAttachClass_Attachment FOREIGN KEY (id_attach) REFERENCES dbo.Attachment (uiIndex) ON DELETE CASCADE
GO

--
-- Создать внешний ключ "FK_G_AvAttachClass_G_SubAttachClass" для объекта типа таблица "dbo.G_AvAttachClass"
--
PRINT (N'Создать внешний ключ "FK_G_AvAttachClass_G_SubAttachClass" для объекта типа таблица "dbo.G_AvAttachClass"')
GO
ALTER TABLE dbo.G_AvAttachClass WITH CHECK
  ADD CONSTRAINT FK_G_AvAttachClass_G_SubAttachClass FOREIGN KEY (id_GSubClass) REFERENCES dbo.G_SubAttachClass (id)
GO

--
-- Создать внешний ключ "FK_AnyBoxNameType_AnyBoxNameType_id" для объекта типа таблица "dbo.AnyBoxNameType"
--
PRINT (N'Создать внешний ключ "FK_AnyBoxNameType_AnyBoxNameType_id" для объекта типа таблица "dbo.AnyBoxNameType"')
GO
ALTER TABLE dbo.AnyBoxNameType WITH CHECK
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