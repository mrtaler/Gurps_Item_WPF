--
-- Скрипт сгенерирован Devart dbForge Studio for SQL Server, Версия 5.1.178.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/sql/studio
-- Дата скрипта: 27.07.2016 16:31:53
-- Версия сервера: 10.00.5538
-- Версия клиента: 
--
USE Item1
go

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
-- Создать таблицу "CharDB.TypeAdvSumm"
--
PRINT (N'Создать таблицу "CharDB.TypeAdvSumm"')
GO
CREATE TABLE CharDB.TypeAdvSumm (
  IdAdv int NULL,
  idType int NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "CharDB.TypeAdv"
--
PRINT (N'Создать таблицу "CharDB.TypeAdv"')
GO
CREATE TABLE CharDB.TypeAdv (
  id int IDENTITY,
  Name nvarchar(50) NULL,
  CONSTRAINT PK_TypeAdv PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу "CharDB.TabooAdv"
--
PRINT (N'Создать таблицу "CharDB.TabooAdv"')
GO
CREATE TABLE CharDB.TabooAdv (
  idInAdv int NULL,
  idOutAdv int NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "CharDB.SkillDifficulty"
--
PRINT (N'Создать таблицу "CharDB.SkillDifficulty"')
GO
CREATE TABLE CharDB.SkillDifficulty (
  id int IDENTITY,
  idDefaultstat int NULL,
  idDifficulty int NULL,
  De nvarchar(50) NULL,
  CONSTRAINT PK_SKILLTYPES PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу "CharDB.SkillBonus"
--
PRINT (N'Создать таблицу "CharDB.SkillBonus"')
GO
CREATE TABLE CharDB.SkillBonus (
  idAdvantage int NULL,
  idSkill int NULL,
  amount varchar(50) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "CharDB.Skill"
--
PRINT (N'Создать таблицу "CharDB.Skill"')
GO
CREATE TABLE CharDB.Skill (
  Id int IDENTITY,
  NameSkill nvarchar(50) NULL,
  NameSpec nvarchar(50) NULL,
  CONSTRAINT PK_Skill PRIMARY KEY CLUSTERED (Id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу "CharDB.NeedSkill"
--
PRINT (N'Создать таблицу "CharDB.NeedSkill"')
GO
CREATE TABLE CharDB.NeedSkill (
  idSkillIn int NULL,
  idSkillOut int NULL,
  Needed nvarchar(50) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "CharDB.InventoryOfChar"
--
PRINT (N'Создать таблицу "CharDB.InventoryOfChar"')
GO
CREATE TABLE CharDB.InventoryOfChar (
  id int NOT NULL,
  IdCharacter int NOT NULL,
  IdItem int NOT NULL,
  Count bigint NOT NULL DEFAULT (1),
  CONSTRAINT PK_InventoryOfChar_id PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу "CharDB.GurpsSkillCategory88"
--
PRINT (N'Создать таблицу "CharDB.GurpsSkillCategory88"')
GO
CREATE TABLE CharDB.GurpsSkillCategory88 (
  idSkill int NULL,
  idSkillCategory int NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "CharDB.GurpsSkillCategory"
--
PRINT (N'Создать таблицу "CharDB.GurpsSkillCategory"')
GO
CREATE TABLE CharDB.GurpsSkillCategory (
  id int IDENTITY,
  NamelCategory nvarchar(50) NULL,
  CONSTRAINT PK_GurpsSkillCategory PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу "CharDB.GurpsSkill"
--
PRINT (N'Создать таблицу "CharDB.GurpsSkill"')
GO
CREATE TABLE CharDB.GurpsSkill (
  id int IDENTITY,
  NameSkill nvarchar(50) NULL,
  idDifficulty int NULL,
  Points int NULL,
  Reference nvarchar(50) NULL,
  idSpecialization int NULL,
  TypeSpecialization bit NULL DEFAULT (0),
  DefaultModifier int NULL,
  CONSTRAINT PK_GurpsSkill PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу "CharDB.GurpsAdvCategory"
--
PRINT (N'Создать таблицу "CharDB.GurpsAdvCategory"')
GO
CREATE TABLE CharDB.GurpsAdvCategory (
  id int IDENTITY,
  NameOfCategory nvarchar(50) NULL,
  CONSTRAINT PK_GurpsAdvCategory PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу "CharDB.Difficulty"
--
PRINT (N'Создать таблицу "CharDB.Difficulty"')
GO
CREATE TABLE CharDB.Difficulty (
  id int IDENTITY,
  Name nvarchar(50) NULL,
  cost nvarchar(50) NULL,
  base nvarchar(50) NULL,
  CONSTRAINT PK_Difficulty PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу "CharDB.DefaultSkill"
--
PRINT (N'Создать таблицу "CharDB.DefaultSkill"')
GO
CREATE TABLE CharDB.DefaultSkill (
  idSkillIn int NULL,
  idSkillOut int NULL,
  Modifier int NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "CharDB.CharacterDB"
--
PRINT (N'Создать таблицу "CharDB.CharacterDB"')
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
ON [PRIMARY]
GO

--
-- Создать таблицу "CharDB.AttributeBonus"
--
PRINT (N'Создать таблицу "CharDB.AttributeBonus"')
GO
CREATE TABLE CharDB.AttributeBonus (
  idAdvantage int NOT NULL,
  idAttribute int NULL,
  amount int NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "CharDB.Attribute"
--
PRINT (N'Создать таблицу "CharDB.Attribute"')
GO
CREATE TABLE CharDB.Attribute (
  id int IDENTITY,
  Name varchar(50) NOT NULL,
  CONSTRAINT PK_AttributeBonus PRIMARY KEY CLUSTERED (id)
)
ON [PRIMARY]
GO

--
-- Создать таблицу "CharDB.AdvantageMods"
--
PRINT (N'Создать таблицу "CharDB.AdvantageMods"')
GO
CREATE TABLE CharDB.AdvantageMods (
  idAdvantage int NULL,
  NameMods nvarchar(50) NULL,
  CostType nvarchar(50) NULL,
  CostAmount int NULL,
  affects nvarchar(50) NULL,
  Referense nvarchar(50) NULL,
  notes nvarchar(500) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "CharDB.Advantage"
--
PRINT (N'Создать таблицу "CharDB.Advantage"')
GO
CREATE TABLE CharDB.Advantage (
  id int IDENTITY,
  Name nvarchar(50) NULL,
  idCategory int NULL,
  Cost int NULL,
  idType int NULL,
  Referense nvarchar(50) NULL,
  Notes nvarchar(500) NULL,
  ParentAdv int NULL,
  CONSTRAINT PK_Advantage PRIMARY KEY CLUSTERED (id)
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
-- Вывод данных для таблицы Advantage
--
SET IDENTITY_INSERT CharDB.Advantage ON
GO
INSERT CharDB.Advantage(id, Name, idCategory, Cost, idType, Referense, Notes, ParentAdv) VALUES (1, N'Combat Reflexes', 1, 15, NULL, N'B43', N'Never freeze; +6 on all IQ rolls to wake up or to recover from surprise or mental stun; Your side gets +1 to initiative rolls (+2 if you''re the leader)', NULL)
INSERT CharDB.Advantage(id, Name, idCategory, Cost, idType, Referense, Notes, ParentAdv) VALUES (2, N'Enhanced Time Sense', 1, 45, NULL, N'B52', N'You immediately act in combat before those without Enhanced Time Sense; Never freeze; +6 on all IQ rolls to wake up or to recover from surprise or mental stun; Your side gets +1 to initiative rolls (+2 if you''re the leader)', NULL)
INSERT CharDB.Advantage(id, Name, idCategory, Cost, idType, Referense, Notes, ParentAdv) VALUES (3, N'360&#176 Vision', 1, 25, NULL, N'B34', N'360° Vision, 25, mods(360° Vision), page(B34), cat(Exotic, Physical), taboo(DI:Blindness, AD:Peripheral Vision)', NULL)
INSERT CharDB.Advantage(id, Name, idCategory, Cost, idType, Referense, Notes, ParentAdv) VALUES (4, N'Absent-Mindedness', 2, -15, NULL, N'B122', NULL, NULL)
INSERT CharDB.Advantage(id, Name, idCategory, Cost, idType, Referense, Notes, ParentAdv) VALUES (5, N'Absolute Direction', 1, 5, NULL, N'B34', NULL, NULL)
INSERT CharDB.Advantage(id, Name, idCategory, Cost, idType, Referense, Notes, ParentAdv) VALUES (6, N'3D Spatial Sense', NULL, 5, NULL, NULL, NULL, 5)
INSERT CharDB.Advantage(id, Name, idCategory, Cost, idType, Referense, Notes, ParentAdv) VALUES (7, N'Absolute Timing', 1, 2, NULL, N'B35', NULL, NULL)
INSERT CharDB.Advantage(id, Name, idCategory, Cost, idType, Referense, Notes, ParentAdv) VALUES (8, N'Acceleration Weakness', 3, -1, NULL, N'B165', NULL, NULL)
GO
SET IDENTITY_INSERT CharDB.Advantage OFF
GO
-- 
-- Вывод данных для таблицы AdvantageMods
--
INSERT CharDB.AdvantageMods(idAdvantage, NameMods, CostType, CostAmount, affects, Referense, notes) VALUES (3, N'Easy to hit', N'%', -20, N'total', N'B34', N'Others can target your eyes at -6')
INSERT CharDB.AdvantageMods(idAdvantage, NameMods, CostType, CostAmount, affects, Referense, notes) VALUES (3, N'Panoptic 1', N'%', 20, N'total', N'P39', NULL)
INSERT CharDB.AdvantageMods(idAdvantage, NameMods, CostType, CostAmount, affects, Referense, notes) VALUES (3, N'Panoptic 2', N'%', 60, N'total', N'P39', NULL)
INSERT CharDB.AdvantageMods(idAdvantage, NameMods, CostType, CostAmount, affects, Referense, notes) VALUES (5, N'Requires signal', N'%', -20, N'total', N'B34', NULL)
INSERT CharDB.AdvantageMods(idAdvantage, NameMods, CostType, CostAmount, affects, Referense, notes) VALUES (7, N'Chronolocation', N'P', 3, N'total', N'B35', NULL)
GO
-- 
-- Вывод данных для таблицы Attribute
--
SET IDENTITY_INSERT CharDB.Attribute ON
GO
INSERT CharDB.Attribute(id, Name) VALUES (1, N'dodge')
INSERT CharDB.Attribute(id, Name) VALUES (2, N'parry')
INSERT CharDB.Attribute(id, Name) VALUES (3, N'block')
INSERT CharDB.Attribute(id, Name) VALUES (4, N'fright check')
INSERT CharDB.Attribute(id, Name) VALUES (5, N'ST')
INSERT CharDB.Attribute(id, Name) VALUES (6, N'DX')
INSERT CharDB.Attribute(id, Name) VALUES (7, N'IQ')
INSERT CharDB.Attribute(id, Name) VALUES (8, N'HT')
GO
SET IDENTITY_INSERT CharDB.Attribute OFF
GO
-- 
-- Вывод данных для таблицы AttributeBonus
--
INSERT CharDB.AttributeBonus(idAdvantage, idAttribute, amount) VALUES (1, 1, 1)
INSERT CharDB.AttributeBonus(idAdvantage, idAttribute, amount) VALUES (1, 2, 1)
INSERT CharDB.AttributeBonus(idAdvantage, idAttribute, amount) VALUES (1, 3, 1)
INSERT CharDB.AttributeBonus(idAdvantage, idAttribute, amount) VALUES (1, 4, 2)
INSERT CharDB.AttributeBonus(idAdvantage, idAttribute, amount) VALUES (2, 1, 1)
INSERT CharDB.AttributeBonus(idAdvantage, idAttribute, amount) VALUES (2, 2, 1)
INSERT CharDB.AttributeBonus(idAdvantage, idAttribute, amount) VALUES (2, 3, 1)
INSERT CharDB.AttributeBonus(idAdvantage, idAttribute, amount) VALUES (2, 4, 2)
GO
-- 
-- Вывод данных для таблицы CharacterDB
--
-- Таблица Item1.CharDB.CharacterDB не содержит данных
-- 
-- Вывод данных для таблицы DefaultSkill
--
INSERT CharDB.DefaultSkill(idSkillIn, idSkillOut, Modifier) VALUES (2, 2, -4)
INSERT CharDB.DefaultSkill(idSkillIn, idSkillOut, Modifier) VALUES (26, 2, -6)
INSERT CharDB.DefaultSkill(idSkillIn, idSkillOut, Modifier) VALUES (2, 26, -3)
INSERT CharDB.DefaultSkill(idSkillIn, idSkillOut, Modifier) VALUES (3, 26, -3)
INSERT CharDB.DefaultSkill(idSkillIn, idSkillOut, Modifier) VALUES (5, 26, -3)
INSERT CharDB.DefaultSkill(idSkillIn, idSkillOut, Modifier) VALUES (5, 26, -3)
INSERT CharDB.DefaultSkill(idSkillIn, idSkillOut, Modifier) VALUES (6, 26, -3)
INSERT CharDB.DefaultSkill(idSkillIn, idSkillOut, Modifier) VALUES (7, 26, -3)
INSERT CharDB.DefaultSkill(idSkillIn, idSkillOut, Modifier) VALUES (8, 26, -3)
INSERT CharDB.DefaultSkill(idSkillIn, idSkillOut, Modifier) VALUES (9, 26, -3)
INSERT CharDB.DefaultSkill(idSkillIn, idSkillOut, Modifier) VALUES (10, 26, -3)
INSERT CharDB.DefaultSkill(idSkillIn, idSkillOut, Modifier) VALUES (11, 26, -3)
INSERT CharDB.DefaultSkill(idSkillIn, idSkillOut, Modifier) VALUES (12, 26, -3)
INSERT CharDB.DefaultSkill(idSkillIn, idSkillOut, Modifier) VALUES (13, 26, -3)
INSERT CharDB.DefaultSkill(idSkillIn, idSkillOut, Modifier) VALUES (14, 26, -3)
INSERT CharDB.DefaultSkill(idSkillIn, idSkillOut, Modifier) VALUES (15, 26, -3)
INSERT CharDB.DefaultSkill(idSkillIn, idSkillOut, Modifier) VALUES (16, 26, -3)
INSERT CharDB.DefaultSkill(idSkillIn, idSkillOut, Modifier) VALUES (17, 26, -3)
GO
-- 
-- Вывод данных для таблицы Difficulty
--
SET IDENTITY_INSERT CharDB.Difficulty ON
GO
INSERT CharDB.Difficulty(id, Name, cost, base) VALUES (1, N'E', N'1/2/4/8', N'-1')
INSERT CharDB.Difficulty(id, Name, cost, base) VALUES (2, N'A', N'1/2/4/8', N'-2')
INSERT CharDB.Difficulty(id, Name, cost, base) VALUES (3, N'H', N'1/2/4/8', N'-3')
INSERT CharDB.Difficulty(id, Name, cost, base) VALUES (4, N'VH', N'1/2/4/8', N'-4')
INSERT CharDB.Difficulty(id, Name, cost, base) VALUES (5, N'WC', N'3/6/12/24', N'-4')
GO
SET IDENTITY_INSERT CharDB.Difficulty OFF
GO
-- 
-- Вывод данных для таблицы GurpsAdvCategory
--
SET IDENTITY_INSERT CharDB.GurpsAdvCategory ON
GO
INSERT CharDB.GurpsAdvCategory(id, NameOfCategory) VALUES (1, N'Advantage')
INSERT CharDB.GurpsAdvCategory(id, NameOfCategory) VALUES (2, N'Disadvantage')
INSERT CharDB.GurpsAdvCategory(id, NameOfCategory) VALUES (3, N'Quirk')
GO
SET IDENTITY_INSERT CharDB.GurpsAdvCategory OFF
GO
-- 
-- Вывод данных для таблицы GurpsSkill
--
SET IDENTITY_INSERT CharDB.GurpsSkill ON
GO
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (2, N'Electronics Repair', 12, 1, N'B190', NULL, CONVERT(bit, 'True'), -5)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (3, N'Communications', NULL, NULL, NULL, 2, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (4, N'Computer', NULL, NULL, NULL, 2, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (5, N'Electronic Warfare', NULL, NULL, NULL, 2, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (6, N'Force Shields', NULL, NULL, NULL, 2, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (7, N'Matter Transmitters', NULL, NULL, NULL, 2, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (8, N'Media', NULL, NULL, NULL, 2, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (9, N'Medical', NULL, NULL, NULL, 2, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (10, N'Parachronic', NULL, NULL, NULL, 2, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (11, N'Psychotronics', NULL, NULL, NULL, 2, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (12, N'Scientific', NULL, NULL, NULL, 2, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (13, N'Security', NULL, NULL, NULL, 2, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (14, N'Sensors', NULL, NULL, NULL, 2, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (15, N'Sonar', NULL, NULL, NULL, 2, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (16, N'Surveillance', NULL, NULL, NULL, 2, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (17, N'Temporal', NULL, NULL, NULL, 2, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (18, N'Engineer', 13, 1, N'B190', NULL, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (19, N'mathematik', NULL, NULL, NULL, NULL, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (20, N'Artillery', NULL, NULL, NULL, 18, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (21, N'Automobiles', NULL, NULL, NULL, 18, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (22, N'Civil', NULL, NULL, NULL, 18, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (23, N'Clockwork', NULL, NULL, NULL, 18, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (24, N'Combat', NULL, NULL, NULL, 18, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (25, N'Electrical', NULL, NULL, NULL, 18, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (26, N'Electronics', NULL, NULL, NULL, 18, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (27, N'Materials', NULL, NULL, NULL, 18, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (28, N'Microtechnology', NULL, NULL, NULL, 18, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (29, N'Mining', NULL, NULL, NULL, 18, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (30, N'Nanotechnology', NULL, NULL, NULL, 18, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (31, N'Parachronic', NULL, NULL, NULL, 18, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (32, N'Psychotronics', NULL, NULL, NULL, 18, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (33, N'Robotics', NULL, NULL, NULL, 18, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (34, N'Ships', NULL, NULL, NULL, 18, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (35, N'Small Arms', NULL, NULL, NULL, 18, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (36, N'Starships', NULL, NULL, NULL, 18, CONVERT(bit, 'False'), NULL)
INSERT CharDB.GurpsSkill(id, NameSkill, idDifficulty, Points, Reference, idSpecialization, TypeSpecialization, DefaultModifier) VALUES (37, N'Temporal', NULL, NULL, NULL, 18, CONVERT(bit, 'False'), NULL)
GO
SET IDENTITY_INSERT CharDB.GurpsSkill OFF
GO
-- 
-- Вывод данных для таблицы GurpsSkillCategory
--
SET IDENTITY_INSERT CharDB.GurpsSkillCategory ON
GO
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (1, N'Animal')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (2, N'Arts/Entertainment')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (3, N'Athletic')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (4, N'Athletic - Combat Art/Sport')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (5, N'* Combat Sport skills')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (6, N'Business')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (7, N'Combat/Weapons - Melee Combat')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (8, N'Combat/Weapons - Ranged Combat')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (9, N'Craft')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (10, N'Criminal/Street')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (11, N'Design/Invention')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (12, N'Esoteric')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (13, N'Everyman')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (14, N'Knowledge')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (15, N'Medical')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (16, N'Military')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (17, N'Natural Sciences')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (18, N'Occult/Magical')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (19, N'Outdoor/Exploration')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (20, N'* Land Survival skills')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (21, N'* Aquatic Survival skills')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (22, N'Plant')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (23, N'Police')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (24, N'Repair/Maintenance')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (25, N'Scholarly')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (26, N'Social')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (27, N'Social Sciences/Humanities')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (28, N'Spy')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (29, N'Technical')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (30, N'Vehicle')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (31, N'Techniques, Techniques - Combat')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (32, N'Techniques, Techniques - Noncombat')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (33, N'Wildcard!')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (34, N'Wildcard! - Magic')
INSERT CharDB.GurpsSkillCategory(id, NamelCategory) VALUES (35, N'Engineer')
GO
SET IDENTITY_INSERT CharDB.GurpsSkillCategory OFF
GO
-- 
-- Вывод данных для таблицы GurpsSkillCategory88
--
INSERT CharDB.GurpsSkillCategory88(idSkill, idSkillCategory) VALUES (2, 24)
INSERT CharDB.GurpsSkillCategory88(idSkill, idSkillCategory) VALUES (5, 16)
INSERT CharDB.GurpsSkillCategory88(idSkill, idSkillCategory) VALUES (18, 11)
INSERT CharDB.GurpsSkillCategory88(idSkill, idSkillCategory) VALUES (18, 35)
GO
-- 
-- Вывод данных для таблицы InventoryOfChar
--
-- Таблица Item1.CharDB.InventoryOfChar не содержит данных
-- 
-- Вывод данных для таблицы NeedSkill
--
INSERT CharDB.NeedSkill(idSkillIn, idSkillOut, Needed) VALUES (18, 19, N'>TL5')
INSERT CharDB.NeedSkill(idSkillIn, idSkillOut, Needed) VALUES (NULL, NULL, NULL)
GO
-- 
-- Вывод данных для таблицы Skill
--
SET IDENTITY_INSERT CharDB.Skill ON
GO
INSERT CharDB.Skill(Id, NameSkill, NameSpec) VALUES (1, N'fast-draw', NULL)
INSERT CharDB.Skill(Id, NameSkill, NameSpec) VALUES (2, N'body sense', NULL)
INSERT CharDB.Skill(Id, NameSkill, NameSpec) VALUES (3, N'navigation', N'air')
INSERT CharDB.Skill(Id, NameSkill, NameSpec) VALUES (4, N'navigation', N'land')
INSERT CharDB.Skill(Id, NameSkill, NameSpec) VALUES (5, N'navigation', N'sea')
INSERT CharDB.Skill(Id, NameSkill, NameSpec) VALUES (6, N'piloting', NULL)
INSERT CharDB.Skill(Id, NameSkill, NameSpec) VALUES (7, N'aerobatics', NULL)
INSERT CharDB.Skill(Id, NameSkill, NameSpec) VALUES (8, N'free fall', NULL)
INSERT CharDB.Skill(Id, NameSkill, NameSpec) VALUES (9, N'navigation', N'hyperspace')
INSERT CharDB.Skill(Id, NameSkill, NameSpec) VALUES (10, N'navigation', N'space')
GO
SET IDENTITY_INSERT CharDB.Skill OFF
GO
-- 
-- Вывод данных для таблицы SkillBonus
--
INSERT CharDB.SkillBonus(idAdvantage, idSkill, amount) VALUES (1, 1, N'1')
INSERT CharDB.SkillBonus(idAdvantage, idSkill, amount) VALUES (2, 1, N'1')
INSERT CharDB.SkillBonus(idAdvantage, idSkill, amount) VALUES (5, 5, N'3')
INSERT CharDB.SkillBonus(idAdvantage, idSkill, amount) VALUES (6, 6, N'1')
INSERT CharDB.SkillBonus(idAdvantage, idSkill, amount) VALUES (5, 2, N'3')
INSERT CharDB.SkillBonus(idAdvantage, idSkill, amount) VALUES (5, 3, N'3')
INSERT CharDB.SkillBonus(idAdvantage, idSkill, amount) VALUES (5, 4, N'3')
INSERT CharDB.SkillBonus(idAdvantage, idSkill, amount) VALUES (6, 7, N'2')
INSERT CharDB.SkillBonus(idAdvantage, idSkill, amount) VALUES (6, 8, N'2')
INSERT CharDB.SkillBonus(idAdvantage, idSkill, amount) VALUES (6, 9, N'2')
GO
-- 
-- Вывод данных для таблицы SkillDifficulty
--
SET IDENTITY_INSERT CharDB.SkillDifficulty ON
GO
INSERT CharDB.SkillDifficulty(id, idDefaultstat, idDifficulty, De) VALUES (1, 5, 1, N'ST/E')
INSERT CharDB.SkillDifficulty(id, idDefaultstat, idDifficulty, De) VALUES (2, 5, 2, N'ST/A')
INSERT CharDB.SkillDifficulty(id, idDefaultstat, idDifficulty, De) VALUES (3, 5, 3, N'ST/H')
INSERT CharDB.SkillDifficulty(id, idDefaultstat, idDifficulty, De) VALUES (4, 5, 4, N'ST/VH')
INSERT CharDB.SkillDifficulty(id, idDefaultstat, idDifficulty, De) VALUES (5, 5, 5, N'ST/WC')
INSERT CharDB.SkillDifficulty(id, idDefaultstat, idDifficulty, De) VALUES (6, 6, 1, N'DX/E')
INSERT CharDB.SkillDifficulty(id, idDefaultstat, idDifficulty, De) VALUES (7, 6, 2, N'DX/A')
INSERT CharDB.SkillDifficulty(id, idDefaultstat, idDifficulty, De) VALUES (8, 6, 3, N'DX/H')
INSERT CharDB.SkillDifficulty(id, idDefaultstat, idDifficulty, De) VALUES (9, 6, 4, N'DX/VH')
INSERT CharDB.SkillDifficulty(id, idDefaultstat, idDifficulty, De) VALUES (10, 6, 5, N'DX/WC')
INSERT CharDB.SkillDifficulty(id, idDefaultstat, idDifficulty, De) VALUES (11, 7, 1, N'IQ/E')
INSERT CharDB.SkillDifficulty(id, idDefaultstat, idDifficulty, De) VALUES (12, 7, 2, N'IQ/A')
INSERT CharDB.SkillDifficulty(id, idDefaultstat, idDifficulty, De) VALUES (13, 7, 3, N'IQ/H')
INSERT CharDB.SkillDifficulty(id, idDefaultstat, idDifficulty, De) VALUES (14, 7, 4, N'IQ/VH')
INSERT CharDB.SkillDifficulty(id, idDefaultstat, idDifficulty, De) VALUES (15, 7, 5, N'IQ/WC')
INSERT CharDB.SkillDifficulty(id, idDefaultstat, idDifficulty, De) VALUES (16, 8, 1, N'HT/E')
INSERT CharDB.SkillDifficulty(id, idDefaultstat, idDifficulty, De) VALUES (17, 8, 2, N'HT/A')
INSERT CharDB.SkillDifficulty(id, idDefaultstat, idDifficulty, De) VALUES (18, 8, 3, N'HT/H')
INSERT CharDB.SkillDifficulty(id, idDefaultstat, idDifficulty, De) VALUES (19, 8, 4, N'HT/VH')
INSERT CharDB.SkillDifficulty(id, idDefaultstat, idDifficulty, De) VALUES (20, 8, 5, N'HT/WC')
GO
SET IDENTITY_INSERT CharDB.SkillDifficulty OFF
GO
-- 
-- Вывод данных для таблицы TabooAdv
--
INSERT CharDB.TabooAdv(idInAdv, idOutAdv) VALUES (1, 2)
GO
-- 
-- Вывод данных для таблицы TypeAdv
--
SET IDENTITY_INSERT CharDB.TypeAdv ON
GO
INSERT CharDB.TypeAdv(id, Name) VALUES (1, N'Mental')
INSERT CharDB.TypeAdv(id, Name) VALUES (2, N'Exotic')
INSERT CharDB.TypeAdv(id, Name) VALUES (3, N'Physical')
GO
SET IDENTITY_INSERT CharDB.TypeAdv OFF
GO
-- 
-- Вывод данных для таблицы TypeAdvSumm
--
INSERT CharDB.TypeAdvSumm(IdAdv, idType) VALUES (1, 1)
INSERT CharDB.TypeAdvSumm(IdAdv, idType) VALUES (2, 1)
INSERT CharDB.TypeAdvSumm(IdAdv, idType) VALUES (2, 2)
INSERT CharDB.TypeAdvSumm(IdAdv, idType) VALUES (3, 3)
INSERT CharDB.TypeAdvSumm(IdAdv, idType) VALUES (3, 2)
INSERT CharDB.TypeAdvSumm(IdAdv, idType) VALUES (4, 1)
INSERT CharDB.TypeAdvSumm(IdAdv, idType) VALUES (5, 1)
INSERT CharDB.TypeAdvSumm(IdAdv, idType) VALUES (5, 3)
INSERT CharDB.TypeAdvSumm(IdAdv, idType) VALUES (7, 1)
INSERT CharDB.TypeAdvSumm(IdAdv, idType) VALUES (8, 3)
GO
-- 
-- Вывод данных для таблицы AMMOUPGRATES
--
SET IDENTITY_INSERT dbo.AMMOUPGRATES ON
GO
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (1, N'Light Cased (TL5)', N'Lcas', 0, 1.00, 0, 1.00, 1.00, NULL, 1.00, 1.00, 1.00, 0.70, 2.00, 0, N'All', NULL, NULL, NULL, NULL, 0, N'CASED', NULL, NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (2, N'Extra-Powerful Ammunition (TL4)', N'+P', -1, 1.00, 0, 1.00, 1.10, NULL, 1.10, 1.10, 1.10, 1.00, 1.50, 0, N'All', NULL, NULL, NULL, NULL, 0, N'AMMUNITION UPGRADES', NULL, NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (3, N'Match-Grade Ammunition (TL6)', N'Mga', 0, 1.00, 0, 1.25, 1.00, NULL, 1.00, 1.00, 1.00, 1.00, 2.00, 0, N'All', NULL, NULL, NULL, NULL, 0, N'AMMUNITION UPGRADES', NULL, NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (4, N'Subsonic Ammunition (TL6)', N'SbA_P', 0, 1.00, 0, 1.00, 1.00, NULL, 0.80, 0.80, 1.00, 1.00, 1.30, -1, N'Pistol', NULL, NULL, NULL, NULL, 0, N'AMMUNITION UPGRADES', NULL, NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (5, N'Subsonic Ammunition (TL6)', N'SbA_R', 0, 1.00, 0, 1.00, 1.00, NULL, 0.60, 0.60, 1.00, 1.00, 1.30, -2, N'PDW, rifle', NULL, NULL, NULL, NULL, 0, N'AMMUNITION UPGRADES', NULL, NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (6, N'Silent Ammunition (TL7)', N'SA', 0, 1.00, 0, 1.00, 1.00, NULL, 1.00, 1.00, 1.00, 1.00, 10.00, 0, N'All', NULL, NULL, NULL, NULL, 16, N'AMMUNITION UPGRADES', NULL, NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (7, N'Rifled Slug (TL6)', N'Rslug<20', 0, 1.00, 1, 1.00, 4.00, N'pi++', 2.50, 1.50, 1.00, 1.00, 1.20, 0, N'O_Shotguns', NULL, NULL, 20.00, N'<', 0, N'PROJECTILE OPTIONS', NULL, NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (8, N'Rifled Slug (TL6)', N'Rslug>20', 0, 1.00, 1, 1.00, 4.00, N'pi+', 2.50, 1.50, 1.00, 1.00, 1.20, 0, N'O_Shotguns', NULL, NULL, 20.00, N'>', 0, N'PROJECTILE OPTIONS', NULL, NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (9, N'Hollow-Point (HP) (TL5)', N'JHP', -1, 0.50, 0, 1.00, 1.00, N'pi>>', 1.00, 1.00, 1.00, 1.00, 1.00, 0, N'All', NULL, NULL, NULL, NULL, 0, N'PROJECTILE OPTIONS', NULL, NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (10, N'Armor-Piercing (AP) (TL6)', N'AP', 0, 2.00, 0, 1.00, 0.70, N'pi<<', 1.00, 1.00, 1.00, 1.00, 2.00, 0, N'All', NULL, NULL, 20.00, N'<', 0, N'PROJECTILE OPTIONS', NULL, NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (11, N'Armor-Piercing (AP) (TL6)', N'AP', 0, 2.00, 0, 1.00, 0.70, NULL, 1.00, 1.00, 1.00, 1.00, 2.00, 0, N'All', NULL, NULL, 20.00, N'>=', 0, N'PROJECTILE OPTIONS', NULL, NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (12, N'Armor-Piercing Hardcore (APHC) (TL6)', N'APHC', 0, 2.00, 0, 1.00, 1.00, N'pi<<', 1.00, 1.00, 1.00, 1.00, 2.00, 0, N'All', NULL, NULL, 20.00, N'<', 0, N'PROJECTILE OPTIONS', NULL, NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (13, N'Armor-Piercing Hardcore (APHC) (TL6)', N'APHC', 0, 2.00, 0, 1.00, 1.00, NULL, 1.00, 1.00, 1.00, 1.00, 2.00, 0, N'All', NULL, NULL, 20.00, N'>=', 0, N'PROJECTILE OPTIONS', NULL, NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (14, N'Frangible (TL6)', N'Frl', 0, 2.00, 0, 1.00, 1.00, N'pi>>', 0.90, 0.90, 1.00, 1.00, 1.50, 0, N'All', NULL, NULL, NULL, NULL, 0, N'PROJECTILE OPTIONS', NULL, NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (15, N'Armor-Piercing Discarding-Sabot (APDS) (TL7)', N'APDS', 0, 2.00, 0, 1.00, 1.30, N'pi<<', 1.50, 1.50, 1.00, 1.00, 3.00, 0, N'All', 5.56, NULL, 30.00, N'<', 0, N'PROJECTILE OPTIONS', NULL, NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (16, N'Armor-Piercing Discarding-Sabot (APDS) (TL7)', N'APDS', 0, 2.00, 0, 1.00, 1.30, NULL, 1.50, 1.50, 1.00, 1.00, 3.00, 0, N'All', 5.56, NULL, 30.00, N'>=', 0, N'PROJECTILE OPTIONS', NULL, NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (17, N'Armor-Piercing Fin-Stabilized Discarding-Sabot (APFSDS) (TL7)', N'APFSDS', 0, 2.00, 0, 1.00, 1.50, N'pi<<', 2.00, 2.00, 1.00, 1.00, 4.00, 0, N'All', 12.70, NULL, 40.00, N'<', 0, N'PROJECTILE OPTIONS', NULL, NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (18, N'Armor-Piercing Fin-Stabilized Discarding-Sabot (APFSDS) (TL7)', N'APFSDS', 0, 2.00, 0, 1.00, 1.50, NULL, 2.00, 2.00, 1.00, 1.00, 4.00, 0, N'All', 12.70, NULL, 40.00, N'>=', 0, N'PROJECTILE OPTIONS', NULL, NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (19, N'Semi-Armor-Piercing Fin-Stabilized Discarding-Sabot (SAPFSDS) (TL7)', N'SAPFSDS', 0, 2.00, 0, 1.00, 1.00, N'pi-', 1.50, 1.50, 1.00, 1.00, 2.00, 0, N'All', NULL, 10.00, NULL, NULL, 0, N'PROJECTILE OPTIONS', NULL, NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (20, N'Armor-Piercing Depleted Uranium (APDU) (TL8)', N'APDU', 0, 2.00, 0, 1.00, 1.20, N'pi<<', 1.00, 1.00, 1.00, 1.00, 3.00, 0, N'All', NULL, NULL, 20.00, N'<', 0, N'PROJECTILE OPTIONS', NULL, NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (21, N'Armor-Piercing Depleted Uranium (APDU) (TL8)', N'APDU', 0, 2.00, 0, 1.00, 1.20, NULL, 1.00, 1.00, 1.00, 1.00, 3.00, 0, N'All', NULL, NULL, 20.00, N'>=', 0, N'PROJECTILE OPTIONS', NULL, NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (22, N'Armor-Piercing Discarding-Sabot Depleted Uranium (APDSDU) (TL8)', N'APDSDU', 0, 2.00, 0, 1.00, 1.50, N'pi<<', 1.50, 1.50, 1.00, 1.00, 4.00, 0, N'All', NULL, NULL, 30.00, N'<', 0, N'PROJECTILE OPTIONS', NULL, NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (23, N'Armor-Piercing Discarding-Sabot Depleted Uranium (APDSDU) (TL8)', N'APDSDU', 0, 2.00, 0, 1.00, 1.50, NULL, 1.50, 1.50, 1.00, 1.00, 4.00, 0, N'All', NULL, NULL, 30.00, N'>=', 0, N'PROJECTILE OPTIONS', NULL, NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (24, N'Armor-Piercing Fin-Stabilized Discarding-Sabot Depleted Uranium (APFSDSDU) (TL8)', N'APFSDSDU', 0, 2.00, 0, 1.00, 1.70, N'pi<<', 2.00, 2.00, 1.00, 1.00, 5.00, 0, N'All', 10.00, NULL, 40.00, N'<', 0, N'PROJECTILE OPTIONS', NULL, NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (25, N'Armor-Piercing Fin-Stabilized Discarding-Sabot Depleted Uranium (APFSDSDU) (TL8)', N'APFSDSDU', 0, 2.00, 0, 1.00, 1.70, NULL, 2.00, 2.00, 1.00, 1.00, 5.00, 0, N'All', 10.00, NULL, 40.00, N'>=', 0, N'PROJECTILE OPTIONS', NULL, NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (26, N'Low Explosive (LE) (TL4)', N'LE', 0, 0.50, 0, 1.00, 1.00, NULL, 1.00, 1.00, 1.00, 1.00, 2.00, 0, N'All', NULL, NULL, NULL, NULL, 0, N'PROJECTILE OPTIONS', NULL, N'crushing explosion with cutting fragmentation')
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (27, N'Semi-Armor-Piercing Low Explosive (SAPLE) (TL5)', N'SAPLE', 0, 1.00, 0, 1.00, 1.00, NULL, 1.00, 1.00, 1.00, 1.00, 2.00, 0, N'All', NULL, NULL, NULL, NULL, 0, N'PROJECTILE OPTIONS', N'crushing explosion with cutting fragmentation', NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (28, N'Armor-Piercing Explosive (APEX) (TL6)', N'APEX', 0, 2.00, 0, 1.00, 0.70, N'pi<<', 1.00, 1.00, 1.00, 1.00, 3.00, 0, N'All', NULL, NULL, 20.00, N'<', 0, N'PROJECTILE OPTIONS', N'crushing explosion with cutting fragmentation', NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (29, N'Armor-Piercing Explosive (APEX) (TL6)', N'APEX', 0, 2.00, 0, 1.00, 0.70, NULL, 1.00, 1.00, 1.00, 1.00, 3.00, 0, N'All', NULL, NULL, 20.00, N'>=', 0, N'PROJECTILE OPTIONS', N'crushing explosion with cutting fragmentation', NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (30, N'High Explosive (HE) (TL6)', N'HE', 0, 0.50, 0, 1.00, 1.00, NULL, 1.00, 1.00, 1.00, 1.00, 2.00, 0, N'All', NULL, NULL, NULL, NULL, 0, N'PROJECTILE OPTIONS', NULL, N'crushing explosion with cutting fragmentation')
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (31, N'Semi-Armor-Piercing High Explosive (SAPHE) (TL6)', N'SAPHE', 0, 1.00, 0, 1.00, 1.00, NULL, 1.00, 1.00, 1.00, 1.00, 2.00, 0, N'All', NULL, NULL, NULL, NULL, 0, N'PROJECTILE OPTIONS', N'crushing explosion with cutting fragmentation', NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (32, N'Semi-Armor-Piercing High-Explosive Concussion (SAPHEC) (TL6)', N'SAPHEC', 0, 1.00, 0, 1.00, 1.00, NULL, 1.00, 1.00, 1.00, 1.00, 2.00, 0, N'All', NULL, NULL, NULL, NULL, 0, N'PROJECTILE OPTIONS', N'crushing explosion with cutting fragmentation', NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (33, N'High-Explosive Antitank (HEAT) (TL7)', N'HEAT', 0, 10.00, 0, 1.00, 1.00, NULL, 1.00, 1.00, 1.00, 1.00, 3.00, 0, N'All', 20.00, NULL, NULL, NULL, 0, N'PROJECTILE OPTIONS', NULL, N'crushing explosion')
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (34, N'High-Explosive Dual-Purpose (HEDP) (TL7)', N'HEDP', 0, 10.00, 0, 1.00, 1.00, NULL, 1.00, 1.00, 1.00, 1.00, 4.00, 0, N'All', 20.00, NULL, NULL, NULL, 0, N'PROJECTILE OPTIONS', NULL, N'crushing explosion with cutting fragmentation')
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (35, N'High-Explosive Squash-Head (HESH) (TL7)', N'HESH', 0, 0.50, 0, 1.00, 1.00, NULL, 1.00, 1.00, 1.00, 1.00, 3.00, 0, N'All', 50.00, NULL, NULL, NULL, 0, N'PROJECTILE OPTIONS', NULL, N'crushing explosion')
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (36, N'Multi-Stage High-Explosive Antitank (MS-HEAT) (TL8)', N'MS-HEAT', 0, 10.00, 0, 1.00, 1.00, NULL, 1.00, 1.00, 1.00, 1.00, 8.00, 0, N'All', 50.00, NULL, NULL, NULL, 0, N'PROJECTILE OPTIONS', NULL, N'crushing explosion')
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (37, N'Thermobaric (TL8)', N'Thmbar', 0, 0.50, 0, 1.00, 1.00, NULL, 1.00, 1.00, 1.00, 1.00, 8.00, 0, N'All', 20.00, NULL, NULL, NULL, 0, N'PROJECTILE OPTIONS', NULL, N'crushing explosion')
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (38, N'Airburst (-AB) (TL5)', N'-AB', 0, 1.00, 0, 1.00, 1.00, NULL, 1.00, 1.00, 1.00, 1.00, 1.50, 0, N'All', NULL, NULL, NULL, NULL, 0, N'PROJECTILE UPGRADES', NULL, NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (39, N'Incendiary (I) (TL5)', N'-I', 0, 1.00, 0, 1.00, 1.00, N'+inc', 1.00, 1.00, 1.00, 1.00, 1.50, 0, N'All', NULL, NULL, NULL, NULL, 0, N'PROJECTILE UPGRADES', NULL, NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (40, N'Self-Destruct (-SD) (TL6)', N'-SD', 0, 1.00, 0, 1.00, 1.00, NULL, 1.00, 1.00, 1.00, 1.00, 1.50, 0, N'All', NULL, NULL, NULL, NULL, 0, N'PROJECTILE UPGRADES', NULL, NULL)
INSERT dbo.AMMOUPGRATES(id, name, shortname, malf, AR_divX, ACC_add, ACC_x, damage_x, Dam_Type, range_x12, range_x, ST_x, WPS_x, CPS_x, Hearing, Ammo_Class, min_Caliber, Max_Calider, DT_Min_Ammo_CAliber, Condition_DT_Min_ammo_Cal, hearing_table, Upgrates, Follow_Up, Linked) VALUES (41, N'Tracer (-T) (TL6)', N'-T', 0, 1.00, 0, 1.00, 1.00, N'+inc', 1.00, 1.00, 1.00, 1.00, 1.50, 0, N'All', NULL, NULL, NULL, NULL, 0, N'PROJECTILE UPGRADES', NULL, NULL)
GO
SET IDENTITY_INSERT dbo.AMMOUPGRATES OFF
GO
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
SET IDENTITY_INSERT dbo.Attachmentmount ON
GO
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (1, N'AK', 1)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (2, N'M16A1-A2', 1)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (3, N'm16a3', 1)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (4, N'Mini14 Scope', 1)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (5, N'HK G36 Scope', 1)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (6, N'Galil', 1)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (7, N'M14_Scope', 1)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (8, N'Scout', 1)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (9, N'SIG551_Scope', 1)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (10, N'WR', 1)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (11, N'HK MP5', 1)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (12, N'built-in', 1)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (13, N'SA80 Handle', 1)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (14, N'SVD', 1)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (15, N'L96A1 optic', 1)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (16, N'M24_Scope', 1)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (17, N'SIG Sniper Scope', 1)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (18, N'L85A2 SCOPE', 1)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (19, N'PSG', 1)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (20, N'HK MSG-90', 1)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (21, N'F2000 Scope', 1)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (22, N'Zrak', 1)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (23, N'Groza scope', 1)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (24, N'Mosin_PU', 1)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (25, N'G11 built-in', 1)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (26, N'built-in', 2)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (27, N'WR', 2)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (28, N'HK', 2)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (29, N'Barrel Mount', 2)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (30, N'F2000 Laser', 2)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (31, N'F2000 Light', 3)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (32, N'WR', 3)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (33, N'HK', 3)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (34, N'Barrel Mount', 3)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (35, N'built-in', 4)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (36, N'WR', 4)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (37, N'Г‘Г‚98', 4)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (38, N'SniperBipod', 4)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (39, N'L96A1 bipod', 4)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (40, N'L86_Bipod', 4)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (41, N'G36_bipod', 4)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (42, N'BM1', 4)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (43, N'AssaultBipod', 4)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (44, N'None', 1)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (45, N'None', 2)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (46, N'None', 3)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (47, N'None', 4)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (48, N'None', 5)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (49, N'None', 6)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (50, N'None', 7)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (51, N'None', 8)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (52, N'None', 9)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (53, N'None', 10)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (54, N'None', 11)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (55, N'.300 BLK', 5)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (56, N'5,7mm (FN)', 5)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (57, N'5,7mm (P90)', 5)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (58, N'VZ82', 5)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (59, N'Std 9mm Para', 5)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (60, N'APB', 5)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (61, N'Bizon 9x18', 5)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (62, N'GSh-18', 5)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (63, N'HK MP5-40', 5)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (64, N'Std 45 ACP', 5)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (65, N'UMP45', 5)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (66, N'AEK919K', 5)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (67, N'M24x1,5', 5)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (68, N'MAC', 5)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (69, N'PBS-7,62x39', 5)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (70, N'UZI', 5)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (71, N'RM', 5)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (72, N'QM', 5)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (73, N'Supressor-5,56', 5)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (74, N'L85A2', 5)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (75, N'SR25', 5)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (76, N'SIG - 7,62', 5)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (77, N'Saiga', 5)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (78, N'AK', 5)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (79, N'Galil', 5)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (80, N'M76', 5)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (81, N'PBS - 5,45', 5)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (82, N'Supressor-7,62', 5)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (83, N'SV98', 5)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (84, N'built-in', 5)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (85, N'Scar', 6)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (86, N'built-in', 6)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (87, N'M203PI', 6)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (88, N'M203', 6)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (89, N'GP-30', 6)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (90, N'hk', 6)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (91, N'F2000 Launcher', 6)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (92, N'IMC40', 6)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (93, N'WR', 7)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (94, N'built-in', 7)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (95, N'Knifes', 8)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (96, N'StdBayonet', 8)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (97, N'built-in', 8)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (98, N'Mosin_Bayonet', 8)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (99, N'M9', 8)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (100, N'FAL', 8)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (101, N'HK', 8)
INSERT dbo.Attachmentmount(id, name, idAttacClass) VALUES (102, N'throw', 8)
GO
SET IDENTITY_INSERT dbo.Attachmentmount OFF
GO
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
SET IDENTITY_INSERT dbo.ITEM ON
GO
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (1, N'Mecar 35mm HE-RFL-35 Rifle Grenade', NULL, N'[2, 13]', 74, 1, 2.000, N'-', 50.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 4, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 11, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (2, N'M72A2 (66mm)', NULL, N'[5, 7]', 72, 1, 5.000, N'-4', 250.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 4, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 10, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (3, N'Armbrust (80mm)', NULL, N'[2]', 72, 1, 13.000, N'-4', 1052.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 4, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 10, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (4, N'IMI BT/AT 52 Rifle Grenade', NULL, N'[2, 12]', 74, 1, 1.100, N'-', 75.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 4, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 11, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (5, N'H&K P7K3 (.380 ACP)', NULL, N'', 65, 1, 1.750, N'-2', 1050.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 8, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (6, N'Walther PP (.380 ACP)', NULL, N'', 65, 1, 1.800, N'-1', 500.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 7, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 8, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (7, N'Izhmekh Makarov (9x18mm Makarov)', NULL, N'', 65, 1, 1.800, N'-2', 250.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 8, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (8, N'Z.M. Lucznik P-64 (9x18mm Makarov)', NULL, N'', 65, 1, 1.800, N'-1', 450.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 8, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (9, N'Z.M. Lucznik P-83 (9x18mm Makarov)', NULL, N'', 65, 1, 1.800, N'-1', 450.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 8, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (10, N'H&K P7M8 (9x19mm Parabellum)', NULL, N'', 65, 1, 1.800, N'-2', 1050.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 9, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (11, N'Walther PP (.22 LR)', NULL, N'', 65, 1, 1.800, N'-1', 500.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 7, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 7, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (12, N'Walther PP (.32 ACP)', NULL, N'', 65, 1, 1.800, N'-1', 500.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 7, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 8, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (13, N'Izhmash SVD (7.62x54mmR)', NULL, N'', 66, 1, 10.100, N'-5', 1200.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 11, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (14, N'H&K G41 (5.56x45mm NATO)', NULL, N'[4]', 66, 1, 10.100, N'-5', 750.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 3, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 8, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (15, N'Guide Lamp M-3A1  Greasegun  (.45 ACP)', NULL, N'', 75, 1, 10.200, N'-4', 450.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 3, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 11, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (16, N'Springfield M14 (7.62x51mm)', NULL, N'[7]', 66, 1, 10.300, N'-5', 950.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 3, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 11, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (17, N'Diemaco C-7FT w/C79 ELCAN (5.56x45mm NATO)', NULL, N'', 66, 1, 10.400, N'-5', 1600.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 3, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 8, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (18, N'ERMA MP.40 (9x19mm Parabellum)', NULL, N'', 75, 1, 10.500, N'-4', 1000.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 7, 3, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 10, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (19, N'Enfield L42A1 (7.62x51mm)', NULL, N'', 66, 1, 10.700, N'-5', 1700.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 7, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 11, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (20, N'Parker-Hale C3A1 MRSW (7.62x51mm)', NULL, N'', 66, 1, 10.900, N'-5', 4000.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 11, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (21, N'FN FAL (7.62x51mm)', NULL, N'', 66, 1, 11.000, N'-5', 900.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 3, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 11, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (22, N'Royal Ordnance L1A1 (7.62x51mm)', NULL, N'', 66, 1, 11.000, N'-5', 900.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 3, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 11, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (23, N'Royal Ordnance L85A1 (5.56x45mm NATO)', NULL, N'[6]', 66, 1, 11.200, N'-4', 800.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 3, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 8, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (24, N'Royal Ordnance L85A2 (5.56x45mm NATO)', NULL, N'', 66, 1, 11.200, N'-4', 1100.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 3, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 8, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (25, N'H&K G11 (4.73x33mm CLTA)', NULL, N'[5,10]', 66, 1, 11.250, N'-4', 1500.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 4, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 8, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (26, N'Izhmash AKM (7.62x39mm M-43)', NULL, N'', 66, 1, 11.300, N'-5', 290.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 3, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 9, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (27, N'H&K G3 (7.62x51mm)', NULL, N'', 66, 1, 11.400, N'-5', 550.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 3, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 11, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (28, N'Royal Ordnance L1A1 w/SUIT (7.62x51mm)', NULL, N'', 66, 1, 11.500, N'-5', 1100.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 3, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 11, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (29, N'Izhmash RPK-74 (5.45x39mm M-74)', NULL, N'', 66, 1, 12.000, N'-5', 500.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 4, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 10, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (30, N'Royal Ordnance L85A1 w/SUSAT (5.56x45mm NATO)', NULL, N'[6]', 66, 1, 12.100, N'-4', 1200.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 3, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 8, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (31, N'Royal Ordnance L85A2 w/SUSAT (5.56x45mm NATO)', NULL, N'', 66, 1, 12.100, N'-4', 1500.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 3, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 8, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (32, N'ZB Vz.54 (7.62x54mmR)', NULL, N'', 66, 1, 12.400, N'-5', 300.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 7, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 10, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (33, N'Izhmash RPK (7.62x39mm M-43)', NULL, N'', 66, 1, 12.400, N'-5', 490.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 4, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 10, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (34, N'Remington M21 (7.62x51mm)', NULL, N'', 66, 1, 12.700, N'-5', 2400.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 3, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 11, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (35, N'Royal Ordnance L86A1 (5.56x45mm NATO)', NULL, N'[6]', 66, 1, 13.000, N'-5', 1600.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 3, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 9, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (36, N'Royal Ordnance L86A2 (5.56x45mm NATO)', NULL, N'', 66, 1, 13.000, N'-5', 1900.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 3, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 9, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (37, N'Remington M24 SWS (7.62x51mm)', NULL, N'', 66, 1, 13.400, N'-5', 3400.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 11, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (38, N'Remington M24A1 SWS (.300 Win Mag)', NULL, N'', 66, 1, 13.400, N'-5', 3400.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 11, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (39, N'Remington M24A2 SWS (.338 Lapua Magnum)', NULL, N'', 66, 1, 13.900, N'-5', 3400.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 11, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (40, N'9M1114 Kokon ATGM', NULL, N'[1, 2, 4]', 58, 1, 132.500, N'--', 6400.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 4, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 0, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (41, N'M136 AT-4 (84mm)', NULL, N'[5, 7]', 72, 1, 425.000, N'-5', 1500.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 4, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 10, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (42, N'Remington M40A3 RWS (7.62x51mm)', NULL, N'', 66, 1, 14.800, N'-5', 3400.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 11, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (43, N'Accuracy International L96A1 (7.62x51mm)', NULL, N'', 66, 1, 15.000, N'-6', 5200.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 11, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (44, N'Accuracy International G22 (.300 Win Mag)', NULL, N'', 66, 1, 15.800, N'-5', 5650.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 11, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (45, N'H&K PSG1 (7.62x51mm)', NULL, N'', 66, 1, 16.000, N'-5', 4500.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 11, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (46, N'Remington M24 SWS w/AN/PVS10 (7.62x51mm)', NULL, N'', 66, 1, 17.400, N'-5', 12000.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 3, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 11, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (47, N'Remington M24A1 SWS w/AN/PVS10 (.300 Win Mag)', NULL, N'', 66, 1, 17.400, N'-5', 12000.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 11, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (48, N'Accuracy International L115A1 (.338 Lapua Magnum)', NULL, N'', 66, 1, 17.500, N'-6', 5650.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 11, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (49, N'Remington M24A2 SWS w/AN/PVS10 (.338 Lapua Mag)', NULL, N'', 66, 1, 17.900, N'-5', 12000.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 11, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (50, N'Remington M40A3 RWS w/Simrad KN-200 (7.62x51mm)', NULL, N'[9]', 66, 1, 18.200, N'-5', 4900.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 11, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (51, N'Remington M40A3 RWS w/AN/PVS10 (7.62x51mm)', NULL, N'', 66, 1, 18.800, N'-5', 12000.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 11, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (52, N'SIG-Sauer M11 (9x19mm Parabellum)', NULL, N'', 65, 1, 2.100, N'-2', 700.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 9, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (53, N'Tokarev TT-33 (7.62x25mm Tokarev)', NULL, N'', 65, 1, 2.100, N'-2', 350.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 7, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 9, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (54, N'S&W Military and Police (.38 Special)', NULL, N'', 65, 1, 2.200, N'-2', 300.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 7, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 9, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (55, N'H&K P7M13 (9x19mm Parabellum)', NULL, N'', 65, 1, 2.300, N'-2', 1100.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 9, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (56, N'Browning  Highpower  (9x19mm Parabellum)', NULL, N'', 65, 1, 2.400, N'-2', 780.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 7, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 9, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (57, N'Springfield Armory XD-45 (.45 ACP)', NULL, N'', 65, 1, 2.400, N'-2', 500.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 10, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (58, N'Ruger Standard MK1 (.22 LR)', NULL, N'', 65, 1, 2.500, N'-2', 300.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 7, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (59, N'Beretta M92 (9x19mm Parabellum)', NULL, N'', 65, 1, 2.800, N'-2', 700.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 9, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (60, N'Colt M1911A1 (.45 ACP)', NULL, N'', 65, 1, 2.800, N'-2', 850.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 7, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 10, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (61, N'Mk.153 Mod.1 SMAW (83mm Rocket)', NULL, N'[5, 7]', 72, 1, 29.500, N'-5', 13000.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 4, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 10, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (62, N'KBP GP-30 (40mm VOG-25)', NULL, N'[2, 3]', 74, 1, 3.300, N'-', 250.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 4, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 11, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (63, N'Colt M203 (40x46mmSR)', NULL, N'[2, 4]', 74, 1, 3.500, N'-', 500.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 4, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 11, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (64, N'Barrett M82A1A (.50 BMG)', NULL, N'', 66, 1, 32.000, N'-7', 6900.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 13, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (65, N'Barrett M82A1A w/Simrad KN-200 (.50 BMG)', NULL, N'[9]', 66, 1, 35.400, N'-7', 7400.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 13, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (66, N'Barrett M82A1A w/AN/PVS10 (.50 BMG)', NULL, N'', 66, 1, 36.000, N'-7', 15500.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 13, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (67, N'9K116 Bastion ATGM (100mm Tank Round)', NULL, N'[1, 3]', 58, 1, 39.000, N'--', 13400.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 4, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 0, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (68, N'9M119 Svir ATGM (125mm Tank Round)', NULL, N'[1, 3]', 58, 1, 41.400, N'--', 13400.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 4, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 0, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (69, N'9K112 Kobra ATGM (125mm Tank Round)', NULL, N'[1, 4]', 58, 1, 45.300, N'--', 8200.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 4, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 0, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (70, N'9K120 Refleks ATGM (125mm Tank Round)', NULL, N'[1, 3]', 58, 1, 46.400, N'--', 13800.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 4, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 0, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (71, N'Ruger 10/22 (.22 LR)', NULL, N'', 66, 1, 5.200, N'-4', 150.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 6, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (72, N'Marlin Model 881 (.22 LR)', NULL, N'', 66, 1, 5.600, N'-4', 655.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 6, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (73, N'BGM-71F TOW2B ATGM', NULL, N'[1, 2, 4, 5]', 58, 1, 50.000, N'--', 7100.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 4, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 0, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (74, N'BGM-71D TOW2 ATGM', NULL, N'[1, 2, 4]', 58, 1, 50.000, N'--', 6300.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 4, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 0, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (75, N'9P135M Konkurs-M ATGM', NULL, N'[1, 2, 4]', 58, 1, 51.000, N'--', 5700.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 4, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 0, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (76, N'H&K MP5A2 (9x19mm Parabellum)', NULL, N'', 75, 1, 6.000, N'-4', 1100.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 3, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 10, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (77, N'H&K MP5SD2 (9x19mm Parabellum)', NULL, N'[1]', 75, 1, 6.800, N'-4', 1850.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 4, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 10, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (78, N'Stoeger/IGA Uplander (12ga 2 3/4 )', NULL, N'', 76, 1, 7.000, N'-5', 450.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 11, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (79, N'Marlin Model 336 (.30-30 Win)', NULL, N'', 66, 1, 7.000, N'-4', 300.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 7, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 10, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (80, N'Izhmash AKS-74U (5.45x39mm M-74)', NULL, N'', 66, 1, 7.000, N'-4*', 250.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 3, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 8, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (81, N'Colt M4A1 (5.56x45mm NATO)', NULL, N'', 66, 1, 7.250, N'-4', 900.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 3, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 8, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (82, N'Ruger Mini-14 (5.56x45mm)', NULL, N'', 66, 1, 7.300, N'-4', 600.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 9, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (83, N'H&K MP5A3 (9x19mm Parabellum)', NULL, N'', 75, 1, 7.500, N'-4', 1100.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 3, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 10, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (84, N'Enfield Sterling L-2A3 (9x19mm Parabellum)', NULL, N'', 75, 1, 7.600, N'-4', 350.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 3, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 10, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (85, N'Remington Model 870P (12ga 3 )', NULL, N'', 76, 1, 8.000, N'-5', 400.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 10, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (86, N'Colt M16A1 (5.56x45mm M-193)', NULL, N'', 66, 1, 8.000, N'-5', 540.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 3, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 8, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (87, N'CZ Vz.24 (7.62x25mm Tokarev)', NULL, N'', 75, 1, 8.100, N'-4', 300.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 3, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 10, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (88, N'Remington 396 Sporting (12ga 2 3/4 )', NULL, N'', 76, 1, 8.300, N'-5', 2660.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 11, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (89, N'H&K MP5SD3 (9x19mm Parabellum)', NULL, N'[1]', 75, 1, 8.300, N'-4', 1850.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 4, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 10, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (90, N'Benelli M1014 (12ga 3 )', NULL, N'', 76, 1, 8.400, N'-5', 950.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 10, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (91, N'Mossberg M590 (12ga 3 )', NULL, N'', 76, 1, 8.700, N'-5', 600.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 10, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (92, N'Winchester Model 70 (.30-06)', NULL, N'', 66, 1, 8.700, N'-5', 1640.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 10, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (93, N'Tulamash SKS (7.62x39mm M-43)', NULL, N'[11]', 66, 1, 8.900, N'-5', 150.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 9, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (94, N'Diemaco C-7 (5.56x45mm NATO)', NULL, N'', 66, 1, 8.900, N'-5', 800.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 3, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 8, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (95, N'Bushmaster M15 (5.56x45mm)', NULL, N'', 66, 1, 8.900, N'-5', 1500.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 8, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (96, N'Colt M16A2 (5.56x45mm NATO)', NULL, N'[8]', 66, 1, 8.900, N'-5', 800.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 3, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 8, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (97, N'Mauser K.98k (7.92x57mm)', NULL, N'', 66, 1, 8.900, N'-5', 300.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 7, 2, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 10, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (98, N'SA-19 SAM', NULL, N'[1, 2, 3]', 58, 1, 89.000, N'--', 12500.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 4, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 0, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (99, N'Izhmash AK-74 (5.45x39mm M-74)', NULL, N'[2]', 66, 1, 9.000, N'-5', 250.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 3, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 8, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (100, N'IMI MP1  Uzi  (9x19mm Parabellum)', NULL, N'', 75, 1, 9.500, N'-4', 300.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 3, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 10, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (101, N'Enfield Sterling L-34A1 (9x19mm Parabellum)', NULL, N'[1]', 75, 1, 9.500, N'-4', 1200.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 8, 4, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 10, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (102, N'Izhmash AN-94 (5.45x39mm M-74)', NULL, N'[2, 3]', 66, 1, 9.700, N'-5*', 1150.0000, NULL, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 9, 3, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 8, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (103, N'.175 BB', NULL, NULL, 48, 1, 0.001, N'1', 0.0030, 1, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (104, N'.22 Long Rifle (5.7x16mmR)', NULL, NULL, 48, 1, 0.008, N'1', 0.1000, 2, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (105, N'.220 Swift (5.56x56mmSR)', NULL, NULL, 48, 1, 0.033, N'1', 1.0000, 3, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (106, N'.223 Remington  (5.56x45mm NATO)', NULL, NULL, 48, 1, 0.026, N'1', 0.5000, 4, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (107, N'.25 ACP (6.35x16mmSR Browning)', NULL, NULL, 49, 1, 0.012, N'1', 0.1000, 5, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (108, N'.28 Caplock (Colt Number 1)', NULL, NULL, 49, 1, 0.006, N'1', 0.1000, 6, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (109, N'.280 Remington (7x65mm Express)', NULL, NULL, 48, 1, 0.054, N'1', 1.0000, 7, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (110, N'.30 M1 Carbine (7.62x33mm)', NULL, NULL, 48, 1, 0.029, N'1', 0.4000, 8, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (111, N'.30 Remington (7.62x52mm)', NULL, NULL, 48, 1, 0.044, N'1', 0.8000, 9, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (112, N'.300 Remington Ultra Magnum (7.62x72mmRB)', NULL, NULL, 48, 1, 0.075, N'1', 2.0000, 10, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (113, N'.300 Winchester Magnum (7.62x66mmB)', NULL, NULL, 48, 1, 0.068, N'1', 1.5000, 11, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (114, N'.30-06 Springfield (7.62x63mm)', NULL, NULL, 48, 1, 0.056, N'1', 0.8000, 12, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (115, N'.303 British (7.7x56mmR)', NULL, NULL, 48, 1, 0.055, N'1', 0.8000, 13, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (116, N'.30-30 Winchester (7.62x51mmR)', NULL, NULL, 48, 1, 0.047, N'1', 0.8000, 14, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (117, N'.30-40 Krag (7.62x59mmR)', NULL, NULL, 48, 1, 0.059, N'1', 0.8000, 15, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (118, N'.308 Winchester (7.62x51mm NATO)', NULL, NULL, 48, 1, 0.056, N'1', 0.8000, 16, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (119, N'.31 Caplock (Allen)', NULL, NULL, 49, 1, 0.007, N'1', 0.1000, 17, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (120, N'.32 Long Rifle (7.92x24mmR)', NULL, NULL, 48, 1, 0.022, N'1', 0.2000, 18, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (121, N'.338 Lapua Magnum (8.6x70mm)', NULL, NULL, 48, 1, 0.096, N'1', 3.5000, 19, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (122, N'.35 Remington (8.9x49mm)', NULL, NULL, 48, 1, 0.052, N'1', 0.8000, 20, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (123, N'.357 Magnum (9x33mmR)', NULL, NULL, 49, 1, 0.035, N'1', 0.4000, 21, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (124, N'.357 SIG (9x22mm)', NULL, NULL, 49, 1, 0.029, N'1', 0.4000, 22, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (125, N'.36 Caplock (M1851 Navy)', NULL, NULL, 49, 1, 0.023, N'1', 0.1000, 23, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (126, N'.375 H&H Magnum (9.35x72mmB)', NULL, NULL, 48, 1, 0.086, N'1', 2.5000, 24, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (127, N'.38 ACP (9x23mmSR)', NULL, NULL, 49, 1, 0.029, N'1', 0.2000, 25, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (128, N'.38 Long Colt (9x26mmR)', NULL, NULL, 49, 1, 0.033, N'1', 0.2000, 26, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (129, N'.38 S&W (9x20mmR)', NULL, NULL, 49, 1, 0.035, N'1', 0.2000, 27, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (130, N'.38 Special (9x29mmR)', NULL, NULL, 49, 1, 0.033, N'1', 0.3000, 28, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (131, N'.38 Super Auto (9x23mmSR)', NULL, NULL, 49, 1, 0.029, N'1', 0.3000, 29, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (132, N'.38 Volcanic', NULL, NULL, 48, 1, 0.015, N'1', 0.2500, 30, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (133, N'.380 ACP (9x17mm)', NULL, NULL, 49, 1, 0.021, N'1', 0.2000, 31, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (134, N'.38-40 Winchester (10x33mmR)', NULL, NULL, 48, 1, 0.040, N'1', 0.8000, 32, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (135, N'.40 S&W (10x21mm)', NULL, NULL, 49, 1, 0.035, N'1', 0.3000, 33, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (136, N'.41 Long Colt (10x29mmR)', NULL, NULL, 49, 1, 0.040, N'1', 0.2000, 34, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (137, N'.41 Short Remington (10x12mmR)', NULL, NULL, 49, 1, 0.025, N'1', 0.2000, 35, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (138, N'.42 Caplock (LeMat)', NULL, NULL, 49, 1, 0.018, N'1', 0.2000, 36, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (139, N'.44 Colt (11.25x28mmR)', NULL, NULL, 49, 1, 0.045, N'1', 0.4000, 37, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (140, N'.44 Magnum (10.9x33mmR)', NULL, NULL, 49, 1, 0.054, N'1', 0.7000, 38, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (141, N'.442 Caplock (Adams)', NULL, NULL, 49, 1, 0.019, N'1', 0.2000, 39, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (142, N'.442 RIC (11.2x17mmR)', NULL, NULL, 49, 1, 0.043, N'1', 0.4000, 40, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (143, N'.444 Marlin (10.9x57mmR)', NULL, NULL, 48, 1, 0.052, N'1', 1.5000, 41, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (144, N'.44-40 Winchester (10.8x33mmR)', NULL, NULL, 48, 1, 0.043, N'1', 0.6000, 42, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (145, N'.44-90 Remington Special (11.2x62mmR)', NULL, NULL, 48, 1, 0.110, N'1', 2.8000, 43, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (146, N'.44-90 Sharps (11.3x61mmR)', NULL, NULL, 48, 1, 0.110, N'1', 2.8000, 44, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (147, N'.45 ACP (11.43x23mm)', NULL, NULL, 49, 1, 0.047, N'1', 0.5000, 45, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (148, N'.45 Flintlock (Kentucky)', NULL, NULL, 48, 1, 0.025, N'1', 0.3000, 46, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (149, N'.45 Flintlock (Wogdon)', NULL, NULL, 49, 1, 0.023, N'1', 0.2000, 47, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (150, N'.45 GAP (11.43x19mm)', NULL, NULL, 49, 1, 0.045, N'1', 0.5000, 48, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (151, N'.45 Long Colt (11.43x33mmR)', NULL, NULL, 49, 1, 0.050, N'1', 0.5000, 49, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (152, N'.45 S&W (11.43x28mmR)', NULL, NULL, 49, 1, 0.045, N'1', 0.5000, 50, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (153, N'.450 Adams (12.05x17mmR)', NULL, NULL, 49, 1, 0.045, N'1', 0.3000, 51, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (154, N'.450 Gardner-Gatling (11.43x63mmR)', NULL, NULL, 48, 1, 0.120, N'1', 1.2000, 52, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (155, N'.450 Martini-Henry (11.43x59mmR)', NULL, NULL, 48, 1, 0.110, N'1', 1.0000, 53, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (156, N'.45-110 Sharps (11.43x73mmR)', NULL, NULL, 48, 1, 0.120, N'1', 1.8000, 54, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (157, N'.454 Casull (11.43x35mmR)', NULL, NULL, 49, 1, 0.066, N'1', 1.0000, 55, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (158, N'.455 Webley (11.5x19mmR)', NULL, NULL, 49, 1, 0.050, N'1', 0.5000, 56, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (159, N'.45-55 Springfield (11.43x53mmR)', NULL, NULL, 48, 1, 0.080, N'1', 0.9000, 57, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (160, N'.45-70 Springfield (11.43x53mmR)', NULL, NULL, 48, 1, 0.086, N'1', 1.0000, 58, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (161, N'.45-75 Winchester (11.43x48mmR)', NULL, NULL, 48, 1, 0.085, N'1', 1.0000, 59, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (162, N'.458 Winchester Magnum (11.63x64mmB)', NULL, NULL, 48, 1, 0.110, N'1', 4.0000, 60, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (163, N'.460 Weatherby Magnum (11.63x74mmB)', NULL, NULL, 48, 1, 0.140, N'1', 7.5000, 61, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (164, N'.470 Nitro Express (12x83mmR)', NULL, NULL, 48, 1, 0.120, N'1', 10.0000, 62, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (165, N'.476 Enfield (12.05x22mmR)', NULL, NULL, 49, 1, 0.055, N'1', 0.5000, 63, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (166, N'.50 Action Express (12.7x33mm)', NULL, NULL, 49, 1, 0.067, N'1', 1.0000, 64, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (167, N'.50 Flintlock (Collier)', NULL, NULL, 49, 1, 0.026, N'1', 0.3000, 65, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (168, N'.50 Flintlock (North West)', NULL, NULL, 48, 1, 0.035, N'1', 0.4000, 66, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (169, N'.50-140 Sharps (12.9x83mmR)', NULL, NULL, 48, 1, 0.150, N'1', 1.5000, 67, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (170, N'.50-70 Government (13x44mmR)', NULL, NULL, 48, 1, 0.086, N'1', 1.0000, 68, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (171, N'.50-90 Sharps (12.9x64mmR)', NULL, NULL, 48, 1, 0.110, N'1', 1.3000, 69, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (172, N'.50-95 Winchester Express (12.7x49mmR)', NULL, NULL, 48, 1, 0.060, N'1', 1.3000, 70, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (173, N'.50BMG (12.7x99mm)', NULL, NULL, 48, 1, 0.250, N'1', 4.0000, 71, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (174, N'.54 Caplock (Elgin Cutlass)', NULL, NULL, 49, 1, 0.050, N'1', 0.4000, 72, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (175, N'.54 Flintlock (Hall M1819)', NULL, NULL, 48, 1, 0.044, N'1', 0.3000, 73, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (176, N'.56 Flintlock (Tower Sea Service)', NULL, NULL, 49, 1, 0.050, N'1', 0.4000, 74, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (177, N'.56-50 Spencer (13x29mmR)', NULL, NULL, 48, 1, 0.062, N'1', 0.6000, 75, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (178, N'.56-56 Spencer (14x22mmR)', NULL, NULL, 48, 1, 0.073, N'1', 0.6000, 76, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (179, N'.577 Caplock (Enfield)', NULL, NULL, 48, 1, 0.086, N'1', 0.4000, 77, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (180, N'.577 Snider (14.6x51mmR)', NULL, NULL, 48, 1, 0.100, N'1', 0.8000, 78, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (181, N'.58 Berdan (15x44mmR)', NULL, NULL, 48, 1, 0.120, N'1', 0.7000, 79, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (182, N'.600 Nitro Express (15.2x76mmR)', NULL, NULL, 48, 1, 0.200, N'1', 20.0000, 80, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (183, N'.625 Flintlock (Baker)', NULL, NULL, 48, 1, 0.062, N'1', 0.4000, 81, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (184, N'.68 FN', NULL, NULL, 48, 1, 0.019, N'1', 1.5000, 82, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (185, N'.68 Paintball', NULL, NULL, 49, 1, 0.007, N'1', 0.0500, 83, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (186, N'.700 Nitro Express (17.8x89mmR)', NULL, NULL, 48, 1, 0.250, N'1', 75.0000, 84, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (187, N'.75 Flintlock (Brown Bess)', NULL, NULL, 48, 1, 0.090, N'1', 0.4000, 85, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (188, N'.75 Flintlock (Rigby)', NULL, NULL, 49, 1, 0.075, N'1', 0.5000, 86, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (189, N'1" Flare (25.4x107mmR)', NULL, NULL, 50, 1, 0.200, N'1', 1.0000, 87, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (190, N'1" Gatling (25.5x97mmR)', NULL, NULL, 51, 1, 0.820, N'1', 10.0000, 88, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (191, N'1.5" Caplock (Greener)', NULL, NULL, 51, 1, 5.000, N'1', 10.0000, 89, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (192, N'10.75x58mmR Berdan', NULL, NULL, 48, 1, 0.088, N'1', 1.0000, 90, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (193, N'10.75x68mm Mauser', NULL, NULL, 48, 1, 0.088, N'1', 1.5000, 91, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (194, N'105x371mmR', NULL, NULL, 51, 1, 40.000, N'1', 75.0000, 92, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (195, N'106x607mmR', NULL, NULL, 51, 1, 38.000, N'1', 185.0000, 93, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (196, N'10-gauge 2.875" (19.7x73mmR)', NULL, NULL, 52, 1, 0.150, N'1', 1.3000, 94, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (197, N'10x25mm Auto', NULL, NULL, 49, 1, 0.042, N'1', 0.6000, 95, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (198, N'11.15x58mmR (.43 Spanish Remington)', NULL, NULL, 48, 1, 0.092, N'1', 1.0000, 96, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (199, N'11.4x50mmR (.43 Egyptian Remington)', NULL, NULL, 48, 1, 0.094, N'1', 1.0000, 97, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (200, N'11.75mm Girandoni', NULL, NULL, 48, 1, 0.021, N'1', 0.2000, 98, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (201, N'11-gauge Flintlock', NULL, NULL, 52, 1, 0.120, N'1', 0.5000, 99, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (202, N'11mm Syringe', NULL, NULL, 48, 1, 0.020, N'1', 15.0000, 100, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (203, N'12.7x108mm', NULL, NULL, 48, 1, 0.310, N'1', 5.0000, 101, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (204, N'12.7x77mm', NULL, NULL, 48, 1, 0.250, N'1', 1.6000, 102, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (205, N'120mm', NULL, NULL, 53, 1, 35.200, N'1', 60.0000, 103, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (206, N'125x408mmR', NULL, NULL, 51, 1, 73.000, N'1', 255.0000, 104, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (207, N'12-gauge 2.5" (18.5x63mmR)', NULL, NULL, 52, 1, 0.100, N'1', 0.5000, 105, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (208, N'12-gauge 2.75" (18.5x70mmR)', NULL, NULL, 52, 1, 0.110, N'1', 0.5000, 106, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (209, N'12-gauge 2.75" (18.5x70mmR)', NULL, NULL, 52, 1, 0.130, N'1', 0.7000, 106, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (210, N'12-gauge 3" (18.5x76mmR)', NULL, NULL, 52, 1, 0.180, N'1', 0.7000, 108, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (211, N'12-pounder Cannonlock', NULL, NULL, 51, 1, 15.000, N'1', 25.0000, 109, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (212, N'12x16mm Lefaucheux', NULL, NULL, 49, 1, 0.050, N'1', 0.5000, 110, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (213, N'13x36mm Gyrojet', NULL, NULL, 49, 1, 0.030, N'1', 7.5000, 111, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (214, N'13x92mmSR Mauser', NULL, NULL, 48, 1, 0.260, N'1', 4.4000, 112, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (215, N'14.5х114 мм (М41/44)', NULL, NULL, 48, 1, 0.440, N'1', 6.7000, 113, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (216, N'15.43x54mm Dreyse', NULL, NULL, 48, 1, 0.085, N'1', 0.4000, 114, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (217, N'16-gauge 2.75" (16.8x70mmR)', NULL, NULL, 52, 1, 0.090, N'1', 0.4000, 115, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (218, N'16-gauge Flintlock', NULL, NULL, 52, 1, 0.085, N'1', 0.5000, 116, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (219, N'17.1mm Flintlock (AN IX)', NULL, NULL, 49, 1, 0.076, N'1', 0.4000, 117, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (220, N'17.5mm Flintlock (Mle 1777)', NULL, NULL, 48, 1, 0.087, N'1', 0.4000, 118, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (221, N'2"2.25', NULL, NULL, 53, 1, 1.000, N'1', 15.0000, 119, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (222, N'2.5" Caplock (Screw-Gun)', NULL, NULL, 51, 1, 7.400, N'1', 11.0000, 120, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (223, N'20-gauge 2.5" (15.6x63mmR)', NULL, NULL, 52, 1, 0.070, N'1', 0.4000, 121, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (224, N'20-gauge 2.75" (15.6x70mmR)', NULL, NULL, 52, 1, 0.080, N'1', 0.4000, 122, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (225, N'20-gauge Caplock', NULL, NULL, 52, 1, 0.075, N'1', 0.4000, 123, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (226, N'20x102mm', NULL, NULL, 51, 1, 0.570, N'1', 10.0000, 124, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (227, N'20x110mmRB Oerlikon', NULL, NULL, 51, 1, 0.540, N'1', 10.0000, 125, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (228, N'20x138mmB Solothurn', NULL, NULL, 51, 1, 0.740, N'1', 10.0000, 126, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (229, N'20x28mm', NULL, NULL, 50, 1, 0.210, N'1', 6.0000, 127, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (230, N'20x82mm Mauser', NULL, NULL, 51, 1, 0.450, N'1', 8.0000, 128, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (231, N'25x137mm Oerlikon', NULL, NULL, 51, 1, 1.100, N'1', 15.0000, 129, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (232, N'25x59mmB', NULL, NULL, 50, 1, 0.370, N'1', 7.5000, 130, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (233, N'26.5x103mmR', NULL, NULL, 50, 1, 0.220, N'1', 1.0000, 131, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (234, N'3"10', NULL, NULL, 53, 1, 1.000, N'1', 35.0000, 132, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (235, N'30x28mmB', NULL, NULL, 50, 1, 0.770, N'1', 7.0000, 133, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (236, N'32-gauge 2.75" (12.5x70mmR)', NULL, NULL, 52, 1, 0.060, N'1', 0.4000, 134, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (237, N'37x122mmR', NULL, NULL, 50, 1, 0.370, N'1', 5.0000, 135, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (238, N'37x249mmR', NULL, NULL, 51, 1, 2.900, N'1', 20.0000, 136, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (239, N'37x94mmR Hotchkiss', NULL, NULL, 51, 1, 1.400, N'1', 16.5000, 137, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (240, N'4.6x30mm Royal Ordnance', NULL, NULL, 49, 1, 0.013, N'1', 0.4000, 138, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (241, N'4.73x33mm Dynamit-Nobel', NULL, NULL, 48, 1, 0.011, N'1', 0.5000, 139, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (242, N'40mm VOG-25', NULL, NULL, 50, 1, 0.550, N'1', 5.0000, 140, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (243, N'40x53mmSR', NULL, NULL, 50, 1, 0.750, N'1', 7.5000, 141, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (244, N'5.45x39mm', NULL, NULL, 48, 1, 0.023, N'1', 0.4000, 142, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (245, N'5.66x39mm', NULL, NULL, 48, 1, 0.062, N'1', 2.0000, 143, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (246, N'5.6x57mmB', NULL, NULL, 48, 1, 0.016, N'1', 1.0000, 144, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (247, N'5.7x26mm Usel', NULL, NULL, 48, 1, 0.011, N'1', 0.4000, 145, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (248, N'5.7x28mm Fabrique Nationale', NULL, NULL, 49, 1, 0.013, N'1', 0.4000, 146, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (249, N'5.8x42mm', NULL, NULL, 48, 1, 0.028, N'1', 0.5000, 147, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (250, N'52mm', NULL, NULL, 53, 1, 1.700, N'1', 15.0000, 148, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (251, N'57x305mmR', NULL, NULL, 54, 1, 5.500, N'1', 70.0000, 149, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (252, N'6.5x55mm Mauser', NULL, NULL, 48, 1, 0.053, N'1', 0.8000, 150, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (253, N'60mm', NULL, NULL, 53, 1, 3.200, N'1', 20.0000, 151, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (254, N'6x60mm Lee (.236 Navy)', NULL, NULL, 48, 1, 0.044, N'1', 0.8000, 152, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (255, N'7.5x54mm MAS', NULL, NULL, 48, 1, 0.053, N'1', 0.8000, 153, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (256, N'7.62x25mm Tokarev', NULL, NULL, 49, 1, 0.024, N'1', 0.2000, 154, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (257, N'7.62x39mm', NULL, NULL, 48, 1, 0.036, N'1', 0.6000, 155, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (258, N'7.62x39mmR Nagant', NULL, NULL, 49, 1, 0.028, N'1', 0.2000, 156, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (259, N'7.62x42mm', NULL, NULL, 49, 1, 0.053, N'1', 0.5000, 157, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (260, N'7.62x54mmR Mosin', NULL, NULL, 48, 1, 0.050, N'1', 0.8000, 158, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (261, N'7.63x25mm Mauser', NULL, NULL, 49, 1, 0.023, N'1', 0.2000, 159, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (262, N'7.65x21mm Parabellum', NULL, NULL, 49, 1, 0.023, N'1', 0.2000, 160, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (263, N'7.65x53mm Mauser', NULL, NULL, 48, 1, 0.053, N'1', 0.8000, 161, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (264, N'7.7x58mm Arisaka', NULL, NULL, 48, 1, 0.049, N'1', 0.8000, 162, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (265, N'7.7x58mmSR Arisaka', NULL, NULL, 48, 1, 0.061, N'1', 0.8000, 163, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (266, N'7.92x33mm Kurz', NULL, NULL, 48, 1, 0.037, N'1', 0.6000, 164, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (267, N'7.92x57mm Mauser', NULL, NULL, 48, 1, 0.059, N'1', 0.8000, 165, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (268, N'75x350mmR', NULL, NULL, 51, 1, 20.000, N'1', 55.0000, 166, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (269, N'75x495mmR', NULL, NULL, 51, 1, 23.000, N'1', 60.0000, 167, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (270, N'76.2x539mmR (3")', NULL, NULL, 51, 1, 24.000, N'1', 60.0000, 168, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (271, N'7x57mm Mauser', NULL, NULL, 48, 1, 0.054, N'1', 0.8000, 169, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (272, N'7x64mmB Remington Magnum', NULL, NULL, 48, 1, 0.062, N'1', 1.5000, 170, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (273, N'81mm', NULL, NULL, 53, 1, 11.700, N'1', 35.0000, 171, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (274, N'82mm', NULL, NULL, 53, 1, 7.400, N'1', 25.0000, 172, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (275, N'84x250mmR', NULL, NULL, 54, 1, 5.700, N'1', 75.0000, 173, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (276, N'8-bore (21.2x70mmR)', NULL, NULL, 48, 1, 0.260, N'1', 4.0000, 174, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (277, N'8x21mm Nambu', NULL, NULL, 49, 1, 0.025, N'1', 0.2000, 175, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (278, N'8x50mmR Lebel', NULL, NULL, 48, 1, 0.061, N'1', 0.8000, 176, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (279, N'8x50mmR Mannlicher', NULL, NULL, 48, 1, 0.062, N'1', 0.8000, 177, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (280, N'8x58mmR Krag', NULL, NULL, 48, 1, 0.064, N'1', 0.8000, 178, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (281, N'8x60mm Mauser', NULL, NULL, 48, 1, 0.055, N'1', 0.8000, 179, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (282, N'8x63mm Bofors', NULL, NULL, 48, 1, 0.064, N'1', 1.0000, 180, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (283, N'9.3x74mmR', NULL, NULL, 48, 1, 0.074, N'1', 2.0000, 181, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (284, N'9x18mm Makarov', NULL, NULL, 49, 1, 0.022, N'1', 0.2000, 182, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (285, N'9x19mm Parabellum', NULL, NULL, 49, 1, 0.026, N'1', 0.3000, 183, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (286, N'9x21mm Gyurza', NULL, NULL, 49, 1, 0.024, N'1', 0.4000, 184, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (287, N'9x23mm Bergmann-Bayard', NULL, NULL, 49, 1, 0.027, N'1', 0.3000, 185, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (288, N'9x25mm Mauser', NULL, NULL, 49, 1, 0.029, N'1', 0.4000, 186, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
INSERT dbo.ITEM(uiIndex, szItemName, szLongItemName, szItemDesc, usItemClass, ubClassIndex, ubWeight, ItemSize, usPrice, ubCalibre, Damageable, Repairable, WaterDamages, Metal, TwoHanded, Electronic, HT, UT, RemoteTrigger, GasMask, Alcohol, Hardware, Medical, CamouflageKit, LocksmithKit, Toolkit, FirstAidKit, MedicalKit, WireCutters, Canteen, GasCan, Batteries, NeedsBatteries, ContainsLiquid, MetalDetector, FingerPrintID, TripWireActivation, TripWire, Mount, TL, LC, SizeBatteries, FoodType, LockPickModifier, CrowbarModifier, DisarmModifier, RepairModifier, DamageChance, clothestype, DrugType, Item_Image, minST, Link, used, dt, Count_of_Bat, Works_on_Bat) VALUES (289, N'9x39mm', NULL, NULL, 48, 1, 0.051, N'1', 0.5000, 187, CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 2, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, CONVERT(bit, 'False'), NULL, 1, N'1')
GO
SET IDENTITY_INSERT dbo.ITEM OFF
GO
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
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (1, N'Mecar 35mm HE-RFL-35 Rifle Grenade', 1, NULL, 150.0000, 400.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 1, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (2, N'M72A2 (66mm)', 4, NULL, 200.0000, 300.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 1, 0, CONVERT(bit, 'False'), 1, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (3, N'Armbrust (80mm)', 4, NULL, 300.0000, 500.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 1, 0, CONVERT(bit, 'False'), 1, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (4, N'IMI BT/AT 52 Rifle Grenade', 2, NULL, 100.0000, 300.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 1, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (5, N'H&K P7K3 (.380 ACP)', 2, NULL, 125.0000, 1500.0000, CONVERT(bit, 'False'), 1.000, 3, CONVERT(bit, 'False'), NULL, 8, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (6, N'Walther PP (.380 ACP)', 1, NULL, 120.0000, 1300.0000, CONVERT(bit, 'False'), 1.000, 3, CONVERT(bit, 'False'), NULL, 7, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (7, N'Izhmekh Makarov (9x18mm Makarov)', 2, NULL, 110.0000, 1200.0000, CONVERT(bit, 'False'), 1.000, 3, CONVERT(bit, 'False'), NULL, 8, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (8, N'Z.M. Lucznik P-64 (9x18mm Makarov)', 1, NULL, 125.0000, 1500.0000, CONVERT(bit, 'False'), 1.000, 3, CONVERT(bit, 'False'), NULL, 8, 3, CONVERT(bit, 'False'), 3, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (9, N'Z.M. Lucznik P-83 (9x18mm Makarov)', 1, NULL, 125.0000, 1500.0000, CONVERT(bit, 'False'), 1.000, 3, CONVERT(bit, 'False'), NULL, 8, 3, CONVERT(bit, 'False'), 3, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (10, N'H&K P7M8 (9x19mm Parabellum)', 2, NULL, 160.0000, 1800.0000, CONVERT(bit, 'False'), 1.000, 3, CONVERT(bit, 'False'), NULL, 8, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (11, N'Walther PP (.22 LR)', 2, NULL, 70.0000, 1400.0000, CONVERT(bit, 'False'), 1.000, 3, CONVERT(bit, 'False'), NULL, 10, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (12, N'Walther PP (.32 ACP)', 1, NULL, 120.0000, 1300.0000, CONVERT(bit, 'False'), 1.000, 3, CONVERT(bit, 'False'), NULL, 8, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (13, N'Izhmash SVD (7.62x54mmR)', 5, 2, 800.0000, 3900.0000, CONVERT(bit, 'False'), 1.000, 3, CONVERT(bit, 'False'), NULL, 10, 3, CONVERT(bit, 'False'), 3, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (14, N'H&K G41 (5.56x45mm NATO)', 5, NULL, 500.0000, 3200.0000, CONVERT(bit, 'False'), 1.000, 14, CONVERT(bit, 'False'), NULL, 30, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (15, N'Guide Lamp M-3A1  Greasegun  (.45 ACP)', 3, NULL, 190.0000, 1750.0000, CONVERT(bit, 'False'), 1.000, 8, CONVERT(bit, 'True'), NULL, 30, 3, CONVERT(bit, 'False'), 3, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (16, N'Springfield M14 (7.62x51mm)', 5, NULL, 1000.0000, 4200.0000, CONVERT(bit, 'False'), 1.000, 3, CONVERT(bit, 'False'), NULL, 20, 3, CONVERT(bit, 'False'), 3, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (17, N'Diemaco C-7FT w/C79 ELCAN (5.56x45mm NATO)', 5, 1, 500.0000, 3200.0000, CONVERT(bit, 'False'), 1.000, 13, CONVERT(bit, 'False'), NULL, 30, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (18, N'ERMA MP.40 (9x19mm Parabellum)', 3, NULL, 160.0000, 1900.0000, CONVERT(bit, 'False'), 1.000, 8, CONVERT(bit, 'True'), NULL, 32, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (19, N'Enfield L42A1 (7.62x51mm)', 5, 2, 1000.0000, 4200.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 10, 5, CONVERT(bit, 'False'), 3, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (20, N'Parker-Hale C3A1 MRSW (7.62x51mm)', 5, 3, 1000.0000, 4200.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 5, 3, CONVERT(bit, 'False'), 3, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (21, N'FN FAL (7.62x51mm)', 5, NULL, 1000.0000, 4200.0000, CONVERT(bit, 'False'), 1.000, 11, CONVERT(bit, 'False'), NULL, 20, 3, CONVERT(bit, 'False'), 3, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (22, N'Royal Ordnance L1A1 (7.62x51mm)', 5, NULL, 1000.0000, 4200.0000, CONVERT(bit, 'False'), 1.000, 3, CONVERT(bit, 'False'), NULL, 20, 3, CONVERT(bit, 'False'), 3, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (23, N'Royal Ordnance L85A1 (5.56x45mm NATO)', 4, NULL, 500.0000, 3200.0000, CONVERT(bit, 'False'), 1.000, 12, CONVERT(bit, 'False'), NULL, 30, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (24, N'Royal Ordnance L85A2 (5.56x45mm NATO)', 4, NULL, 500.0000, 3200.0000, CONVERT(bit, 'False'), 1.000, 12, CONVERT(bit, 'False'), NULL, 30, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (25, N'H&K G11 (4.73x33mm CLTA)', 5, NULL, 500.0000, 3000.0000, CONVERT(bit, 'False'), 1.000, 9, CONVERT(bit, 'False'), NULL, 45, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (26, N'Izhmash AKM (7.62x39mm M-43)', 4, NULL, 500.0000, 3100.0000, CONVERT(bit, 'False'), 1.000, 10, CONVERT(bit, 'False'), NULL, 30, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (27, N'H&K G3 (7.62x51mm)', 5, NULL, 1000.0000, 4200.0000, CONVERT(bit, 'False'), 1.000, 10, CONVERT(bit, 'False'), NULL, 20, 3, CONVERT(bit, 'False'), 3, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (28, N'Royal Ordnance L1A1 w/SUIT (7.62x51mm)', 5, 2, 1000.0000, 4200.0000, CONVERT(bit, 'False'), 1.000, 3, CONVERT(bit, 'False'), NULL, 20, 3, CONVERT(bit, 'False'), 3, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (29, N'Izhmash RPK-74 (5.45x39mm M-74)', 4, NULL, 600.0000, 3200.0000, CONVERT(bit, 'False'), 1.000, 11, CONVERT(bit, 'False'), NULL, 45, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (30, N'Royal Ordnance L85A1 w/SUSAT (5.56x45mm NATO)', 5, 2, 500.0000, 3200.0000, CONVERT(bit, 'False'), 1.000, 12, CONVERT(bit, 'False'), NULL, 30, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (31, N'Royal Ordnance L85A2 w/SUSAT (5.56x45mm NATO)', 5, 2, 500.0000, 3200.0000, CONVERT(bit, 'False'), 1.000, 12, CONVERT(bit, 'False'), NULL, 30, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (32, N'ZB Vz.54 (7.62x54mmR)', 5, 2, 800.0000, 3900.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 5, 3, CONVERT(bit, 'False'), 4, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (33, N'Izhmash RPK (7.62x39mm M-43)', 4, NULL, 400.0000, 3000.0000, CONVERT(bit, 'False'), 1.000, 10, CONVERT(bit, 'False'), NULL, 40, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (34, N'Remington M21 (7.62x51mm)', 6, 3, 1000.0000, 4200.0000, CONVERT(bit, 'False'), 1.000, 3, CONVERT(bit, 'False'), NULL, 20, 3, CONVERT(bit, 'False'), 3, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (35, N'Royal Ordnance L86A1 (5.56x45mm NATO)', 6, 2, 500.0000, 3500.0000, CONVERT(bit, 'False'), 1.000, 13, CONVERT(bit, 'False'), NULL, 30, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (36, N'Royal Ordnance L86A2 (5.56x45mm NATO)', 6, 2, 500.0000, 3500.0000, CONVERT(bit, 'False'), 1.000, 13, CONVERT(bit, 'False'), NULL, 30, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (37, N'Remington M24 SWS (7.62x51mm)', 6, 3, 1000.0000, 4200.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 6, 3, CONVERT(bit, 'True'), 3, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (38, N'Remington M24A1 SWS (.300 Win Mag)', 6, 3, 1300.0000, 5000.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 5, 3, CONVERT(bit, 'False'), 3, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (39, N'Remington M24A2 SWS (.338 Lapua Magnum)', 6, 3, 1500.0000, 5500.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 4, 3, CONVERT(bit, 'False'), 4, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (40, N'9M1114 Kokon ATGM', 3, NULL, 450.0000, 5000.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 2, 20, CONVERT(bit, 'False'), 1, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (41, N'M136 AT-4 (84mm)', 3, NULL, 330.0000, 2300.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 1, 0, CONVERT(bit, 'False'), 1, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (42, N'Remington M40A3 RWS (7.62x51mm)', 7, 3, 1000.0000, 4200.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 6, 3, CONVERT(bit, 'True'), 3, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (43, N'Accuracy International L96A1 (7.62x51mm)', 6, 3, 1000.0000, 4200.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 10, 3, CONVERT(bit, 'False'), 3, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (44, N'Accuracy International G22 (.300 Win Mag)', 6, 3, 1300.0000, 5000.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 5, 3, CONVERT(bit, 'False'), 3, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (45, N'H&K PSG1 (7.62x51mm)', 6, 2, 1000.0000, 4200.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 1, 4, CONVERT(bit, 'False'), 3, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (46, N'Remington M24 SWS w/AN/PVS10 (7.62x51mm)', 6, 3, 1000.0000, 4200.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 6, 3, CONVERT(bit, 'True'), 3, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (47, N'Remington M24A1 SWS w/AN/PVS10 (.300 Win Mag)', 6, 3, 1300.0000, 5000.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 5, 3, CONVERT(bit, 'False'), 3, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (48, N'Accuracy International L115A1 (.338 Lapua Magnum)', 6, 3, 1500.0000, 5500.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 4, 3, CONVERT(bit, 'False'), 4, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (49, N'Remington M24A2 SWS w/AN/PVS10 (.338 Lapua Mag)', 6, 3, 1500.0000, 5500.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 4, 3, CONVERT(bit, 'False'), 4, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (50, N'Remington M40A3 RWS w/Simrad KN-200 (7.62x51mm)', 7, 3, 1000.0000, 4200.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 6, 3, CONVERT(bit, 'True'), 3, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (51, N'Remington M40A3 RWS w/AN/PVS10 (7.62x51mm)', 7, 3, 1000.0000, 4200.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 6, 3, CONVERT(bit, 'True'), 3, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (52, N'SIG-Sauer M11 (9x19mm Parabellum)', 1, NULL, 140.0000, 1800.0000, CONVERT(bit, 'False'), 1.000, 3, CONVERT(bit, 'False'), NULL, 13, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (53, N'Tokarev TT-33 (7.62x25mm Tokarev)', 2, NULL, 180.0000, 2000.0000, CONVERT(bit, 'False'), 1.000, 3, CONVERT(bit, 'False'), NULL, 8, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (54, N'S&W Military and Police (.38 Special)', 2, NULL, 110.0000, 1200.0000, CONVERT(bit, 'False'), 1.000, 3, CONVERT(bit, 'False'), NULL, 6, 3, CONVERT(bit, 'True'), 3, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (55, N'H&K P7M13 (9x19mm Parabellum)', 2, NULL, 160.0000, 1800.0000, CONVERT(bit, 'False'), 1.000, 3, CONVERT(bit, 'False'), NULL, 13, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (56, N'Browning  Highpower  (9x19mm Parabellum)', 2, NULL, 160.0000, 1800.0000, CONVERT(bit, 'False'), 1.000, 3, CONVERT(bit, 'False'), NULL, 13, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (57, N'Springfield Armory XD-45 (.45 ACP)', 2, NULL, 150.0000, 1600.0000, CONVERT(bit, 'False'), 1.000, 3, CONVERT(bit, 'False'), NULL, 13, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (58, N'Ruger Standard MK1 (.22 LR)', 3, NULL, 70.0000, 1400.0000, CONVERT(bit, 'False'), 1.000, 3, CONVERT(bit, 'False'), NULL, 9, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (59, N'Beretta M92 (9x19mm Parabellum)', 2, NULL, 160.0000, 1800.0000, CONVERT(bit, 'False'), 1.000, 3, CONVERT(bit, 'False'), NULL, 15, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (60, N'Colt M1911A1 (.45 ACP)', 2, NULL, 150.0000, 1600.0000, CONVERT(bit, 'False'), 1.000, 3, CONVERT(bit, 'False'), NULL, 7, 3, CONVERT(bit, 'False'), 3, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (61, N'Mk.153 Mod.1 SMAW (83mm Rocket)', 4, NULL, 500.0000, 1000.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 1, 4, CONVERT(bit, 'False'), 1, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (62, N'KBP GP-30 (40mm VOG-25)', 2, NULL, 150.0000, 460.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 1, 4, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (63, N'Colt M203 (40x46mmSR)', 2, NULL, 150.0000, 4400.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 1, 4, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (64, N'Barrett M82A1A (.50 BMG)', 7, 3, 2200.0000, 7400.0000, CONVERT(bit, 'False'), 1.000, 3, CONVERT(bit, 'False'), NULL, 10, 3, CONVERT(bit, 'False'), 4, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (65, N'Barrett M82A1A w/Simrad KN-200 (.50 BMG)', 7, 3, 2200.0000, 7400.0000, CONVERT(bit, 'False'), 1.000, 3, CONVERT(bit, 'False'), NULL, 10, 3, CONVERT(bit, 'False'), 4, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (66, N'Barrett M82A1A w/AN/PVS10 (.50 BMG)', 7, 3, 2200.0000, 7400.0000, CONVERT(bit, 'False'), 1.000, 3, CONVERT(bit, 'False'), NULL, 10, 3, CONVERT(bit, 'False'), 4, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (67, N'9K116 Bastion ATGM (100mm Tank Round)', 6, NULL, 330.0000, 5000.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 1, 5, CONVERT(bit, 'False'), 1, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (68, N'9M119 Svir ATGM (125mm Tank Round)', 8, NULL, 340.0000, 4100.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 1, 6, CONVERT(bit, 'False'), 1, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (69, N'9K112 Kobra ATGM (125mm Tank Round)', 3, NULL, 250.0000, 4000.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 1, 6, CONVERT(bit, 'False'), 1, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (70, N'9K120 Refleks ATGM (125mm Tank Round)', 7, NULL, 330.0000, 5000.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 1, 6, CONVERT(bit, 'False'), 1, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (71, N'Ruger 10/22 (.22 LR)', 3, NULL, 85.0000, 1200.0000, CONVERT(bit, 'False'), 1.000, 3, CONVERT(bit, 'False'), NULL, 10, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (72, N'Marlin Model 881 (.22 LR)', 5, NULL, 85.0000, 1200.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 17, 3, CONVERT(bit, 'True'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (73, N'BGM-71F TOW2B ATGM', 3, NULL, 300.0000, 5700.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 1, 20, CONVERT(bit, 'False'), 1, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (74, N'BGM-71D TOW2 ATGM', 3, NULL, 300.0000, 5400.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 1, 20, CONVERT(bit, 'False'), 1, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (75, N'9P135M Konkurs-M ATGM', 4, NULL, 200.0000, 4000.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 1, 20, CONVERT(bit, 'False'), 1, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (76, N'H&K MP5A2 (9x19mm Parabellum)', 4, NULL, 160.0000, 1900.0000, CONVERT(bit, 'False'), 1.000, 13, CONVERT(bit, 'False'), NULL, 30, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (77, N'H&K MP5SD2 (9x19mm Parabellum)', 4, NULL, 100.0000, 1100.0000, CONVERT(bit, 'False'), 1.000, 13, CONVERT(bit, 'False'), NULL, 30, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (78, N'Stoeger/IGA Uplander (12ga 2 3/4 )', 2, NULL, 50.0000, 125.0000, CONVERT(bit, 'False'), 1.000, 2, CONVERT(bit, 'False'), 9, 2, 3, CONVERT(bit, 'True'), 1, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (79, N'Marlin Model 336 (.30-30 Win)', 4, NULL, 450.0000, 3000.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 6, 3, CONVERT(bit, 'True'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (80, N'Izhmash AKS-74U (5.45x39mm M-74)', 3, NULL, 300.0000, 2500.0000, CONVERT(bit, 'False'), 1.000, 11, CONVERT(bit, 'False'), NULL, 30, 3, CONVERT(bit, 'False'), 3, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (81, N'Colt M4A1 (5.56x45mm NATO)', 4, NULL, 420.0000, 2700.0000, CONVERT(bit, 'False'), 1.000, 15, CONVERT(bit, 'False'), NULL, 30, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (82, N'Ruger Mini-14 (5.56x45mm)', 5, NULL, 500.0000, 3000.0000, CONVERT(bit, 'False'), 1.000, 3, CONVERT(bit, 'False'), NULL, 20, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (83, N'H&K MP5A3 (9x19mm Parabellum)', 4, NULL, 160.0000, 1900.0000, CONVERT(bit, 'False'), 1.000, 13, CONVERT(bit, 'False'), NULL, 30, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (84, N'Enfield Sterling L-2A3 (9x19mm Parabellum)', 3, NULL, 160.0000, 1900.0000, CONVERT(bit, 'False'), 1.000, 9, CONVERT(bit, 'False'), NULL, 34, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (85, N'Remington Model 870P (12ga 3 )', 2, NULL, 50.0000, 125.0000, CONVERT(bit, 'False'), 1.000, 2, CONVERT(bit, 'False'), 9, 7, 3, CONVERT(bit, 'True'), 1, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (86, N'Colt M16A1 (5.56x45mm M-193)', 5, NULL, 500.0000, 3200.0000, CONVERT(bit, 'False'), 1.000, 13, CONVERT(bit, 'False'), NULL, 30, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (87, N'CZ Vz.24 (7.62x25mm Tokarev)', 3, NULL, 160.0000, 1900.0000, CONVERT(bit, 'False'), 1.000, 10, CONVERT(bit, 'False'), NULL, 32, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (88, N'Remington 396 Sporting (12ga 2 3/4 )', 4, NULL, 50.0000, 125.0000, CONVERT(bit, 'False'), 1.000, 2, CONVERT(bit, 'False'), 9, 2, 3, CONVERT(bit, 'True'), 1, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (89, N'H&K MP5SD3 (9x19mm Parabellum)', 4, NULL, 100.0000, 1100.0000, CONVERT(bit, 'False'), 1.000, 13, CONVERT(bit, 'False'), NULL, 30, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (90, N'Benelli M1014 (12ga 3 )', 3, NULL, 50.0000, 125.0000, CONVERT(bit, 'False'), 1.000, 3, CONVERT(bit, 'False'), 9, 6, 3, CONVERT(bit, 'True'), 1, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (91, N'Mossberg M590 (12ga 3 )', 3, NULL, 50.0000, 125.0000, CONVERT(bit, 'False'), 1.000, 2, CONVERT(bit, 'False'), 9, 9, 3, CONVERT(bit, 'True'), 1, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (92, N'Winchester Model 70 (.30-06)', 6, 3, 1000.0000, 4200.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 4, 3, CONVERT(bit, 'True'), 4, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (93, N'Tulamash SKS (7.62x39mm M-43)', 5, NULL, 500.0000, 3100.0000, CONVERT(bit, 'False'), 1.000, 3, CONVERT(bit, 'False'), NULL, 10, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (94, N'Diemaco C-7 (5.56x45mm NATO)', 5, NULL, 500.0000, 3200.0000, CONVERT(bit, 'False'), 1.000, 13, CONVERT(bit, 'False'), NULL, 30, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (95, N'Bushmaster M15 (5.56x45mm)', 5, NULL, 500.0000, 3200.0000, CONVERT(bit, 'False'), 1.000, 3, CONVERT(bit, 'False'), NULL, 30, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (96, N'Colt M16A2 (5.56x45mm NATO)', 5, NULL, 500.0000, 3200.0000, CONVERT(bit, 'False'), 1.000, 9, CONVERT(bit, 'False'), NULL, 30, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (97, N'Mauser K.98k (7.92x57mm)', 5, NULL, 1000.0000, 4000.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 5, 3, CONVERT(bit, 'False'), 4, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (98, N'SA-19 SAM', 6, NULL, 600.0000, 8000.0000, CONVERT(bit, 'False'), 1.000, 1, CONVERT(bit, 'False'), NULL, 1, 20, CONVERT(bit, 'False'), 1, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (99, N'Izhmash AK-74 (5.45x39mm M-74)', 4, NULL, 500.0000, 3800.0000, CONVERT(bit, 'False'), 1.000, 11, CONVERT(bit, 'False'), NULL, 30, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (100, N'IMI MP1  Uzi  (9x19mm Parabellum)', 4, NULL, 160.0000, 1900.0000, CONVERT(bit, 'False'), 1.000, 10, CONVERT(bit, 'False'), NULL, 32, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (101, N'Enfield Sterling L-34A1 (9x19mm Parabellum)', 3, NULL, 100.0000, 1100.0000, CONVERT(bit, 'False'), 1.000, 8, CONVERT(bit, 'False'), NULL, 34, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
INSERT dbo.WEAPON(uiIndex, szWeaponName, DefACC, ACCAddin, Half_Range, FullRange, MinRange, AWeight, ROF, Full_auto, ROF_for_Sh, Shots, Time_For_reload, single_reload, Recoil, HeavyWeapon, Add_in_Chamber, CutOff_shots, CutOff_shotsCount, GrenadeLauncher, RocketLauncher, Mortar, Cannon, SingleShot_RocketLauncher, RocketRifle, Bulkfolded, HCROF, HCROFValue) VALUES (102, N'Izhmash AN-94 (5.45x39mm M-74)', 4, NULL, 500.0000, 3800.0000, CONVERT(bit, 'False'), 1.000, 10, CONVERT(bit, 'False'), NULL, 30, 3, CONVERT(bit, 'False'), 2, CONVERT(bit, 'False'), CONVERT(bit, 'True'), CONVERT(bit, 'False'), 0, CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), CONVERT(bit, 'False'), 0)
GO
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
SET IDENTITY_INSERT dbo.WeaponDamage ON
GO
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (1, 1, 1, N'8d', 1.00, 10, 14, N'', N'[3d]', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (2, 2, 1, N'6dx4', 10.00, 10, 14, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (3, 3, 1, N'5dx7', 10.00, 10, 14, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (4, 4, 1, N'6d', 10.00, 10, 14, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (5, 5, 1, N'2d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (6, 6, 1, N'2d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (7, 7, 1, N'2d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (8, 8, 1, N'2d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (9, 9, 1, N'2d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (10, 10, 1, N'2d+2', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (11, 11, 1, N'1d+1', 1.00, 2, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (12, 12, 1, N'2d-1', 1.00, 2, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (13, 13, 1, N'7d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (14, 14, 1, N'5d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (15, 15, 1, N'2d+1', 1.00, 1, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (16, 16, 1, N'7d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (17, 17, 1, N'5d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (18, 18, 1, N'3d-1', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (19, 19, 1, N'7d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (20, 20, 1, N'7d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (21, 21, 1, N'7d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (22, 22, 1, N'7d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (23, 23, 1, N'5d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (24, 24, 1, N'5d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (25, 25, 1, N'4d+2', 1.00, 2, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (26, 26, 1, N'5d+1', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (27, 27, 1, N'7d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (28, 28, 1, N'7d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (29, 29, 1, N'5d+1', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (30, 30, 1, N'5d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (31, 31, 1, N'5d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (32, 32, 1, N'7d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (33, 33, 1, N'5d+2', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (34, 34, 1, N'7d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (35, 35, 1, N'5d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (36, 36, 1, N'5d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (37, 37, 1, N'7d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (38, 38, 1, N'8d+1', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (39, 39, 1, N'9d+1', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (40, 40, 1, N'6dx13', 10.00, 10, 14, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (41, 41, 1, N'6dx6', 10.00, 10, 14, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (42, 42, 1, N'7d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (43, 43, 1, N'7d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (44, 44, 1, N'8d+1', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (45, 45, 1, N'7d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (46, 46, 1, N'7d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (47, 47, 1, N'8d+1', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (48, 48, 1, N'9d+1', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (49, 49, 1, N'9d+1', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (50, 50, 1, N'7d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (51, 51, 1, N'7d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (52, 52, 1, N'2d+1', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (53, 53, 1, N'2d+2', 1.00, 2, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (54, 54, 1, N'2d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (55, 55, 1, N'2d+2', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (56, 56, 1, N'2d+2', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (57, 57, 1, N'2d', 1.00, 1, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (58, 58, 1, N'1d+1', 1.00, 2, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (59, 59, 1, N'2d+2', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (60, 60, 1, N'2d', 1.00, 1, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (61, 61, 1, N'6dx6', 5.00, 10, 14, N'', N'[6d]', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (62, 62, 1, N'1d+2', 1.00, 10, 14, N'', N'[2d]', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (63, 63, 1, N'4d', 10.00, 10, 14, N'', N'[2d]', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (64, 64, 1, N'13d', 1.00, 1, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (65, 65, 1, N'13d', 1.00, 1, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (66, 66, 1, N'13d', 1.00, 1, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (67, 67, 1, N'6dx6', 10.00, 10, 14, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (68, 68, 1, N'5dx12', 10.00, 10, 14, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (69, 69, 1, N'5dx15', 10.00, 10, 14, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (70, 70, 1, N'5dx12', 10.00, 10, 14, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (71, 71, 1, N'1d+2', 1.00, 2, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (72, 72, 1, N'1d+2', 1.00, 2, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (73, 73, 1, N'6dx17', 10.00, 10, 14, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (74, 74, 1, N'6dx25', 10.00, 10, 14, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (75, 75, 1, N'6dx13', 10.00, 10, 14, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (76, 76, 1, N'3d-1', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (77, 77, 1, N'2d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (78, 78, 1, N'1d+2', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (79, 79, 1, N'5d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (80, 80, 1, N'4d', 1.00, 2, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (81, 81, 1, N'4d+1', 1.00, 2, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (82, 82, 1, N'5d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (83, 83, 1, N'3d-1', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (84, 84, 1, N'3d-1', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (85, 85, 1, N'1d+2', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (86, 86, 1, N'5d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (87, 87, 1, N'3d-1', 1.00, 2, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (88, 88, 1, N'1d+2', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (89, 89, 1, N'2d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (90, 90, 1, N'1d+1', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (91, 91, 1, N'1d+1', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (92, 92, 1, N'7d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (93, 93, 1, N'5d+1', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (94, 94, 1, N'5d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (95, 95, 1, N'5d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (96, 96, 1, N'5d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (97, 97, 1, N'7d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (98, 98, 1, N'6dx50', 1.00, 10, 14, N'', N'[12d]', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (99, 99, 1, N'5d', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (100, 100, 1, N'3d-1', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (101, 101, 1, N'2d-1', 1.00, 3, NULL, N'', N'', NULL)
INSERT dbo.WeaponDamage(id, idWeapon, idWeaponAttackType, Damage, ArmorDivision, idTypeOfDamage1, idTypeOfDamage2, TypeOfDamage1text, TypeOfDamage2text, Descrip) VALUES (102, 102, 1, N'5d', 1.00, 3, NULL, N'', N'', NULL)
GO
SET IDENTITY_INSERT dbo.WeaponDamage OFF
GO

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
-- Создать внешний ключ "FK_InventoryOfChar_CharacterDB_id" для объекта типа таблица "CharDB.InventoryOfChar"
--
PRINT (N'Создать внешний ключ "FK_InventoryOfChar_CharacterDB_id" для объекта типа таблица "CharDB.InventoryOfChar"')
GO
ALTER TABLE CharDB.InventoryOfChar
  ADD CONSTRAINT FK_InventoryOfChar_CharacterDB_id FOREIGN KEY (IdCharacter) REFERENCES CharDB.CharacterDB (id) ON DELETE CASCADE ON UPDATE CASCADE
GO

--
-- Создать внешний ключ "FK_InventoryOfChar_ITEM_uiIndex" для объекта типа таблица "CharDB.InventoryOfChar"
--
PRINT (N'Создать внешний ключ "FK_InventoryOfChar_ITEM_uiIndex" для объекта типа таблица "CharDB.InventoryOfChar"')
GO
ALTER TABLE CharDB.InventoryOfChar
  ADD CONSTRAINT FK_InventoryOfChar_ITEM_uiIndex FOREIGN KEY (IdItem) REFERENCES dbo.ITEM (uiIndex) ON DELETE CASCADE ON UPDATE CASCADE
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

--
-- Создать внешний ключ "FK_SKILLTYPES_Attribute_id" для объекта типа таблица "CharDB.SkillDifficulty"
--
PRINT (N'Создать внешний ключ "FK_SKILLTYPES_Attribute_id" для объекта типа таблица "CharDB.SkillDifficulty"')
GO
ALTER TABLE CharDB.SkillDifficulty
  ADD CONSTRAINT FK_SKILLTYPES_Attribute_id FOREIGN KEY (idDefaultstat) REFERENCES CharDB.Attribute (id)
GO

--
-- Создать внешний ключ "FK_SKILLTYPES_Difficulty_id" для объекта типа таблица "CharDB.SkillDifficulty"
--
PRINT (N'Создать внешний ключ "FK_SKILLTYPES_Difficulty_id" для объекта типа таблица "CharDB.SkillDifficulty"')
GO
ALTER TABLE CharDB.SkillDifficulty
  ADD CONSTRAINT FK_SKILLTYPES_Difficulty_id FOREIGN KEY (idDifficulty) REFERENCES CharDB.Difficulty (id)
GO

--
-- Создать внешний ключ "FK_GurpsSkill_GurpsSkill_id" для объекта типа таблица "CharDB.GurpsSkill"
--
PRINT (N'Создать внешний ключ "FK_GurpsSkill_GurpsSkill_id" для объекта типа таблица "CharDB.GurpsSkill"')
GO
ALTER TABLE CharDB.GurpsSkill
  ADD CONSTRAINT FK_GurpsSkill_GurpsSkill_id FOREIGN KEY (idSpecialization) REFERENCES CharDB.GurpsSkill (id)
GO

--
-- Создать внешний ключ "FK_GurpsSkill_SkillDifficulty_id" для объекта типа таблица "CharDB.GurpsSkill"
--
PRINT (N'Создать внешний ключ "FK_GurpsSkill_SkillDifficulty_id" для объекта типа таблица "CharDB.GurpsSkill"')
GO
ALTER TABLE CharDB.GurpsSkill
  ADD CONSTRAINT FK_GurpsSkill_SkillDifficulty_id FOREIGN KEY (idDifficulty) REFERENCES CharDB.SkillDifficulty (id)
GO

--
-- Создать внешний ключ "FK_NeedSkill_GurpsSkill_id_in" для объекта типа таблица "CharDB.NeedSkill"
--
PRINT (N'Создать внешний ключ "FK_NeedSkill_GurpsSkill_id_in" для объекта типа таблица "CharDB.NeedSkill"')
GO
ALTER TABLE CharDB.NeedSkill
  ADD CONSTRAINT FK_NeedSkill_GurpsSkill_id_in FOREIGN KEY (idSkillIn) REFERENCES CharDB.GurpsSkill (id)
GO

--
-- Создать внешний ключ "FK_NeedSkill_GurpsSkill_id_out" для объекта типа таблица "CharDB.NeedSkill"
--
PRINT (N'Создать внешний ключ "FK_NeedSkill_GurpsSkill_id_out" для объекта типа таблица "CharDB.NeedSkill"')
GO
ALTER TABLE CharDB.NeedSkill
  ADD CONSTRAINT FK_NeedSkill_GurpsSkill_id_out FOREIGN KEY (idSkillOut) REFERENCES CharDB.GurpsSkill (id)
GO

--
-- Создать внешний ключ "FK_GurpsSkillCategory88_GurpsSkill_id" для объекта типа таблица "CharDB.GurpsSkillCategory88"
--
PRINT (N'Создать внешний ключ "FK_GurpsSkillCategory88_GurpsSkill_id" для объекта типа таблица "CharDB.GurpsSkillCategory88"')
GO
ALTER TABLE CharDB.GurpsSkillCategory88
  ADD CONSTRAINT FK_GurpsSkillCategory88_GurpsSkill_id FOREIGN KEY (idSkill) REFERENCES CharDB.GurpsSkill (id)
GO

--
-- Создать внешний ключ "FK_GurpsSkillCategory88_GurpsSkillCategory_id" для объекта типа таблица "CharDB.GurpsSkillCategory88"
--
PRINT (N'Создать внешний ключ "FK_GurpsSkillCategory88_GurpsSkillCategory_id" для объекта типа таблица "CharDB.GurpsSkillCategory88"')
GO
ALTER TABLE CharDB.GurpsSkillCategory88
  ADD CONSTRAINT FK_GurpsSkillCategory88_GurpsSkillCategory_id FOREIGN KEY (idSkillCategory) REFERENCES CharDB.GurpsSkillCategory (id)
GO

--
-- Создать внешний ключ "FK_DefaultSkill_GurpsSkill_id_in" для объекта типа таблица "CharDB.DefaultSkill"
--
PRINT (N'Создать внешний ключ "FK_DefaultSkill_GurpsSkill_id_in" для объекта типа таблица "CharDB.DefaultSkill"')
GO
ALTER TABLE CharDB.DefaultSkill
  ADD CONSTRAINT FK_DefaultSkill_GurpsSkill_id_in FOREIGN KEY (idSkillIn) REFERENCES CharDB.GurpsSkill (id)
GO

--
-- Создать внешний ключ "FK_DefaultSkill_GurpsSkill_id_out" для объекта типа таблица "CharDB.DefaultSkill"
--
PRINT (N'Создать внешний ключ "FK_DefaultSkill_GurpsSkill_id_out" для объекта типа таблица "CharDB.DefaultSkill"')
GO
ALTER TABLE CharDB.DefaultSkill
  ADD CONSTRAINT FK_DefaultSkill_GurpsSkill_id_out FOREIGN KEY (idSkillOut) REFERENCES CharDB.GurpsSkill (id)
GO

--
-- Создать внешний ключ "FK_Advantage_Advantage_id" для объекта типа таблица "CharDB.Advantage"
--
PRINT (N'Создать внешний ключ "FK_Advantage_Advantage_id" для объекта типа таблица "CharDB.Advantage"')
GO
ALTER TABLE CharDB.Advantage
  ADD CONSTRAINT FK_Advantage_Advantage_id FOREIGN KEY (ParentAdv) REFERENCES CharDB.Advantage (id)
GO

--
-- Создать внешний ключ "FK_Advantage_GurpsAdvCategory_id" для объекта типа таблица "CharDB.Advantage"
--
PRINT (N'Создать внешний ключ "FK_Advantage_GurpsAdvCategory_id" для объекта типа таблица "CharDB.Advantage"')
GO
ALTER TABLE CharDB.Advantage
  ADD CONSTRAINT FK_Advantage_GurpsAdvCategory_id FOREIGN KEY (idCategory) REFERENCES CharDB.GurpsAdvCategory (id) ON DELETE CASCADE ON UPDATE CASCADE
GO

--
-- Создать внешний ключ "FK_TypeAdvSumm_Advantage_id" для объекта типа таблица "CharDB.TypeAdvSumm"
--
PRINT (N'Создать внешний ключ "FK_TypeAdvSumm_Advantage_id" для объекта типа таблица "CharDB.TypeAdvSumm"')
GO
ALTER TABLE CharDB.TypeAdvSumm
  ADD CONSTRAINT FK_TypeAdvSumm_Advantage_id FOREIGN KEY (IdAdv) REFERENCES CharDB.Advantage (id) ON DELETE CASCADE ON UPDATE CASCADE
GO

--
-- Создать внешний ключ "FK_TypeAdvSumm_TypeAdv_id" для объекта типа таблица "CharDB.TypeAdvSumm"
--
PRINT (N'Создать внешний ключ "FK_TypeAdvSumm_TypeAdv_id" для объекта типа таблица "CharDB.TypeAdvSumm"')
GO
ALTER TABLE CharDB.TypeAdvSumm
  ADD CONSTRAINT FK_TypeAdvSumm_TypeAdv_id FOREIGN KEY (idType) REFERENCES CharDB.TypeAdv (id) ON DELETE CASCADE ON UPDATE CASCADE
GO

--
-- Создать внешний ключ "FK_TabooAdv_Advantage_id" для объекта типа таблица "CharDB.TabooAdv"
--
PRINT (N'Создать внешний ключ "FK_TabooAdv_Advantage_id" для объекта типа таблица "CharDB.TabooAdv"')
GO
ALTER TABLE CharDB.TabooAdv
  ADD CONSTRAINT FK_TabooAdv_Advantage_id FOREIGN KEY (idInAdv) REFERENCES CharDB.Advantage (id)
GO

--
-- Создать внешний ключ "FK_TabooAdv_Advantage_id1" для объекта типа таблица "CharDB.TabooAdv"
--
PRINT (N'Создать внешний ключ "FK_TabooAdv_Advantage_id1" для объекта типа таблица "CharDB.TabooAdv"')
GO
ALTER TABLE CharDB.TabooAdv
  ADD CONSTRAINT FK_TabooAdv_Advantage_id1 FOREIGN KEY (idOutAdv) REFERENCES CharDB.Advantage (id)
GO

--
-- Создать внешний ключ "FK_SkillBonus_Advantage_id" для объекта типа таблица "CharDB.SkillBonus"
--
PRINT (N'Создать внешний ключ "FK_SkillBonus_Advantage_id" для объекта типа таблица "CharDB.SkillBonus"')
GO
ALTER TABLE CharDB.SkillBonus
  ADD CONSTRAINT FK_SkillBonus_Advantage_id FOREIGN KEY (idAdvantage) REFERENCES CharDB.Advantage (id) ON DELETE CASCADE ON UPDATE CASCADE
GO

--
-- Создать внешний ключ "FK_SkillBonus_Skill_Id" для объекта типа таблица "CharDB.SkillBonus"
--
PRINT (N'Создать внешний ключ "FK_SkillBonus_Skill_Id" для объекта типа таблица "CharDB.SkillBonus"')
GO
ALTER TABLE CharDB.SkillBonus
  ADD CONSTRAINT FK_SkillBonus_Skill_Id FOREIGN KEY (idSkill) REFERENCES CharDB.Skill (Id) ON DELETE CASCADE ON UPDATE CASCADE
GO

--
-- Создать внешний ключ "FK_AdvBonus_Advantage_id" для объекта типа таблица "CharDB.AttributeBonus"
--
PRINT (N'Создать внешний ключ "FK_AdvBonus_Advantage_id" для объекта типа таблица "CharDB.AttributeBonus"')
GO
ALTER TABLE CharDB.AttributeBonus
  ADD CONSTRAINT FK_AdvBonus_Advantage_id FOREIGN KEY (idAdvantage) REFERENCES CharDB.Advantage (id) ON DELETE CASCADE ON UPDATE CASCADE
GO

--
-- Создать внешний ключ "FK_AdvBonus_AttributeBonus_id" для объекта типа таблица "CharDB.AttributeBonus"
--
PRINT (N'Создать внешний ключ "FK_AdvBonus_AttributeBonus_id" для объекта типа таблица "CharDB.AttributeBonus"')
GO
ALTER TABLE CharDB.AttributeBonus
  ADD CONSTRAINT FK_AdvBonus_AttributeBonus_id FOREIGN KEY (idAttribute) REFERENCES CharDB.Attribute (id) ON DELETE CASCADE ON UPDATE CASCADE
GO

--
-- Создать внешний ключ "FK_AdvantageMods_Advantage_id" для объекта типа таблица "CharDB.AdvantageMods"
--
PRINT (N'Создать внешний ключ "FK_AdvantageMods_Advantage_id" для объекта типа таблица "CharDB.AdvantageMods"')
GO
ALTER TABLE CharDB.AdvantageMods
  ADD CONSTRAINT FK_AdvantageMods_Advantage_id FOREIGN KEY (idAdvantage) REFERENCES CharDB.Advantage (id)
GO
SET NOEXEC OFF
GO



--
-- Скрипт сгенерирован Devart dbForge Studio for SQL Server, Версия 5.2.177.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/sql/studio
-- Дата скрипта: 03.08.2016 22:43:10
-- Версия сервера: 12.00.4459
-- Версия клиента: 
--



USE Item1
GO

IF DB_NAME() <> N'Item1' SET NOEXEC ON
GO

--
-- Создать схему "inv"
--
PRINT (N'Создать схему "inv"')
GO
  IF SCHEMA_ID(N'inv') IS NULL
  EXEC sp_executesql N'CREATE SCHEMA inv AUTHORIZATION dbo'
GO

--
-- Создать таблицу "inv.specialization"
--
PRINT (N'Создать таблицу "inv.specialization"')
GO
CREATE TABLE inv.specialization (
  PrimaryKey varchar(255) NULL,
  compare varchar(255) NULL,
  Text varchar(255) NULL,
  FK_skill_bonus varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "inv.skill_bonus"
--
PRINT (N'Создать таблицу "inv.skill_bonus"')
GO
CREATE TABLE inv.skill_bonus (
  PrimaryKey varchar(255) NULL,
  amount varchar(255) NULL,
  FK_equipment varchar(255) NULL,
  FK_equipment_container varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "inv.ranged_weapon"
--
PRINT (N'Создать таблицу "inv.ranged_weapon"')
GO
CREATE TABLE inv.ranged_weapon (
  PrimaryKey varchar(255) NULL,
  damage varchar(255) NULL,
  strength varchar(255) NULL,
  accuracy varchar(255) NULL,
  range varchar(255) NULL,
  rate_of_fire varchar(255) NULL,
  shots varchar(255) NULL,
  [bulk] varchar(255) NULL,
  recoil varchar(255) NULL,
  usage varchar(255) NULL,
  FK_equipment varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "inv.prereq_list"
--
PRINT (N'Создать таблицу "inv.prereq_list"')
GO
CREATE TABLE inv.prereq_list (
  PrimaryKey varchar(255) NULL,
  [all] varchar(255) NULL,
  FK_equipment_container varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "inv.name"
--
PRINT (N'Создать таблицу "inv.name"')
GO
CREATE TABLE inv.name (
  PrimaryKey varchar(255) NULL,
  compare varchar(255) NULL,
  Text varchar(255) NULL,
  FK_skill_bonus varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "inv.melee_weapon"
--
PRINT (N'Создать таблицу "inv.melee_weapon"')
GO
CREATE TABLE inv.melee_weapon (
  PrimaryKey varchar(255) NULL,
  damage varchar(255) NULL,
  usage varchar(255) NULL,
  reach varchar(255) NULL,
  parry varchar(255) NULL,
  block varchar(255) NULL,
  strength varchar(255) NULL,
  FK_equipment varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "inv.equipment_list"
--
PRINT (N'Создать таблицу "inv.equipment_list"')
GO
CREATE TABLE inv.equipment_list (
  PrimaryKey varchar(255) NULL,
  unique_id varchar(255) NULL,
  version varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "inv.equipment_container"
--
PRINT (N'Создать таблицу "inv.equipment_container"')
GO
CREATE TABLE inv.equipment_container (
  PrimaryKey varchar(255) NULL,
  version varchar(255) NULL,
  [open] varchar(255) NULL,
  description varchar(255) NULL,
  tech_level varchar(255) NULL,
  legality_class varchar(255) NULL,
  value varchar(255) NULL,
  weight varchar(255) NULL,
  reference varchar(255) NULL,
  notes varchar(255) NULL,
  FK_equipment_list varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "inv.equipment"
--
PRINT (N'Создать таблицу "inv.equipment"')
GO
CREATE TABLE inv.equipment (
  PrimaryKey varchar(255) NULL,
  version varchar(255) NULL,
  quantity varchar(255) NULL,
  description varchar(255) NULL,
  tech_level varchar(255) NULL,
  legality_class varchar(255) NULL,
  value varchar(255) NULL,
  reference varchar(255) NULL,
  weight varchar(255) NULL,
  notes varchar(255) NULL,
  FK_equipment_container varchar(255) NULL,
  FK_equipment_list varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "inv.dr_bonus"
--
PRINT (N'Создать таблицу "inv.dr_bonus"')
GO
CREATE TABLE inv.dr_bonus (
  PrimaryKey varchar(255) NULL,
  location varchar(255) NULL,
  amount varchar(255) NULL,
  FK_equipment varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "inv.[default]"
--
PRINT (N'Создать таблицу "inv.[default]"')
GO
CREATE TABLE inv.[default] (
  PrimaryKey varchar(255) NULL,
  type varchar(255) NULL,
  name varchar(255) NULL,
  specialization varchar(255) NULL,
  modifier varchar(255) NULL,
  FK_melee_weapon varchar(255) NULL,
  FK_ranged_weapon varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "inv.contained_weight_prereq"
--
PRINT (N'Создать таблицу "inv.contained_weight_prereq"')
GO
CREATE TABLE inv.contained_weight_prereq (
  PrimaryKey varchar(255) NULL,
  has varchar(255) NULL,
  compare varchar(255) NULL,
  Text varchar(255) NULL,
  FK_prereq_list varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "inv.category"
--
PRINT (N'Создать таблицу "inv.category"')
GO
CREATE TABLE inv.category (
  PrimaryKey varchar(255) NULL,
  category varchar(255) NULL,
  FK_categories varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "inv.categories"
--
PRINT (N'Создать таблицу "inv.categories"')
GO
CREATE TABLE inv.categories (
  PrimaryKey varchar(255) NULL,
  category varchar(255) NULL,
  FK_equipment varchar(255) NULL,
  FK_equipment_container varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "inv.attribute_bonus"
--
PRINT (N'Создать таблицу "inv.attribute_bonus"')
GO
CREATE TABLE inv.attribute_bonus (
  PrimaryKey varchar(255) NULL,
  attribute varchar(255) NULL,
  amount varchar(255) NULL,
  FK_equipment varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать схему "Skill"
--
PRINT (N'Создать схему "Skill"')
GO

 IF SCHEMA_ID(N'Skill') IS NULL
  EXEC sp_executesql N'CREATE SCHEMA Skill AUTHORIZATION dbo'
GO
--
-- Создать таблицу "Skill.when_tl"
--
PRINT (N'Создать таблицу "Skill.when_tl"')
GO
CREATE TABLE Skill.when_tl (
  PrimaryKey varchar(255) NULL,
  compare varchar(255) NULL,
  Text varchar(255) NULL,
  FK_prereq_list varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "Skill.weapon_bonus"
--
PRINT (N'Создать таблицу "Skill.weapon_bonus"')
GO
CREATE TABLE Skill.weapon_bonus (
  PrimaryKey varchar(255) NULL,
  FK_skill varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "Skill.technique"
--
PRINT (N'Создать таблицу "Skill.technique"')
GO
CREATE TABLE Skill.technique (
  PrimaryKey varchar(255) NULL,
  version varchar(255) NULL,
  limit varchar(255) NULL,
  name varchar(255) NULL,
  difficulty varchar(255) NULL,
  points varchar(255) NULL,
  reference varchar(255) NULL,
  FK_skill_list varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "Skill.specialization"
--
PRINT (N'Создать таблицу "Skill.specialization"')
GO
CREATE TABLE Skill.specialization (
  PrimaryKey varchar(255) NULL,
  compare varchar(255) NULL,
  Text varchar(255) NULL,
  FK_skill_prereq varchar(255) NULL,
  FK_weapon_bonus varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "Skill.skill_prereq"
--
PRINT (N'Создать таблицу "Skill.skill_prereq"')
GO
CREATE TABLE Skill.skill_prereq (
  PrimaryKey varchar(255) NULL,
  has varchar(255) NULL,
  FK_prereq_list varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "Skill.skill_list"
--
PRINT (N'Создать таблицу "Skill.skill_list"')
GO
CREATE TABLE Skill.skill_list (
  PrimaryKey varchar(255) NULL,
  unique_id varchar(255) NULL,
  version varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "Skill.skill_container"
--
PRINT (N'Создать таблицу "Skill.skill_container"')
GO
CREATE TABLE Skill.skill_container (
  PrimaryKey varchar(255) NULL,
  version varchar(255) NULL,
  [open] varchar(255) NULL,
  name varchar(255) NULL,
  reference varchar(255) NULL,
  notes varchar(255) NULL,
  FK_skill_container varchar(255) NULL,
  FK_skill_list varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "Skill.skill"
--
PRINT (N'Создать таблицу "Skill.skill"')
GO
CREATE TABLE Skill.skill (
  PrimaryKey varchar(255) NULL,
  version varchar(255) NULL,
  name varchar(255) NULL,
  difficulty varchar(255) NULL,
  points varchar(255) NULL,
  reference varchar(255) NULL,
  specialization varchar(255) NULL,
  tech_level varchar(255) NULL,
  encumbrance_penalty_multiplier varchar(255) NULL,
  notes varchar(255) NULL,
  FK_skill_container varchar(255) NULL,
  FK_skill_list varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "Skill.prereq_list"
--
PRINT (N'Создать таблицу "Skill.prereq_list"')
GO
CREATE TABLE Skill.prereq_list (
  PrimaryKey varchar(255) NULL,
  [all] varchar(255) NULL,
  FK_prereq_list varchar(255) NULL,
  FK_skill varchar(255) NULL,
  FK_technique varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "Skill.notes"
--
PRINT (N'Создать таблицу "Skill.notes"')
GO
CREATE TABLE Skill.notes (
  PrimaryKey varchar(255) NULL,
  compare varchar(255) NULL,
  Text varchar(255) NULL,
  FK_advantage_prereq varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "Skill.name"
--
PRINT (N'Создать таблицу "Skill.name"')
GO
CREATE TABLE Skill.name (
  PrimaryKey varchar(255) NULL,
  compare varchar(255) NULL,
  Text varchar(255) NULL,
  FK_advantage_prereq varchar(255) NULL,
  FK_skill_prereq varchar(255) NULL,
  FK_weapon_bonus varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "Skill.level"
--
PRINT (N'Создать таблицу "Skill.level"')
GO
CREATE TABLE Skill.level (
  PrimaryKey varchar(255) NULL,
  compare varchar(255) NULL,
  Text varchar(255) NULL,
  FK_advantage_prereq varchar(255) NULL,
  FK_skill_prereq varchar(255) NULL,
  FK_weapon_bonus varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "Skill.[default]"
--
PRINT (N'Создать таблицу "Skill.[default]"')
GO
CREATE TABLE Skill.[default] (
  PrimaryKey varchar(255) NULL,
  type varchar(255) NULL,
  modifier varchar(255) NULL,
  name varchar(255) NULL,
  specialization varchar(255) NULL,
  FK_skill varchar(255) NULL,
  FK_technique varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "Skill.category"
--
PRINT (N'Создать таблицу "Skill.category"')
GO
CREATE TABLE Skill.category (
  PrimaryKey varchar(255) NULL,
  category varchar(255) NULL,
  FK_categories varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "Skill.categories"
--
PRINT (N'Создать таблицу "Skill.categories"')
GO
CREATE TABLE Skill.categories (
  PrimaryKey varchar(255) NULL,
  category varchar(255) NULL,
  FK_skill varchar(255) NULL,
  FK_technique varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "Skill.attribute_prereq"
--
PRINT (N'Создать таблицу "Skill.attribute_prereq"')
GO
CREATE TABLE Skill.attribute_prereq (
  PrimaryKey varchar(255) NULL,
  has varchar(255) NULL,
  which varchar(255) NULL,
  compare varchar(255) NULL,
  Text varchar(255) NULL,
  FK_prereq_list varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "Skill.amount"
--
PRINT (N'Создать таблицу "Skill.amount"')
GO
CREATE TABLE Skill.amount (
  PrimaryKey varchar(255) NULL,
  per_level varchar(255) NULL,
  Text varchar(255) NULL,
  FK_weapon_bonus varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать таблицу "Skill.advantage_prereq"
--
PRINT (N'Создать таблицу "Skill.advantage_prereq"')
GO
CREATE TABLE Skill.advantage_prereq (
  PrimaryKey varchar(255) NULL,
  has varchar(255) NULL,
  FK_prereq_list varchar(255) NULL
)
ON [PRIMARY]
GO

--
-- Создать схему "Adv"
--
PRINT (N'Создать схему "Adv"')
GO
 IF SCHEMA_ID(N'Adv') IS NULL
  EXEC sp_executesql N'CREATE SCHEMA Adv AUTHORIZATION dbo'
GO
SET NOEXEC OFF
GO