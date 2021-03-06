﻿IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[Text]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[CharDB].[Text] (
    [PrimaryKey] VARCHAR(255)
   ,[Text] VARCHAR(255)
   ,[FK_skill_prereq] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('1', 'Guns', '8');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('2', '18', '8');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('3', 'Guns', '10');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('4', '18', '10');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('5', 'Guns', '12');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('6', '18', '12');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('7', 'Guns', '14');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('8', '18', '14');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('9', 'Guns', '16');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('10', '18', '16');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('11', 'Guns', '18');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('12', '18', '18');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('13', 'Guns', '20');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('14', '18', '20');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('15', 'Guns', '22');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('16', '18', '22');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('17', 'Guns', '24');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('18', '18', '24');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('19', 'Guns', '26');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('20', '18', '26');
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[advantage_prereq]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[CharDB].[advantage_prereq] (
    [PrimaryKey] VARCHAR(255)
   ,[has] VARCHAR(255)
   ,[Text] VARCHAR(255)
   ,[FK_prereq_list] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('1', 'yes', 'Gunslinger', '5');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('2', 'yes', 'trained by a master', '5');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('3', 'yes', 'Trained by a Master', '7');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('4', 'yes', 'Gunslinger', '7');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('5', 'yes', 'Trained by a Master', '9');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('6', 'yes', 'Gunslinger', '9');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('7', 'yes', 'Trained by a Master', '11');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('8', 'yes', 'Gunslinger', '11');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('9', 'yes', 'Trained by a Master', '13');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('10', 'yes', 'Gunslinger', '13');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('11', 'yes', 'Trained by a Master', '15');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('12', 'yes', 'Gunslinger', '15');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('13', 'yes', 'Trained by a Master', '17');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('14', 'yes', 'Gunslinger', '17');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('15', 'yes', 'Trained by a Master', '19');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('16', 'yes', 'Gunslinger', '19');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('17', 'yes', 'Trained by a Master', '21');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('18', 'yes', 'Gunslinger', '21');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('19', 'yes', 'Trained by a Master', '23');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('20', 'yes', 'Gunslinger', '23');
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[categories]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[CharDB].[categories] (
    [PrimaryKey] VARCHAR(255)
   ,[category] VARCHAR(255)
   ,[FK_skill] VARCHAR(255)
   ,[FK_technique] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('1', '1');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('2', '2');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('3', '3');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('4', '4');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('5', 'Combat/Weapon', '1');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('6', 'Combat/Weapon', '2');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('7', 'Combat/Weapon', '3');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('8', 'Combat/Weapon', '4');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('9', 'Combat/Weapon', '5');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('10', 'Combat/Weapon', '6');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('11', 'Combat/Weapon', '7');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('12', 'Combat/Weapon', '8');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('13', 'Combat/Weapon', '9');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('14', '5');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('15', '6');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('16', '7');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('17', '8');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('18', '9');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('19', '10');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('20', '11');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('21', '12');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('22', '13');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('23', '14');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('24', 'Esoteric', '10');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('25', 'Esoteric', '11');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('26', 'Esoteric', '12');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('27', 'Esoteric', '13');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('28', 'Esoteric', '14');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('29', 'Esoteric', '15');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('30', 'Esoteric', '16');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('31', 'Esoteric', '17');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('32', 'Esoteric', '18');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('33', 'Esoteric', '19');
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[category]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[CharDB].[category] (
    [PrimaryKey] VARCHAR(255)
   ,[category] VARCHAR(255)
   ,[FK_categories] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('1', 'Combat/Weapon', '1');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('2', 'Ranged Combat', '1');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('3', 'Technique', '1');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('4', 'Combat/Weapon', '2');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('5', 'Ranged Combat', '2');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('6', 'Technique', '2');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('7', 'Combat/Weapon', '3');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('8', 'Ranged Combat', '3');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('9', 'Technique', '3');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('10', 'Combat/Weapon', '4');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('11', 'Ranged Combat', '4');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('12', 'Technique', '4');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('13', 'Military', '14');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('14', 'Repair/Maintainance', '14');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('15', 'Technique', '14');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('16', 'Military', '15');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('17', 'Repair/Maintainance', '15');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('18', 'Technique', '15');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('19', 'Military', '16');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('20', 'Repair/Maintainance', '16');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('21', 'Technique', '16');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('22', 'Military', '17');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('23', 'Repair/Maintainance', '17');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('24', 'Technique', '17');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('25', 'Cinematic Techniques', '18');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('26', 'Combat/Weapon', '18');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('27', 'Melee Combat', '18');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('28', 'Animal', '19');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('29', 'Combat/Weapon', '19');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('30', 'Ranged Combat', '19');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('31', 'Technique', '19');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('32', 'Vehicle', '19');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('33', 'Cinematic Techniques', '20');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('34', 'Combat/Weapon', '20');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('35', 'Melee Combat', '20');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('36', 'Cinematic Techniques', '21');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('37', 'Combat/Weapon', '21');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('38', 'Melee Combat', '21');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('39', 'Combat/Weapon', '22');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('40', 'Ranged Combat', '22');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('41', 'Technique', '22');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('42', 'Combat/Weapon', '23');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('43', 'Ranged Combat', '23');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('44', 'Technique', '23');
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[default]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[CharDB].[default] (
    [PrimaryKey] VARCHAR(255)
   ,[type] VARCHAR(255)
   ,[name] VARCHAR(255)
   ,[specialization] VARCHAR(255)
   ,[modifier] VARCHAR(255)
   ,[FK_skill] VARCHAR(255)
   ,[FK_technique] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [name], [specialization], [modifier], [FK_technique])
  VALUES ('1', 'Skill', 'Guns', '@Speciality@', '0', '1');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [name], [specialization], [modifier], [FK_technique])
  VALUES ('2', 'Skill', 'Fast-Draw', 'Ammo', '-2', '2');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [name], [specialization], [modifier], [FK_technique])
  VALUES ('3', 'Skill', 'Guns', 'Pistol', '-4', '3');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [name], [specialization], [modifier], [FK_technique])
  VALUES ('4', 'Skill', 'Guns', '@Speciality@', '-4', '4');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [name], [specialization], [modifier], [FK_skill])
  VALUES ('5', 'Skill', 'Guns', 'Grenade Launcher', '-3', '1');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [name], [specialization], [modifier], [FK_skill])
  VALUES ('6', 'Skill', 'Guns', 'Gyroc', '-3', '2');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [name], [specialization], [modifier], [FK_skill])
  VALUES ('7', 'Skill', 'Guns', 'Light Anti-Armor Weapon', '-3', '3');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [name], [specialization], [modifier], [FK_skill])
  VALUES ('8', 'Skill', 'Guns', 'Light Machine Gun', '-3', '4');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [name], [specialization], [modifier], [FK_skill])
  VALUES ('9', 'Skill', 'Guns', 'Musket', '-3', '5');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [name], [specialization], [modifier], [FK_skill])
  VALUES ('10', 'Skill', 'Guns', 'Pistol', '-3', '6');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [name], [specialization], [modifier], [FK_skill])
  VALUES ('11', 'Skill', 'Guns', 'Rifle', '-3', '7');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [name], [specialization], [modifier], [FK_skill])
  VALUES ('12', 'Skill', 'Guns', 'Shotgun', '-3', '8');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [name], [specialization], [modifier], [FK_skill])
  VALUES ('13', 'Skill', 'Guns', 'Submachine Gun', '-3', '9');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [name], [specialization], [modifier], [FK_technique])
  VALUES ('14', 'Skill', 'Armoury', 'Heavy Weapons', '-4', '5');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [name], [specialization], [modifier], [FK_technique])
  VALUES ('15', 'Skill', 'Armoury', 'Small Arms', '-4', '6');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [name], [specialization], [modifier], [FK_technique])
  VALUES ('16', 'Skill', 'Gunner', '@Speciality@', '-4', '7');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [name], [specialization], [modifier], [FK_technique])
  VALUES ('17', 'Skill', 'Guns', '@Speciality@', '-4', '8');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [name], [specialization], [modifier], [FK_technique])
  VALUES ('18', 'Skill', 'Armoury', 'Small Arms', '-5', '9');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [name], [modifier], [FK_technique])
  VALUES ('19', 'Skill', '@Ranged Weapon Skill@', '-4', '10');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [name], [specialization], [modifier], [FK_technique])
  VALUES ('20', 'Skill', 'Guns', '@Speciality@', '-6', '11');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [name], [specialization], [modifier], [FK_technique])
  VALUES ('21', 'Skill', 'Guns', '@Speciality@', '-6', '12');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [name], [specialization], [modifier], [FK_technique])
  VALUES ('22', 'Skill', 'Guns', 'Pistol', '-2', '13');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [name], [specialization], [modifier], [FK_technique])
  VALUES ('23', 'Skill', 'Guns', 'Pistol', '-2', '14');
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[level]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[CharDB].[level] (
    [PrimaryKey] VARCHAR(255)
   ,[compare] VARCHAR(255)
   ,[FK_skill_prereq] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('1', 'at least', '8');
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('2', 'at least', '10');
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('3', 'at least', '12');
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('4', 'at least', '14');
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('5', 'at least', '16');
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('6', 'at least', '18');
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('7', 'at least', '20');
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('8', 'at least', '22');
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('9', 'at least', '24');
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('10', 'at least', '26');
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[name]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[CharDB].[name] (
    [PrimaryKey] VARCHAR(255)
   ,[compare] VARCHAR(255)
   ,[FK_advantage_prereq] VARCHAR(255)
   ,[FK_skill_prereq] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('1', 'is', '1');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('2', 'is', '2');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('3', 'is', '3');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('4', 'is', '4');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('5', 'is', '5');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('6', 'is', '6');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('7', 'is', '7');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('8', 'is', '8');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('9', 'starts with', '1');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('10', 'is', '2');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('11', 'is', '9');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('12', 'is', '10');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('13', 'is', '3');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('14', 'is', '4');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('15', 'is', '11');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('16', 'is', '12');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('17', 'is', '5');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('18', 'is', '6');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('19', 'is', '13');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('20', 'is', '14');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('21', 'is', '7');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('22', 'is', '8');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('23', 'is', '15');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('24', 'is', '16');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('25', 'is', '9');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('26', 'is', '10');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('27', 'is', '17');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('28', 'is', '18');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('29', 'is', '11');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('30', 'is', '12');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('31', 'is', '19');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('32', 'is', '20');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('33', 'is', '13');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('34', 'is', '14');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('35', 'is', '21');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('36', 'is', '22');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('37', 'is', '15');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('38', 'is', '16');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('39', 'is', '23');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('40', 'is', '24');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('41', 'is', '17');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('42', 'is', '18');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('43', 'is', '25');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('44', 'is', '26');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('45', 'is', '19');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('46', 'is', '20');
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[notes]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[CharDB].[notes] (
    [PrimaryKey] VARCHAR(255)
   ,[compare] VARCHAR(255)
   ,[FK_advantage_prereq] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('1', 'is anything', '1');
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('2', 'is anything', '2');
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('3', 'is anything', '3');
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('4', 'is anything', '4');
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('5', 'is anything', '5');
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('6', 'is anything', '6');
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('7', 'is anything', '7');
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('8', 'is anything', '8');
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('9', 'is anything', '9');
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('10', 'is anything', '10');
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('11', 'is anything', '11');
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('12', 'is anything', '12');
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('13', 'is anything', '13');
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('14', 'is anything', '14');
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('15', 'is anything', '15');
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('16', 'is anything', '16');
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('17', 'is anything', '17');
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('18', 'is anything', '18');
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('19', 'is anything', '19');
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('20', 'is anything', '20');
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[prereq_list]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[CharDB].[prereq_list] (
    [PrimaryKey] VARCHAR(255)
   ,[all] VARCHAR(255)
   ,[FK_prereq_list] VARCHAR(255)
   ,[FK_skill] VARCHAR(255)
   ,[FK_technique] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_technique])
  VALUES ('1', 'no', '10');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_technique])
  VALUES ('2', 'yes', '11');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_technique])
  VALUES ('3', 'yes', '12');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('4', 'yes', '10');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_prereq_list])
  VALUES ('5', 'no', '4');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('6', 'yes', '11');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_prereq_list])
  VALUES ('7', 'no', '6');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('8', 'yes', '12');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_prereq_list])
  VALUES ('9', 'no', '8');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('10', 'yes', '13');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_prereq_list])
  VALUES ('11', 'no', '10');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('12', 'yes', '14');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_prereq_list])
  VALUES ('13', 'no', '12');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('14', 'yes', '15');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_prereq_list])
  VALUES ('15', 'no', '14');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('16', 'yes', '16');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_prereq_list])
  VALUES ('17', 'no', '16');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('18', 'yes', '17');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_prereq_list])
  VALUES ('19', 'no', '18');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('20', 'yes', '18');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_prereq_list])
  VALUES ('21', 'no', '20');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('22', 'yes', '19');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_prereq_list])
  VALUES ('23', 'no', '22');
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[skill]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[CharDB].[skill] (
    [PrimaryKey] VARCHAR(255)
   ,[version] VARCHAR(255)
   ,[name] VARCHAR(255)
   ,[specialization] VARCHAR(255)
   ,[tech_level] VARCHAR(255)
   ,[difficulty] VARCHAR(255)
   ,[points] VARCHAR(255)
   ,[reference] VARCHAR(255)
   ,[FK_skill_list] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [specialization], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('1', '2', 'Gun Sport', 'Grenade Launcher', 'DX/E', '1', 'HT250', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [specialization], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('2', '2', 'Gun Sport', 'Gyroc', 'DX/E', '1', 'HT250', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [specialization], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('3', '2', 'Gun Sport', 'Light Anti-Armor Weapon', 'DX/E', '1', 'HT250', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [specialization], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('4', '2', 'Gun Sport', 'Light Machine Gun', 'DX/E', '1', 'HT250', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [specialization], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('5', '2', 'Gun Sport', 'Musket', 'DX/E', '1', 'HT250', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [specialization], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('6', '2', 'Gun Sport', 'Pistol', 'DX/E', '1', 'HT250', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [specialization], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('7', '2', 'Gun Sport', 'Rifle', 'DX/E', '1', 'HT250', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [specialization], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('8', '2', 'Gun Sport', 'Shotgun', 'DX/E', '1', 'HT250', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [specialization], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('9', '2', 'Gun Sport', 'Submachine Gun', 'DX/E', '1', 'HT250', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('10', '2', 'Zen Marksmanship', 'IQ/VH', '1', 'HT250', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [specialization], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('11', '2', 'Zen Marksmanship', 'Grenade Launcher', 'IQ/VH', '1', 'HT250', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [specialization], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('12', '2', 'Zen Marksmanship', 'Gyroc', 'IQ/VH', '1', 'HT250', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [specialization], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('13', '2', 'Zen Marksmanship', 'Light Anti-Armor Weapon', 'IQ/VH', '1', 'HT250', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [specialization], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('14', '2', 'Zen Marksmanship', 'Light Machine Gun', 'IQ/VH', '1', 'HT250', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [specialization], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('15', '2', 'Zen Marksmanship', 'Musket', 'IQ/VH', '1', 'HT250', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [specialization], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('16', '2', 'Zen Marksmanship', 'Pistol', 'IQ/VH', '1', 'HT250', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [specialization], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('17', '2', 'Zen Marksmanship', 'Rifle', 'IQ/VH', '1', 'HT250', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [specialization], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('18', '2', 'Zen Marksmanship', 'Shotgun', 'IQ/VH', '1', 'HT250', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [specialization], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('19', '2', 'Zen Marksmanship', 'Submachine Gun', 'IQ/VH', '1', 'HT250', '1');
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[skill_list]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[CharDB].[skill_list] (
    [PrimaryKey] VARCHAR(255)
   ,[unique_id] VARCHAR(255)
   ,[version] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[CharDB].[skill_list] ([PrimaryKey], [unique_id], [version])
  VALUES ('1', 'hv8scv6u:-176mi7fby84d8', '1');
Database Generic Error
Reason:  

Invalid column name 'unique_id'.
Statement(s) could not be prepared.
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[skill_prereq]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[CharDB].[skill_prereq] (
    [PrimaryKey] VARCHAR(255)
   ,[has] VARCHAR(255)
   ,[Text] VARCHAR(255)
   ,[FK_prereq_list] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('1', 'yes', 'Teamster', '1');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('2', 'yes', 'Driving', '1');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('3', 'yes', 'Bicycling', '1');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('4', 'yes', 'riding', '1');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('5', 'yes', 'Observation', '2');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('6', 'yes', 'Guns', '3');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('7', 'yes', 'meditation', '4');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('8', 'yes', '4');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('9', 'yes', 'Meditation', '6');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('10', 'yes', '6');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('11', 'yes', 'Meditation', '8');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('12', 'yes', '8');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('13', 'yes', 'Meditation', '10');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('14', 'yes', '10');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('15', 'yes', 'Meditation', '12');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('16', 'yes', '12');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('17', 'yes', 'Meditation', '14');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('18', 'yes', '14');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('19', 'yes', 'Meditation', '16');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('20', 'yes', '16');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('21', 'yes', 'Meditation', '18');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('22', 'yes', '18');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('23', 'yes', 'Meditation', '20');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('24', 'yes', '20');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('25', 'yes', 'Meditation', '22');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('26', 'yes', '22');
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[specialization]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[CharDB].[specialization] (
    [PrimaryKey] VARCHAR(255)
   ,[compare] VARCHAR(255)
   ,[FK_skill_prereq] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('1', 'is anything', '1');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('2', 'is anything', '2');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('3', 'is anything', '3');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('4', 'is anything', '4');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('5', 'is anything', '5');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('6', 'is anything', '6');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('7', 'is', '7');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('8', 'is', '8');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('9', 'is anything', '9');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('10', 'is anything', '10');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('11', 'is anything', '11');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('12', 'is anything', '12');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('13', 'is anything', '13');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('14', 'is anything', '14');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('15', 'is anything', '15');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('16', 'is anything', '16');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('17', 'is anything', '17');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('18', 'is anything', '18');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('19', 'is anything', '19');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('20', 'is anything', '20');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('21', 'is anything', '21');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('22', 'is anything', '22');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('23', 'is anything', '23');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('24', 'is anything', '24');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('25', 'is anything', '25');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('26', 'is anything', '26');
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[technique]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[CharDB].[technique] (
    [PrimaryKey] VARCHAR(255)
   ,[version] VARCHAR(255)
   ,[limit] VARCHAR(255)
   ,[name] VARCHAR(255)
   ,[difficulty] VARCHAR(255)
   ,[points] VARCHAR(255)
   ,[reference] VARCHAR(255)
   ,[FK_skill_list] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('1', '2', '4', 'Close-Quarters Battle', 'A', '1', 'HT250', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('2', '2', '0', 'Double-Loading', 'A', '1', 'HT251', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('3', '2', '0', 'Fanning', 'H', '2', 'HT251', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('4', '2', '0', 'Fast-Firing', 'H', '2', 'HT251', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('5', '2', '0', 'Immediate Action', 'A', '1', 'HT251', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('6', '2', '0', 'Immediate Action', 'A', '1', 'HT251', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('7', '2', '0', 'Immediate Action', 'A', '1', 'HT251', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('8', '2', '0', 'Immediate Action', 'A', '1', 'HT251', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('9', '2', '0', 'Instant Arsenal Disarm', 'H', '2', 'HT251', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('10', '2', '0', 'Mounted Shooting', 'H', '2', 'HT251,MA77', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('11', '2', '0', 'Precision Aiming', 'A', '1', 'HT251', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('12', '2', '0', 'Quick-Shot', 'A', '1', 'HT252', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('13', '2', '0', 'Thumbing', 'H', '2', 'HT252', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('14', '2', '0', 'Two-Handed Thumbing', 'H', '2', 'HT252', '1');