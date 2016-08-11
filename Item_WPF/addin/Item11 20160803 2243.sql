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
CREATE SCHEMA inv AUTHORIZATION dbo
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
CREATE SCHEMA Skill AUTHORIZATION dbo
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
-- Создать схему "CharDB"
--
PRINT (N'Создать схему "CharDB"')
GO
CREATE SCHEMA CharDB AUTHORIZATION dbo
GO

--
-- Создать схему "Adv"
--
PRINT (N'Создать схему "Adv"')
GO
CREATE SCHEMA Adv AUTHORIZATION dbo
GO
SET NOEXEC OFF
GO