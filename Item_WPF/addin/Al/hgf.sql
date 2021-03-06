﻿IF EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[Text]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  DROP TABLE [Item1].[CharDB].[Text]
END;
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[Text]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[CharDB].[Text] (
    [PrimaryKey] VARCHAR(255)
   ,[Text] VARCHAR(255)
   ,[FK_advantage_prereq] VARCHAR(255)
   ,[FK_skill_prereq] VARCHAR(255)
   ,[FK_weapon_bonus] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('1', 'mathematics', '1');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('2', 'applied', '1');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_weapon_bonus])
  VALUES ('3', 'Boxing', '1');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_weapon_bonus])
  VALUES ('4', '1', '1');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_weapon_bonus])
  VALUES ('5', '1', '1');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_weapon_bonus])
  VALUES ('6', 'Boxing', '2');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_weapon_bonus])
  VALUES ('7', '2', '2');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_weapon_bonus])
  VALUES ('8', '1', '2');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_weapon_bonus])
  VALUES ('9', 'Brawling', '3');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_weapon_bonus])
  VALUES ('10', '2', '3');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_weapon_bonus])
  VALUES ('11', '1', '3');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('12', 'suggest', '5');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('13', '12', '5');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('14', 'public speaking', '6');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('15', '12', '6');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_advantage_prereq])
  VALUES ('16', 'charisma', '6');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_advantage_prereq])
  VALUES ('17', '1', '6');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('18', 'mathematics', '13');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('19', 'applied', '13');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('20', 'mathematics', '14');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('21', 'applied', '14');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('22', 'mathematics', '15');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('23', 'applied', '15');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('24', 'mathematics', '16');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('25', 'applied', '16');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('26', 'mathematics', '17');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('27', 'applied', '17');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('28', 'mathematics', '18');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('29', 'applied', '18');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('30', 'mathematics', '19');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('31', 'applied', '19');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('32', 'mathematics', '20');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('33', 'applied', '20');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('34', 'mathematics', '21');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('35', 'applied', '21');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('36', 'mathematics', '24');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('37', 'applied', '24');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('38', 'mathematics', '25');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('39', 'applied', '25');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('40', 'mathematics', '26');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('41', 'applied', '26');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('42', 'mathematics', '27');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('43', 'applied', '27');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('44', 'mathematics', '29');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('45', 'applied', '29');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('46', 'mathematics', '30');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('47', 'applied', '30');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('48', 'mathematics', '31');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('49', 'applied', '31');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('50', 'mathematics', '32');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('51', 'applied', '32');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('52', 'mathematics', '33');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('53', 'applied', '33');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('54', 'mathematics', '34');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('55', 'applied', '34');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_advantage_prereq])
  VALUES ('56', 'charisma', '7');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_advantage_prereq])
  VALUES ('57', '1', '7');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('58', 'public speaking', '36');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('59', '12', '36');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('60', 'stealth', '65');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('61', '14', '65');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('62', 'hypnotism', '66');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('63', '14', '66');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_weapon_bonus])
  VALUES ('64', 'Karate', '4');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_weapon_bonus])
  VALUES ('65', '0', '4');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_weapon_bonus])
  VALUES ('66', '1', '4');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_weapon_bonus])
  VALUES ('67', 'Karate', '5');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_weapon_bonus])
  VALUES ('68', '1', '5');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_weapon_bonus])
  VALUES ('69', '1', '5');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('70', 'stealth', '68');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('71', '14', '68');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('72', 'acrobatics', '69');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('73', '14', '69');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('74', 'singing', '70');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('75', '12', '70');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('76', 'musical instrument', '71');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('77', '12', '71');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_advantage_prereq])
  VALUES ('78', 'Talent (Musical Ability)', '18');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_advantage_prereq])
  VALUES ('79', '1', '18');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_advantage_prereq])
  VALUES ('80', 'charisma', '19');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_advantage_prereq])
  VALUES ('81', '1', '19');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('82', 'public speaking', '72');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('83', '12', '72');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('84', 'mathematics', '74');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('85', 'applied', '74');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('86', 'mathematics', '75');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('87', 'applied', '75');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('88', 'pressure points', '76');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('89', '16', '76');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_advantage_prereq])
  VALUES ('90', 'Language', '26');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_advantage_prereq])
  VALUES ('91', 'Written (Native', '26');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_advantage_prereq])
  VALUES ('92', 'Language', '27');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_advantage_prereq])
  VALUES ('93', 'Written (Accented)', '27');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_advantage_prereq])
  VALUES ('94', 'Language', '28');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_advantage_prereq])
  VALUES ('95', 'Written (Broken)', '28');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('96', 'navigation', '79');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('97', 'air', '79');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('98', 'navigation', '82');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('99', 'air', '82');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('100', 'navigation', '86');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('101', 'sea', '86');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('102', 'navigation', '89');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('103', 'space', '89');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('104', 'navigation', '92');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('105', 'hyperspace', '92');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('106', 'navigation', '95');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('107', 'sea', '95');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('108', 'persuade', '99');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('109', '12', '99');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('110', 'public speaking', '100');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('111', '12', '100');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_advantage_prereq])
  VALUES ('112', 'charisma', '29');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_advantage_prereq])
  VALUES ('113', '1', '29');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('114', 'bow', '104');
INSERT INTO [Item1].[CharDB].[Text] ([PrimaryKey], [Text], [FK_skill_prereq])
  VALUES ('115', '18', '104');
IF EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[advantage_prereq]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  DROP TABLE [Item1].[CharDB].[advantage_prereq]
END;
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
  VALUES ('1', 'yes', 'weapon master', '3');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('2', 'yes', 'trained by a master', '3');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('3', 'yes', 'trained by a master', '4');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('4', 'yes', 'psychology', '5');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('5', 'yes', 'trained by a master', '6');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('6', 'yes', '7');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('7', 'yes', '37');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('8', 'yes', 'flight', '40');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('9', 'yes', 'weapon master', '42');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('10', 'yes', 'trained by a master', '42');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('11', 'yes', 'trained by a master', '59');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('12', 'yes', 'trained by a master', '60');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('13', 'yes', 'weapon master', '61');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('14', 'yes', 'trained by a master', '61');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('15', 'yes', 'trained by a master', '63');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('16', 'yes', 'weapon master', '64');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('17', 'yes', 'trained by a master', '64');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('18', 'yes', '65');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('19', 'yes', '67');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('20', 'yes', 'weapon master', '71');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('21', 'yes', 'trained by a master', '71');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('22', 'yes', 'weapon master', '72');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('23', 'yes', 'trained by a master', '72');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('24', 'yes', 'trained by a master', '73');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('25', 'yes', 'trained by a master', '74');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('26', 'yes', '77');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('27', 'yes', '77');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('28', 'yes', '77');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('29', 'yes', '86');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('30', 'yes', 'weapon master', '88');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('31', 'yes', 'trained by a master', '88');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('32', 'yes', 'weapon master', '90');
INSERT INTO [Item1].[CharDB].[advantage_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('33', 'yes', 'trained by a master', '90');
IF EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[amount]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  DROP TABLE [Item1].[CharDB].[amount]
END;
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[amount]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[CharDB].[amount] (
    [PrimaryKey] VARCHAR(255)
   ,[per_level] VARCHAR(255)
   ,[FK_weapon_bonus] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[CharDB].[amount] ([PrimaryKey], [per_level], [FK_weapon_bonus])
  VALUES ('1', 'yes', '1');
INSERT INTO [Item1].[CharDB].[amount] ([PrimaryKey], [per_level], [FK_weapon_bonus])
  VALUES ('2', 'yes', '2');
INSERT INTO [Item1].[CharDB].[amount] ([PrimaryKey], [per_level], [FK_weapon_bonus])
  VALUES ('3', 'yes', '3');
INSERT INTO [Item1].[CharDB].[amount] ([PrimaryKey], [per_level], [FK_weapon_bonus])
  VALUES ('4', 'yes', '4');
INSERT INTO [Item1].[CharDB].[amount] ([PrimaryKey], [per_level], [FK_weapon_bonus])
  VALUES ('5', 'yes', '5');
IF EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[attribute_prereq]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  DROP TABLE [Item1].[CharDB].[attribute_prereq]
END;
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[attribute_prereq]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[CharDB].[attribute_prereq] (
    [PrimaryKey] VARCHAR(255)
   ,[has] VARCHAR(255)
   ,[which] VARCHAR(255)
   ,[compare] VARCHAR(255)
   ,[FK_prereq_list] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[CharDB].[attribute_prereq] ([PrimaryKey], [has], [which], [compare], [FK_prereq_list])
  VALUES ('1', 'yes', 'dx', 'at least', '38');
IF EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[categories]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  DROP TABLE [Item1].[CharDB].[categories]
END;
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
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('1', 'Business', '1');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('2', 'Athletic', '2');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('3', '3');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('4', '4');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('5', 'Athletic', '5');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('6', 'Vehicle', '6');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('7', '7');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('8', 'Animal', '8');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('9', 'Animal', '9');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('10', 'Animal', '10');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('11', 'Animal', '11');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('12', 'Animal', '12');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('13', 'Social Sciences/Humanities', '13');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('14', 'Athletic', '14');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('15', 'Social Sciences/Humanities', '15');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('16', 'Design/Invention', '16');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('17', '17');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('18', '18');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('19', '19');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('20', '20');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('21', '21');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('22', '22');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('23', '23');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('24', '24');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('25', '25');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('26', '26');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('27', '27');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('28', '28');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('29', '29');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('30', '30');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('31', '31');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('32', '32');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('33', '33');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('34', '34');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('35', '1');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('36', '2');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('37', '35');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('38', '36');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('39', '37');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('40', '38');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('41', '39');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('42', '40');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('43', '41');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('44', '42');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('45', '43');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('46', '44');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('47', '45');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('48', '46');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('49', '47');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('50', '48');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('51', '49');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('52', '50');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('53', 'Arts/Entertainment', '51');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('54', 'Arts/Entertainment', '52');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('55', 'Arts/Entertainment', '53');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('56', 'Arts/Entertainment', '54');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('57', 'Arts/Entertainment', '55');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('58', 'Arts/Entertainment', '56');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('59', 'Arts/Entertainment', '57');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('60', 'Arts/Entertainment', '58');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('61', '59');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('62', 'Arts/Entertainment', '60');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('63', '61');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('64', '62');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('65', 'Natural Science', '63');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('66', 'Esoteric', '64');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('67', '65');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('68', '3');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('69', '66');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('70', '67');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('71', '68');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('72', '69');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('73', '70');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('74', '71');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('75', '72');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('76', 'Design/Invention', '73');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('77', 'Design/Invention', '74');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('78', 'Design/Invention', '75');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('79', 'Design/Invention', '76');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('80', '77');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('81', '78');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('82', '79');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('83', '80');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('84', '81');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('85', '82');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('86', '83');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('87', '84');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('88', '85');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('89', '86');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('90', '87');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('91', '88');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('92', '89');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('93', 'Natural Science', '90');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('94', 'Esoteric', '91');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('95', '92');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('96', 'Vehicle', '93');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('97', 'Vehicle', '94');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('98', 'Vehicle', '95');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('99', 'Vehicle', '96');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('100', 'Vehicle', '97');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('101', 'Esoteric', '98');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('102', '99');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('103', 'Athletic', '100');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('104', '101');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('105', '102');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('106', '103');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('107', '104');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('108', '105');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('109', '106');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('110', 'Esoteric', '107');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('111', 'Athletic', '108');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('112', '109');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('113', '110');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('114', 'Esoteric', '111');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('115', '112');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('116', 'Craft', '113');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('117', '114');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('118', 'Natural Science', '115');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('119', '4');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('120', '5');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('121', '116');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('122', '117');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('123', 'Athletic', '118');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('124', 'Athletic', '119');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('125', 'Athletic', '120');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('126', 'Athletic', '121');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('127', 'Athletic', '122');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('128', 'Athletic', '123');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('129', '124');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('130', '125');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('131', 'Design/Invention', '126');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('132', 'Design/Invention', '127');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('133', '128');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('134', '129');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('135', '130');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('136', '131');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('137', '132');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('138', '133');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('139', 'Everyman', '134');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('140', 'Everyman', '135');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('141', 'Everyman', '136');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('142', 'Everyman', '137');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('143', 'Criminal/Street', '138');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('144', '139');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('145', '140');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('146', '141');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('147', '142');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('148', '143');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('149', '144');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('150', '145');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('151', '146');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('152', '147');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('153', '148');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('154', '149');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('155', '150');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('156', '151');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('157', '152');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('158', '153');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('159', '154');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('160', 'Arts/Entertainment', '155');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('161', '156');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('162', 'Medical', '157');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('163', '158');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('164', '6');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('165', '7');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('166', '8');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('167', '9');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('168', '10');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('169', '11');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('170', '159');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('171', 'Technical', '160');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('172', 'Esoteric', '161');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('173', 'Vehicle', '162');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('174', 'Vehicle', '163');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('175', 'Vehicle', '164');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('176', 'Vehicle', '165');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('177', 'Vehicle', '166');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('178', 'Vehicle', '167');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('179', 'Vehicle', '168');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('180', 'Vehicle', '169');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('181', 'Vehicle', '170');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('182', 'Vehicle', '171');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('183', '172');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('184', '12');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('185', '13');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('186', '14');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('187', '15');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('188', '173');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('189', '16');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('190', '17');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('191', 'Repair/Maintainance', '174');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('192', 'Technical', '175');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('193', 'Technical', '176');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('194', '177');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('195', 'Technical', '178');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('196', 'Technical', '179');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('197', '180');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('198', '181');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('199', 'Technical', '182');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('200', 'Technical', '183');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('201', 'Technical', '184');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('202', '185');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('203', 'Technical', '186');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('204', 'Technical', '187');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('205', '188');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('206', 'Technical', '189');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('207', 'Repair/Maintainance', '190');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('208', 'Repair/Maintainance', '191');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('209', 'Repair/Maintainance', '192');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('210', '193');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('211', 'Repair/Maintainance', '194');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('212', 'Repair/Maintainance', '195');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('213', 'Repair/Maintainance', '196');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('214', 'Repair/Maintainance', '197');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('215', 'Repair/Maintainance', '198');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('216', 'Repair/Maintainance', '199');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('217', 'Repair/Maintainance', '200');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('218', 'Repair/Maintainance', '201');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('219', 'Repair/Maintainance', '202');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('220', 'Repair/Maintainance', '203');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('221', 'Repair/Maintainance', '204');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('222', 'Repair/Maintainance', '205');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('223', '206');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('224', '207');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('225', '208');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('226', '209');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('227', '210');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('228', '211');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('229', '212');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('230', '213');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('231', '214');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('232', '215');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('233', '216');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('234', '217');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('235', '218');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('236', '219');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('237', '220');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('238', '221');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('239', '222');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('240', '223');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('241', '224');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('242', 'Esoteric', '225');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('243', 'Technical', '226');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('244', 'Social', '227');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('245', 'Criminal/Street', '228');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('246', '229');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('247', 'Occult/Magical', '230');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('248', '231');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('249', '232');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('250', '233');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('251', '234');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('252', '235');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('253', '236');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('254', '237');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('255', '238');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('256', '239');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('257', '240');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('258', '241');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('259', '242');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('260', '243');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('261', '244');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('262', '245');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('263', '246');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('264', '247');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('265', 'Animal', '248');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('266', 'Plant', '249');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('267', '250');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('268', '251');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('269', '252');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('270', '253');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('271', '254');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('272', '255');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('273', '256');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('274', '257');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('275', '258');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('276', '18');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('277', '19');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('278', '20');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('279', '21');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('280', '22');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('281', '23');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('282', '24');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('283', '259');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('284', 'Business', '260');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('285', '25');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('286', 'Arts/Entertainment', '261');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('287', '262');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('288', 'Outdoor/Exploration', '263');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('289', '264');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('290', 'Athletic', '265');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('291', 'Esoteric', '266');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('292', '267');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('293', '268');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('294', '269');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('295', 'Police', '270');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('296', '271');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('297', 'Social', '272');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('298', 'Social', '273');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('299', 'Social', '274');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('300', 'Social', '275');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('301', 'Social', '276');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('302', 'Social', '277');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('303', 'Social', '278');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('304', 'Military', '279');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('305', 'Athletic', '280');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('306', '281');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('307', '282');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('308', 'Knowledge', '283');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('309', 'Plant', '284');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('310', '285');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('311', 'Social Sciences/Humanities', '286');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('312', 'Social Sciences/Humanities', '287');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('313', 'Social Sciences/Humanities', '288');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('314', 'Social Sciences/Humanities', '289');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('315', 'Social Sciences/Humanities', '290');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('316', 'Social Sciences/Humanities', '291');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('317', 'Social Sciences/Humanities', '292');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('318', 'Social Sciences/Humanities', '293');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('319', 'Social Sciences/Humanities', '294');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('320', 'Natural Science', '295');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('321', 'Natural Science', '296');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('322', 'Natural Science', '297');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('323', 'Natural Science', '298');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('324', 'Natural Science', '299');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('325', 'Natural Science', '300');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('326', 'Natural Science', '301');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('327', 'Social', '302');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('328', '26');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('329', '27');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('330', '28');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('331', '29');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('332', '30');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('333', '31');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('334', 'Arts/Entertainment', '303');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('335', 'Arts/Entertainment', '304');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('336', 'Arts/Entertainment', '305');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('337', 'Arts/Entertainment', '306');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('338', 'Arts/Entertainment', '307');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('339', '308');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('340', '309');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('341', '310');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('342', '311');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('343', '312');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('344', '313');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('345', '314');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('346', '315');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('347', '316');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('348', '317');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('349', '318');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('350', '319');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('351', '320');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('352', '321');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('353', '322');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('354', '323');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('355', 'Technical', '324');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('356', 'Technical', '325');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('357', 'Technical', '326');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('358', 'Technical', '327');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('359', 'Technical', '328');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('360', '329');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('361', 'Plant', '330');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('362', 'Knowledge', '331');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('363', 'Knowledge', '332');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('364', '333');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('365', 'Knowledge', '334');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('366', '335');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('367', '336');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('368', '337');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('369', 'Social Sciences/Humanities', '338');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('370', 'Knowledge', '339');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('371', 'Knowledge', '340');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('372', '341');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('373', '32');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('374', 'Everyman', '342');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('375', 'Medical', '343');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('376', 'Esoteric', '344');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('377', '33');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('378', '345');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('379', '346');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('380', '347');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('381', '348');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('382', '349');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('383', '350');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('384', '351');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('385', 'Esoteric', '352');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('386', 'Craft', '353');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('387', '354');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('388', '355');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('389', '34');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('390', 'Athletic', '356');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('391', '357');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('392', 'Esoteric', '358');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('393', '35');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('394', '36');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('395', '37');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('396', '38');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('397', '359');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('398', 'Everyman', '360');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('399', '361');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('400', '362');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('401', '363');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('402', '364');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('403', '365');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('404', 'Craft', '366');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('405', '39');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('406', 'Athletic', '367');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('407', 'Esoteric', '368');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('408', 'Social Sciences/Humanities', '369');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('409', 'Spy', '370');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('410', '371');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('411', '372');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('412', '373');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('413', '374');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('414', '375');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('415', '376');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('416', '377');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('417', 'Repair/Maintainance', '378');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('418', '379');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('419', 'Arts/Entertainment', '380');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('420', 'Business', '381');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('421', 'Craft', '382');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('422', 'Natural Science', '383');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('423', 'Natural Science', '384');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('424', 'Natural Science', '385');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('425', 'Natural Science', '386');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('426', 'Natural Science', '387');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('427', 'Natural Science', '388');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('428', '389');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('429', 'Repair/Maintainance', '390');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('430', 'Repair/Maintainance', '391');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('431', 'Repair/Maintainance', '392');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('432', 'Repair/Maintainance', '393');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('433', 'Repair/Maintainance', '394');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('434', 'Repair/Maintainance', '395');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('435', 'Repair/Maintainance', '396');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('436', 'Repair/Maintainance', '397');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('437', 'Repair/Maintainance', '398');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('438', 'Repair/Maintainance', '399');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('439', 'Repair/Maintainance', '400');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('440', 'Repair/Maintainance', '401');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('441', 'Repair/Maintainance', '402');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('442', 'Repair/Maintainance', '403');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('443', 'Repair/Maintainance', '404');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('444', 'Repair/Maintainance', '405');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('445', 'Repair/Maintainance', '406');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('446', 'Repair/Maintainance', '407');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('447', 'Repair/Maintainance', '408');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('448', 'Repair/Maintainance', '409');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('449', 'Repair/Maintainance', '410');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('450', 'Repair/Maintainance', '411');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('451', 'Repair/Maintainance', '412');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('452', 'Repair/Maintainance', '413');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('453', 'Repair/Maintainance', '414');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('454', 'Repair/Maintainance', '415');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('455', 'Repair/Maintainance', '416');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('456', 'Repair/Maintainance', '417');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('457', 'Repair/Maintainance', '418');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('458', 'Repair/Maintainance', '419');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('459', 'Repair/Maintainance', '420');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('460', 'Repair/Maintainance', '421');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('461', 'Repair/Maintainance', '422');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('462', 'Repair/Maintainance', '423');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('463', 'Repair/Maintainance', '424');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('464', 'Repair/Maintainance', '425');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('465', 'Repair/Maintainance', '426');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('466', 'Repair/Maintainance', '427');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('467', 'Repair/Maintainance', '428');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('468', 'Repair/Maintainance', '429');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('469', 'Repair/Maintainance', '430');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('470', 'Repair/Maintainance', '431');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('471', 'Repair/Maintainance', '432');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('472', 'Repair/Maintainance', '433');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('473', 'Repair/Maintainance', '434');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('474', 'Esoteric', '435');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('475', 'Esoteric', '436');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('476', '437');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('477', 'Natural Science', '438');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('478', 'Natural Science', '439');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('479', 'Natural Science', '440');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('480', 'Natural Science', '441');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('481', 'Natural Science', '442');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('482', 'Natural Science', '443');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('483', 'Natural Science', '444');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('484', 'Natural Science', '445');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('485', '446');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('486', '447');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('487', 'Arts/Entertainment', '448');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('488', 'Esoteric', '449');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('489', '450');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('490', '40');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('491', '451');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('492', 'Arts/Entertainment', '452');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('493', 'Esoteric', '453');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('494', 'Arts/Entertainment', '454');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('495', '455');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('496', '456');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('497', '457');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('498', '458');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('499', '459');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('500', '460');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('501', '461');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('502', '462');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('503', '463');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('504', '464');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('505', '465');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('506', '466');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('507', '467');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('508', '468');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('509', '41');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('510', '469');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('511', '42');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('512', '470');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('513', 'Occult/Magical', '471');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('514', '43');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('515', '44');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('516', '45');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('517', '46');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('518', 'Animal', '472');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('519', '473');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('520', '474');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('521', '475');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('522', '476');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('523', '477');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('524', '478');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('525', '479');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('526', 'Arts/Entertainment', '480');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('527', 'Esoteric', '481');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('528', '482');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('529', '483');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('530', 'Social Sciences/Humanities', '484');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('531', '485');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('532', 'Medical', '486');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('533', 'Natural Science', '487');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('534', 'Natural Science', '488');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('535', '489');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('536', 'Criminal/Street', '490');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('537', 'Vehicle', '491');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('538', 'Vehicle', '492');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('539', 'Vehicle', '493');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('540', 'Vehicle', '494');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('541', 'Vehicle', '495');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('542', 'Vehicle', '496');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('543', 'Vehicle', '497');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('544', 'Vehicle', '498');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('545', 'Vehicle', '499');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('546', 'Vehicle', '500');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('547', 'Vehicle', '501');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('548', 'Vehicle', '502');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('549', 'Vehicle', '503');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('550', 'Vehicle', '504');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('551', 'Vehicle', '505');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('552', 'Vehicle', '506');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('553', 'Vehicle', '507');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('554', 'Arts/Entertainment', '508');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('555', '509');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('556', '510');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('557', '511');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('558', 'Esoteric', '512');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('559', 'Esoteric', '513');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('560', 'Esoteric', '514');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('561', 'Knowledge', '515');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('562', 'Knowledge', '516');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('563', '517');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('564', 'Outdoor/Exploration', '518');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('565', 'Social Sciences/Humanities', '519');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('566', '520');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('567', 'Esoteric', '521');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('568', '522');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('569', 'Occult/Magical', '523');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('570', '524');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('571', '47');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('572', '48');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('573', '49');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('574', '50');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('575', '51');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('576', 'Animal', '525');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('577', 'Animal', '526');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('578', 'Animal', '527');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('579', 'Animal', '528');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('580', 'Animal', '529');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('581', 'Occult/Magical', '530');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('582', '52');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('583', 'Athletic', '531');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('584', '532');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('585', '533');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('586', '534');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('587', '535');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('588', '536');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('589', '537');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('590', '538');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('591', '539');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('592', '53');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('593', 'Criminal/Street', '540');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('594', '541');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('595', 'Vehicle', '542');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('596', '543');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('597', '54');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('598', '544');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('599', 'Social', '545');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('600', '546');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('601', '547');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('602', '548');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('603', '549');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('604', 'Vehicle', '550');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('605', 'Vehicle', '551');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('606', 'Vehicle', '552');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('607', 'Vehicle', '553');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('608', 'Vehicle', '554');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('609', 'Vehicle', '555');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('610', '556');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('611', 'Arts/Entertainment', '557');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('612', 'Outdoor/Exploration', '558');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('613', '559');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('614', '560');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('615', '561');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('616', '55');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('617', '562');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('618', 'Craft', '563');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('619', 'Craft', '564');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('620', 'Craft', '565');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('621', '566');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('622', 'Social Sciences/Humanities', '567');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('623', 'Military', '568');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('624', 'Vehicle', '569');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('625', '570');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('626', '571');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('627', 'Scholarly', '572');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('628', 'Athletic', '573');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('629', '574');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('630', 'Arts/Entertainment', '575');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('631', '576');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('632', 'Military', '577');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('633', 'Military', '578');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('634', 'Military', '579');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('635', '580');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('636', 'Vehicle', '581');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('637', 'Vehicle', '582');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('638', 'Vehicle', '583');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('639', 'Vehicle', '584');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('640', 'Esoteric', '585');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('641', '586');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('642', 'Medical', '587');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('643', 'Outdoor/Exploration', '588');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('644', 'Outdoor/Exploration', '589');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('645', 'Outdoor/Exploration', '590');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('646', 'Outdoor/Exploration', '591');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('647', 'Outdoor/Exploration', '592');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('648', 'Outdoor/Exploration', '593');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('649', 'Outdoor/Exploration', '594');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('650', 'Outdoor/Exploration', '595');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('651', 'Outdoor/Exploration', '596');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('652', 'Outdoor/Exploration', '597');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('653', 'Outdoor/Exploration', '598');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('654', 'Outdoor/Exploration', '599');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('655', 'Outdoor/Exploration', '600');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('656', 'Outdoor/Exploration', '601');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('657', 'Outdoor/Exploration', '602');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('658', 'Outdoor/Exploration', '603');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('659', 'Outdoor/Exploration', '604');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('660', 'Social', '605');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('661', '56');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('662', '57');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('663', '58');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('664', '59');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('665', '60');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('666', '61');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('667', '62');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('668', '63');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('669', '606');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('670', 'Occult/Magical', '607');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('671', '608');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('672', '609');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('673', '610');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('674', '611');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('675', 'Occult/Magical', '612');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('676', 'Social Sciences/Humanities', '613');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('677', '614');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('678', 'Esoteric', '615');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('679', '616');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('680', '617');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('681', '618');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('682', '619');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('683', '620');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('684', '621');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('685', '622');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('686', '623');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('687', '624');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('688', 'Outdoor/Exploration', '625');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('689', '626');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('690', '627');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('691', '628');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('692', '629');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('693', '630');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('694', '631');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('695', 'Technical', '632');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('696', 'Arts/Entertainment', '633');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('697', '634');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('698', '635');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('699', 'Design/Invention', '636');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('700', '637');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('701', '64');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('702', '65');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('703', '66');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('704', '67');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('705', '68');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('706', '69');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_technique])
  VALUES ('707', '70');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('708', '638');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [FK_skill])
  VALUES ('709', '639');
INSERT INTO [Item1].[CharDB].[categories] ([PrimaryKey], [category], [FK_skill])
  VALUES ('710', 'Esoteric', '640');
IF EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[category]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  DROP TABLE [Item1].[CharDB].[category]
END;
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
  VALUES ('1', 'Social', '3');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('2', 'Spy', '3');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('3', 'Business', '4');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('4', 'Social', '4');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('5', 'Natural Science', '7');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('6', 'Occult/Magical', '7');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('7', 'Everyman', '17');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('8', 'Knowledge', '17');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('9', 'Everyman', '18');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('10', 'Knowledge', '18');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('11', 'Everyman', '19');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('12', 'Knowledge', '19');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('13', 'Everyman', '20');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('14', 'Knowledge', '20');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('15', 'Everyman', '21');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('16', 'Knowledge', '21');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('17', 'Everyman', '22');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('18', 'Knowledge', '22');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('19', 'Everyman', '23');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('20', 'Knowledge', '23');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('21', 'Everyman', '24');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('22', 'Knowledge', '24');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('23', 'Everyman', '25');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('24', 'Knowledge', '25');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('25', 'Everyman', '26');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('26', 'Knowledge', '26');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('27', 'Everyman', '27');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('28', 'Knowledge', '27');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('29', 'Everyman', '28');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('30', 'Knowledge', '28');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('31', 'Everyman', '29');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('32', 'Knowledge', '29');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('33', 'Everyman', '30');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('34', 'Knowledge', '30');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('35', 'Everyman', '31');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('36', 'Knowledge', '31');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('37', 'Everyman', '32');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('38', 'Knowledge', '32');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('39', 'Everyman', '33');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('40', 'Knowledge', '33');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('41', 'Everyman', '34');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('42', 'Knowledge', '34');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('43', 'Combat/Weapon', '35');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('44', 'Melee Combat', '35');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('45', 'Technique', '35');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('46', 'Combat/Weapon', '36');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('47', 'Melee Combat', '36');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('48', 'Technique', '36');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('49', 'Military', '37');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('50', 'Repair/Maintainance', '37');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('51', 'Military', '38');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('52', 'Repair/Maintainance', '38');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('53', 'Military', '39');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('54', 'Repair/Maintainance', '39');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('55', 'Military', '40');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('56', 'Repair/Maintainance', '40');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('57', 'Military', '41');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('58', 'Repair/Maintainance', '41');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('59', 'Military', '42');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('60', 'Repair/Maintainance', '42');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('61', 'Military', '43');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('62', 'Repair/Maintainance', '43');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('63', 'Military', '44');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('64', 'Repair/Maintainance', '44');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('65', 'Military', '45');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('66', 'Repair/Maintainance', '45');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('67', 'Combat/Weapon', '46');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('68', 'Ranged Combat', '46');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('69', 'Combat/Weapon', '47');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('70', 'Ranged Combat', '47');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('71', 'Combat/Weapon', '48');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('72', 'Ranged Combat', '48');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('73', 'Combat/Weapon', '49');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('74', 'Ranged Combat', '49');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('75', 'Combat/Weapon', '50');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('76', 'Ranged Combat', '50');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('77', 'Combat/Weapon', '51');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('78', 'Ranged Combat', '51');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('79', 'Combat/Weapon', '52');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('80', 'Ranged Combat', '52');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('81', 'Arts/Entertainment', '61');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('82', 'Craft', '61');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('83', 'Arts/Entertainment', '63');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('84', 'Craft', '63');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('85', 'Arts/Entertainment', '64');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('86', 'Craft', '64');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('87', 'Combat/Weapon', '67');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('88', 'Melee Combat', '67');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('89', 'Combat/Weapon', '68');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('90', 'Melee Combat', '68');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('91', 'Technique', '68');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('92', 'Professional', '69');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('93', 'Social', '69');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('94', 'Military', '70');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('95', 'Technical', '70');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('96', 'Combat/Weapon', '71');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('97', 'Ranged Combat', '71');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('98', 'Combat/Weapon', '72');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('99', 'Ranged Combat', '72');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('100', 'Combat/Weapon', '73');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('101', 'Ranged Combat', '73');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('102', 'Combat/Weapon', '74');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('103', 'Ranged Combat', '74');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('104', 'Athletic', '75');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('105', 'Vehicle', '75');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('106', 'Natural Science', '80');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('107', 'Plant', '80');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('108', 'Natural Science', '81');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('109', 'Plant', '81');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('110', 'Natural Science', '82');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('111', 'Plant', '82');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('112', 'Natural Science', '83');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('113', 'Plant', '83');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('114', 'Natural Science', '84');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('115', 'Plant', '84');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('116', 'Natural Science', '85');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('117', 'Plant', '85');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('118', 'Natural Science', '86');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('119', 'Plant', '86');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('120', 'Natural Science', '87');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('121', 'Plant', '87');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('122', 'Natural Science', '88');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('123', 'Plant', '88');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('124', 'Natural Science', '89');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('125', 'Plant', '89');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('126', 'Natural Science', '90');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('127', 'Plant', '90');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('128', 'Natural Science', '91');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('129', 'Plant', '91');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('130', 'Natural Science', '92');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('131', 'Plant', '92');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('132', 'Combat/Weapon', '95');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('133', 'Ranged Combat', '95');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('134', 'Police', '102');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('135', 'Social', '102');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('136', 'Spy', '102');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('137', 'Combat/Weapon', '104');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('138', 'Ranged Combat', '104');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('139', 'Combat/Weapon', '105');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('140', 'Ranged Combat', '105');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('141', 'Combat/Weapon', '106');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('142', 'Melee Combat', '106');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('143', 'Criminal/Street', '107');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('144', 'Spy', '107');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('145', 'Military', '108');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('146', 'Spy', '108');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('147', 'Combat/Weapon', '109');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('148', 'Melee Combat', '109');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('149', 'Combat/Weapon', '112');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('150', 'Melee Combat', '112');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('151', 'Military', '113');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('152', 'Outdoor/Exploration', '113');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('153', 'Criminal/Street', '115');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('154', 'Social', '115');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('155', 'Outdoor/Exploration', '117');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('156', 'Social Sciences/Humanities', '117');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('157', 'Combat/Weapon', '119');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('158', 'Melee Combat', '119');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('159', 'Technique', '119');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('160', 'Combat/Weapon', '120');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('161', 'Melee Combat', '120');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('162', 'Technique', '120');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('163', 'Athletic', '121');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('164', 'Criminal/Street', '121');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('165', 'Outdoor/Exploration', '121');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('166', 'Combat/Weapon', '122');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('167', 'Melee Combat', '122');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('168', 'Criminal/Street', '129');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('169', 'Spy', '129');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('170', 'Everyman', '130');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('171', 'Scholarly', '130');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('172', 'Technical', '130');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('173', 'Arts/Entertainment', '133');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('174', 'Knowledge', '133');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('175', 'Social', '133');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('176', 'Arts/Entertainment', '134');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('177', 'Knowledge', '134');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('178', 'Social', '134');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('179', 'Arts/Entertainment', '135');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('180', 'Knowledge', '135');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('181', 'Social', '135');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('182', 'Arts/Entertainment', '136');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('183', 'Knowledge', '136');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('184', 'Social', '136');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('185', 'Arts/Entertainment', '137');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('186', 'Knowledge', '137');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('187', 'Social', '137');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('188', 'Arts/Entertainment', '138');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('189', 'Knowledge', '138');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('190', 'Social', '138');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('191', 'Police', '144');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('192', 'Social Sciences/Humanities', '144');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('193', 'Combat/Weapon', '145');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('194', 'Ranged Combat', '145');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('195', 'Military', '146');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('196', 'Spy', '146');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('197', 'Military', '147');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('198', 'Spy', '147');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('199', 'Military', '148');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('200', 'Spy', '148');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('201', 'Business', '149');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('202', 'Everyman', '149');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('203', 'Knowledge', '149');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('204', 'Social', '149');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('205', 'Business', '150');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('206', 'Everyman', '150');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('207', 'Knowledge', '150');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('208', 'Social', '150');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('209', 'Everyman', '151');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('210', 'Knowledge', '151');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('211', 'Social', '151');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('212', 'Arts/Entertainment', '152');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('213', 'Everyman', '152');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('214', 'Knowledge', '152');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('215', 'Social', '152');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('216', 'Everyman', '153');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('217', 'Knowledge', '153');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('218', 'Social', '153');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('219', 'Everyman', '154');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('220', 'Knowledge', '154');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('221', 'Social', '154');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('222', 'Arts/Entertainment', '155');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('223', 'Everyman', '155');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('224', 'Knowledge', '155');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('225', 'Social', '155');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('226', 'Everyman', '156');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('227', 'Knowledge', '156');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('228', 'Social', '156');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('229', 'Everyman', '157');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('230', 'Knowledge', '157');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('231', 'Social', '157');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('232', 'Everyman', '158');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('233', 'Knowledge', '158');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('234', 'Social', '158');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('235', 'Everyman', '159');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('236', 'Knowledge', '159');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('237', 'Social', '159');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('238', 'Police', '161');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('239', 'Social', '161');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('240', 'Spy', '161');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('241', 'Business', '163');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('242', 'Police', '163');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('243', 'Social', '163');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('244', 'Combat/Weapon', '164');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('245', 'Melee Combat', '164');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('246', 'Technique', '164');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('247', 'Combat/Weapon', '165');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('248', 'Melee Combat', '165');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('249', 'Technique', '165');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('250', 'Combat/Weapon', '166');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('251', 'Melee Combat', '166');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('252', 'Technique', '166');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('253', 'Combat/Weapon', '167');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('254', 'Melee Combat', '167');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('255', 'Technique', '167');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('256', 'Combat/Weapon', '168');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('257', 'Melee Combat', '168');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('258', 'Technique', '168');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('259', 'Combat/Weapon', '169');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('260', 'Melee Combat', '169');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('261', 'Technique', '169');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('262', 'Criminal/Street', '170');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('263', 'Spy', '170');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('264', 'Combat/Weapon', '183');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('265', 'Ranged Combat', '183');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('266', 'Cinematic Techniques', '184');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('267', 'Combat/Weapon', '184');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('268', 'Melee Combat', '184');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('269', 'Cinematic Techniques', '185');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('270', 'Combat/Weapon', '185');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('271', 'Ranged Combat', '185');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('272', 'Cinematic Techniques', '186');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('273', 'Combat/Weapon', '186');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('274', 'Melee Combat', '186');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('275', 'Cinematic Techniques', '187');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('276', 'Combat/Weapon', '187');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('277', 'Melee Combat', '187');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('278', 'Business', '188');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('279', 'Social Sciences/Humanities', '188');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('280', 'Combat/Weapon', '189');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('281', 'Melee Combat', '189');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('282', 'Technique', '189');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('283', 'Combat/Weapon', '190');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('284', 'Melee Combat', '190');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('285', 'Technique', '190');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('286', 'Military', '194');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('287', 'Spy', '194');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('288', 'Technical', '194');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('289', 'Arts/Entertainment', '197');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('290', 'Technical', '197');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('291', 'Medical', '198');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('292', 'Technical', '198');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('293', 'Criminal/Street', '202');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('294', 'Spy', '202');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('295', 'Technical', '202');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('296', 'Police', '205');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('297', 'Spy', '205');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('298', 'Technical', '205');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('299', 'Military', '210');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('300', 'Repair/Maintainance', '210');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('301', 'Design/Invention', '223');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('302', 'Engineer', '223');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('303', 'Design/Invention', '224');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('304', 'Engineer', '224');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('305', 'Design/Invention', '225');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('306', 'Engineer', '225');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('307', 'Design/Invention', '226');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('308', 'Engineer', '226');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('309', 'Design/Invention', '227');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('310', 'Engineer', '227');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('311', 'Design/Invention', '228');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('312', 'Engineer', '228');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('313', 'Design/Invention', '229');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('314', 'Engineer', '229');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('315', 'Design/Invention', '230');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('316', 'Engineer', '230');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('317', 'Design/Invention', '231');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('318', 'Engineer', '231');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('319', 'Design/Invention', '232');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('320', 'Engineer', '232');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('321', 'Design/Invention', '233');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('322', 'Engineer', '233');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('323', 'Design/Invention', '234');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('324', 'Engineer', '234');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('325', 'Design/Invention', '235');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('326', 'Engineer', '235');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('327', 'Design/Invention', '236');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('328', 'Engineer', '236');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('329', 'Design/Invention', '237');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('330', 'Engineer', '237');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('331', 'Design/Invention', '238');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('332', 'Engineer', '238');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('333', 'Design/Invention', '239');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('334', 'Engineer', '239');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('335', 'Design/Invention', '240');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('336', 'Engineer', '240');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('337', 'Design/Invention', '241');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('338', 'Engineer', '241');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('339', 'Esoteric', '246');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('340', 'Medical', '246');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('341', 'Knowledge', '248');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('342', 'Scholarly', '248');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('343', 'Spy', '248');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('344', 'Knowledge', '249');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('345', 'Scholarly', '249');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('346', 'Knowledge', '250');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('347', 'Scholarly', '250');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('348', 'Social Sciences/Humanities', '250');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('349', 'Knowledge', '251');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('350', 'Medical', '251');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('351', 'Natural Science', '251');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('352', 'Scholarly', '251');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('353', 'Knowledge', '252');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('354', 'Natural Science', '252');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('355', 'Scholarly', '252');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('356', 'Knowledge', '253');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('357', 'Military', '253');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('358', 'Scholarly', '253');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('359', 'Knowledge', '254');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('360', 'Natural Science', '254');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('361', 'Scholarly', '254');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('362', 'Knowledge', '255');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('363', 'Scholarly', '255');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('364', 'Social Sciences/Humanities', '255');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('365', 'Knowledge', '256');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('366', 'Occult/Magical', '256');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('367', 'Scholarly', '256');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('368', 'Knowledge', '257');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('369', 'Scholarly', '257');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('370', 'Social Sciences/Humanities', '257');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('371', 'Knowledge', '258');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('372', 'Scholarly', '258');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('373', 'Social Sciences/Humanities', '258');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('374', 'Military', '259');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('375', 'Technical', '259');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('376', 'Criminal/Street', '260');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('377', 'Military', '260');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('378', 'Technical', '260');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('379', 'Military', '261');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('380', 'Police', '261');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('381', 'Technical', '261');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('382', 'Military', '262');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('383', 'Technical', '262');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('384', 'Military', '263');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('385', 'Technical', '263');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('386', 'Military', '264');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('387', 'Technical', '264');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('388', 'Combat/Weapon', '267');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('389', 'Ranged Combat', '267');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('390', 'Combat/Weapon', '268');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('391', 'Melee Combat', '268');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('392', 'Combat/Weapon', '269');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('393', 'Melee Combat', '269');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('394', 'Combat/Weapon', '270');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('395', 'Ranged Combat', '270');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('396', 'Combat/Weapon', '271');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('397', 'Ranged Combat', '271');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('398', 'Combat/Weapon', '272');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('399', 'Melee Combat', '272');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('400', 'Combat/Weapon', '273');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('401', 'Melee Combat', '273');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('402', 'Combat/Weapon', '274');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('403', 'Ranged Combat', '274');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('404', 'Criminal/Street', '275');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('405', 'Social', '275');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('406', 'Spy', '275');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('407', 'Combat/Weapon', '276');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('408', 'Melee Combat', '276');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('409', 'Technique', '276');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('410', 'Combat/Weapon', '277');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('411', 'Melee Combat', '277');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('412', 'Technique', '277');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('413', 'Combat/Weapon', '278');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('414', 'Melee Combat', '278');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('415', 'Technique', '278');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('416', 'Combat/Weapon', '279');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('417', 'Melee Combat', '279');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('418', 'Technique', '279');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('419', 'Combat/Weapon', '280');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('420', 'Melee Combat', '280');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('421', 'Technique', '280');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('422', 'Combat/Weapon', '281');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('423', 'Melee Combat', '281');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('424', 'Technique', '281');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('425', 'Combat/Weapon', '282');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('426', 'Melee Combat', '282');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('427', 'Technique', '282');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('428', 'Criminal/Street', '283');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('429', 'Spy', '283');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('430', 'Combat/Weapon', '285');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('431', 'Melee Combat', '285');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('432', 'Technique', '285');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('433', 'Everyman', '287');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('434', 'Medical', '287');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('435', 'Combat/Weapon', '289');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('436', 'Melee Combat', '289');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('437', 'Combat/Weapon', '292');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('438', 'Melee Combat', '292');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('439', 'Combat/Weapon', '293');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('440', 'Melee Combat', '293');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('441', 'Criminal/Street', '294');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('442', 'Police', '294');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('443', 'Spy', '294');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('444', 'Criminal/Street', '296');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('445', 'Spy', '296');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('446', 'Technical', '306');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('447', 'Vehicle', '306');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('448', 'Criminal/Street', '307');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('449', 'Social', '307');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('450', 'Combat/Weapon', '310');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('451', 'Melee Combat', '310');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('452', 'Combat/Weapon', '328');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('453', 'Melee Combat', '328');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('454', 'Technique', '328');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('455', 'Combat/Weapon', '329');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('456', 'Melee Combat', '329');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('457', 'Technique', '329');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('458', 'Combat/Weapon', '330');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('459', 'Melee Combat', '330');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('460', 'Technique', '330');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('461', 'Combat/Weapon', '331');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('462', 'Melee Combat', '331');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('463', 'Technique', '331');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('464', 'Combat/Weapon', '332');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('465', 'Melee Combat', '332');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('466', 'Technique', '332');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('467', 'Combat/Weapon', '333');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('468', 'Melee Combat', '333');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('469', 'Technique', '333');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('470', 'Combat/Weapon', '339');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('471', 'Ranged Combat', '339');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('472', 'Combat/Weapon', '340');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('473', 'Ranged Combat', '340');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('474', 'Combat/Weapon', '341');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('475', 'Ranged Combat', '341');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('476', 'Combat/Weapon', '342');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('477', 'Ranged Combat', '342');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('478', 'Combat/Weapon', '343');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('479', 'Ranged Combat', '343');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('480', 'Combat/Weapon', '344');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('481', 'Ranged Combat', '344');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('482', 'Combat/Weapon', '345');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('483', 'Ranged Combat', '345');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('484', 'Combat/Weapon', '346');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('485', 'Ranged Combat', '346');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('486', 'Combat/Weapon', '347');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('487', 'Ranged Combat', '347');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('488', 'Combat/Weapon', '348');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('489', 'Ranged Combat', '348');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('490', 'Combat/Weapon', '349');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('491', 'Ranged Combat', '349');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('492', 'Combat/Weapon', '350');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('493', 'Ranged Combat', '350');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('494', 'Combat/Weapon', '351');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('495', 'Ranged Combat', '351');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('496', 'Combat/Weapon', '352');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('497', 'Ranged Combat', '352');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('498', 'Combat/Weapon', '353');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('499', 'Ranged Combat', '353');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('500', 'Combat/Weapon', '354');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('501', 'Ranged Combat', '354');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('502', 'Knowledge', '360');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('503', 'Social', '360');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('504', 'Knowledge', '364');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('505', 'Occult/Magical', '364');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('506', 'Knowledge', '366');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('507', 'Occult/Magical', '366');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('508', 'Knowledge', '367');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('509', 'Occult/Magical', '367');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('510', 'Athletic', '368');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('511', 'Outdoor/Exploration', '368');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('512', 'Criminal/Street', '372');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('513', 'Spy', '372');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('514', 'Animal', '373');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('515', 'Combat/Weapon', '373');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('516', 'Ranged Combat', '373');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('517', 'Technique', '373');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('518', 'Arts/Entertainment', '377');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('519', 'Technique', '377');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('520', 'Combat/Weapon', '378');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('521', 'Ranged Combat', '378');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('522', 'Combat/Weapon', '379');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('523', 'Ranged Combat', '379');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('524', 'Combat/Weapon', '380');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('525', 'Ranged Combat', '380');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('526', 'Combat/Weapon', '381');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('527', 'Ranged Combat', '381');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('528', 'Military', '382');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('529', 'Police', '382');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('530', 'Spy', '382');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('531', 'Military', '383');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('532', 'Police', '383');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('533', 'Spy', '383');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('534', 'Criminal/Street', '384');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('535', 'Police', '384');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('536', 'Social', '384');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('537', 'Combat/Weapon', '387');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('538', 'Melee Combat', '387');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('539', 'Combat/Weapon', '388');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('540', 'Melee Combat', '388');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('541', 'Combat/Weapon', '389');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('542', 'Melee Combat', '389');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('543', 'Technique', '389');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('544', 'Combat/Weapon', '391');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('545', 'Melee Combat', '391');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('546', 'Combat/Weapon', '393');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('547', 'Melee Combat', '393');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('548', 'Technique', '393');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('549', 'Combat/Weapon', '394');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('550', 'Melee Combat', '394');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('551', 'Technique', '394');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('552', 'Combat/Weapon', '395');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('553', 'Melee Combat', '395');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('554', 'Technique', '395');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('555', 'Combat/Weapon', '396');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('556', 'Melee Combat', '396');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('557', 'Technique', '396');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('558', 'Combat/Weapon', '397');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('559', 'Melee Combat', '397');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('560', 'Combat/Weapon', '399');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('561', 'Melee Combat', '399');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('562', 'Combat/Weapon', '400');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('563', 'Melee Combat', '400');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('564', 'Combat/Weapon', '401');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('565', 'Ranged Combat', '401');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('566', 'Business', '402');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('567', 'Police', '402');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('568', 'Social Sciences/Humanities', '402');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('569', 'Military', '403');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('570', 'Social', '403');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('571', 'Athletic', '405');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('572', 'Outdoor/Exploration', '405');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('573', 'Technique', '405');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('574', 'Combat/Weapon', '410');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('575', 'Ranged Combat', '410');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('576', 'Combat/Weapon', '411');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('577', 'Ranged Combat', '411');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('578', 'Combat/Weapon', '412');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('579', 'Ranged Combat', '412');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('580', 'Combat/Weapon', '413');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('581', 'Ranged Combat', '413');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('582', 'Combat/Weapon', '414');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('583', 'Ranged Combat', '414');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('584', 'Scholarly', '415');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('585', 'Social Sciences/Humanities', '415');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('586', 'Criminal/Street', '416');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('587', 'Police', '416');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('588', 'Spy', '416');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('589', 'Technical', '416');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('590', 'Combat/Weapon', '418');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('591', 'Melee Combat', '418');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('592', 'Natural Science', '428');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('593', 'Technical', '428');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('594', 'Business', '476');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('595', 'Social', '476');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('596', 'Animal', '485');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('597', 'Arts/Entertainment', '485');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('598', 'Outdoor/Exploration', '485');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('599', 'Animal', '486');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('600', 'Arts/Entertainment', '486');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('601', 'Outdoor/Exploration', '486');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('602', 'Combat/Weapon', '489');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('603', 'Melee Combat', '489');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('604', 'Arts/Entertainment', '490');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('605', 'Spy', '490');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('606', 'Technical', '490');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('607', 'Technique', '490');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('608', 'Animal', '491');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('609', 'Athletic', '491');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('610', 'Animal', '495');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('611', 'Natural Science', '495');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('612', 'Outdoor/Exploration', '495');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('613', 'Plant', '495');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('614', 'Animal', '496');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('615', 'Natural Science', '496');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('616', 'Outdoor/Exploration', '496');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('617', 'Plant', '496');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('618', 'Animal', '497');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('619', 'Natural Science', '497');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('620', 'Outdoor/Exploration', '497');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('621', 'Plant', '497');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('622', 'Animal', '498');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('623', 'Natural Science', '498');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('624', 'Outdoor/Exploration', '498');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('625', 'Plant', '498');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('626', 'Animal', '499');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('627', 'Natural Science', '499');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('628', 'Outdoor/Exploration', '499');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('629', 'Plant', '499');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('630', 'Animal', '500');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('631', 'Natural Science', '500');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('632', 'Outdoor/Exploration', '500');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('633', 'Plant', '500');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('634', 'Animal', '501');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('635', 'Natural Science', '501');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('636', 'Outdoor/Exploration', '501');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('637', 'Plant', '501');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('638', 'Outdoor/Exploration', '502');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('639', 'Technical', '502');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('640', 'Vehicle', '502');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('641', 'Outdoor/Exploration', '503');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('642', 'Technical', '503');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('643', 'Vehicle', '503');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('644', 'Outdoor/Exploration', '504');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('645', 'Technical', '504');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('646', 'Vehicle', '504');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('647', 'Outdoor/Exploration', '505');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('648', 'Technical', '505');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('649', 'Vehicle', '505');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('650', 'Outdoor/Exploration', '506');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('651', 'Technical', '506');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('652', 'Vehicle', '506');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('653', 'Outdoor/Exploration', '507');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('654', 'Technical', '507');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('655', 'Vehicle', '507');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('656', 'Military', '508');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('657', 'Technical', '508');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('658', 'Combat/Weapon', '509');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('659', 'Melee Combat', '509');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('660', 'Technique', '509');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('661', 'Combat/Weapon', '510');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('662', 'Ranged Combat', '510');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('663', 'Technique', '511');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('664', 'Vehicle', '511');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('665', 'Criminal/Street', '512');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('666', 'Military', '512');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('667', 'Police', '512');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('668', 'Spy', '512');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('669', 'Combat/Weapon', '514');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('670', 'Melee Combat', '514');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('671', 'Technique', '514');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('672', 'Combat/Weapon', '515');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('673', 'Ranged Combat', '515');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('674', 'Technique', '515');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('675', 'Combat/Weapon', '516');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('676', 'Melee Combat', '516');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('677', 'Technique', '516');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('678', 'Combat/Weapon', '517');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('679', 'Melee Combat', '517');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('680', 'Technique', '517');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('681', 'Natural Science', '519');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('682', 'Social Sciences/Humanities', '519');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('683', 'Natural Science', '520');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('684', 'Social Sciences/Humanities', '520');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('685', 'Natural Science', '521');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('686', 'Plant', '521');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('687', 'Social Sciences/Humanities', '521');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('688', 'Natural Science', '522');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('689', 'Social Sciences/Humanities', '522');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('690', 'Criminal/Street', '523');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('691', 'Social', '523');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('692', 'Athletic', '524');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('693', 'Military', '524');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('694', 'Technical', '524');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('695', 'Combat/Weapon', '525');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('696', 'Melee Combat', '525');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('697', 'Design/Invention', '528');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('698', 'Medical', '528');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('699', 'Plant', '528');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('700', 'Design/Invention', '529');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('701', 'Medical', '529');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('702', 'Arts/Entertainment', '531');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('703', 'Spy', '531');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('704', 'Technical', '531');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('705', 'Medical', '535');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('706', 'Natural Science', '535');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('707', 'Criminal/Street', '555');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('708', 'Medical', '555');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('709', 'Spy', '555');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('710', 'Combat/Weapon', '556');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('711', 'Melee Combat', '556');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('712', 'Business', '557');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('713', 'Social', '557');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('714', 'Business', '563');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('715', 'Military', '563');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('716', 'Social', '563');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('717', 'Spy', '563');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('718', 'Business', '566');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('719', 'Scholarly', '566');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('720', 'Social', '566');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('721', 'Combat/Weapon', '568');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('722', 'Melee Combat', '568');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('723', 'Scholarly', '570');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('724', 'Spy', '570');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('725', 'Combat/Weapon', '571');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('726', 'Melee Combat', '571');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('727', 'Technique', '571');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('728', 'Combat/Weapon', '572');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('729', 'Ranged Combat', '572');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('730', 'Technique', '572');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('731', 'Combat/Weapon', '573');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('732', 'Melee Combat', '573');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('733', 'Technique', '573');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('734', 'Combat/Weapon', '574');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('735', 'Melee Combat', '574');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('736', 'Technique', '574');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('737', 'Combat/Weapon', '575');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('738', 'Melee Combat', '575');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('739', 'Technique', '575');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('740', 'Athletic', '582');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('741', 'Criminal/Street', '582');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('742', 'Outdoor/Exploration', '582');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('743', 'Technique', '582');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('744', 'Combat/Weapon', '584');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('745', 'Melee Combat', '584');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('746', 'Knowledge', '585');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('747', 'Social', '585');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('748', 'Knowledge', '586');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('749', 'Social', '586');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('750', 'Business', '587');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('751', 'Knowledge', '587');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('752', 'Social', '587');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('753', 'Criminal/Street', '588');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('754', 'Knowledge', '588');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('755', 'Social', '588');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('756', 'Knowledge', '589');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('757', 'Military', '589');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('758', 'Social', '589');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('759', 'Knowledge', '590');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('760', 'Police', '590');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('761', 'Social', '590');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('762', 'Everyman', '591');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('763', 'Knowledge', '591');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('764', 'Social', '591');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('765', 'Athletic', '592');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('766', 'Criminal/Street', '592');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('767', 'Outdoor/Exploration', '592');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('768', 'Technique', '592');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('769', 'Athletic', '594');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('770', 'Military', '594');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('771', 'Outdoor/Exploration', '594');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('772', 'Technical', '594');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('773', 'Police', '596');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('774', 'Spy', '596');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('775', 'Criminal/Street', '597');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('776', 'Military', '597');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('777', 'Technique', '597');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('778', 'Craft', '598');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('779', 'Everyman', '598');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('780', 'Criminal/Street', '600');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('781', 'Police', '600');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('782', 'Spy', '600');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('783', 'Combat/Weapon', '601');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('784', 'Melee Combat', '601');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('785', 'Combat/Weapon', '602');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('786', 'Melee Combat', '602');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('787', 'Combat/Weapon', '603');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('788', 'Melee Combat', '603');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('789', 'Combat/Weapon', '610');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('790', 'Melee Combat', '610');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('791', 'Athletic', '613');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('792', 'Outdoor/Exploration', '613');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('793', 'Arts/Entertainment', '614');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('794', 'Criminal/Street', '614');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('795', 'Combat/Weapon', '615');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('796', 'Ranged Combat', '615');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('797', 'Criminal/Street', '616');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('798', 'Technique', '616');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('799', 'Combat/Weapon', '617');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('800', 'Melee Combat', '617');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('801', 'Criminal/Street', '621');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('802', 'Spy', '621');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('803', 'Combat/Weapon', '625');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('804', 'Melee Combat', '625');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('805', 'Combat/Weapon', '626');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('806', 'Ranged Combat', '626');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('807', 'Combat/Weapon', '629');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('808', 'Melee Combat', '629');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('809', 'Criminal/Street', '631');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('810', 'Police', '631');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('811', 'Spy', '631');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('812', 'Criminal/Street', '635');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('813', 'Police', '635');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('814', 'Social', '635');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('815', 'Combat/Weapon', '641');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('816', 'Melee Combat', '641');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('817', 'Combat/Weapon', '661');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('818', 'Melee Combat', '661');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('819', 'Technique', '661');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('820', 'Combat/Weapon', '662');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('821', 'Melee Combat', '662');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('822', 'Technique', '662');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('823', 'Combat/Weapon', '663');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('824', 'Melee Combat', '663');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('825', 'Technique', '663');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('826', 'Combat/Weapon', '664');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('827', 'Melee Combat', '664');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('828', 'Technique', '664');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('829', 'Combat/Weapon', '665');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('830', 'Melee Combat', '665');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('831', 'Technique', '665');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('832', 'Combat/Weapon', '666');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('833', 'Melee Combat', '666');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('834', 'Technique', '666');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('835', 'Combat/Weapon', '667');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('836', 'Melee Combat', '667');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('837', 'Technique', '667');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('838', 'Combat/Weapon', '668');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('839', 'Melee Combat', '668');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('840', 'Technique', '668');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('841', 'Athletic', '669');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('842', 'Outdoor/Exploration', '669');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('843', 'Military', '671');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('844', 'Police', '671');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('845', 'Scholarly', '672');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('846', 'Social', '672');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('847', 'Animal', '673');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('848', 'Vehicle', '673');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('849', 'Animal', '674');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('850', 'Vehicle', '674');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('851', 'Athletic', '677');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('852', 'Combat/Weapon', '677');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('853', 'Ranged Combat', '677');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('854', 'Combat/Weapon', '679');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('855', 'Ranged Combat', '679');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('856', 'Combat/Weapon', '680');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('857', 'Ranged Combat', '680');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('858', 'Combat/Weapon', '681');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('859', 'Ranged Combat', '681');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('860', 'Combat/Weapon', '682');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('861', 'Ranged Combat', '682');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('862', 'Combat/Weapon', '683');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('863', 'Ranged Combat', '683');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('864', 'Combat/Weapon', '684');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('865', 'Ranged Combat', '684');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('866', 'Combat/Weapon', '685');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('867', 'Ranged Combat', '685');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('868', 'Combat/Weapon', '686');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('869', 'Ranged Combat', '686');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('870', 'Combat/Weapon', '687');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('871', 'Melee Combat', '687');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('872', 'Criminal/Street', '689');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('873', 'Military', '689');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('874', 'Combat/Weapon', '690');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('875', 'Melee Combat', '690');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('876', 'Combat/Weapon', '691');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('877', 'Melee Combat', '691');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('878', 'Combat/Weapon', '692');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('879', 'Melee Combat', '692');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('880', 'Everyman', '693');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('881', 'Scholarly', '693');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('882', 'Technical', '693');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('883', 'Criminal/Street', '694');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('884', 'Police', '694');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('885', 'Animal', '697');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('886', 'Medical', '697');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('887', 'Everyman', '698');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('888', 'Outdoor/Exploration', '698');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('889', 'Combat/Weapon', '700');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('890', 'Melee Combat', '700');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('891', 'Cinematic Techniques', '701');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('892', 'Combat/Weapon', '701');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('893', 'Melee Combat', '701');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('894', 'Cinematic Techniques', '702');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('895', 'Combat/Weapon', '702');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('896', 'Melee Combat', '702');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('897', 'Cinematic Techniques', '703');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('898', 'Combat/Weapon', '703');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('899', 'Melee Combat', '703');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('900', 'Cinematic Techniques', '704');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('901', 'Combat/Weapon', '704');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('902', 'Melee Combat', '704');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('903', 'Cinematic Techniques', '705');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('904', 'Combat/Weapon', '705');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('905', 'Melee Combat', '705');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('906', 'Cinematic Techniques', '706');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('907', 'Combat/Weapon', '706');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('908', 'Melee Combat', '706');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('909', 'Criminal/Street', '707');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('910', 'Technique', '707');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('911', 'Combat/Weapon', '708');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('912', 'Melee Combat', '708');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('913', 'Arts/Entertainment', '709');
INSERT INTO [Item1].[CharDB].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('914', 'Scholarly', '709');
IF EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[default]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  DROP TABLE [Item1].[CharDB].[default]
END;
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[default]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[CharDB].[default] (
    [PrimaryKey] VARCHAR(255)
   ,[type] VARCHAR(255)
   ,[modifier] VARCHAR(255)
   ,[name] VARCHAR(255)
   ,[specialization] VARCHAR(255)
   ,[FK_skill] VARCHAR(255)
   ,[FK_technique] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1', 'IQ', '-6', '1');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('2', 'Skill', '-4', 'Finance', '1');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('3', 'Skill', '-5', 'Mathematics', 'Statistics', '1');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('4', 'Skill', '-5', 'Merchant', '1');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('5', 'DX', '-6', '2');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('6', 'Skill', '-4', 'Aerobatics', '2');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('7', 'Skill', '-4', 'Aquabatics', '2');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('8', 'IQ', '-5', '3');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('9', 'Skill', '-2', 'Performance', '3');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('10', 'Skill', '-5', 'Public Speaking', '3');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('11', 'Skill', '-3', 'Merchant', '4');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('12', 'IQ', '-5', '4');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('13', 'DX', '-6', '5');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('14', 'Skill', '-4', 'Acrobatics', '5');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('15', 'Skill', '-4', 'Aquabatics', '5');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('16', 'IQ', '-4', '6');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('17', 'IQ', '-5', '8');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('18', 'IQ', '-5', '9');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('19', 'IQ', '-5', '10');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('20', 'IQ', '-5', '11');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('21', 'IQ', '-5', '12');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('22', 'IQ', '-6', '13');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('23', 'Skill', '-2', 'Paleontology', 'Paleoanthropology', '13');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('24', 'Skill', '-3', 'Sociology', '13');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('25', 'DX', '-6', '14');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('26', 'Skill', '-4', 'Acrobatics', '14');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('27', 'Skill', '-4', 'Aerobatics', '14');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('28', 'IQ', '-6', '15');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('29', 'IQ', '-5', '16');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('30', 'Skill', '-4', 'Engineer', 'Civil', '16');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('31', 'Skill', '-3', 'Geography', '@Specialty@', '17');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('32', 'IQ', '-4', '18');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('33', 'Skill', '-3', 'Geography', '@Specialty@', '18');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('34', 'Skill', '-3', 'Geography', '@Specialty@', '19');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('35', 'IQ', '-4', '20');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('36', 'Skill', '-3', 'Geography', '@Specialty@', '20');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('37', 'Skill', '-3', 'Geography', '@Specialty@', '21');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('38', 'IQ', '-4', '22');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('39', 'Skill', '-3', 'Geography', '@Specialty@', '22');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('40', 'Skill', '-3', 'Geography', '@Specialty@', '23');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('41', 'IQ', '-4', '24');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('42', 'Skill', '-3', 'Geography', '@Specialty@', '24');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('43', 'Skill', '-3', 'Geography', '@Specialty@', '25');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('44', 'IQ', '-4', '26');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('45', 'Skill', '-3', 'Geography', '@Specialty@', '26');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('46', 'Skill', '-3', 'Geography', '@Specialty@', '27');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('47', 'IQ', '-4', '28');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('48', 'Skill', '-3', 'Geography', '@Specialty@', '28');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('49', 'Skill', '-3', 'Geography', '@Specialty@', '29');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('50', 'IQ', '-4', '30');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('51', 'Skill', '-3', 'Geography', '@Specialty@', '30');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('52', 'Skill', '-3', 'Geography', '@Specialty@', '31');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('53', 'IQ', '-4', '32');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('54', 'Skill', '-3', 'Geography', '@Specialty@', '32');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('55', 'Skill', '-3', 'Geography', '@Specialty@', '33');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('56', 'IQ', '-4', '34');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('57', 'Skill', '-3', 'Geography', '@Specialty@', '34');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('58', 'Skill', '0', 'Judo', '1');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('59', 'Skill', '0', 'Wrestling', '2');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('60', 'IQ', '-5', '35');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('61', 'Skill', '-4', 'Engineer', 'Battlesuits', '35');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('62', 'IQ', '-5', '36');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('63', 'Skill', '-4', 'Engineer', 'Battlesuits', '36');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('64', 'IQ', '-5', '37');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('65', 'Skill', '-4', 'Engineer', 'Body Armor', '37');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('66', 'IQ', '-5', '38');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('67', 'Skill', '-4', 'Engineer', 'Force Shields', '38');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('68', 'IQ', '-5', '39');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('69', 'Skill', '-4', 'Engineer', 'Heavy Weapons', '39');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('70', 'IQ', '-5', '40');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('71', 'Skill', '-4', 'Engineer', 'Melee Weapons', '40');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('72', 'IQ', '-5', '41');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('73', 'Skill', '-4', 'Engineer', 'Missile Weapons', '41');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('74', 'IQ', '-5', '42');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('75', 'Skill', '-4', 'Engineer', 'Small Arms', '42');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('76', 'IQ', '-5', '43');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('77', 'Skill', '-4', 'Engineer', 'Vehicular Armor', '43');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('78', 'IQ', '-5', '44');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('79', 'IQ', '-5', '45');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('80', 'IQ', '-5', '46');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('81', 'IQ', '-5', '47');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('82', 'IQ', '-5', '48');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('83', 'IQ', '-5', '49');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('84', 'IQ', '-5', '50');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('85', 'IQ', '-6', '51');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('86', 'Skill', '-6', 'Artist', '51');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('87', 'IQ', '-6', '52');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('88', 'Skill', '-4', 'Artist', 'Calligraphy', '52');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('89', 'Skill', '-4', 'Artist', 'Drawing', '52');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('90', 'Skill', '-4', 'Artist', 'Illumination', '52');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('91', 'Skill', '-4', 'Artist', 'Painting', '52');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('92', 'Skill', '-6', 'Artist', '52');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('93', 'IQ', '-6', '53');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('94', 'Skill', '-2', 'Artist', 'Drawing', '53');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('95', 'Skill', '-2', 'Artist', 'Illumination', '53');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('96', 'Skill', '-2', 'Artist', 'Painting', '53');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('97', 'Skill', '-4', 'Artist', 'Body Art', '53');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('98', 'Skill', '-6', 'Artist', '53');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('99', 'IQ', '-6', '54');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('100', 'Skill', '-2', 'Artist', 'Calligraphy', '54');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('101', 'Skill', '-2', 'Artist', 'Illumination', '54');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('102', 'Skill', '-2', 'Artist', 'Painting', '54');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('103', 'Skill', '-4', 'Artist', 'Body Art', '54');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('104', 'Skill', '-6', 'Artist', '54');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('105', 'IQ', '-6', '55');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('106', 'Skill', '-2', 'Artist', 'Calligraphy', '55');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('107', 'Skill', '-2', 'Artist', 'Drawing', '55');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('108', 'Skill', '-2', 'Artist', 'Painting', '55');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('109', 'Skill', '-4', 'Artist', 'Body Art', '55');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('110', 'Skill', '-6', 'Artist', '55');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('111', 'IQ', '-6', '56');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('112', 'Skill', '-6', 'Artist', '56');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('113', 'IQ', '-6', '57');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('114', 'Skill', '-3', 'Architecture', '57');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('115', 'Skill', '-4', 'Artist', 'Scene Design', '57');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('116', 'Skill', '-4', 'Artist', 'Woodworking', '57');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('117', 'Skill', '-6', 'Artist', '57');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('118', 'IQ', '-6', '58');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('119', 'Skill', '-2', 'Artist', 'Calligraphy', '58');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('120', 'Skill', '-2', 'Artist', 'Drawing', '58');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('121', 'Skill', '-2', 'Artist', 'Illumination', '58');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('122', 'Skill', '-4', 'Artist', 'Body Art', '58');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('123', 'Skill', '-6', 'Artsit', '58');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('124', 'IQ', '-6', '59');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('125', 'Skill', '-6', 'Artist', '59');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('126', 'IQ', '-6', '60');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('127', 'Skill', '-3', 'Architecture', '60');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('128', 'Skill', '-4', 'Artist', 'Interior Decorating', '60');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('129', 'Skill', '-4', 'Artist', 'Woodworking', '60');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('130', 'Skill', '-6', 'Artist', '60');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('131', 'IQ', '-6', '61');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('132', 'Skill', '-6', 'Artist', '61');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('133', 'IQ', '-6', '62');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('134', 'Skill', '-3', 'Carpentry', '62');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('135', 'Skill', '-4', 'Artist', 'Interior Decorating', '62');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('136', 'Skill', '-4', 'Artist', 'Scene Design', '62');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('137', 'Skill', '-6', 'Artist', '62');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('138', 'IQ', '-6', '63');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('139', 'Skill', '-4', 'Meditation', '64');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('140', 'DX', '-5', '65');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('141', 'Skill', '-3', 'Two-Handed Axe/Mace', '65');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('142', 'Skill', '-4', 'Flail', '65');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('143', 'Skill', '-4', 'Karate', '3');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('144', 'IQ', '-5', '66');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('145', 'Skill', '-3', 'Carousing', '66');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('146', 'DX', '-5', '67');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('147', 'Skill', '-4', 'Diving Suit', '67');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('148', 'Skill', '-2', 'Vacc Suit', '67');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('149', 'Skill', '-2', 'NBC Suit', '67');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('150', 'DX', '-4', '68');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('151', 'Skill', '-4', 'Beam Weapons', '68');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('152', 'Skill', '-4', 'Guns', 'Pistol', '68');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('153', 'DX', '-4', '69');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('154', 'Skill', '-4', 'Beam Weapons', '69');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('155', 'Skill', '-4', 'Guns', 'Pistol', '69');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('156', 'DX', '-4', '70');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('157', 'Skill', '-4', 'Beam Weapons', '70');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('158', 'DX', '-4', '71');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('159', 'Skill', '-4', 'Beam Weapons', '71');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('160', 'Skill', '-4', 'Guns', 'Rifle', '71');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('161', 'DX', '-4', '72');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('162', 'Skill', '-4', 'Driving', 'Motorcycle', '72');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('163', 'Skill', '-5', 'Biology', '73');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('164', 'Skill', '-4', 'Bioengineering', '73');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('165', 'Skill', '-5', 'Biology', '74');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('166', 'Skill', '-4', 'Bioengineering', '74');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('167', 'Skill', '-5', 'Biology', '75');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('168', 'Skill', '-4', 'Bioengineering', '75');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('169', 'Skill', '-5', 'Biology', '76');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('170', 'Skill', '-4', 'Bioengineering', '76');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('171', 'IQ', '-6', '77');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('172', 'Skill', '-6', 'Naturalist', '77');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('173', 'IQ', '-6', '78');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('174', 'Skill', '-6', 'Naturalist', '78');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('175', 'IQ', '-6', '79');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('176', 'Skill', '-6', 'Naturalist', '79');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('177', 'IQ', '-6', '80');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('178', 'Skill', '-6', 'Naturalist', '80');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('179', 'IQ', '-6', '81');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('180', 'Skill', '-6', 'Naturalist', '81');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('181', 'IQ', '-6', '82');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('182', 'Skill', '-6', 'Naturalist', '82');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('183', 'IQ', '-6', '83');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('184', 'Skill', '-6', 'Naturalist', '83');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('185', 'IQ', '-6', '84');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('186', 'Skill', '-6', 'Naturalist', '84');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('187', 'IQ', '-6', '85');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('188', 'Skill', '-6', 'Naturalist', '85');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('189', 'IQ', '-6', '86');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('190', 'Skill', '-6', 'Naturalist', '86');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('191', 'IQ', '-6', '87');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('192', 'Skill', '-6', 'Naturalist', '87');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('193', 'IQ', '-6', '88');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('194', 'Skill', '-6', 'Naturalist', '88');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('195', 'IQ', '-6', '89');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('196', 'Skill', '-6', 'Naturalist', '89');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('197', 'IQ', '-6', '90');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('198', 'Skill', '-6', 'Naturalist', '90');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('199', 'DX', '-6', '92');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('200', 'DX', '-5', '93');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('201', 'IQ', '-5', '93');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('202', 'Skill', '-2', 'Boating', 'Motorboat', '93');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('203', 'Skill', '-4', 'Boating', 'Sailboat', '93');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('204', 'Skill', '-4', 'Boating', 'Unpowered', '93');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('205', 'Skill', '-4', 'Seamanship', '93');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('206', 'DX', '-5', '94');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('207', 'IQ', '-5', '94');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('208', 'Skill', '-2', 'Boating', 'Motorboat', '94');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('209', 'Skill', '-4', 'Boating', 'Sailboat', '94');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('210', 'Skill', '-4', 'Boating', 'Unpowered', '94');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('211', 'Skill', '-4', 'Seamanship', '94');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('212', 'DX', '-5', '95');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('213', 'IQ', '-5', '95');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('214', 'Skill', '-2', 'Boating', 'Large Powerboat', '95');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('215', 'Skill', '-3', 'Boating', 'Sailboat', '95');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('216', 'Skill', '-3', 'Boating', 'Unpowered', '95');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('217', 'DX', '-5', '96');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('218', 'IQ', '-5', '96');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('219', 'Skill', '-4', 'Boating', 'Large Powerboat', '96');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('220', 'Skill', '-3', 'Boating', 'Motorboat', '96');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('221', 'Skill', '-3', 'Boating', 'Unpowered', '96');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('222', 'IQ', '-5', '97');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('223', 'DX', '-5', '97');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('224', 'Skill', '-4', 'Boating', 'Large Powerboat', '97');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('225', 'Skill', '-3', 'Boating', 'Motorboat', '97');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('226', 'Skill', '-3', 'Boating', 'Sailboat', '97');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('227', 'Skill', '-4', 'Detect Lies', '99');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('228', 'Skill', '-4', 'Psychology', '99');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('229', 'DX', '-6', '100');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('230', 'Skill', '-3', 'Acrobatics', '100');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('231', 'DX', '-5', '102');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('232', 'Skill', '-4', 'Force Sword', '109');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('233', 'Skill', '-4', 'Rapier', '109');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('234', 'Skill', '-4', 'Saber', '109');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('235', 'Skill', '-2', 'Shortsword', '109');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('236', 'Skill', '-4', 'Two-Handed Sword', '109');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('237', 'DX', '-5', '109');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('238', 'IQ', '-4', '110');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('239', 'Skill', '-2', 'Survival', '110');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('240', 'HT', '-4', '112');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('241', 'IQ', '-4', '113');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('242', 'IQ', '-5', '114');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('243', 'Skill', '-2', 'Geography', '114');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('244', 'Skill', '-2', 'Mathematics', 'Surveying', '114');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('245', 'Skill', '-4', 'Navigation', '114');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('246', 'IQ', '-6', '115');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('247', 'Skill', '-3', 'Alchemy', '115');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('248', 'Skill', '-2', 'Judo', '4');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('249', 'Skill', '-3', 'Wrestling', '5');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('250', 'DX', '-5', '116');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('251', 'DX', '-5', '117');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('252', 'Skill', '-4', 'Net', '117');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('253', 'Skill', '-4', 'Shield', '117');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('254', 'Skill', '-3', '@Average Skill@', '118');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('255', 'Skill', '-3', 'Combat Sport', '@Average Skill@', '118');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('256', 'DX', '-5', '118');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('257', 'Skill', '-3', '@Easy Skill@', '119');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('258', 'Skill', '-3', 'Combat Sport', '@Easy Skill@', '119');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('259', 'DX', '-4', '119');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('260', 'Skill', '-3', '@Hard Skill@', '120');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('261', 'Skill', '-3', 'Combat Sport', '@Hard Skill@', '120');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('262', 'DX', '-6', '120');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('263', 'Skill', '-3', '@Average Skill@', '121');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('264', 'Skill', '-3', 'Combat Art', '@Average Skill@', '121');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('265', 'DX', '-5', '121');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('266', 'Skill', '-3', '@Easy Skill@', '122');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('267', 'Skill', '-3', 'Combat Art', '@Easy Skill@', '122');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('268', 'DX', '-4', '122');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('269', 'Skill', '-3', '@Hard Skill@', '123');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('270', 'Skill', '-3', 'Combat Art', '@Hard Skill@', '123');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('271', 'DX', '-6', '123');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('272', 'IQ', '-4', '125');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('273', 'IQ', '-5', '128');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('274', 'IQ', '-5', '129');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('275', 'Skill', '-3', 'Literature', '130');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('276', 'Skill', '-3', 'Poetry', '130');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('277', 'Skill', '-3', 'Writing', '130');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('278', 'IQ', '-5', '130');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('279', 'Skill', '-3', 'Group Performance', 'Conducting', '131');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('280', 'Skill', '-3', 'Musical Composition', '131');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('281', 'Skill', '-3', 'Musical Instrument', '131');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('282', 'IQ', '-5', '131');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('283', 'IQ', '-5', '132');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('284', 'IQ', '-5', '133');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('285', 'IQ', '-5', '134');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('286', 'Skill', '-5', 'Housekeeping', '134');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('287', 'IQ', '-5', '135');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('288', 'Skill', '-5', 'Housekeeping', '135');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('289', 'IQ', '-5', '136');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('290', 'Skill', '-5', 'Housekeeping', '136');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('291', 'IQ', '-5', '137');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('292', 'Skill', '-5', 'Housekeeping', '137');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('293', 'IQ', '-6', '138');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('294', 'Skill', '-2', 'Forgery', '138');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('295', 'IQ', '-5', '139');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('296', 'Skill', '-4', 'Psychology', '139');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('297', 'DX', '-4', '140');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('298', 'Skill', '-5', 'Mathematics', 'Cryptology', '141');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('299', 'Skill', '-5', 'Mathematics', 'Cryptology', '142');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('300', 'Skill', '-5', 'Mathematics', 'Cryptology', '143');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('301', 'IQ', '-4', '144');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('302', 'Skill', '-4', 'Research', '144');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('303', 'Skill', '-4', 'Current Affairs', '144');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('304', 'IQ', '-4', '145');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('305', 'Skill', '-4', 'Research', '145');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('306', 'Skill', '-4', 'Current Affairs', '145');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('307', 'IQ', '-4', '146');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('308', 'Skill', '-4', 'Research', '146');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('309', 'Skill', '-4', 'Current Affairs', '146');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('310', 'IQ', '-4', '147');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('311', 'Skill', '-4', 'Research', '147');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('312', 'Skill', '-4', 'Current Affairs', '147');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('313', 'IQ', '-4', '148');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('314', 'Skill', '-4', 'Research', '148');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('315', 'Skill', '-4', 'Current Affairs', '148');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('316', 'IQ', '-4', '149');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('317', 'Skill', '-4', 'Research', '149');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('318', 'Skill', '-4', 'Current Affairs', '149');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('319', 'IQ', '-4', '150');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('320', 'Skill', '-4', 'Research', '150');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('321', 'Skill', '-4', 'Current Affairs', '150');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('322', 'IQ', '-4', '151');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('323', 'Skill', '-4', 'Research', '151');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('324', 'Skill', '-4', 'Current Affairs', '151');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('325', 'IQ', '-4', '152');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('326', 'Skill', '-4', 'Research', '152');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('327', 'Skill', '-4', 'Current Affairs', '152');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('328', 'IQ', '-4', '153');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('329', 'Skill', '-4', 'Research', '153');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('330', 'Skill', '-4', 'Current Affairs', '153');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('331', 'IQ', '-4', '154');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('332', 'Skill', '-4', 'Research', '154');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('333', 'Skill', '-4', 'Current Affairs', '154');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('334', 'DX', '-4', '155');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('335', 'Per', '-6', '156');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('336', 'Skill', '-4', 'Body Language', '156');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('337', 'Skill', '-4', 'Psychology', '156');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('338', 'IQ', '-6', '157');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('339', 'Skill', '-8', 'First Aid', '157');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('340', 'Skill', '-4', 'Physician', '157');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('341', 'Skill', '-5', 'Veterinary', '157');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('342', 'IQ', '-6', '158');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('343', 'Skill', '-6', 'Politics', '158');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('344', 'Skill', '0', '@Unarmed or Melee Weapon Skill@', '6');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('345', 'Skill', '0', 'Brawling', '7');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('346', 'Skill', '0', 'Broadsword', '8');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('347', 'Skill', '0', 'Karate', '9');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('348', 'Skill', '0', 'Knife', '10');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('349', 'Skill', '0', 'Shortsword', '11');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('350', 'IQ', '-5', '159');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('351', 'Skill', '-3', 'Makeup', '159');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('352', 'DX', '-5', '160');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('353', 'Skill', '-2', 'Scuba', '160');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('354', 'Skill', '-4', 'Battlesuit', '160');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('355', 'Skill', '-4', 'NBC Suit', '160');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('356', 'Skill', '-4', 'Vacc Suit', '160');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('357', 'Will', '-6', '161');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('358', 'DX', '-5', '162');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('359', 'IQ', '-5', '162');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('360', 'Skill', '-2', 'Driving', 'Heavy Wheeled', '162');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('361', 'Skill', '-4', 'Driving', '162');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('362', 'DX', '-5', '163');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('363', 'IQ', '-5', '163');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('364', 'Skill', '-2', 'Driving', 'Heavy Wheeled', '163');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('365', 'Skill', '-4', 'Driving', '163');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('366', 'DX', '-5', '164');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('367', 'IQ', '-5', '164');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('368', 'Skill', '-5', 'Driving', '164');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('369', 'IQ', '-5', '165');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('370', 'DX', '-5', '165');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('371', 'Skill', '-2', 'Driving', 'Tracked', '165');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('372', 'Skill', '-4', 'Driving', '165');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('373', 'DX', '-5', '166');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('374', 'IQ', '-5', '166');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('375', 'Skill', '-2', 'Driving', 'Automobile', '166');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('376', 'Skill', '-4', 'Driving', '166');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('377', 'IQ', '-5', '167');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('378', 'DX', '-5', '167');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('379', 'Skill', '-5', 'Driving', '167');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('380', 'DX', '-5', '168');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('381', 'IQ', '-5', '168');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('382', 'Skill', '-5', 'Driving', '168');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('383', 'IQ', '-5', '169');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('384', 'DX', '-5', '169');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('385', 'Skill', '-3', 'Battlesuit', '169');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('386', 'Skill', '-5', 'Driving', '169');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('387', 'DX', '-5', '170');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('388', 'IQ', '-5', '170');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('389', 'Skill', '-4', 'Bicycling', '170');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('390', 'DX', '-5', '171');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('391', 'IQ', '-5', '171');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('392', 'Skill', '-2', 'Driving', 'Halftrack', '171');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('393', 'Skill', '-4', 'Driving', '171');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('394', 'DX', '-3', '172');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('395', 'Skill', '-4', 'Throwing', '172');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('396', 'Skill', '-4', 'Broadsword', '12');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_technique])
  VALUES ('397', 'Skill', '-4', 'Guns', 'Pistol', '13');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('398', 'Skill', '-4', 'Knife', '14');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('399', 'Skill', '-4', 'Shortsword', '15');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('400', 'IQ', '-6', '173');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('401', 'Skill', '-3', 'Finance', '173');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('402', 'Skill', '-5', 'Market Analysis', '173');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('403', 'Skill', '-6', 'Merchant', '173');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('404', 'Skill', '-2', 'Brawling', '16');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('405', 'Skill', '-2', 'Karate', '17');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('406', 'IQ', '-5', '174');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('407', 'Skill', '-3', 'Engineer', 'Electrical', '174');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('408', 'IQ', '-5', '175');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('409', 'Skill', '-4', 'Electronics Operation', '175');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('410', 'Skill', '-5', 'Electronics Repair', 'Communications', '175');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('411', 'Skill', '-5', 'Engineer', 'Electronics', '175');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('412', 'IQ', '-5', '176');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('413', 'Skill', '-4', 'Electronics Operation', '176');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('414', 'Skill', '-5', 'Electronics Repair', 'Communications', '176');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('415', 'Skill', '-5', 'Engineer', 'Electronics', '176');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('416', 'IQ', '-5', '177');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('417', 'Skill', '-5', 'Electronics Repair', 'Electronic Warfare', '177');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('418', 'Skill', '-5', 'Engineer', 'Electronics', '177');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('419', 'Skill', '-4', 'Electronics Operation', '177');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('420', 'IQ', '-5', '178');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('421', 'Skill', '-5', 'Electronics Repair', 'Force Shields', '178');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('422', 'Skill', '-5', 'Engineer', 'Electronics', '178');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('423', 'Skill', '-4', 'Electronics Operation', '178');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('424', 'Skill', '0', '178');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('425', 'IQ', '-5', '179');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('426', 'Skill', '-5', 'Electronics Repair', 'Matter Transmitters', '179');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('427', 'Skill', '-5', 'Engineer', 'Electronics', '179');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('428', 'Skill', '-4', 'Electronics Operation', '179');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('429', 'IQ', '-5', '180');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('430', 'Skill', '-5', 'Electronics Repair', 'Media', '180');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('431', 'Skill', '-5', 'Engineer', 'Electronics', '180');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('432', 'Skill', '-4', 'Electronics Operation', '180');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('433', 'IQ', '-5', '181');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('434', 'Skill', '-5', 'Electronics Repair', 'Medical', '181');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('435', 'Skill', '-5', 'Engineer', 'Electronics', '181');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('436', 'Skill', '-4', 'Electronics Operation', '181');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('437', 'IQ', '-5', '182');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('438', 'Skill', '-5', 'Electronics Repair', 'Parachronic', '182');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('439', 'Skill', '-5', 'Engineer', 'Electronics', '182');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('440', 'Skill', '-4', 'Electronics Operation', '182');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('441', 'IQ', '-5', '183');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('442', 'Skill', '-5', 'Electronics Repair', 'Psychotronics', '183');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('443', 'Skill', '-5', 'Engineer', 'Electronics', '183');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('444', 'Skill', '-4', 'Electronics Operation', '183');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('445', 'IQ', '-5', '184');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('446', 'Skill', '-5', 'Electronics Repair', 'Scientific', '184');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('447', 'Skill', '-5', 'Engineer', 'Electronics', '184');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('448', 'Skill', '-4', 'Electronics Operation', '184');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('449', 'IQ', '-5', '185');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('450', 'Skill', '-5', 'Electronics Operation', 'Security', '185');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('451', 'Skill', '-5', 'Engineer', 'Electronics', '185');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('452', 'Skill', '-4', 'Electronics Operation', '185');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('453', 'IQ', '-5', '186');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('454', 'Skill', '-5', 'Electronics Repair', 'Sensors', '186');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('455', 'Skill', '-5', 'Engineer', 'Electronics', '186');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('456', 'Skill', '-4', 'Electronics Operation', '186');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('457', 'IQ', '-5', '187');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('458', 'Skill', '-5', 'Electronics Repair', 'Sonar', '187');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('459', 'Skill', '-5', 'Engineer', 'Electronics', '187');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('460', 'Skill', '-4', 'Electronics Operation', '187');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('461', 'IQ', '-5', '188');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('462', 'Skill', '-5', 'Electronics Repair', 'Surveillance', '188');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('463', 'Skill', '-5', 'Engineer', 'Electronics', '188');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('464', 'Skill', '-4', 'Electronics Operation', '188');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('465', 'IQ', '-5', '189');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('466', 'Skill', '-5', 'Electronics Repair', 'Temporal', '189');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('467', 'Skill', '-5', 'Engineer', 'Electronics', '189');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('468', 'Skill', '-4', 'Electronics Operation', '189');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('469', 'IQ', '-5', '190');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('470', 'Skill', '-3', 'Electronics Operation', 'Communications', '190');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('471', 'Skill', '-3', 'Engineer', 'Electronics', '190');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('472', 'Skill', '-4', 'Electronics Repair', '190');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('473', 'IQ', '-5', '191');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('474', 'Skill', '-3', 'Electronics Operation', 'Communications', '191');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('475', 'Skill', '-3', 'Engineer', 'Electronics', '191');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('476', 'Skill', '-4', 'Electronics Repair', '191');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('477', 'IQ', '-5', '192');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('478', 'Skill', '-3', 'Computer Operation', '192');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('479', 'Skill', '-3', 'Engineer', 'Electronics', '192');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('480', 'Skill', '-4', 'Electronics Repair', '192');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('481', 'IQ', '-5', '193');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('482', 'Skill', '-3', 'Electronics Operation', 'Electronic Warfare', '193');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('483', 'Skill', '-3', 'Engineer', 'Electronics', '193');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('484', 'Skill', '-4', 'Electronics Repair', '193');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('485', 'IQ', '-5', '194');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('486', 'Skill', '-3', 'Electronics Operation', 'Force Shields', '194');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('487', 'Skill', '-3', 'Engineer', 'Electronics', '194');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('488', 'Skill', '-4', 'Electronics Repair', '194');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('489', 'IQ', '-5', '195');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('490', 'Skill', '-3', 'Electronics Operation', 'Matter Transmitters', '195');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('491', 'Skill', '-3', 'Engineer', 'Electronics', '195');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('492', 'Skill', '-4', 'Electronics Repair', '195');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('493', 'IQ', '-5', '196');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('494', 'Skill', '-3', 'Electronics Operation', 'Media', '196');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('495', 'Skill', '-3', 'Engineer', 'Electronics', '196');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('496', 'Skill', '-4', 'Electronics Repair', '196');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('497', 'IQ', '-5', '197');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('498', 'Skill', '-3', 'Electronics Operation', 'Medical', '197');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('499', 'Skill', '-3', 'Engineer', 'Electronics', '197');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('500', 'Skill', '-4', 'Electronics Repair', '197');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('501', 'IQ', '-5', '198');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('502', 'Skill', '-3', 'Electronics Operation', 'Parachronic', '198');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('503', 'Skill', '-3', 'Engineer', 'Electronics', '198');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('504', 'Skill', '-4', 'Electronics Repair', '198');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('505', 'IQ', '-5', '199');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('506', 'Skill', '-3', 'Electronics Operation', 'Psychotronics', '199');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('507', 'Skill', '-3', 'Engineer', 'Electronics', '199');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('508', 'Skill', '-4', 'Electronics Repair', '199');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('509', 'IQ', '-5', '200');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('510', 'Skill', '-3', 'Electronics Operation', 'Scientific', '200');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('511', 'Skill', '-3', 'Engineer', 'Electronics', '200');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('512', 'Skill', '-4', 'Electronics Repair', '200');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('513', 'IQ', '-5', '201');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('514', 'Skill', '-3', 'Electronics Operation', 'Security', '201');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('515', 'Skill', '-3', 'Engineer', 'Electronics', '201');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('516', 'Skill', '-4', 'Electronics Repair', '201');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('517', 'IQ', '-5', '202');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('518', 'Skill', '-3', 'Electronics Operation', 'Sensors', '202');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('519', 'Skill', '-3', 'Engineer', 'Electronics', '202');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('520', 'Skill', '-4', 'Electronics Repair', '202');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('521', 'IQ', '-5', '203');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('522', 'Skill', '-3', 'Electronics Operation', 'Sonar', '203');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('523', 'Skill', '-3', 'Engineer', 'Electronics', '203');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('524', 'Skill', '-4', 'Electronics Repair', '203');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('525', 'IQ', '-5', '204');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('526', 'Skill', '-3', 'Electronics Operation', 'Surveillance', '204');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('527', 'Skill', '-3', 'Engineer', 'Electronics', '204');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('528', 'Skill', '-4', 'Electronics Repair', '204');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('529', 'IQ', '-5', '205');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('530', 'Skill', '-3', 'Electronics Operation', 'Temporal', '205');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('531', 'Skill', '-3', 'Engineer', 'Electronics', '205');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('532', 'Skill', '-4', 'Electronics Repair', '205');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('533', 'Skill', '-6', 'Armoury', 'Heavy Weapons', '206');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('534', 'Skill', '-6', 'Armoury', 'Heavy Weapons', '207');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('535', 'Skill', '-6', 'Mechanic', 'Automobiles', '208');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('536', 'Skill', '-6', 'Architecture', '209');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('537', 'Skill', '-6', 'Mechanic', 'Clockwork', '210');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('538', 'Skill', '-6', 'Explosives', 'Demolition', '211');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('539', 'Skill', '-6', 'Electrician', '212');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('540', 'Skill', '-6', 'Electronics Repair', '213');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('541', 'Skill', '-6', 'Chemistry', '214');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('542', 'Skill', '-6', 'Metallurgy', '214');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('543', 'Skill', '-6', 'Mechanic', 'Micromachines', '215');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('544', 'Skill', '-6', 'Explosives', 'Demolition', '216');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('545', 'Skill', '-6', 'Geology', '216');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('546', 'Skill', '-6', 'Mechanic', 'Nanomachines', '217');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('547', 'Skill', '-6', 'Electronics Operation', 'Parachronic', '218');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('548', 'Skill', '-6', 'Electronics Operation', 'Psychotronics', '219');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('549', 'Skill', '-6', 'Mechanic', 'Robotics', '220');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('550', 'Skill', '-6', 'Mechanic', 'Ships', '221');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('551', 'Skill', '-6', 'Armoury', 'Small Arms', '222');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('552', 'Skill', '-6', 'Mechanic', 'Starships', '223');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('553', 'Skill', '-6', 'Electronics Operation', 'Temporal', '224');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('554', 'DX', '-5', '226');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('555', 'DX', '-5', '227');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('556', 'Skill', '-5', 'Acrobatics', '227');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('557', 'DX', '-6', '228');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('558', 'Per', '-6', '229');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('559', 'Will', '-6', '230');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('560', 'Skill', '-3', 'Religious Ritual', '230');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('561', 'Skill', '-3', 'Ritual Magic', '230');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('562', 'Skill', '-3', 'Theology', '230');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('563', 'IQ', '-5', '242');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('564', 'Skill', '-3', 'Engineer', 'Combat', '242');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('565', 'Skill', '-3', 'Engineer', 'Mining', '242');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('566', 'Skill', '-2', 'Explosives', 'Underwater Demolition', '242');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('567', 'Skill', '-4', 'Explosives', '242');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('568', 'IQ', '-5', '243');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('569', 'Skill', '-3', 'Engineer', 'Combat', '243');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('570', 'Skill', '-3', 'Engineer', 'Mining', '243');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('571', 'Skill', '-2', 'Explosives', 'Underwater Demolition', '243');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('572', 'Skill', '-4', 'Explosives', '243');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('573', 'IQ', '-5', '244');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('574', 'Skill', '-2', 'Explosives', 'Nuclear Ordnance Disposal', '244');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('575', 'Skill', '-4', 'Explosives', '244');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('576', 'IQ', '-5', '245');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('577', 'Skill', '-3', 'Chemistry', '245');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('578', 'Skill', '-4', 'Explosives', '245');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('579', 'IQ', '-5', '246');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('580', 'Skill', '-2', 'Explosives', 'Explosive Ordnance Disposal', '246');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('581', 'Skill', '-4', 'Explosives', '246');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('582', 'IQ', '-5', '247');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('583', 'Skill', '-2', 'Explosives', 'Demolition', '247');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('584', 'Skill', '-4', 'Explosives', '247');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('585', 'IQ', '-5', '248');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('586', 'Skill', '-3', 'Animal Handling', 'Raptors', '248');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('587', 'IQ', '-5', '249');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('588', 'Skill', '-5', 'Biology', '249');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('589', 'Skill', '-5', 'Gardening', '249');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('590', 'IQ', '-5', '258');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('591', 'Skill', '-5', 'Acting', '258');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('592', 'Skill', '0', '@Unarmed or Melee Weapon Skill@', '18');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('593', 'Skill', '0', 'Brawling', '19');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('594', 'Skill', '0', 'Broadsword', '20');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('595', 'Skill', '0', 'Force Sword', '21');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('596', 'Skill', '0', 'Karate', '22');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('597', 'Skill', '0', 'Knife', '23');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('598', 'Skill', '0', 'Shortsword', '24');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('599', 'DX', '-5', '259');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('600', 'Skill', '-4', 'Pickpocket', '259');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('601', 'Skill', '-4', 'Sleight of Hand', '259');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('602', 'Skill', '-4', 'Accounting', '260');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('603', 'Skill', '-3', 'Economics', '260');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('604', 'Skill', '-6', 'Merchant', '260');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('605', 'Skill', '-3', 'Arm Lock', '25');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('606', 'IQ', '-4', '262');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('607', 'Skill', '0', 'Esoteric Medicine', '262');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('608', 'Skill', '0', 'Physician', '262');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('609', 'Skill', '-4', 'Veterinary', '262');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('610', 'Per', '-4', '263');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('611', 'DX', '-6', '264');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('612', 'Skill', '-4', 'Axe/Mace', '264');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('613', 'Skill', '-3', 'Two-Handed Flail', '264');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('614', 'HT', '-5', '265');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('615', 'Skill', '-3', 'Broadsword', '267');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('616', 'Skill', '-3', 'Shortsword', '267');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('617', 'Skill', '-3', 'Two-Handed Sword', '267');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('618', 'Skill', '-3', 'Jitte/Sai', '267');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('619', 'Skill', '-3', 'Knife', '267');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('620', 'DX', '-5', '267');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('621', 'DX', '-5', '268');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('622', 'Skill', '-3', 'Kusari', '268');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('623', 'Skill', '-3', 'Monowire Whip', '268');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('624', 'Skill', '-3', 'Whip', '268');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('625', 'IQ', '-6', '270');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('626', 'Skill', '-4', 'Criminology', '270');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('627', 'IQ', '-6', '271');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('628', 'Skill', '-2', 'Counterfeiting', '271');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('629', 'IQ', '-5', '272');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('630', 'Skill', '-3', 'Fast-Talk', '272');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('631', 'Skill', '-3', 'Occultism', '272');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('632', 'IQ', '-5', '273');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('633', 'Skill', '-3', 'Fast-Talk', '273');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('634', 'Skill', '-3', 'Occultism', '273');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('635', 'IQ', '-5', '274');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('636', 'Skill', '-3', 'Fast-Talk', '274');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('637', 'Skill', '-3', 'Occultism', '274');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('638', 'IQ', '-5', '275');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('639', 'Skill', '-3', 'Fast-Talk', '275');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('640', 'Skill', '-3', 'Occultism', '275');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('641', 'IQ', '-5', '276');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('642', 'Skill', '-3', 'Fast-Talk', '276');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('643', 'Skill', '-3', 'Occultism', '276');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('644', 'IQ', '-5', '277');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('645', 'Skill', '-3', 'Fast-Talk', '277');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('646', 'Skill', '-3', 'Occultism', '277');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('647', 'IQ', '-5', '278');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('648', 'Skill', '-3', 'Fast-Talk', '278');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('649', 'Skill', '-3', 'Occultism', '278');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('650', 'IQ', '-5', '279');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('651', 'Skill', '-5', 'Artillery', '279');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('652', 'HT', '-5', '280');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('653', 'DX', '-5', '280');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('654', 'IQ', '-5', '281');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('655', 'IQ', '-5', '282');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('656', 'Skill', '-5', 'Mathematics', 'Statistics', '282');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('657', 'IQ', '-4', '283');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('658', 'IQ', '-4', '284');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('659', 'Skill', '-3', 'Farming', '284');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('660', 'DX', '-4', '285');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('661', 'IQ', '-5', '286');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('662', 'Skill', '-4', 'Geology', 'Earthlike', '286');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('663', 'Skill', '-4', 'Meteorology', 'Earthlike', '286');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('664', 'Skill', '-5', 'Geography', '286');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('665', 'IQ', '-5', '287');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('666', 'Skill', '-4', 'Geology', 'Earthlike', '287');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('667', 'Skill', '-4', 'Meteorology', 'Earthlike', '287');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('668', 'Skill', '-5', 'Geography', '287');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('669', 'IQ', '-6', '288');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('670', 'Skill', '-4', 'Geology', 'Gas Giants', '288');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('671', 'Skill', '-4', 'Meteorology', 'Gas Giants', '288');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('672', 'Skill', '-5', 'Geography', '288');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('673', 'IQ', '-6', '289');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('674', 'Skill', '-4', 'Geology', 'Hostile Terrestrial', '289');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('675', 'Skill', '-4', 'Meteorology', 'Hostile Terrestrial', '289');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('676', 'Skill', '-5', 'Geography', '289');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('677', 'IQ', '-6', '290');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('678', 'Skill', '-4', 'Geology', 'Ice Dwarfs', '290');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('679', 'Skill', '-4', 'Meteorology', 'Ice Dwarfs', '290');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('680', 'Skill', '-5', 'Geography', '290');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('681', 'IQ', '-6', '291');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('682', 'Skill', '-4', 'Geology', 'Ice Worlds', '291');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('683', 'Skill', '-4', 'Meteorology', 'Ice Worlds', '291');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('684', 'Skill', '-5', 'Geography', '291');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('685', 'IQ', '-6', '292');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('686', 'Skill', '-4', 'Geology', 'Rock Worlds', '292');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('687', 'Skill', '-4', 'Meteorology', 'Rock Worlds', '292');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('688', 'Skill', '-5', 'Geography', '292');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('689', 'IQ', '-6', '293');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('690', 'Skill', '-4', 'Economics', '293');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('691', 'Skill', '-5', 'Geography', '293');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('692', 'IQ', '-6', '294');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('693', 'Skill', '-6', 'Area Knowledge', '294');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('694', 'Skill', '-5', 'Geography', '294');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('695', 'IQ', '-6', '295');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('696', 'Skill', '-4', 'Geography', 'Physical, Earthlike', '295');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('697', 'Skill', '-5', 'Prospecting', '295');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('698', 'IQ', '-6', '296');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('699', 'Skill', '-4', 'Geography', 'Physical, Earthlike', '296');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('700', 'Skill', '-5', 'Prospecting', '296');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('701', 'IQ', '-6', '297');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('702', 'Skill', '-4', 'Geography', 'Physical, Gas Giants', '297');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('703', 'Skill', '-5', 'Prospecting', '297');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('704', 'IQ', '-6', '298');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('705', 'Skill', '-4', 'Geography', 'Physical, Hostile Terrestrial', '298');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('706', 'Skill', '-5', 'Prospecting', '298');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('707', 'IQ', '-6', '299');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('708', 'Skill', '-4', 'Geography', 'Physical, Ice Dwarfs', '299');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('709', 'Skill', '-5', 'Prospecting', '299');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('710', 'IQ', '-6', '300');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('711', 'Skill', '-4', 'Geography', 'Physical, Ice Worlds', '300');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('712', 'Skill', '-5', 'Prospecting', '300');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('713', 'IQ', '-6', '301');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('714', 'Skill', '-4', 'Geography', 'Physical, Rock Worlds', '301');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('715', 'Skill', '-5', 'Prospecting', '301');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('716', 'IQ', '-4', '302');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('717', 'Skill', '-4', '@Combat Skill@', '26');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('718', 'Skill', '-4', 'Brawling', '27');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('719', 'Skill', '-4', 'Broadsword', '28');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('720', 'Skill', '-4', 'Karate', '29');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('721', 'Skill', '-4', 'Knife', '30');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('722', 'Skill', '-4', 'Shortsword', '31');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('723', 'IQ', '-5', '303');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('724', 'Skill', '-2', 'Dancing', '303');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('725', 'IQ', '-5', '304');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('726', 'Skill', '-2', 'Dancing', '304');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('727', 'IQ', '-5', '305');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('728', 'Skill', '-2', 'Musical Instrument', '305');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('729', 'Skill', '-3', 'Singing', '305');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('730', 'IQ', '-5', '306');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('731', 'Skill', '-5', 'Performance', '306');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('732', 'IQ', '-5', '307');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('733', 'Skill', '-2', 'Stage Combat', '307');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('734', 'DX', '-4', '308');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('735', 'Skill', '-4', 'Gunner', '308');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('736', 'DX', '-4', '309');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('737', 'Skill', '-4', 'Gunner', '309');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('738', 'DX', '-4', '310');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('739', 'Skill', '-4', 'Gunner', '310');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('740', 'DX', '-4', '311');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('741', 'Skill', '-4', 'Gunner', '311');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('742', 'DX', '-4', '312');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('743', 'Skill', '-4', 'Gunner', '312');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('744', 'DX', '-4', '313');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('745', 'Skill', '-4', 'Gunner', '313');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('746', 'DX', '-4', '314');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('747', 'Skill', '-4', 'Guns', '314');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('748', 'DX', '-4', '315');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('749', 'Skill', '-4', 'Guns', '315');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('750', 'DX', '-4', '316');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('751', 'Skill', '-4', 'Guns', '316');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('752', 'DX', '-4', '317');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('753', 'Skill', '-4', 'Guns', '317');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('754', 'DX', '-4', '318');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('755', 'Skill', '-4', 'Guns', 'Grenade Launcher', '318');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('756', 'Skill', '-4', 'Guns', 'Gyroc', '318');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('757', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '318');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('758', 'Skill', '-2', 'Guns', 'Musket', '318');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('759', 'Skill', '-2', 'Guns', 'Pistol', '318');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('760', 'Skill', '-2', 'Guns', 'Rifle', '318');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('761', 'Skill', '-2', 'Guns', 'Shotgun', '318');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('762', 'Skill', '-2', 'Guns', 'Submachine Gun', '318');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('763', 'DX', '-4', '319');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('764', 'Skill', '-4', 'Guns', 'Grenade Launcher', '319');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('765', 'Skill', '-4', 'Guns', 'Gyroc', '319');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('766', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '319');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('767', 'Skill', '-2', 'Guns', 'Light Machine Gun', '319');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('768', 'Skill', '-2', 'Guns', 'Pistol', '319');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('769', 'Skill', '-2', 'Guns', 'Rifle', '319');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('770', 'Skill', '-2', 'Guns', 'Shotgun', '319');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('771', 'Skill', '-2', 'Guns', 'Submachine Gun', '319');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('772', 'DX', '-4', '320');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('773', 'Skill', '-4', 'Guns', 'Grenade Launcher', '320');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('774', 'Skill', '-4', 'Guns', 'Gyroc', '320');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('775', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '320');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('776', 'Skill', '-2', 'Guns', 'Light Machine Gun', '320');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('777', 'Skill', '-2', 'Guns', 'Musket', '320');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('778', 'Skill', '-4', 'Beam Weapons', 'Pistol', '320');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('779', 'Skill', '-2', 'Guns', 'Rifle', '320');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('780', 'Skill', '-2', 'Guns', 'Shotgun', '320');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('781', 'Skill', '-2', 'Guns', 'Submachine Gun', '320');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('782', 'DX', '-4', '321');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('783', 'Skill', '-4', 'Guns', 'Grenade Launcher', '321');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('784', 'Skill', '-4', 'Guns', 'Gyroc', '321');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('785', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '321');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('786', 'Skill', '-2', 'Guns', 'Light Machine Gun', '321');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('787', 'Skill', '-2', 'Guns', 'Musket', '321');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('788', 'Skill', '-2', 'Guns', 'Pistol', '321');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('789', 'Skill', '-4', 'Beam Weapons', 'Rifle', '321');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('790', 'Skill', '-2', 'Guns', 'Shotgun', '321');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('791', 'Skill', '-2', 'Guns', 'Submachine Gun', '321');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('792', 'DX', '-4', '322');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('793', 'Skill', '-4', 'Guns', 'Grenade Launcher', '322');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('794', 'Skill', '-4', 'Guns', 'Gyroc', '322');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('795', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '322');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('796', 'Skill', '-2', 'Guns', 'Light Machine Gun', '322');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('797', 'Skill', '-2', 'Guns', 'Musket', '322');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('798', 'Skill', '-2', 'Guns', 'Pistol', '322');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('799', 'Skill', '-2', 'Guns', 'Rifle', '322');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('800', 'Skill', '-2', 'Guns', 'Submachine Gun', '322');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('801', 'DX', '-4', '323');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('802', 'Skill', '-4', 'Guns', 'Grenade Launcher', '323');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('803', 'Skill', '-4', 'Guns', 'Gyroc', '323');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('804', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '323');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('805', 'Skill', '-2', 'Guns', 'Light Machine Gun', '323');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('806', 'Skill', '-2', 'Guns', 'Musket', '323');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('807', 'Skill', '-2', 'Guns', 'Pistol', '323');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('808', 'Skill', '-2', 'Guns', 'Rifle', '323');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('809', 'Skill', '-2', 'Guns', 'Shotgun', '323');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('810', 'IQ', '-5', '324');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('811', 'IQ', '-5', '325');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('812', 'IQ', '-5', '326');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('813', 'IQ', '-5', '327');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('814', 'IQ', '-5', '328');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('815', 'IQ', '-5', '329');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('816', 'Skill', '-3', 'Savoir-Faire', 'High Society', '329');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('817', 'HT', '-5', '337');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('818', 'IQ', '-6', '338');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('819', 'IQ', '-4', '339');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('820', 'DX', '-4', '340');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('821', 'IQ', '-5', '341');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('822', 'Skill', '-3', 'Sleight of Hand', '341');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('823', 'Skill', '-4', 'Bow', '32');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('824', 'IQ', '-4', '342');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_technique])
  VALUES ('825', 'Skill', '-3', 'Mimicry', 'Speech', '33');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('826', 'DX', '-4', '345');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('827', 'Skill', '-2', 'Innate Attack', '345');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('828', 'DX', '-4', '346');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('829', 'Skill', '-2', 'Innate Attack', '346');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('830', 'DX', '-4', '347');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('831', 'Skill', '-2', 'Innate Attack', '347');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('832', 'DX', '-4', '348');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('833', 'Skill', '-2', 'Innate Attack', '348');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('834', 'IQ', '-6', '349');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('835', 'Skill', '-6', 'Strategy', '349');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('836', 'IQ', '-5', '350');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('837', 'Skill', '-3', 'Intimidation', '350');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('838', 'Skill', '-4', 'Psychology', '350');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('839', 'Per', '-5', '351');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('840', 'Skill', '-3', 'Acting', '351');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('841', 'IQ', '-6', '353');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('842', 'Skill', '-4', 'Smith', 'Copper', '353');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('843', 'Skill', '-4', 'Smith', 'Lead & Tin', '353');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('844', 'Skill', '-4', 'Force Sword', '354');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('845', 'Skill', '-4', 'Main-Gauche', '354');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('846', 'Skill', '-3', 'Shortsword', '354');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('847', 'DX', '-5', '354');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('848', 'Skill', '-4', 'Karate', '34');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('849', 'Skill', '-2', 'Brawling', '35');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('850', 'Skill', '-2', 'Karate', '36');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('851', 'Skill', '-1', 'Brawling', '37');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('852', 'Skill', '-1', 'Karate', '38');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('853', 'Skill', '-3', 'Force Sword', '359');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('854', 'Skill', '-3', 'Main-Gauche', '359');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('855', 'Skill', '-3', 'Shortsword', '359');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('856', 'DX', '-4', '359');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('857', 'DX', '-4', '360');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('858', 'Skill', '-4', 'Climbing', '360');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('859', 'Skill', '-4', 'Seamanship', '360');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('860', 'DX', '-6', '361');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('861', 'Skill', '-3', 'Force Whip', '361');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('862', 'Skill', '-3', 'Monowire Whip', '361');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('863', 'Skill', '-3', 'Whip', '361');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('864', 'Skill', '-4', 'Two-Handed Flail', '361');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('865', 'DX', '-5', '362');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('866', 'Skill', '-3', 'Spear', '362');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('867', 'IQ', '-6', '364');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('868', 'IQ', '-5', '365');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('869', 'DX', '-4', '366');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('870', 'Skill', '-5', 'Swimming', '39');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('871', 'Per', '-10', '370');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('872', 'DX', '-4', '371');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('873', 'Skill', '-4', 'Liquid Projector', '371');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('874', 'DX', '-4', '372');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('875', 'Skill', '-4', 'Liquid Projector', '372');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('876', 'DX', '-4', '373');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('877', 'Skill', '-4', 'Liquid Projector', '373');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('878', 'DX', '-4', '374');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('879', 'Skill', '-4', 'Liquid Projector', '374');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('880', 'DX', '-4', '375');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('881', 'Skill', '-4', 'Liquid Projector', '375');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('882', 'IQ', '-6', '376');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('883', 'IQ', '-5', '377');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('884', 'IQ', '-5', '378');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('885', 'Skill', '-5', 'Mechanic', '378');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('886', 'DX', '-5', '379');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('887', 'Skill', '-4', 'Jitte/Sai', '379');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('888', 'Skill', '-4', 'Knife', '379');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('889', 'Skill', '-3', 'Rapier', '379');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('890', 'Skill', '-3', 'Saber', '379');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('891', 'Skill', '-3', 'Smallsword', '379');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('892', 'IQ', '-4', '380');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('893', 'Skill', '-2', 'Disguise', '380');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('894', 'IQ', '-6', '381');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('895', 'Skill', '-5', 'Economics', '381');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('896', 'Skill', '-4', 'Merchant', '381');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('897', 'IQ', '-4', '382');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('898', 'IQ', '-6', '383');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('899', 'Skill', '-5', 'Physics', '383');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('900', 'Skill', '-5', 'Engineer', '383');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('901', 'IQ', '-6', '384');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('902', 'Skill', '-5', 'Computer Programming', '384');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('903', 'IQ', '-6', '385');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('904', 'Skill', '-5', 'Cryptography', '385');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('905', 'IQ', '-6', '386');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('906', 'IQ', '-6', '387');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('907', 'IQ', '-6', '388');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('908', 'IQ', '-6', '389');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('909', 'Skill', '-3', 'Cartography', '389');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('910', 'Skill', '-4', 'Navigation', '389');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('911', 'IQ', '-5', '390');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('912', 'Skill', '-4', 'Engineer', 'Aerospace', '390');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('913', 'Skill', '-5', 'Machinist', '390');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('914', 'Skill', '-4', 'Mechanic', '390');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('915', 'IQ', '-5', '391');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('916', 'Skill', '-4', 'Engineer', 'Aerospace', '391');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('917', 'Skill', '-5', 'Machinist', '391');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('918', 'Skill', '-4', 'Mechanic', '391');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('919', 'IQ', '-5', '392');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('920', 'Skill', '-4', 'Engineer', 'Antimatter Reactor', '392');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('921', 'Skill', '-5', 'Machinist', '392');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('922', 'Skill', '-4', 'Mechanic', '392');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('923', 'IQ', '-5', '393');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('924', 'Skill', '-4', 'Engineer', 'Autogyro', '393');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('925', 'Skill', '-5', 'Machinist', '393');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('926', 'Skill', '-4', 'Mechanic', '393');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('927', 'IQ', '-5', '394');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('928', 'Skill', '-4', 'Engineer', 'Automobile', '394');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('929', 'Skill', '-5', 'Machinist', '394');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('930', 'Skill', '-4', 'Mechanic', '394');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('931', 'IQ', '-5', '395');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('932', 'Skill', '-4', 'Engineer', 'Clockwork', '395');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('933', 'Skill', '-5', 'Machinist', '395');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('934', 'Skill', '-4', 'Mechanic', '395');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('935', 'IQ', '-5', '396');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('936', 'Skill', '-4', 'Engineer', 'Construction Equipment', '396');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('937', 'Skill', '-5', 'Machinist', '396');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('938', 'Skill', '-4', 'Mechanic', '396');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('939', 'IQ', '-5', '397');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('940', 'Skill', '-4', 'Engineer', 'Contragravity', '397');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('941', 'Skill', '-5', 'Machinist', '397');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('942', 'Skill', '-4', 'Mechanic', '397');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('943', 'IQ', '-5', '398');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('944', 'Skill', '-4', 'Engineer', 'Diesel Engine', '398');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('945', 'Skill', '-5', 'Machinist', '398');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('946', 'Skill', '-4', 'Mechanic', '398');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('947', 'IQ', '-5', '399');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('948', 'Skill', '-4', 'Engineer', 'Fission Reactor', '399');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('949', 'Skill', '-5', 'Machinist', '399');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('950', 'Skill', '-4', 'Mechanic', '399');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('951', 'IQ', '-5', '400');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('952', 'Skill', '-4', 'Engineer', 'Flight Pack', '400');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('953', 'Skill', '-5', 'Machinist', '400');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('954', 'Skill', '-4', 'Mechanic', '400');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('955', 'IQ', '-5', '401');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('956', 'Skill', '-4', 'Engineer', 'Free-Flooding Sub', '401');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('957', 'Skill', '-5', 'Machinist', '401');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('958', 'Skill', '-4', 'Mechanic', '401');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('959', 'IQ', '-5', '402');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('960', 'Skill', '-4', 'Engineer', 'Fuel Cell', '402');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('961', 'Skill', '-5', 'Machinist', '402');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('962', 'Skill', '-4', 'Mechanic', '402');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('963', 'IQ', '-5', '403');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('964', 'Skill', '-4', 'Engineer', 'Fusion Reactor', '403');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('965', 'Skill', '-5', 'Machinist', '403');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('966', 'Skill', '-4', 'Mechanic', '403');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('967', 'IQ', '-5', '404');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('968', 'Skill', '-4', 'Engineer', 'Gas Turbine', '404');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('969', 'Skill', '-5', 'Machinist', '404');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('970', 'Skill', '-4', 'Mechanic', '404');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('971', 'IQ', '-5', '405');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('972', 'Skill', '-4', 'Engineer', 'Gasoline Engine', '405');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('973', 'Skill', '-5', 'Machinist', '405');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('974', 'Skill', '-4', 'Mechanic', '405');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('975', 'IQ', '-5', '406');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('976', 'Skill', '-4', 'Engineer', 'Glider', '406');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('977', 'Skill', '-5', 'Machinist', '406');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('978', 'Skill', '-4', 'Mechanic', '406');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('979', 'IQ', '-5', '407');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('980', 'Skill', '-4', 'Engineer', 'Halftrack', '407');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('981', 'Skill', '-5', 'Machinist', '407');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('982', 'Skill', '-4', 'Mechanic', '407');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('983', 'IQ', '-5', '408');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('984', 'Skill', '-4', 'Engineer', 'Heavy Airplane', '408');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('985', 'Skill', '-5', 'Machinist', '408');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('986', 'Skill', '-4', 'Mechanic', '408');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('987', 'IQ', '-5', '409');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('988', 'Skill', '-4', 'Engineer', 'Heavy Wheeled', '409');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('989', 'Skill', '-5', 'Machinist', '409');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('990', 'Skill', '-4', 'Mechanic', '409');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('991', 'IQ', '-5', '410');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('992', 'Skill', '-4', 'Engineer', 'Helicopter', '410');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('993', 'Skill', '-5', 'Machinist', '410');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('994', 'Skill', '-4', 'Mechanic', '410');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('995', 'IQ', '-5', '411');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('996', 'Skill', '-4', 'Engineer', 'High-Performance Airplane', '411');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('997', 'Skill', '-5', 'Machinist', '411');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('998', 'Skill', '-4', 'Mechanic', '411');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('999', 'IQ', '-5', '412');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1000', 'Skill', '-4', 'Engineer', 'High-Performance Spacecraft', '412');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1001', 'Skill', '-5', 'Machinist', '412');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1002', 'Skill', '-4', 'Mechanic', '412');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1003', 'IQ', '-5', '413');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1004', 'Skill', '-4', 'Engineer', 'Hovercraft', '413');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1005', 'Skill', '-5', 'Machinist', '413');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1006', 'Skill', '-4', 'Mechanic', '413');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1007', 'IQ', '-5', '414');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1008', 'Skill', '-4', 'Engineer', 'Large Sub', '414');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1009', 'Skill', '-5', 'Machinist', '414');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1010', 'Skill', '-4', 'Mechanic', '414');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1011', 'IQ', '-5', '415');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1012', 'Skill', '-4', 'Engineer', 'Legged Drive', '415');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1013', 'Skill', '-5', 'Machinist', '415');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1014', 'Skill', '-4', 'Mechanic', '415');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1015', 'IQ', '-5', '416');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1016', 'Skill', '-4', 'Engineer', 'Light Airplane', '416');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1017', 'Skill', '-5', 'Machinist', '416');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1018', 'Skill', '-4', 'Mechanic', '416');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1019', 'IQ', '-5', '417');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1020', 'Skill', '-4', 'Engineer', 'Lighter-Than-Air', '417');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1021', 'Skill', '-5', 'Machinist', '417');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1022', 'Skill', '-4', 'Mechanic', '417');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1023', 'IQ', '-5', '418');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1024', 'Skill', '-4', 'Engineer', 'Lightsail', '418');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1025', 'Skill', '-5', 'Machinist', '418');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1026', 'Skill', '-4', 'Mechanic', '418');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1027', 'IQ', '-5', '419');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1028', 'Skill', '-4', 'Engineer', 'Low-G Wings', '419');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1029', 'Skill', '-5', 'Machinist', '419');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1030', 'Skill', '-4', 'Mechanic', '419');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1031', 'IQ', '-5', '420');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1032', 'Skill', '-4', 'Engineer', 'Low-Performance Spacecraft', '420');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1033', 'Skill', '-5', 'Machinist', '420');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1034', 'Skill', '-4', 'Mechanic', '420');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1035', 'IQ', '-5', '421');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1036', 'Skill', '-4', 'Engineer', 'Mecha', '421');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1037', 'Skill', '-5', 'Machinist', '421');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1038', 'Skill', '-4', 'Mechanic', '421');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1039', 'IQ', '-5', '422');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1040', 'Skill', '-4', 'Engineer', 'Micromachines', '422');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1041', 'Skill', '-5', 'Machinist', '422');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1042', 'Skill', '-4', 'Mechanic', '422');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1043', 'IQ', '-5', '423');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1044', 'Skill', '-4', 'Engineer', 'Mini-Sub', '423');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1045', 'Skill', '-5', 'Machinist', '423');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1046', 'Skill', '-4', 'Mechanic', '423');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1047', 'IQ', '-5', '424');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1048', 'Skill', '-4', 'Engineer', 'Motorcycle', '424');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1049', 'Skill', '-5', 'Machinist', '424');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1050', 'Skill', '-4', 'Mechanic', '424');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1051', 'IQ', '-5', '425');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1052', 'Skill', '-4', 'Engineer', 'Nanomachines', '425');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1053', 'Skill', '-5', 'Machinist', '425');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1054', 'Skill', '-4', 'Mechanic', '425');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1055', 'IQ', '-5', '426');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1056', 'Skill', '-4', 'Engineer', 'Reactionless Thrusters', '426');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1057', 'Skill', '-5', 'Machinist', '426');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1058', 'Skill', '-4', 'Mechanic', '426');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1059', 'IQ', '-5', '427');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1060', 'Skill', '-4', 'Engineer', 'Robotics', '427');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1061', 'Skill', '-5', 'Machinist', '427');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1062', 'Skill', '-4', 'Mechanic', '427');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1063', 'IQ', '-5', '428');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1064', 'Skill', '-4', 'Engineer', 'Rockets', '428');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1065', 'Skill', '-5', 'Machinist', '428');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1066', 'Skill', '0', 'Mechanic', '428');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1067', 'IQ', '-5', '429');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1068', 'Skill', '-4', 'Engineer', 'Steam Engine', '429');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1069', 'Skill', '-5', 'Machinist', '429');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1070', 'Skill', '-4', 'Mechanic', '429');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1071', 'IQ', '-5', '430');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1072', 'Skill', '-4', 'Engineer', 'Tracked Drive', '430');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1073', 'Skill', '-5', 'Machinist', '430');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1074', 'Skill', '-4', 'Mechanic', '430');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1075', 'IQ', '-5', '431');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1076', 'Skill', '-4', 'Engineer', 'Tracked Vehicle', '431');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1077', 'Skill', '-5', 'Machinist', '431');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1078', 'Skill', '-4', 'Mechanic', '431');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1079', 'IQ', '-5', '432');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1080', 'Skill', '-4', 'Engineer', 'Ultralight', '432');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1081', 'Skill', '-5', 'Machinist', '432');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1082', 'Skill', '-4', 'Mechanic', '432');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1083', 'IQ', '-5', '433');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1084', 'Skill', '-4', 'Engineer', 'Vertol', '433');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1085', 'Skill', '-5', 'Machinist', '433');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1086', 'Skill', '-4', 'Mechanic', '433');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1087', 'IQ', '-5', '434');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1088', 'Skill', '-4', 'Engineer', 'Wheeled Drive', '434');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1089', 'Skill', '-5', 'Machinist', '434');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1090', 'Skill', '-4', 'Mechanic', '434');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1091', 'Will', '-6', '435');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1092', 'Skill', '-4', 'Autohypnosis', '435');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1093', 'IQ', '-5', '437');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1094', 'Skill', '-6', 'Finance', '437');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1095', 'Skill', '-4', 'Market Analysis', '437');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1096', 'Skill', '-5', 'Chemistry', '438');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1097', 'Skill', '-8', 'Jeweler', '438');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1098', 'Skill', '-8', 'Smith', '438');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1099', 'IQ', '-5', '439');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1100', 'IQ', '-5', '440');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1101', 'IQ', '-5', '441');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1102', 'IQ', '-5', '442');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1103', 'IQ', '-5', '443');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1104', 'IQ', '-5', '444');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1105', 'IQ', '-5', '445');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1106', 'IQ', '-6', '446');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1107', 'Skill', '-6', 'Naturalist', '446');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1108', 'Skill', '-6', 'Mimicry', 'Bird Calls', '446');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1109', 'IQ', '-6', '447');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1110', 'Skill', '-6', 'Naturalist', '447');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1111', 'Skill', '-6', 'Mimicry', 'Animal Sounds', '447');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1112', 'Will', '-5', '449');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1113', 'Skill', '-5', 'Meditation', '449');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1114', 'DX', '-6', '450');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1115', 'Skill', '-3', 'Force Whip', '450');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1116', 'Skill', '-3', 'Kusari', '450');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1117', 'Skill', '-3', 'Whip', '450');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('1118', 'Skill', '-3', 'Photography', '40');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1119', 'DX', '-5', '451');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1120', 'Skill', '-2', 'Musical Instrument', '452');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1121', 'Skill', '-2', 'Poetry', '452');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1122', 'IQ', '-6', '455');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1123', 'Skill', '-3', 'Biology', '455');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1124', 'IQ', '-6', '456');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1125', 'Skill', '-3', 'Biology', '456');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1126', 'IQ', '-6', '457');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1127', 'Skill', '-3', 'Biology', '457');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1128', 'IQ', '-6', '458');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1129', 'Skill', '-3', 'Biology', '458');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1130', 'IQ', '-6', '459');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1131', 'Skill', '-3', 'Biology', '459');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1132', 'IQ', '-6', '460');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1133', 'Skill', '-3', 'Biology', '460');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1134', 'IQ', '-6', '461');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1135', 'Skill', '-3', 'Biology', '461');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1136', 'Skill', '-5', 'Astronomy', '462');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1137', 'Skill', '-2', 'Navigation', 'Land', '462');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1138', 'Skill', '-2', 'Navigation', 'Sea', '462');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1139', 'Skill', '-5', 'Astronomy', '463');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1140', 'Skill', '-2', 'Navigation', 'Land', '463');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1141', 'Skill', '-2', 'Navigation', 'Sea', '463');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1142', 'Skill', '-4', 'Astronomy', '464');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1143', 'Skill', '-4', 'Mathematics', 'Applied', '464');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1144', 'Skill', '-5', 'Navigation', 'Space', '464');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1145', 'IQ', '-5', '465');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1146', 'Skill', '-4', 'Cartography', '465');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1147', 'Skill', '-4', 'Mathematics', 'Surveying', '465');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1148', 'Skill', '-2', 'Navigation', 'Air', '465');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1149', 'Skill', '-2', 'Navigation', 'Sea', '465');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1150', 'Skill', '-5', 'Astronomy', '466');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1151', 'Skill', '-5', 'Seamanship', '466');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1152', 'Skill', '-2', 'Navigation', 'Air', '466');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1153', 'Skill', '-2', 'Navigation', 'Land', '466');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1154', 'Skill', '-4', 'Astronomy', '467');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1155', 'Skill', '-4', 'Mathematics', 'Applied', '467');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1156', 'Skill', '-5', 'Navigation', 'Hyperspace', '467');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1157', 'DX', '-5', '468');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1158', 'Skill', '-2', 'Battlesuit', '468');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1159', 'Skill', '-4', 'Diving Suit', '468');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1160', 'Skill', '-2', 'Vacc Suit', '468');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_technique])
  VALUES ('1161', 'ST', '-4', '41');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1162', 'Skill', '-5', 'Cloak', '469');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('1163', 'Skill', '-4', 'Piloting', '42');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1164', 'Per', '-5', '470');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1165', 'Skill', '-5', 'Shadowing', '470');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1166', 'IQ', '-5', '471');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('1167', 'Skill', '-4', 'Broadsword', '43');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_technique])
  VALUES ('1168', 'Skill', '-4', 'Guns', 'Pistol', '44');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('1169', 'Skill', '-4', 'Knife', '45');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('1170', 'Skill', '-4', 'Shortsword', '46');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1171', 'IQ', '-5', '472');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1172', 'Skill', '-5', 'Animal Handling', 'Equines', '472');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1173', 'Skill', '-4', 'Biology', '473');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1174', 'Skill', '-2', 'Paleontology', '473');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1175', 'Skill', '-4', 'Biology', '474');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1176', 'Skill', '-2', 'Paleontology', '474');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1177', 'Skill', '-2', 'Anthropology', '474');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1178', 'Skill', '-4', 'Biology', '475');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1179', 'Skill', '-2', 'Paleontology', '475');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1180', 'Skill', '-4', 'Biology', '476');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1181', 'Skill', '-2', 'Paleontology', '476');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1182', 'IQ', '-4', '477');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1183', 'Skill', '-2', 'Fast Talk', '477');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1184', 'Skill', '-3', 'Public Speaking', '477');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1185', 'DX', '-4', '478');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1186', 'IQ', '-5', '480');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1187', 'Skill', '-2', 'Acting', '480');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1188', 'Skill', '-2', 'Public Speaking', '480');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1189', 'IQ', '-6', '482');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1190', 'Skill', '-5', 'Biology', '482');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1191', 'Skill', '-5', 'Herb Lore', '482');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1192', 'Skill', '-5', 'Naturalist', '482');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1193', 'IQ', '-6', '483');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1194', 'Skill', '-5', 'Chemistry', '483');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1195', 'Skill', '-5', 'Physician', '483');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1196', 'IQ', '-6', '484');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1197', 'IQ', '-5', '485');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1198', 'Skill', '-5', 'Electronics Operation', 'Media', '485');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1199', 'IQ', '-7', '486');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1200', 'Skill', '-11', 'First Aid', '486');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1201', 'Skill', '-5', 'Veterinary', '486');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1202', 'IQ', '-6', '487');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1203', 'IQ', '-6', '488');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1204', 'IQ', '-6', '489');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1205', 'Skill', '-5', 'Diagnosis', '489');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1206', 'Skill', '-5', 'Physician', '489');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1207', 'Skill', '-5', 'Surgery', '489');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1208', 'DX', '-6', '490');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1209', 'Skill', '-5', 'Filch', '490');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1210', 'Skill', '-4', 'Sleight of Hand', '490');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1211', 'IQ', '-6', '491');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1212', 'Skill', '-2', 'Piloting', 'High-Performance Airplane', '491');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1213', 'Skill', '-4', 'Piloting', '491');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1214', 'IQ', '-6', '492');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1215', 'Skill', '-2', 'Piloting', 'High-Performance Airplane', '492');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1216', 'Skill', '-4', 'Piloting', '492');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1217', 'Skill', '-3', 'Piloting', 'Helicopter', '493');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1218', 'Skill', '-4', 'Piloting', 'Heavy Airplane', '493');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1219', 'Skill', '-5', 'Piloting', '493');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1220', 'IQ', '-6', '493');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1221', 'Skill', '-4', 'Piloting', 'Light Airplane', '493');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1222', 'Skill', '-4', 'Piloting', 'High-Performance Airplane', '493');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1223', 'IQ', '-6', '494');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1224', 'Skill', '-3', 'Piloting', 'Vertol', '494');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1225', 'Skill', '-5', 'Piloting', '494');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1226', 'IQ', '-6', '495');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1227', 'Skill', '-4', 'Piloting', 'Vertol', '495');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1228', 'Skill', '-5', 'Piloting', '495');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1229', 'IQ', '-6', '496');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1230', 'Skill', '-2', 'Piloting', 'Light Airplane', '496');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1231', 'Skill', '-2', 'Piloting', 'Ultralight', '496');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1232', 'Skill', '-4', 'Piloting', '496');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1233', 'IQ', '-6', '497');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1234', 'Skill', '-2', 'Piloting', 'High-Performance Airplane', '497');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1235', 'Skill', '-2', 'Piloting', 'Light Airplane', '497');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1236', 'Skill', '-4', 'Piloting', '497');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1237', 'IQ', '-6', '498');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1238', 'Skill', '-2', 'Piloting', 'Autogyro', '498');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1239', 'Skill', '-4', 'Piloting', 'Vertol', '498');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1240', 'Skill', '-5', 'Piloting', '498');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1241', 'IQ', '-6', '499');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1242', 'Skill', '-2', 'Piloting', 'Aerospace', '499');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1243', 'Skill', '-2', 'Piloting', 'Heavy Airplane', '499');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1244', 'Skill', '-2', 'Piloting', 'Light Airplane', '499');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1245', 'Skill', '-5', 'Piloting', '499');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1246', 'IQ', '-6', '500');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1247', 'Skill', '-4', 'Piloting', 'Aerospace', '500');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1248', 'Skill', '-2', 'Piloting', 'Low-Performance Spacecraft', '500');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1249', 'IQ', '-6', '501');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1250', 'Skill', '-2', 'Piloting', 'Glider', '501');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1251', 'Skill', '-2', 'Piloting', 'Heavy Airplane', '501');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1252', 'Skill', '-2', 'Piloting', 'High-Performance Airplane', '501');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1253', 'Skill', '-4', 'Piloting', '501');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1254', 'Skill', '-2', 'Piloting', 'Ultralight', '501');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1255', 'IQ', '-6', '502');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1256', 'Skill', '-5', 'Piloting', '502');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1257', 'IQ', '-6', '503');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1258', 'Skill', '-4', 'Piloting', 'Low-Performance Spacecraft', '503');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1259', 'IQ', '-6', '504');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1260', 'Skill', '-4', 'Piloting', 'Glider', '504');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1261', 'IQ', '-6', '505');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1262', 'Skill', '-4', 'Piloting', 'Aerospace', '505');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1263', 'Skill', '-2', 'Piloting', 'High-Performance Spacecraft', '505');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1264', 'IQ', '-6', '506');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1265', 'Skill', '-2', 'Piloting', 'Gilder', '506');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1266', 'Skill', '-2', 'Piloting', 'Light Airplane', '506');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1267', 'Skill', '-4', 'Piloting', 'Heavy Airplane', '506');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1268', 'Skill', '-5', 'Piloting', '506');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1269', 'Skill', '-4', 'Piloting', 'High-Performance Airplane', '506');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1270', 'IQ', '-6', '507');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1271', 'Skill', '-3', 'Piloting', 'Contragravity', '507');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1272', 'Skill', '-4', 'Piloting', 'Helicopter', '507');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1273', 'Skill', '-5', 'Piloting', '507');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1274', 'IQ', '-5', '508');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1275', 'Skill', '-5', 'Writing', '508');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1276', 'IQ', '-6', '509');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1277', 'Skill', '-5', 'Chemistry', '509');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1278', 'Skill', '-3', 'Pharmacy', '509');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1279', 'Skill', '-3', 'Physician', '509');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1280', 'DX', '-5', '510');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1281', 'Skill', '-4', 'Spear', '510');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1282', 'Skill', '-4', 'Staff', '510');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1283', 'Skill', '-4', 'Two-Handed Axe/Mace', '510');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1284', 'IQ', '-5', '511');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1285', 'Skill', '-5', 'Diplomacy', '511');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1286', 'IQ', '-5', '515');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1287', 'DX', '-5', '516');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1288', 'IQ', '-5', '517');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1289', 'Skill', '-5', 'Merchant', '517');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1290', 'Skill', '-4', 'Psychology', '517');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1291', 'IQ', '-5', '518');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1292', 'Skill', '-4', 'Geology', '518');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1293', 'IQ', '-6', '519');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1294', 'Skill', '-4', 'Sociology', '519');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1295', 'IQ', '-5', '520');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1296', 'Skill', '-5', 'Acting', '520');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1297', 'Skill', '-2', 'Performance', '520');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1298', 'Skill', '-5', 'Politics', '520');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1299', 'DX', '-5', '522');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1300', 'Skill', '-4', 'Broadsword', '522');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1301', 'Skill', '-3', 'Main-Gauche', '522');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1302', 'Skill', '-3', 'Saber', '522');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1303', 'Skill', '-3', 'Smallsword', '522');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1304', 'Skill', '-6', 'Ritual Magic', '@Specialty@', '523');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1305', 'Skill', '-4', 'Theology', '@Specialty@', '523');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1306', 'IQ', '-5', '524');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1307', 'Skill', '-3', 'Writing', '524');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('1308', 'Skill', '0', '@Melee Weapon Skill@', '47');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_technique])
  VALUES ('1309', 'DX', '0', '48');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('1310', 'Skill', '0', 'Broadsword', '49');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('1311', 'Skill', '0', 'Knife', '50');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('1312', 'Skill', '0', 'Shortsword', '51');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1313', 'DX', '-5', '525');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1314', 'Skill', '-3', 'Animal Handling', '@Specialty@', '525');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1315', 'DX', '-5', '526');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1316', 'Skill', '-3', 'Animal Handling', 'Camel', '526');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1317', 'DX', '-5', '527');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1318', 'Skill', '-3', 'Animal Handling', 'Dolphin', '527');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1319', 'DX', '-5', '528');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1320', 'Skill', '-3', 'Animal Handling', 'Dragon', '528');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1321', 'DX', '-5', '529');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1322', 'Skill', '-3', 'Animal Handling', 'Equine', '529');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1323', 'Skill', '-6', 'Ritual Magic', '530');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('1324', 'Skill', '-2', 'Climbing', '52');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1325', 'HT', '-5', '531');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1326', 'DX', '-5', '532');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1327', 'Skill', '-4', 'Broadsword', '532');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1328', 'Skill', '-4', 'Shortswort', '532');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1329', 'Skill', '-3', 'Main-Gauche', '532');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1330', 'Skill', '-3', 'Rapier', '532');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1331', 'Skill', '-3', 'Smallsword', '532');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1332', 'IQ', '-4', '533');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1333', 'Skill', '-3', 'Games', '533');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1334', 'IQ', '-4', '534');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1335', 'Skill', '-3', 'Games', '534');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1336', 'IQ', '-4', '535');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1337', 'Skill', '-2', 'Savoir-Faire', 'Servant', '535');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1338', 'IQ', '-4', '536');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1339', 'Skill', '-3', 'Streetwise', '536');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1340', 'IQ', '-4', '537');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1341', 'IQ', '-4', '538');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1342', 'IQ', '-4', '539');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1343', 'Skill', '-2', 'Savoir-Faire', 'High Society', '539');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('1344', 'Skill', '-3', 'Climbing', '53');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1345', 'Per', '-4', '540');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1346', 'IQ', '-5', '541');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1347', 'Skill', '-2', 'Diving Suit', '541');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1348', 'IQ', '-4', '542');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1349', 'Per', '-5', '543');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1350', 'Skill', '-5', 'Criminology', '543');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_technique])
  VALUES ('1351', 'Skill', '-2', 'Explosives', 'Demolition', '54');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1352', 'DX', '-4', '544');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1353', 'HT', '-3', '545');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1354', 'IQ', '-5', '546');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1355', 'Skill', '-5', 'Observation', '546');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1356', 'Skill', '-4', 'Stealth', '546');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1357', 'DX', '-4', '547');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1358', 'Skill', '-2', 'Shield', 'Force', '547');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1359', 'DX', '-4', '548');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1360', 'Skill', '-2', 'Shield', 'Buckler', '548');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1361', 'DX', '-4', '549');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1362', 'IQ', '-6', '550');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1363', 'Skill', '-5', 'Airshipman', '550');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1364', 'Skill', '-5', 'Piloting', 'Lighter-Than-Air', '550');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1365', 'IQ', '-6', '551');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1366', 'Skill', '-5', 'Airshipman', '551');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1367', 'Skill', '-5', 'Piloting', 'Lighter-Than-Air', '551');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1368', 'IQ', '-6', '552');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1369', 'Skill', '-5', 'Seamanship', '552');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1370', 'Skill', '-5', 'Boating', 'Large Powerboat', '552');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1371', 'Skill', '-5', 'Boating', 'Sailboat', '552');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1372', 'IQ', '-6', '553');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1373', 'Skill', '-5', 'Spacer', '553');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1374', 'Skill', '-5', 'Piloting', 'Low-Performance Spacecraft', '553');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1375', 'Skill', '-5', 'Piloting', 'High-Performance Spacecraft', '553');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1376', 'IQ', '-6', '554');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1377', 'Skill', '-5', 'Spacer', '554');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1378', 'Skill', '-5', 'Piloting', 'Low-Performance Spacecraft', '554');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1379', 'Skill', '-5', 'Piloting', 'High-Performance Spacecraft', '554');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1380', 'IQ', '-6', '555');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1381', 'Skill', '-5', 'Submariner', '555');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1382', 'Skill', '-5', 'Submarine', 'Large Sub', '555');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1383', 'Skill', '-2', 'Broadsword', '556');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1384', 'Skill', '-4', 'Force Sword', '556');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1385', 'Skill', '-3', 'Jitte/Sai', '556');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1386', 'Skill', '-4', 'Knife', '556');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1387', 'Skill', '-4', 'Saber', '556');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1388', 'Skill', '-4', 'Smallsword', '556');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1389', 'Skill', '-3', 'Tonfa', '556');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1390', 'DX', '-5', '556');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1391', 'HT', '-4', '557');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1392', 'HT', '-6', '558');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1393', 'HT', '-6', '559');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1394', 'Skill', '-5', 'Filch', '560');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1395', 'DX', '-6', '561');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('1396', 'Skill', '-5', 'Escape', '55');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1397', 'DX', '-5', '562');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1398', 'Skill', '-4', 'Shortsword', '562');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1399', 'Skill', '-3', 'Main-Gauche', '562');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1400', 'Skill', '-3', 'Rapier', '562');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1401', 'Skill', '-3', 'Saber', '562');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1402', 'IQ', '-6', '563');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1403', 'Skill', '-4', 'Jeweler', '563');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1404', 'Skill', '-4', 'Smith', '563');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1405', 'IQ', '-5', '564');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1406', 'Skill', '-4', 'Smith', '564');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1407', 'IQ', '-5', '565');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1408', 'Skill', '-4', 'Jeweler', '565');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1409', 'Skill', '-4', 'Smith', '565');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1410', 'IQ', '-5', '566');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1411', 'IQ', '-6', '567');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1412', 'Skill', '-3', 'Anthropology', '567');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1413', 'Skill', '-4', 'Psychology', '567');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1414', 'IQ', '-5', '568');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1415', 'IQ', '-4', '569');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1416', 'DX', '-5', '570');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1417', 'Skill', '-4', 'Polearm', '570');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1418', 'Skill', '-2', 'Staff', '570');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1419', 'DX', '-5', '571');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1420', 'Skill', '-4', 'Thrown Weapon', 'Spear', '571');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1421', 'DX', '-5', '573');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1422', 'DX', '-5', '574');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1423', 'Skill', '-4', 'Polearm', '574');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1424', 'Skill', '-2', 'Spear', '574');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1425', 'Skill', '-3', 'Performance', '575');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1426', 'IQ', '-5', '576');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1427', 'DX', '-5', '576');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1428', 'IQ', '-6', '577');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1429', 'Skill', '-6', 'Intelligence Analysis', '577');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1430', 'Skill', '-6', 'Tactics', '577');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1431', 'Skill', '-4', 'Strategy', '577');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1432', 'IQ', '-6', '578');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1433', 'Skill', '-6', 'Intelligence Analysis', '578');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1434', 'Skill', '-6', 'Tactics', '578');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1435', 'Skill', '-4', 'Strategy', '578');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1436', 'IQ', '-6', '579');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1437', 'Skill', '-6', 'Intelligence Analysis', '579');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1438', 'Skill', '-6', 'Tactics', '579');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1439', 'Skill', '-4', 'Strategy', '579');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1440', 'IQ', '-5', '580');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1441', 'IQ', '-6', '581');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1442', 'Skill', '-5', 'Submarine', 'Large Sub', '581');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1443', 'Skill', '-4', 'Submarine', 'Mini-Sub', '581');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1444', 'IQ', '-6', '582');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1445', 'Skill', '-5', 'Submarine', 'Free-Flooding Sub', '582');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1446', 'Skill', '-4', 'Submarine', 'Mini-Sub', '582');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1447', 'IQ', '-6', '583');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1448', 'Skill', '-4', 'Submarine', '583');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1449', 'IQ', '-4', '584');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1450', 'Skill', '-12', 'First Aid', '587');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1451', 'Skill', '-5', 'Physician', '587');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1452', 'Skill', '-8', 'Physiology', '587');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1453', 'Skill', '-5', 'Veterinary', '587');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1454', 'Per', '-5', '588');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1455', 'Skill', '-3', 'Naturalist', '588');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1456', 'Skill', '-4', 'Survival', 'Bank', '588');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1457', 'Skill', '-4', 'Survival', 'Deep Ocean Vent', '588');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1458', 'Skill', '-4', 'Survival', 'Fresh-Water Lake', '588');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1459', 'Skill', '-4', 'Survival', 'Open Ocean', '588');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1460', 'Skill', '-4', 'Survival', 'Reef', '588');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1461', 'Skill', '-4', 'Survival', 'River/Stream', '588');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1462', 'Skill', '-4', 'Survival', 'Tropical Lagoon', '588');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1463', 'Per', '-5', '589');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1464', 'Skill', '-3', 'Naturalist', '589');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1465', 'Skill', '-3', 'Survival', 'Desert', '589');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1466', 'Skill', '-3', 'Survival', 'Island/Beach', '589');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1467', 'Skill', '-3', 'Survival', 'Jungle', '589');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1468', 'Skill', '-3', 'Survival', 'Mountain', '589');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1469', 'Skill', '-3', 'Survival', 'Plains', '589');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1470', 'Skill', '-3', 'Survival', 'Swamplands', '589');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1471', 'Skill', '-3', 'Survival', 'Woodlands', '589');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1472', 'Per', '-5', '590');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1473', 'Skill', '-3', 'Naturalist', '590');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1474', 'Skill', '-4', 'Survival', 'Deep Ocean Vent', '590');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1475', 'Skill', '-4', 'Survival', 'Fresh-Water Lake', '590');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1476', 'Skill', '-4', 'Survival', 'Open Ocean', '590');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1477', 'Skill', '-4', 'Survival', 'Reef', '590');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1478', 'Skill', '-4', 'Survival', 'River/Stream', '590');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1479', 'Skill', '-4', 'Survival', 'Salt-Water Sea', '590');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1480', 'Skill', '-4', 'Survival', 'Tropical Lagoon', '590');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1481', 'Per', '-5', '591');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1482', 'Skill', '-3', 'Naturalist', '591');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1483', 'Skill', '-4', 'Survival', 'Bank', '591');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1484', 'Skill', '-4', 'Survival', 'Fresh-Water Lake', '591');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1485', 'Skill', '-4', 'Survival', 'Open Ocean', '591');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1486', 'Skill', '-4', 'Survival', 'Reef', '591');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1487', 'Skill', '-4', 'Survival', 'River/Stream', '591');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1488', 'Skill', '-4', 'Survival', 'Salt-Water Sea', '591');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1489', 'Skill', '-4', 'Survival', 'Tropical Lagoon', '591');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1490', 'Per', '-5', '592');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1491', 'Skill', '-3', 'Naturalist', '592');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1492', 'Skill', '-3', 'Survival', 'Arctic', '592');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1493', 'Skill', '-3', 'Survival', 'Island/Beach', '592');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1494', 'Skill', '-3', 'Survival', 'Jungle', '592');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1495', 'Skill', '-3', 'Survival', 'Mountain', '592');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1496', 'Skill', '-3', 'Survival', 'Plains', '592');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1497', 'Skill', '-3', 'Survival', 'Swampland', '592');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1498', 'Skill', '-3', 'Survival', 'Woodlands', '592');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1499', 'Per', '-5', '593');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1500', 'Skill', '-3', 'Naturalist', '593');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1501', 'Skill', '-4', 'Survival', 'Bank', '593');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1502', 'Skill', '-4', 'Survival', 'Deep Ocean Vent', '593');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1503', 'Skill', '-4', 'Survival', 'Open Ocean', '593');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1504', 'Skill', '-4', 'Survival', 'Reef', '593');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1505', 'Skill', '-4', 'Survival', 'River/Stream', '593');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1506', 'Skill', '-4', 'Survival', 'Salt-Water Sea', '593');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1507', 'Skill', '-4', 'Survival', 'Tropical Lagoon', '593');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1508', 'Per', '-5', '594');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1509', 'Skill', '-3', 'Naturalist', '594');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1510', 'Skill', '-4', 'Survival', 'Tropical Lagoon', '594');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1511', 'Skill', '-3', 'Survival', 'Arctic', '594');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1512', 'Skill', '-3', 'Survival', 'Desert', '594');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1513', 'Skill', '-3', 'Survival', 'Jungle', '594');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1514', 'Skill', '-3', 'Survival', 'Mountain', '594');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1515', 'Skill', '-3', 'Survival', 'Plains', '594');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1516', 'Skill', '-3', 'Survival', 'Swampland', '594');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1517', 'Skill', '-3', 'Survival', 'Woodlands', '594');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1518', 'Per', '-5', '595');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1519', 'Skill', '-3', 'Naturalist', '595');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1520', 'Skill', '-3', 'Survival', 'Arctic', '595');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1521', 'Skill', '-3', 'Survival', 'Desert', '595');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1522', 'Skill', '-3', 'Survival', 'Mountain', '595');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1523', 'Skill', '-3', 'Survival', 'Plains', '595');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1524', 'Skill', '-3', 'Survival', 'Swampland', '595');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1525', 'Skill', '-3', 'Survival', 'Island/Beach', '595');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1526', 'Skill', '-3', 'Survival', 'Woodlands', '595');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1527', 'Per', '-5', '596');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1528', 'Skill', '-3', 'Naturalist', '596');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1529', 'Skill', '-3', 'Survival', 'Arctic', '596');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1530', 'Skill', '-3', 'Survival', 'Desert', '596');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1531', 'Skill', '-3', 'Survival', 'Island/Beach', '596');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1532', 'Skill', '-3', 'Survival', 'Jungle', '596');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1533', 'Skill', '-3', 'Survival', 'Plains', '596');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1534', 'Skill', '-3', 'Survival', 'Swampland', '596');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1535', 'Skill', '-3', 'Survival', 'Woodlands', '596');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1536', 'Per', '-5', '597');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1537', 'Skill', '-3', 'Naturalist', '597');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1538', 'Skill', '-4', 'Survival', 'Bank', '597');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1539', 'Skill', '-4', 'Survival', 'Deep Ocean Vent', '597');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1540', 'Skill', '-4', 'Survival', 'Fresh-Water Lake', '597');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1541', 'Skill', '-4', 'Survival', 'Reef', '597');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1542', 'Skill', '-4', 'Survival', 'River/Stream', '597');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1543', 'Skill', '-4', 'Survival', 'Salt-Water Sea', '597');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1544', 'Skill', '-4', 'Survival', 'Tropical Lagoon', '597');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1545', 'Per', '-5', '598');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1546', 'Skill', '-3', 'Naturalist', '598');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1547', 'Skill', '-3', 'Survival', 'Arctic', '598');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1548', 'Skill', '-3', 'Survival', 'Desert', '598');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1549', 'Skill', '-3', 'Survival', 'Island/Beach', '598');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1550', 'Skill', '-3', 'Survival', 'Jungle', '598');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1551', 'Skill', '-3', 'Survival', 'Mountain', '598');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1552', 'Skill', '-3', 'Survival', 'Swampland', '598');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1553', 'Skill', '-3', 'Survival', 'Woodlands', '598');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1554', 'Per', '-5', '599');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1555', 'Skill', '-3', 'Naturalist', '599');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1556', 'Skill', '-4', 'Survival', 'Bank', '599');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1557', 'Skill', '-4', 'Survival', 'Deep Ocean Vent', '599');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1558', 'Skill', '-4', 'Survival', 'Fresh-Water Lake', '599');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1559', 'Skill', '-4', 'Survival', 'Open Ocean', '599');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1560', 'Skill', '-4', 'Survival', 'River/Stream', '599');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1561', 'Skill', '-4', 'Survival', 'Salt-Water Sea', '599');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1562', 'Skill', '-4', 'Survival', 'Tropical Lagoon', '599');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1563', 'Per', '-5', '600');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1564', 'Skill', '-3', 'Naturalist', '600');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1565', 'Skill', '-4', 'Survival', 'Swampland', '600');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1566', 'Skill', '-4', 'Survival', 'Bank', '600');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1567', 'Skill', '-4', 'Survival', 'Deep Ocean Vent', '600');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1568', 'Skill', '-4', 'Survival', 'Fresh-Water Lake', '600');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1569', 'Skill', '-4', 'Survival', 'Open Ocean', '600');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1570', 'Skill', '-4', 'Survival', 'Reef', '600');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1571', 'Skill', '-4', 'Survival', 'Salt-Water Sea', '600');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1572', 'Skill', '-4', 'Survival', 'Tropical Lagoon', '600');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1573', 'Per', '-5', '601');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1574', 'Skill', '-3', 'Naturalist', '601');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1575', 'Skill', '-4', 'Survival', 'Bank', '601');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1576', 'Skill', '-4', 'Survival', 'Deep Ocean Vent', '601');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1577', 'Skill', '-4', 'Survival', 'Fresh-Water Lake', '601');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1578', 'Skill', '-4', 'Survival', 'Open Ocean', '601');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1579', 'Skill', '-4', 'Survival', 'Reef', '601');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1580', 'Skill', '-4', 'Survival', 'River/Stream', '601');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1581', 'Skill', '-4', 'Survival', 'Tropical Lagoon', '601');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1582', 'Per', '-6', '602');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1583', 'Skill', '-3', 'Naturalist', '602');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1584', 'Skill', '-4', 'Survival', 'River/Stream', '602');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1585', 'Skill', '-3', 'Survival', 'Arctic', '602');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1586', 'Skill', '-3', 'Survival', 'Desert', '602');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1587', 'Skill', '-3', 'Survival', 'Jungle', '602');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1588', 'Skill', '-3', 'Survival', 'Mountain', '602');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1589', 'Skill', '-3', 'Survival', 'Plains', '602');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1590', 'Skill', '-3', 'Survival', 'Island/Beach', '602');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1591', 'Skill', '-3', 'Survival', 'Woodlands', '602');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1592', 'Per', '-5', '603');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1593', 'Skill', '-3', 'Naturalist', '603');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1594', 'Skill', '-4', 'Survival', 'Island/Beach', '603');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1595', 'Skill', '-4', 'Survival', 'Bank', '603');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1596', 'Skill', '-4', 'Survival', 'Deep Ocean Vent', '603');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1597', 'Skill', '-4', 'Survival', 'Fresh-Water Lake', '603');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1598', 'Skill', '-4', 'Survival', 'Open Ocean', '603');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1599', 'Skill', '-4', 'Survival', 'Reef', '603');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1600', 'Skill', '-4', 'Survival', 'Salt-Water Sea', '603');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1601', 'Skill', '-4', 'Survival', 'River/Stream', '603');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1602', 'Per', '-5', '604');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1603', 'Skill', '-3', 'Naturalist', '604');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1604', 'Skill', '-3', 'Survival', 'Arctic', '604');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1605', 'Skill', '-3', 'Survival', 'Desert', '604');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1606', 'Skill', '-3', 'Survival', 'Island/Beach', '604');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1607', 'Skill', '-3', 'Survival', 'Jungle', '604');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1608', 'Skill', '-3', 'Survival', 'Mountain', '604');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1609', 'Skill', '-3', 'Survival', 'Plains', '604');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1610', 'Skill', '-3', 'Survival', 'Swampland', '604');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('1611', 'Skill', '-3', '@Two-Handed Weapon Skill@', '56');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('1612', 'Skill', '-3', 'Polearm', '57');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('1613', 'Skill', '-3', 'Spear', '58');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('1614', 'Skill', '-3', 'Staff', '59');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('1615', 'Skill', '-3', '@Unarmed Combat Skill@', '60');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('1616', 'Skill', '-3', 'Judo', '61');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('1617', 'Skill', '-3', 'Karate', '62');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('1618', 'Skill', '-3', 'Sumo Wrestling', '63');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1619', 'HT', '-4', '606');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1620', 'IQ', '-6', '608');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1621', 'Skill', '-6', 'Strategy', '608');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1622', 'IQ', '-5', '609');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1623', 'IQ', '-5', '610');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1624', 'Skill', '-4', 'Animal Handling', '@Specialty@', '610');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1625', 'Skill', '-2', 'Riding', '@Specialty@', '610');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1626', 'Skill', '-3', 'Teamster', '610');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1627', 'IQ', '-5', '611');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1628', 'Skill', '-4', 'Animal Handling', 'Equines', '611');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1629', 'Skill', '-2', 'Riding', 'Equines', '611');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1630', 'IQ', '-7', '612');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1631', 'IQ', '-6', '613');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1632', 'Skill', '-4', 'Religious Ritual', '@Specialty@', '613');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1633', 'DX', '-3', '614');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1634', 'Skill', '-4', 'Dropping', '614');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1635', 'DX', '-4', '616');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1636', 'DX', '-4', '617');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1637', 'DX', '-4', '618');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1638', 'Skill', '-2', 'Throwing', '618');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1639', 'DX', '-4', '619');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1640', 'Skill', '-2', 'Thrown Weapon', 'Spear', '619');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1641', 'DX', '-4', '620');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1642', 'DX', '-4', '621');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1643', 'Skill', '-2', 'Throwing', '621');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1644', 'DX', '-4', '622');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1645', 'Skill', '-4', 'Spear Thrower', '622');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_skill])
  VALUES ('1646', 'Skill', '-2', 'Thrown Weapon', 'Harpoon', '622');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1647', 'DX', '-4', '623');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1648', 'DX', '-5', '624');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1649', 'Skill', '-3', 'Shortsword', '624');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1650', 'Per', '-5', '625');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1651', 'Skill', '-5', 'Naturalist', '625');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1652', 'IQ', '-5', '626');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1653', 'Skill', '-3', 'Lockpicking', '626');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1654', 'DX', '-5', '627');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1655', 'Skill', '-3', 'Axe/Mace', '627');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1656', 'Skill', '-4', 'Polearm', '627');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1657', 'Skill', '-4', 'Two-Handed Flail', '627');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1658', 'DX', '-6', '628');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1659', 'Skill', '-3', 'Flail', '628');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1660', 'Skill', '-4', 'Kusari', '628');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1661', 'Skill', '-4', 'Two-Handed Axe/Mace', '628');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1662', 'Skill', '-4', 'Broadsword', '629');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1663', 'Skill', '-4', 'Force Sword', '629');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1664', 'DX', '-5', '629');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1665', 'DX', '-4', '630');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1666', 'Per', '-5', '631');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1667', 'DX', '-5', '632');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1668', 'Skill', '-4', 'Diving Suit', '632');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1669', 'Skill', '-2', 'NBC Suit', '632');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1670', 'Skill', '-2', 'Battlesuit', '632');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1671', 'Skill', '-6', 'Animal Handling', '634');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1672', 'Skill', '-5', 'Physician', '634');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1673', 'Skill', '-5', 'Surgery', '634');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1674', 'IQ', '-5', '635');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1675', 'DX', '-5', '637');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1676', 'Skill', '-3', 'Force Whip', '637');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1677', 'Skill', '-3', 'Kusari', '637');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_skill])
  VALUES ('1678', 'Skill', '-3', 'Monowire Whip', '637');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('1679', 'Skill', '-5', '@Melee Weapon Skill@', '64');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('1680', 'Skill', '-5', 'Boxing', '65');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('1681', 'Skill', '-5', 'Broadsword', '66');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('1682', 'Skill', '-5', 'Karate', '67');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('1683', 'Skill', '-5', 'Staff', '68');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('1684', 'Skill', '-5', 'Two-Handed Sword', '69');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [name], [FK_technique])
  VALUES ('1685', 'Skill', '-5', 'Lockpicking', '70');
INSERT INTO [Item1].[CharDB].[default] ([PrimaryKey], [type], [modifier], [FK_skill])
  VALUES ('1686', 'IQ', '-5', '639');
IF EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[level]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  DROP TABLE [Item1].[CharDB].[level]
END;
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[level]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[CharDB].[level] (
    [PrimaryKey] VARCHAR(255)
   ,[compare] VARCHAR(255)
   ,[FK_advantage_prereq] VARCHAR(255)
   ,[FK_skill_prereq] VARCHAR(255)
   ,[FK_weapon_bonus] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_weapon_bonus])
  VALUES ('1', 'at least', '1');
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_weapon_bonus])
  VALUES ('2', 'at least', '2');
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_weapon_bonus])
  VALUES ('3', 'at least', '3');
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('4', 'at least', '5');
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('5', 'at least', '6');
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('6', 'at least', '6');
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('7', 'at least', '7');
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('8', 'at least', '36');
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('9', 'at least', '65');
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('10', 'at least', '66');
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_weapon_bonus])
  VALUES ('11', 'at least', '4');
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_weapon_bonus])
  VALUES ('12', 'at least', '5');
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('13', 'at least', '68');
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('14', 'at least', '69');
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('15', 'at least', '70');
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('16', 'at least', '71');
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('17', 'at least', '18');
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('18', 'at least', '19');
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('19', 'at least', '72');
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('20', 'at least', '76');
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('21', 'at least', '99');
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('22', 'at least', '100');
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('23', 'at least', '29');
INSERT INTO [Item1].[CharDB].[level] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('24', 'at least', '104');
IF EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[name]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  DROP TABLE [Item1].[CharDB].[name]
END;
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
   ,[FK_weapon_bonus] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('1', 'is', '1');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('2', 'is', '2');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('3', 'starts with', '1');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('4', 'is', '2');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('5', 'is', '3');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('6', 'is', '4');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('7', 'is', '3');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_weapon_bonus])
  VALUES ('8', 'is', '1');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_weapon_bonus])
  VALUES ('9', 'is', '2');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('10', 'is', '4');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_weapon_bonus])
  VALUES ('11', 'is', '3');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('12', 'is', '5');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('13', 'is', '5');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('14', 'is', '6');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('15', 'is', '6');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('16', 'is', '7');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('17', 'is', '8');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('18', 'is', '9');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('19', 'is', '10');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('20', 'is', '11');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('21', 'is', '12');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('22', 'is', '13');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('23', 'is', '14');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('24', 'is', '15');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('25', 'is', '16');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('26', 'is', '17');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('27', 'is', '18');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('28', 'is', '19');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('29', 'is', '20');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('30', 'is', '21');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('31', 'is', '22');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('32', 'is', '23');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('33', 'is', '24');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('34', 'is', '25');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('35', 'is', '26');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('36', 'is', '27');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('37', 'is', '28');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('38', 'is', '29');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('39', 'is', '30');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('40', 'is', '31');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('41', 'is', '32');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('42', 'is', '33');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('43', 'is', '34');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('44', 'is', '35');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('45', 'is', '7');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('46', 'is', '36');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('47', 'is', '37');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('48', 'starts with', '8');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('49', 'starts with', '9');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('50', 'is', '10');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('51', 'is', '38');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('52', 'is', '39');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('53', 'is', '40');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('54', 'is', '41');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('55', 'is', '42');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('56', 'is', '43');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('57', 'is', '44');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('58', 'is', '45');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('59', 'is', '46');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('60', 'is', '47');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('61', 'is', '48');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('62', 'is', '49');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('63', 'is', '50');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('64', 'contains', '51');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('65', 'contains', '52');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('66', 'contains', '53');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('67', 'is', '54');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('68', 'is', '55');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('69', 'is', '56');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('70', 'is', '57');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('71', 'is', '58');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('72', 'is', '59');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('73', 'is', '60');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('74', 'is', '61');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('75', 'is', '62');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('76', 'contains', '63');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('77', 'is', '64');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('78', 'is', '11');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('79', 'is', '65');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('80', 'is', '66');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('81', 'is', '12');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_weapon_bonus])
  VALUES ('82', 'is', '4');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_weapon_bonus])
  VALUES ('83', 'is', '5');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('84', 'starts with', '13');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('85', 'is', '14');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('86', 'starts with', '67');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('87', 'is', '15');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('88', 'is', '68');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('89', 'is', '69');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('90', 'starts with', '16');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('91', 'is', '17');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('92', 'is', '70');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('93', 'starts with', '71');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('94', 'is', '18');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('95', 'is', '19');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('96', 'is', '72');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('97', 'is', '73');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('98', 'is', '74');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('99', 'is', '75');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('100', 'starts with', '20');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('101', 'is', '21');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('102', 'starts with', '22');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('103', 'is', '23');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('104', 'is', '76');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('105', 'is', '24');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('106', 'is', '25');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('107', 'is', '77');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('108', 'starts with', '26');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('109', 'starts with', '27');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('110', 'starts with', '28');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('111', 'is', '78');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('112', 'is', '79');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('113', 'is', '80');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('114', 'is', '81');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('115', 'is', '82');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('116', 'is', '83');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('117', 'is', '84');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('118', 'is', '85');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('119', 'is', '86');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('120', 'is', '87');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('121', 'is', '88');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('122', 'is', '89');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('123', 'is', '90');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('124', 'is', '91');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('125', 'is', '92');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('126', 'is', '93');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('127', 'is', '94');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('128', 'is', '95');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('129', 'is', '96');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('130', 'is', '97');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('131', 'is', '98');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('132', 'is', '99');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('133', 'is', '100');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('134', 'is', '29');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('135', 'is', '101');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('136', 'is', '102');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('137', 'starts with', '30');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('138', 'is', '31');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('139', 'is', '103');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('140', 'is', '104');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('141', 'starts with', '32');
INSERT INTO [Item1].[CharDB].[name] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('142', 'is', '33');
IF EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[notes]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  DROP TABLE [Item1].[CharDB].[notes]
END;
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
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('21', 'is anything', '21');
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('22', 'is anything', '22');
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('23', 'is anything', '23');
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('24', 'is anything', '24');
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('25', 'is anything', '25');
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('26', 'contains', '26');
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('27', 'contains', '27');
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('28', 'contains', '28');
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('29', 'is anything', '29');
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('30', 'is anything', '30');
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('31', 'is anything', '31');
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('32', 'is anything', '32');
INSERT INTO [Item1].[CharDB].[notes] ([PrimaryKey], [compare], [FK_advantage_prereq])
  VALUES ('33', 'is anything', '33');
IF EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[prereq_list]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  DROP TABLE [Item1].[CharDB].[prereq_list]
END;
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[prereq_list]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[CharDB].[prereq_list] (
    [PrimaryKey] VARCHAR(255)
   ,[all] VARCHAR(255)
   ,[Text] VARCHAR(255)
   ,[FK_prereq_list] VARCHAR(255)
   ,[FK_skill] VARCHAR(255)
   ,[FK_technique] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('1', 'yes', '63');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_technique])
  VALUES ('2', 'yes', '3');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('3', 'no', '91');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('4', 'yes', '98');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('5', 'yes', '105');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('6', 'yes', '107');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('7', 'yes', '111');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_technique])
  VALUES ('8', 'yes', '4');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_technique])
  VALUES ('9', 'yes', '5');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('10', 'yes', '124');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_technique])
  VALUES ('11', 'yes', '6');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_technique])
  VALUES ('12', 'yes', '16');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_technique])
  VALUES ('13', 'yes', '17');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [Text], [FK_skill])
  VALUES ('14', 'yes', '5', '206');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [Text], [FK_skill])
  VALUES ('15', 'yes', '5', '207');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [Text], [FK_skill])
  VALUES ('16', 'yes', '5', '208');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [Text], [FK_skill])
  VALUES ('17', 'yes', '5', '209');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [Text], [FK_skill])
  VALUES ('18', 'yes', '5', '210');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [Text], [FK_skill])
  VALUES ('19', 'yes', '5', '211');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [Text], [FK_skill])
  VALUES ('20', 'yes', '5', '212');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [Text], [FK_skill])
  VALUES ('21', 'yes', '5', '213');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('22', 'yes', '214');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [Text], [FK_prereq_list])
  VALUES ('23', 'yes', '5', '22');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_prereq_list])
  VALUES ('24', 'no', '22');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [Text], [FK_skill])
  VALUES ('25', 'yes', '5', '215');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [Text], [FK_skill])
  VALUES ('26', 'yes', '5', '216');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [Text], [FK_skill])
  VALUES ('27', 'yes', '5', '217');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('28', 'yes', '218');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [Text], [FK_prereq_list])
  VALUES ('29', 'yes', '5', '28');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [Text], [FK_skill])
  VALUES ('30', 'yes', '5', '219');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [Text], [FK_skill])
  VALUES ('31', 'yes', '5', '220');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [Text], [FK_skill])
  VALUES ('32', 'yes', '5', '221');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [Text], [FK_skill])
  VALUES ('33', 'yes', '5', '222');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [Text], [FK_skill])
  VALUES ('34', 'yes', '5', '223');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('35', 'yes', '224');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [Text], [FK_prereq_list])
  VALUES ('36', 'yes', '5', '35');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('37', 'yes', '225');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [Text], [FK_skill])
  VALUES ('38', 'yes', '12', '244');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_technique])
  VALUES ('39', 'yes', '18');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('40', 'yes', '265');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('41', 'yes', '266');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_prereq_list])
  VALUES ('42', 'no', '41');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_technique])
  VALUES ('43', 'yes', '26');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('44', 'yes', '303');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_prereq_list])
  VALUES ('45', 'no', '44');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('46', 'yes', '304');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_prereq_list])
  VALUES ('47', 'no', '46');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('48', 'yes', '305');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_prereq_list])
  VALUES ('49', 'no', '48');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_prereq_list])
  VALUES ('50', 'no', '48');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_prereq_list])
  VALUES ('51', 'yes', '50');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_prereq_list])
  VALUES ('52', 'yes', '50');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('53', 'yes', '306');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_prereq_list])
  VALUES ('54', 'no', '53');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('55', 'yes', '307');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_prereq_list])
  VALUES ('56', 'no', '55');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('57', 'yes', '330');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_technique])
  VALUES ('58', 'yes', '32');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('59', 'yes', '344');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('60', 'yes', '352');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('61', 'no', '358');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('62', 'yes', '362');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('63', 'yes', '368');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('64', 'no', '436');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('65', 'yes', '453');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_prereq_list])
  VALUES ('66', 'no', '65');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('67', 'yes', '481');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('68', 'yes', '482');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [Text], [FK_skill])
  VALUES ('69', 'yes', '5', '487');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('70', 'yes', '488');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('71', 'no', '512');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('72', 'no', '513');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('73', 'yes', '514');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('74', 'yes', '521');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('75', 'yes', '524');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [Text], [FK_prereq_list])
  VALUES ('76', 'yes', '8', '75');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_prereq_list])
  VALUES ('77', 'no', '75');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('78', 'yes', '541');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('79', 'yes', '550');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('80', 'yes', '551');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('81', 'yes', '552');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('82', 'yes', '553');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('83', 'yes', '554');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('84', 'yes', '555');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('85', 'no', '581');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('86', 'yes', '585');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('87', 'no', '587');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('88', 'no', '615');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_skill])
  VALUES ('89', 'yes', '640');
INSERT INTO [Item1].[CharDB].[prereq_list] ([PrimaryKey], [all], [FK_prereq_list])
  VALUES ('90', 'no', '89');
IF EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[skill]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  DROP TABLE [Item1].[CharDB].[skill]
END;
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
   ,[difficulty] VARCHAR(255)
   ,[points] VARCHAR(255)
   ,[reference] VARCHAR(255)
   ,[tech_level] VARCHAR(255)
   ,[specialization] VARCHAR(255)
   ,[notes] VARCHAR(255)
   ,[encumbrance_penalty_multiplier] VARCHAR(255)
   ,[FK_skill_list] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('1', '2', 'Accounting', 'IQ/H', '1', 'B174', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('2', '2', 'Acrobatics', 'DX/H', '1', 'B174', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('3', '2', 'Acting', 'IQ/A', '1', 'B174', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('4', '2', 'Administration', 'IQ/A', '1', 'B174', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('5', '2', 'Aerobatics', 'DX/H', '1', 'B174', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('6', '2', 'Airshipman', 'IQ/E', '1', 'B185', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('7', '2', 'Alchemy', 'IQ/VH', '1', 'B174', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('8', '2', 'Animal Handling', 'IQ/A', '1', 'B175', '@Specialty@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('9', '2', 'Animal Handling', 'IQ/A', '1', 'B175', 'Big Cats', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('10', '2', 'Animal Handling', 'IQ/A', '1', 'B175', 'Dogs', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('11', '2', 'Animal Handling', 'IQ/A', '1', 'B175', 'Equines', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('12', '2', 'Animal Handling', 'IQ/A', '1', 'B175', 'Raptors', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('13', '2', 'Anthropology', 'IQ/H', '1', 'B175', '@Species@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('14', '2', 'Aquabatics', 'DX/H', '1', 'B174', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('15', '2', 'Archaeology', 'IQ/H', '1', 'B176', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('16', '2', 'Architecture', 'IQ/A', '1', 'B176', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [notes], [FK_skill_list])
  VALUES ('17', '2', 'Area Knowledge', 'IQ/E', '1', 'B176', '@Barony, County, Duchy, or Small Nation@', 'General nature of its settlements and towns, political allegiances, leaders, and most citizens of Status 5+', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [notes], [FK_skill_list])
  VALUES ('18', '2', 'Area Knowledge', 'IQ/E', '1', 'B176', '@Barony, County, Duchy, or Small Nation@; Lived there', 'General nature of its settlements and towns, political allegiances, leaders, and most citizens of Status 5+', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [notes], [FK_skill_list])
  VALUES ('19', '2', 'Area Knowledge', 'IQ/E', '1', 'B176', '@City@', 'All usingant businesses, streets, citizens, leaders, etc.', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [notes], [FK_skill_list])
  VALUES ('20', '2', 'Area Knowledge', 'IQ/E', '1', 'B176', '@City@; Lived there', 'All usingant businesses, streets, citizens, leaders, etc.', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [notes], [FK_skill_list])
  VALUES ('21', '2', 'Area Knowledge', 'IQ/E', '1', 'B176', '@Galaxy@', 'Location of the capitals of interplanetary states and the homeworlds of major races; general awareness of all major races; knowledge of individuals of Status 8; general understanding of relations between interplanetary states', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [notes], [FK_skill_list])
  VALUES ('22', '2', 'Area Knowledge', 'IQ/E', '1', 'B176', '@Galaxy@; Lived there', 'Location of the capitals of interplanetary states and the homeworlds of major races; general awareness of all major races; knowledge of individuals of Status 8; general understanding of relations between interplanetary states', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [notes], [FK_skill_list])
  VALUES ('23', '2', 'Area Knowledge', 'IQ/E', '1', 'B176', '@Interplanetary State@', 'Location of major planets; familiarity with all known races (but not necessarily expertise); knowledge of people of Status 7+; general understanding of the economic and political situation', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [notes], [FK_skill_list])
  VALUES ('24', '2', 'Area Knowledge', 'IQ/E', '1', 'B176', '@Interplanetary State@; Lived there', 'Location of major planets; familiarity with all known races (but not necessarily expertise); knowledge of people of Status 7+; general understanding of the economic and political situation', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [notes], [FK_skill_list])
  VALUES ('25', '2', 'Area Knowledge', 'IQ/E', '1', 'B176', '@Large Nation@', 'Location of its major cities and usingant sites; awareness of its major customs, ethnic groups, and languages (but not necessarily expertise); names of folk of Status 6+; and a general understanding of the economic and political situation', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [notes], [FK_skill_list])
  VALUES ('26', '2', 'Area Knowledge', 'IQ/E', '1', 'B176', '@Large Nation@; Lived there', 'Location of its major cities and usingant sites; awareness of its major customs, ethnic groups, and languages (but not necessarily expertise); names of folk of Status 6+; and a general understanding of the economic and political situation', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [notes], [FK_skill_list])
  VALUES ('27', '2', 'Area Knowledge', 'IQ/E', '1', 'B176', '@Planet@', 'Location of its major cities and usingant sites; awareness of its major customs, ethnic groups, and languages (but not necessarily expertise); names of folk of Status 7+; and a general understanding of the economic and political situation', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [notes], [FK_skill_list])
  VALUES ('28', '2', 'Area Knowledge', 'IQ/E', '1', 'B176', '@Planet@; Lived there', 'Location of its major cities and usingant sites; awareness of its major customs, ethnic groups, and languages (but not necessarily expertise); names of folk of Status 7+; and a general understanding of the economic and political situation', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [notes], [FK_skill_list])
  VALUES ('29', '2', 'Area Knowledge', 'IQ/E', '1', 'B176', '@Rural Area@', 'The inhabitants, trails, streams, hiding places, ambush sites, flora, and fauna of a few hundred acres', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [notes], [FK_skill_list])
  VALUES ('30', '2', 'Area Knowledge', 'IQ/E', '1', 'B176', '@Rural Area@; Lived there', 'The inhabitants, trails, streams, hiding places, ambush sites, flora, and fauna of a few hundred acres', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [notes], [FK_skill_list])
  VALUES ('31', '2', 'Area Knowledge', 'IQ/E', '1', 'B176', '@Urban Neighborhood@', 'The residents and buildings of a few city blocks', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [notes], [FK_skill_list])
  VALUES ('32', '2', 'Area Knowledge', 'IQ/E', '1', 'B176', '@Urban Neighborhood@; Lived there', 'The residents and buildings of a few city blocks', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [notes], [FK_skill_list])
  VALUES ('33', '2', 'Area Knowledge', 'IQ/E', '1', 'B176', '@Village or Town@', 'All usingant citizens and businesses, and most unusingant ones; all public buildings and most houses', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [notes], [FK_skill_list])
  VALUES ('34', '2', 'Area Knowledge', 'IQ/E', '1', 'B176', '@Village or Town@; Lived there', 'All usingant citizens and businesses, and most unusingant ones; all public buildings and most houses', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('35', '2', 'Armoury', 'IQ/A', '1', 'B178', '@Armor type@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('36', '2', 'Armoury', 'IQ/A', '1', 'B178', 'Battlesuits', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('37', '2', 'Armoury', 'IQ/A', '1', 'B178', 'Body Armor', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('38', '2', 'Armoury', 'IQ/A', '1', 'B178', 'Force Shields', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('39', '2', 'Armoury', 'IQ/A', '1', 'B178', 'Heavy Weapons', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('40', '2', 'Armoury', 'IQ/A', '1', 'B178', 'Melee Weapons', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('41', '2', 'Armoury', 'IQ/A', '1', 'B178', 'Missile Weapons', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('42', '2', 'Armoury', 'IQ/A', '1', 'B178', 'Small Arms', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('43', '2', 'Armoury', 'IQ/A', '1', 'B178', 'Vehicular Armor', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('44', '2', 'Artillery', 'IQ/A', '1', 'B178', '@Weapon type@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('45', '2', 'Artillery', 'IQ/A', '1', 'B178', 'Beams', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('46', '2', 'Artillery', 'IQ/A', '1', 'B178', 'Bombs', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('47', '2', 'Artillery', 'IQ/A', '1', 'B178', 'Cannon', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('48', '2', 'Artillery', 'IQ/A', '1', 'B178', 'Catapult', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('49', '2', 'Artillery', 'IQ/A', '1', 'B178', 'Guided Missile', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('50', '2', 'Artillery', 'IQ/A', '1', 'B178', 'Torpedoes', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('51', '2', 'Artist', 'IQ/H', '1', 'B179', '@Art@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('52', '2', 'Artist', 'IQ/H', '1', 'B179', 'Body Art', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('53', '2', 'Artist', 'IQ/H', '1', 'B179', 'Calligraphy', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('54', '2', 'Artist', 'IQ/H', '1', 'B179', 'Drawing', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('55', '2', 'Artist', 'IQ/H', '1', 'B179', 'Illumination', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('56', '2', 'Artist', 'IQ/H', '1', 'B179', 'Illusion', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('57', '2', 'Artist', 'IQ/H', '1', 'B179', 'Interior Decorating', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('58', '2', 'Artist', 'IQ/H', '1', 'B179', 'Painting', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('59', '2', 'Artist', 'IQ/H', '1', 'B179', 'Pottery', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('60', '2', 'Artist', 'IQ/H', '1', 'B179', 'Scene Design', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('61', '2', 'Artist', 'IQ/H', '1', 'B179', 'Sculpting', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('62', '2', 'Artist', 'IQ/H', '1', 'B179', 'Woodworking', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('63', '2', 'Astronomy', 'IQ/H', '1', 'B179', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('64', '2', 'Autohypnosis', 'Will/H', '1', 'B179', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('65', '2', 'Axe/Mace', 'DX/A', '1', 'B208', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('66', '2', 'Bartender', 'IQ/A', '1', 'B216', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('67', '2', 'Battlesuit', 'DX/A', '1', 'B192', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('68', '2', 'Beam Weapons', 'DX/E', '1', 'B179', '@Weapon class@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('69', '2', 'Beam Weapons', 'DX/E', '1', 'B179', 'Pistol', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('70', '2', 'Beam Weapons', 'DX/E', '1', 'B179', 'Projector', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('71', '2', 'Beam Weapons', 'DX/E', '1', 'B179', 'Rifle', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('72', '2', 'Bicycling', 'DX/E', '1', 'B180', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('73', '2', 'Bioengineering', 'IQ/H', '1', 'B180', '@Specialty@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('74', '2', 'Bioengineering', 'IQ/H', '1', 'B180', 'Cloning', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('75', '2', 'Bioengineering', 'IQ/H', '1', 'B180', 'Genetic Engineering', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('76', '2', 'Bioengineering', 'IQ/H', '1', 'B180', 'Tissue Engineering', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('77', '2', 'Biology', 'IQ/VH', '1', 'B180', '@Specialty@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('78', '2', 'Biology', 'IQ/VH', '1', 'B180', 'Biochemistry', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('79', '2', 'Biology', 'IQ/VH', '1', 'B180', 'Botany', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('80', '2', 'Biology', 'IQ/VH', '1', 'B180', 'Earthlike', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('81', '2', 'Biology', 'IQ/VH', '1', 'B180', 'Ecology', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('82', '2', 'Biology', 'IQ/VH', '1', 'B180', 'Gas Giants', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('83', '2', 'Biology', 'IQ/VH', '1', 'B180', 'Genetics', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('84', '2', 'Biology', 'IQ/VH', '1', 'B180', 'Hostile Terrestrial', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('85', '2', 'Biology', 'IQ/VH', '1', 'B180', 'Ice Dwarfs', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('86', '2', 'Biology', 'IQ/VH', '1', 'B180', 'Ice Worlds', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('87', '2', 'Biology', 'IQ/VH', '1', 'B180', 'Marine Biology', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('88', '2', 'Biology', 'IQ/VH', '1', 'B180', 'Microbiology', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('89', '2', 'Biology', 'IQ/VH', '1', 'B180', 'Rock Worlds', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('90', '2', 'Biology', 'IQ/VH', '1', 'B180', 'Zoology', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('91', '2', 'Blind Fighting', 'Per/VH', '1', 'B180', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('92', '2', 'Blowpipe', 'DX/H', '1', 'B180', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('93', '2', 'Boating', 'DX/A', '1', 'B180', '@Boat class@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('94', '2', 'Boating', 'DX/A', '1', 'B180', 'Large Powerboat', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('95', '2', 'Boating', 'DX/A', '1', 'B180', 'Motorboat', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('96', '2', 'Boating', 'DX/A', '1', 'B180', 'Sailboat', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('97', '2', 'Boating', 'DX/A', '1', 'B180', 'Unpowered', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('98', '2', 'Body Control', 'HT/VH', '1', 'B181', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('99', '2', 'Body Language', 'Per/A', '1', 'B181', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('100', '2', 'Body Sense', 'DX/H', '1', 'B181', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('101', '2', 'Bolas', 'DX/A', '1', 'B181', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('102', '2', 'Bow', 'DX/A', '1', 'B182', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('103', '2', 'Boxing', 'DX/A', '1', 'B182', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('104', '2', 'Brain Hacking', 'IQ/H', '1', 'B182', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('105', '2', 'Brainwashing', 'IQ/H', '1', 'B182', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('106', '2', 'Brawling', 'DX/E', '1', 'B182', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('107', '2', 'Breaking Blow', 'IQ/H', '1', 'B182', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('108', '2', 'Breath Control', 'HT/H', '1', 'B182', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('109', '2', 'Broadsword', 'DX/A', '1', 'B208', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('110', '2', 'Camouflage', 'IQ/E', '1', 'B183', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('111', '2', 'Captivate', 'Will/H', '1', 'B191', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('112', '2', 'Carousing', 'HT/E', '1', 'B183', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('113', '2', 'Carpentry', 'IQ/E', '1', 'B183', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('114', '2', 'Cartography', 'IQ/A', '1', 'B183', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('115', '2', 'Chemistry', 'IQ/H', '1', 'B183', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [encumbrance_penalty_multiplier], [FK_skill_list])
  VALUES ('116', '2', 'Climbing', 'DX/A', '1', 'B183', '1', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('117', '2', 'Cloak', 'DX/A', '1', 'B184', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('118', '2', 'Combat Art', 'DX/A', '1', 'B184', '@Average Skill@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('119', '2', 'Combat Art', 'DX/E', '1', 'B184', '@Easy Skill@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('120', '2', 'Combat Art', 'DX/H', '1', 'B184', '@Hard Skill@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('121', '2', 'Combat Sport', 'DX/A', '1', 'B184', '@Average Skill@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('122', '2', 'Combat Sport', 'DX/E', '1', 'B184', '@Easy Skill@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('123', '2', 'Combat Sport', 'DX/H', '1', 'B184', '@Hard Skill@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('124', '2', 'Computer Hacking', 'IQ/VH', '1', 'B184', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('125', '2', 'Computer Operation', 'IQ/E', '1', 'B184', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('126', '2', 'Computer Programming', 'IQ/H', '1', 'B184', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('127', '2', 'Computer Programming', 'IQ/H', '1', 'B184', 'AI', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('128', '2', 'Connoisseur', 'IQ/A', '1', 'B185', '@Subject@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('129', '2', 'Connoisseur', 'IQ/A', '1', 'B185', 'Dance', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('130', '2', 'Connoisseur', 'IQ/A', '1', 'B185', 'Literature', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('131', '2', 'Connoisseur', 'IQ/A', '1', 'B185', 'Music', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('132', '2', 'Connoisseur', 'IQ/A', '1', 'B185', 'Visual Arts', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('133', '2', 'Connoisseur', 'IQ/A', '1', 'B185', 'Wine', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('134', '2', 'Cooking', 'IQ/A', '1', 'B185', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('135', '2', 'Cooking', 'IQ/E', '1', 'B185', '@Specialty@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('136', '2', 'Cooking', 'IQ/E', '1', 'B185', 'Baking', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('137', '2', 'Cooking', 'IQ/E', '1', 'B185', 'Beverage Making', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('138', '2', 'Counterfeiting', 'IQ/H', '1', 'B185', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('139', '2', 'Criminology', 'IQ/A', '1', 'B186', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('140', '2', 'Crossbow', 'DX/E', '1', 'B186', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('141', '2', 'Cryptography', 'IQ/H', '1', 'B186', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('142', '2', 'Cryptography', 'IQ/A', '1', 'B186', 'Code Design', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('143', '2', 'Cryptography', 'IQ/A', '1', 'B186', 'Cryptanalysis', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('144', '2', 'Current Affairs', 'IQ/E', '1', 'B186', '@Subject@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('145', '2', 'Current Affairs', 'IQ/E', '1', 'B186', 'Business', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('146', '2', 'Current Affairs', 'IQ/E', '1', 'B186', 'Headline News', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('147', '2', 'Current Affairs', 'IQ/E', '1', 'B186', 'High Culture', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('148', '2', 'Current Affairs', 'IQ/E', '1', 'B186', 'People', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('149', '2', 'Current Affairs', 'IQ/E', '1', 'B186', 'Politics', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('150', '2', 'Current Affairs', 'IQ/E', '1', 'B186', 'Popular Culture', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('151', '2', 'Current Affairs', 'IQ/E', '1', 'B186', 'Regional', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('152', '2', 'Current Affairs', 'IQ/E', '1', 'B186', 'Science & Technology', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('153', '2', 'Current Affairs', 'IQ/E', '1', 'B186', 'Sports', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('154', '2', 'Current Affairs', 'IQ/E', '1', 'B186', 'Travel', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('155', '2', 'Dancing', 'DX/A', '1', 'B187', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('156', '2', 'Detect Lies', 'Per/H', '1', 'B187', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('157', '2', 'Diagnosis', 'IQ/H', '1', 'B187', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('158', '2', 'Diplomacy', 'IQ/H', '1', 'B187', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('159', '2', 'Disguise', 'IQ/A', '1', 'B187', '@Specialty@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('160', '2', 'Diving Suit', 'DX/A', '1', 'B192', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('161', '2', 'Dreaming', 'Will/H', '1', 'B188', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('162', '2', 'Driving', 'DX/A', '1', 'B188', '@Vehicle class@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('163', '2', 'Driving', 'DX/A', '1', 'B188', 'Automobile', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('164', '2', 'Driving', 'DX/A', '1', 'B188', 'Construction Equipment', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('165', '2', 'Driving', 'DX/A', '1', 'B188', 'Halftrack', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('166', '2', 'Driving', 'DX/A', '1', 'B188', 'Heavy Wheeled', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('167', '2', 'Driving', 'DX/A', '1', 'B188', 'Hovercraft', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('168', '2', 'Driving', 'DX/A', '1', 'B188', 'Locomotive', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('169', '2', 'Driving', 'DX/A', '1', 'B188', 'Mecha', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('170', '2', 'Driving', 'DX/A', '1', 'B188', 'Motorcycle', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('171', '2', 'Driving', 'DX/A', '1', 'B188', 'Tracked', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('172', '2', 'Dropping', 'DX/A', '1', 'B189', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('173', '2', 'Economics', 'IQ/H', '1', 'B189', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('174', '2', 'Electrician', 'IQ/A', '1', 'B189', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('175', '2', 'Electronics Operation', 'IQ/A', '1', 'B189', '@Electronics type@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('176', '2', 'Electronics Operation', 'IQ/A', '1', 'B189', 'Communications', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('177', '2', 'Electronics Operation', 'IQ/A', '1', 'B189', 'Electronic Warfare', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('178', '2', 'Electronics Operation', 'IQ/A', '1', 'B189', 'Force Shields', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('179', '2', 'Electronics Operation', 'IQ/A', '1', 'B189', 'Matter Transmitters', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('180', '2', 'Electronics Operation', 'IQ/A', '1', 'B189', 'Media', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('181', '2', 'Electronics Operation', 'IQ/A', '1', 'B189', 'Medical', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('182', '2', 'Electronics Operation', 'IQ/A', '1', 'B189', 'Parachronic', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('183', '2', 'Electronics Operation', 'IQ/A', '1', 'B189', 'Psychotronics', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('184', '2', 'Electronics Operation', 'IQ/A', '1', 'B189', 'Scientific', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('185', '2', 'Electronics Operation', 'IQ/A', '1', 'B189', 'Security', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('186', '2', 'Electronics Operation', 'IQ/A', '1', 'B189', 'Sensors', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('187', '2', 'Electronics Operation', 'IQ/A', '1', 'B189', 'Sonar', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('188', '2', 'Electronics Operation', 'IQ/A', '1', 'B189', 'Surveillance', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('189', '2', 'Electronics Operation', 'IQ/A', '1', 'B189', 'Temporal', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('190', '2', 'Electronics Repair', 'IQ/A', '1', 'B190', '@Electronics type@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('191', '2', 'Electronics Repair', 'IQ/A', '1', 'B190', 'Communications', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('192', '2', 'Electronics Repair', 'IQ/A', '1', 'B190', 'Computer', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('193', '2', 'Electronics Repair', 'IQ/A', '1', 'B190', 'Electronic Warfare', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('194', '2', 'Electronics Repair', 'IQ/A', '1', 'B190', 'Force Shields', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('195', '2', 'Electronics Repair', 'IQ/A', '1', 'B190', 'Matter Transmitters', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('196', '2', 'Electronics Repair', 'IQ/A', '1', 'B190', 'Media', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('197', '2', 'Electronics Repair', 'IQ/A', '1', 'B190', 'Medical', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('198', '2', 'Electronics Repair', 'IQ/A', '1', 'B190', 'Parachronic', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('199', '2', 'Electronics Repair', 'IQ/A', '1', 'B190', 'Psychotronics', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('200', '2', 'Electronics Repair', 'IQ/A', '1', 'B190', 'Scientific', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('201', '2', 'Electronics Repair', 'IQ/A', '1', 'B190', 'Security', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('202', '2', 'Electronics Repair', 'IQ/A', '1', 'B190', 'Sensors', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('203', '2', 'Electronics Repair', 'IQ/A', '1', 'B190', 'Sonar', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('204', '2', 'Electronics Repair', 'IQ/A', '1', 'B190', 'Surveillance', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('205', '2', 'Electronics Repair', 'IQ/A', '1', 'B190', 'Temporal', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('206', '2', 'Engineer', 'IQ/H', '1', 'B190', '@Field of expertise@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('207', '2', 'Engineer', 'IQ/H', '1', 'B190', 'Artillery', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('208', '2', 'Engineer', 'IQ/H', '1', 'B190', 'Automobiles', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('209', '2', 'Engineer', 'IQ/H', '1', 'B190', 'Civil', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('210', '2', 'Engineer', 'IQ/H', '1', 'B190', 'Clockwork', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('211', '2', 'Engineer', 'IQ/H', '1', 'B190', 'Combat', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('212', '2', 'Engineer', 'IQ/H', '1', 'B190', 'Electrical', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('213', '2', 'Engineer', 'IQ/H', '1', 'B190', 'Electronics', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('214', '2', 'Engineer', 'IQ/H', '1', 'B190', 'Materials', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('215', '2', 'Engineer', 'IQ/H', '1', 'B190', 'Microtechnology', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('216', '2', 'Engineer', 'IQ/H', '1', 'B190', 'Mining', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('217', '2', 'Engineer', 'IQ/H', '1', 'B190', 'Nanotechnology', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('218', '2', 'Engineer', 'IQ/H', '1', 'B190', 'Parachronic', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('219', '2', 'Engineer', 'IQ/H', '1', 'B190', 'Psychotronics', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('220', '2', 'Engineer', 'IQ/H', '1', 'B190', 'Robotics', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('221', '2', 'Engineer', 'IQ/H', '1', 'B190', 'Ships', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('222', '2', 'Engineer', 'IQ/H', '1', 'B190', 'Small Arms', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('223', '2', 'Engineer', 'IQ/H', '1', 'B190', 'Starships', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('224', '2', 'Engineer', 'IQ/H', '1', 'B190', 'Temporal', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('225', '2', 'Enthrallment', 'Will/H', '1', 'B191', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('226', '2', 'Environment Suit', 'DX/A', '1', 'B192', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('227', '2', 'Erotic Art', 'DX/A', '1', 'B192', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('228', '2', 'Escape', 'DX/H', '1', 'B192', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('229', '2', 'Esoteric Medicine', 'Per/H', '1', 'B192', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('230', '2', 'Exorcism', 'Will/H', '1', 'B193', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('231', '2', 'Expert Skill', 'IQ/H', '1', 'B193', 'Computer Security', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('232', '2', 'Expert Skill', 'IQ/H', '1', 'B193', 'Conspiracy Theory', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('233', '2', 'Expert Skill', 'IQ/H', '1', 'B193', 'Egyptology', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('234', '2', 'Expert Skill', 'IQ/H', '1', 'B193', 'Epidemiology', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('235', '2', 'Expert Skill', 'IQ/H', '1', 'B193', 'Hydrology', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('236', '2', 'Expert Skill', 'IQ/H', '1', 'B193', 'Military Science', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('237', '2', 'Expert Skill', 'IQ/H', '1', 'B193', 'Natural Philosophy', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('238', '2', 'Expert Skill', 'IQ/H', '1', 'B193', 'Political Science', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('239', '2', 'Expert Skill', 'IQ/H', '1', 'B193', 'Psionics', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('240', '2', 'Expert Skill', 'IQ/H', '1', 'B193', 'Thantology', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('241', '2', 'Expert Skill', 'IQ/H', '1', 'B193', 'Xenology', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('242', '2', 'Explosives', 'IQ/A', '1', 'B194', '@Specialty@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('243', '2', 'Explosives', 'IQ/A', '1', 'B194', 'Demolition', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('244', '2', 'Explosives', 'IQ/A', '1', 'B194', 'Explosive Ordnance Disposal', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('245', '2', 'Explosives', 'IQ/A', '1', 'B194', 'Fireworks', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('246', '2', 'Explosives', 'IQ/A', '1', 'B194', 'Nuclear Ordnance Disposal', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('247', '2', 'Explosives', 'IQ/A', '1', 'B194', 'Underwater Demolition', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('248', '2', 'Falconry', 'IQ/A', '1', 'B194', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('249', '2', 'Farming', 'DX/A', '1', 'B194', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('250', '2', 'Fast-Draw', 'DX/E', '1', 'B194', 'Arrow', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('251', '2', 'Fast-Draw', 'DX/E', '1', 'B194', 'Force Sword', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('252', '2', 'Fast-Draw', 'DX/E', '1', 'B194', 'Knife', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('253', '2', 'Fast-Draw', 'DX/E', '1', 'B194', 'Long Arm', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('254', '2', 'Fast-Draw', 'DX/E', '1', 'B194', 'Pistol', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('255', '2', 'Fast-Draw', 'DX/E', '1', 'B194', 'Sword', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('256', '2', 'Fast-Draw', 'DX/E', '1', 'B194', 'Two-Handed Sword', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('257', '2', 'Fast-Draw', 'DX/E', '1', 'B194', 'Ammo', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('258', '2', 'Fast-Talk', 'IQ/A', '1', 'B195', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('259', '2', 'Filch', 'DX/A', '1', 'B195', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('260', '2', 'Finance', 'IQ/H', '1', 'B195', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('261', '2', 'Fire Eating', 'DX/A', '1', 'B195', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('262', '2', 'First Aid', 'IQ/E', '1', 'B195', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('263', '2', 'Fishing', 'Per/E', '1', 'B195', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('264', '2', 'Flail', 'DX/H', '1', 'B208', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('265', '2', 'Flight', 'HT/A', '1', 'B195', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('266', '2', 'Flying Leap', 'IQ/H', '1', 'B196', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('267', '2', 'Force Sword', 'DX/A', '1', 'B208', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('268', '2', 'Force Whip', 'DX/A', '1', 'B209', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('269', '2', 'Forced Entry', 'DX/E', '1', 'B196', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('270', '2', 'Forensics', 'IQ/H', '1', 'B196', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('271', '2', 'Forgery', 'IQ/H', '1', 'B196', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('272', '2', 'Fortune-Telling', 'IQ/A', '1', 'B196', 'Astrology', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('273', '2', 'Fortune-Telling', 'IQ/A', '1', 'B196', 'Augury', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('274', '2', 'Fortune-Telling', 'IQ/A', '1', 'B196', 'Crystal Gazing', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('275', '2', 'Fortune-Telling', 'IQ/A', '1', 'B196', 'Dream Interpretation', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('276', '2', 'Fortune-Telling', 'IQ/A', '1', 'B196', 'Feng Shui', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('277', '2', 'Fortune-Telling', 'IQ/A', '1', 'B196', 'Palmistry', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('278', '2', 'Fortune-Telling', 'IQ/A', '1', 'B196', 'Tarot', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('279', '2', 'Forward Observer', 'IQ/A', '1', 'B196', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('280', '2', 'Free Fall', 'DX/A', '1', 'B197', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('281', '2', 'Freight Handling', 'IQ/A', '1', 'B197', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('282', '2', 'Gambling', 'IQ/A', '1', 'B197', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('283', '2', 'Games', 'IQ/E', '1', 'B197', '@Specialty@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('284', '2', 'Gardening', 'IQ/E', '1', 'B197', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('285', '2', 'Garrote', 'DX/E', '1', 'B197', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('286', '2', 'Geography', 'IQ/H', '1', 'B198', 'Physical, @Planet class@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('287', '2', 'Geography', 'IQ/H', '1', 'B198', 'Physical, Earthlike', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('288', '2', 'Geography', 'IQ/H', '1', 'B198', 'Physical, Gas Giants', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('289', '2', 'Geography', 'IQ/H', '1', 'B198', 'Physical, Hostile Terrestrial', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('290', '2', 'Geography', 'IQ/H', '1', 'B198', 'Physical, Ice Dwarfs', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('291', '2', 'Geography', 'IQ/H', '1', 'B198', 'Physical, Ice Worlds', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('292', '2', 'Geography', 'IQ/H', '1', 'B198', 'Physical, Rock Worlds', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('293', '2', 'Geography', 'IQ/H', '1', 'B198', 'Political', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('294', '2', 'Geography', 'IQ/H', '1', 'B198', 'Regional', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('295', '2', 'Geology', 'IQ/H', '1', 'B198', '@Planet class@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('296', '2', 'Geology', 'IQ/H', '1', 'B198', 'Earthlike', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('297', '2', 'Geology', 'IQ/H', '1', 'B198', 'Gas Giants', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('298', '2', 'Geology', 'IQ/H', '1', 'B198', 'Hostile Terrestrial', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('299', '2', 'Geology', 'IQ/H', '1', 'B198', 'Ice Dwarfs', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('300', '2', 'Geology', 'IQ/H', '1', 'B198', 'Ice Worlds', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('301', '2', 'Geology', 'IQ/H', '1', 'B198', 'Rock Worlds', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('302', '2', 'Gesture', 'IQ/E', '1', 'B198', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('303', '2', 'Group Performance', 'IQ/A', '1', 'B198', '@Art@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('304', '2', 'Group Performance', 'IQ/A', '1', 'B198', 'Choreography', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('305', '2', 'Group Performance', 'IQ/A', '1', 'B198', 'Conducting', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('306', '2', 'Group Performance', 'IQ/A', '1', 'B198', 'Directing', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('307', '2', 'Group Performance', 'IQ/A', '1', 'B198', 'Fight Choreography', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('308', '2', 'Gunner', 'DX/E', '1', 'B198', '@Gun class@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('309', '2', 'Gunner', 'DX/E', '1', 'B198', 'Beams', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('310', '2', 'Gunner', 'DX/E', '1', 'B198', 'Cannon', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('311', '2', 'Gunner', 'DX/E', '1', 'B198', 'Catapult', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('312', '2', 'Gunner', 'DX/E', '1', 'B198', 'Machine Gun', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('313', '2', 'Gunner', 'DX/E', '1', 'B198', 'Rockets', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('314', '2', 'Guns', 'DX/E', '1', 'B198', '@Gun class@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('315', '2', 'Guns', 'DX/E', '1', 'B198', 'Grenade Launcher', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('316', '2', 'Guns', 'DX/E', '1', 'B198', 'Gyroc', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('317', '2', 'Guns', 'DX/E', '1', 'B198', 'Light Anti-Armor Weapon', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('318', '2', 'Guns', 'DX/E', '1', 'B198', 'Light Machine Gun', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('319', '2', 'Guns', 'DX/E', '1', 'B198', 'Musket', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('320', '2', 'Guns', 'DX/E', '1', 'B198', 'Pistol', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('321', '2', 'Guns', 'DX/E', '1', 'B198', 'Rifle', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('322', '2', 'Guns', 'DX/E', '1', 'B198', 'Shotgun', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('323', '2', 'Guns', 'DX/E', '1', 'B198', 'Submachine Gun', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('324', '2', 'Hazardous Materials', 'IQ/A', '1', 'B199', 'Biological', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('325', '2', 'Hazardous Materials', 'IQ/A', '1', 'B199', 'Chemical', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('326', '2', 'Hazardous Materials', 'IQ/A', '1', 'B199', 'Magical', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('327', '2', 'Hazardous Materials', 'IQ/A', '1', 'B199', 'Nanotech', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('328', '2', 'Hazardous Materials', 'IQ/A', '1', 'B199', 'Nuclear', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('329', '2', 'Heraldry', 'IQ/A', '1', 'B199', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('330', '2', 'Herb Lore', 'IQ/VH', '1', 'B199', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('331', '2', 'Hidden Lore', 'IQ/A', '1', 'B199', '@Subject@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('332', '2', 'Hidden Lore', 'IQ/A', '1', 'B199', 'Conspiracies', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('333', '2', 'Hidden Lore', 'IQ/A', '1', 'B199', 'Demon Lore', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('334', '2', 'Hidden Lore', 'IQ/A', '1', 'B199', 'Earth', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('335', '2', 'Hidden Lore', 'IQ/A', '1', 'B199', 'Faerie Lore', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('336', '2', 'Hidden Lore', 'IQ/A', '1', 'B199', 'Spirit Lore', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('337', '2', 'Hiking', 'HT/A', '1', 'B200', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('338', '2', 'History', 'IQ/H', '1', 'B200', '@Specialty@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('339', '2', 'Hobby Skill', 'IQ/E', '1', 'B200', '@Mental Hobby@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('340', '2', 'Hobby Skill', 'DX/E', '1', 'B200', '@Physical Hobby@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('341', '2', 'Holdout', 'IQ/A', '1', 'B200', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('342', '2', 'Housekeeping', 'IQ/E', '1', 'B200', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('343', '2', 'Hypnotism', 'IQ/H', '1', 'B201', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('344', '2', 'Immovable Stance', 'DX/H', '1', 'B201', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('345', '2', 'Innate Attack', 'DX/E', '1', 'B201', 'Beam', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('346', '2', 'Innate Attack', 'DX/E', '1', 'B201', 'Breath', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('347', '2', 'Innate Attack', 'DX/E', '1', 'B201', 'Gaze', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('348', '2', 'Innate Attack', 'DX/E', '1', 'B201', 'Projectile', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('349', '2', 'Intelligence Analysis', 'IQ/H', '1', 'B201', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('350', '2', 'Interrogation', 'IQ/A', '1', 'B202', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('351', '2', 'Intimidation', 'Will/A', '1', 'B202', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('352', '2', 'Invisibility Art', 'IQ/VH', '1', 'B202', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('353', '2', 'Jeweler', 'IQ/H', '1', 'B203', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('354', '2', 'Jitte/Sai', 'DX/A', '1', 'B208', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [notes], [encumbrance_penalty_multiplier], [FK_skill_list])
  VALUES ('355', '2', 'Judo', 'DX/H', '1', 'B203', 'Allows parrying two different attacks per turn, one with each hand.', '1', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('356', '2', 'Jumping', 'DX/E', '1', 'B203', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [encumbrance_penalty_multiplier], [FK_skill_list])
  VALUES ('357', '2', 'Karate', 'DX/H', '1', 'B203', '1', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('358', '2', 'Kiai', 'HT/H', '1', 'B203', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('359', '2', 'Knife', 'DX/E', '1', 'B208', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('360', '2', 'Knot-Tying', 'DX/E', '1', 'B203', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('361', '2', 'Kusari', 'DX/H', '1', 'B209', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('362', '2', 'Lance', 'DX/A', '1', 'B204', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('363', '2', 'Lasso', 'DX/A', '1', 'B204', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('364', '2', 'Law', 'IQ/H', '1', 'B204', '@Specialty@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('365', '2', 'Leadership', 'IQ/A', '1', 'B204', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('366', '2', 'Leatherworking', 'DX/E', '1', 'B205', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('367', '2', 'Lifting', 'HT/A', '1', 'B205', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('368', '2', 'Light Walk', 'DX/H', '1', 'B205', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('369', '2', 'Linguistics', 'IQ/H', '1', 'B205', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('370', '2', 'Lip Reading', 'Per/A', '1', 'B205', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('371', '2', 'Liquid Projector', 'DX/E', '1', 'B205', '@Weapon class@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('372', '2', 'Liquid Projector', 'DX/E', '1', 'B205', 'Flamethrower', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('373', '2', 'Liquid Projector', 'DX/E', '1', 'B205', 'Sprayer', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('374', '2', 'Liquid Projector', 'DX/E', '1', 'B205', 'Squirt Gun', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('375', '2', 'Liquid Projector', 'DX/E', '1', 'B205', 'Water Cannon', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('376', '2', 'Literature', 'IQ/H', '1', 'B205', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('377', '2', 'Lockpicking', 'IQ/A', '1', 'B206', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('378', '2', 'Machinist', 'IQ/A', '1', 'B206', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('379', '2', 'Main-Gauche', 'DX/A', '1', 'B208', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('380', '2', 'Makeup', 'IQ/E', '1', 'B206', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('381', '2', 'Market Analysis', 'IQ/H', '1', 'B207', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('382', '2', 'Masonry', 'IQ/E', '1', 'B207', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('383', '2', 'Mathematics', 'IQ/H', '1', 'B207', 'Applied', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('384', '2', 'Mathematics', 'IQ/H', '1', 'B207', 'Computer Science', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('385', '2', 'Mathematics', 'IQ/H', '1', 'B207', 'Cryptology', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('386', '2', 'Mathematics', 'IQ/H', '1', 'B207', 'Pure', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('387', '2', 'Mathematics', 'IQ/A', '1', 'B207', 'Pure: @Optional specialty@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('388', '2', 'Mathematics', 'IQ/H', '1', 'B207', 'Statistics', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('389', '2', 'Mathematics', 'IQ/H', '1', 'B207', 'Surveying', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('390', '2', 'Mechanic', 'IQ/A', '1', 'B207', '@Machine class@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('391', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Aerospace', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('392', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Antimatter Reactor', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('393', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Autogyro', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('394', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Automobile', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('395', '2', 'Mechanic', 'IQ/A', '1', 'B107', 'Clockwork', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('396', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Construction Equipment', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('397', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Contragravity', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('398', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Diesel Engine', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('399', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Fission Reactor', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('400', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Flight Pack', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('401', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Free-Flooding Sub', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('402', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Fuel Cell', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('403', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Fusion Reactor', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('404', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Gas Turbine', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('405', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Gasoline Engine', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('406', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Glider', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('407', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Halftrack', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('408', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Heavy Airplane', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('409', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Heavy Wheeled', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('410', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Helicopter', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('411', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'High-Performance Airplane', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('412', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'High-Performance Spacecraft', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('413', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Hovercraft', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('414', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Large Sub', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('415', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Legged Drive', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('416', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Light Airplane', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('417', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Lighter-Than-Air', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('418', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Lightsail', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('419', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Low-G Wings', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('420', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Low-Performance Spacecraft', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('421', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Mecha', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('422', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Micromachines', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('423', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Mini-Sub', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('424', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Motorcycle', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('425', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Nanomachines', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('426', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Reactionless Thrusters', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('427', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Robotics', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('428', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Rockets', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('429', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Steam Engine', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('430', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Tracked Drive', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('431', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Tracked Vehicle', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('432', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Ultralight', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('433', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Vertol', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('434', '2', 'Mechanic', 'IQ/A', '1', 'B207', 'Wheeled Drive', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('435', '2', 'Meditation', 'Will/H', '1', 'B207', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('436', '2', 'Mental Strength', 'Will/E', '1', 'B209', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('437', '2', 'Merchant', 'IQ/A', '1', 'B209', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('438', '2', 'Metallurgy', 'IQ/H', '1', 'B209', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('439', '2', 'Meteorology', 'IQ/A', '1', 'B209', '@Planet type@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('440', '2', 'Meteorology', 'IQ/A', '1', 'B209', 'Earthlike', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('441', '2', 'Meteorology', 'IQ/A', '1', 'B209', 'Gas Giants', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('442', '2', 'Meteorology', 'IQ/A', '1', 'B209', 'Hostile Terrestrial', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('443', '2', 'Meteorology', 'IQ/A', '1', 'B209', 'Ice Dwarfs', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('444', '2', 'Meteorology', 'IQ/A', '1', 'B209', 'Ice Worlds', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('445', '2', 'Meteorology', 'IQ/A', '1', 'B209', 'Rock Worlds', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('446', '2', 'Mimicry', 'IQ/H', '1', 'B210', 'Animal Sounds', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('447', '2', 'Mimicry', 'IQ/H', '1', 'B210', 'Bird Calls', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('448', '2', 'Mimicry', 'IQ/H', '1', 'B210', 'Speech', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('449', '2', 'Mind Block', 'Will/A', '1', 'B210', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('450', '2', 'Monowire Whip', 'DX/H', '1', 'B209', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('451', '2', 'Mount', 'DX/A', '1', 'B210', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('452', '2', 'Musical Composition', 'IQ/H', '1', 'B210', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('453', '2', 'Musical Influence', 'IQ/VH', '1', 'B210', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('454', '2', 'Musical Instrument', 'IQ/H', '1', 'B211', '@Specialty@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('455', '2', 'Naturalist', 'IQ/H', '1', 'B211', '@Planet type@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('456', '2', 'Naturalist', 'IQ/H', '1', 'B211', 'Earthlike', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('457', '2', 'Naturalist', 'IQ/H', '1', 'B211', 'Gas Giants', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('458', '2', 'Naturalist', 'IQ/H', '1', 'B211', 'Hostile Terrestrial', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('459', '2', 'Naturalist', 'IQ/H', '1', 'B211', 'Ice Dwarfs', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('460', '2', 'Naturalist', 'IQ/H', '1', 'B211', 'Ice Worlds', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('461', '2', 'Naturalist', 'IQ/H', '1', 'B211', 'Rock Worlds', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('462', '2', 'Navigation', 'IQ/A', '1', 'B211', '@Environment@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('463', '2', 'Navigation', 'IQ/A', '1', 'B211', 'Air', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('464', '2', 'Navigation', 'IQ/A', '1', 'B211', 'Hyperspace', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('465', '2', 'Navigation', 'IQ/A', '1', 'B211', 'Land', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('466', '2', 'Navigation', 'IQ/A', '1', 'B211', 'Sea', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('467', '2', 'Navigation', 'IQ/A', '1', 'B211', 'Space', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('468', '2', 'NBC Suit', 'DX/A', '1', 'B192', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('469', '2', 'Net', 'DX/H', '1', 'B211', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('470', '2', 'Observation', 'Per/A', '1', 'B211', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('471', '2', 'Occultism', 'IQ/A', '1', 'B212', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('472', '2', 'Packing', 'IQ/A', '1', 'B212', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('473', '2', 'Paleontology', 'IQ/H', '1', 'B212', 'Micropaleontology', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('474', '2', 'Paleontology', 'IQ/H', '1', 'B212', 'Paleoanthropology', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('475', '2', 'Paleontology', 'IQ/H', '1', 'B212', 'Paleobotany', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('476', '2', 'Paleontology', 'IQ/H', '1', 'B212', 'Paleozoology', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('477', '2', 'Panhandling', 'IQ/E', '1', 'B212', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('478', '2', 'Parachuting', 'DX/E', '1', 'B212', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('479', '2', 'Parry Missile-Weapons', 'DX/H', '1', 'B212', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('480', '2', 'Performance', 'IQ/A', '1', 'B212', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('481', '2', 'Persuade', 'Will/H', '1', 'B191', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('482', '2', 'Pharmacy', 'IQ/H', '1', 'B213', 'Herbal', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('483', '2', 'Pharmacy', 'IQ/H', '1', 'B213', 'Synthetic', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('484', '2', 'Philosophy', 'IQ/H', '1', 'B213', '@Specialty@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('485', '2', 'Photography', 'IQ/A', '1', 'B213', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('486', '2', 'Physician', 'IQ/H', '1', 'B213', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('487', '2', 'Physics', 'IQ/VH', '1', 'B213', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('488', '2', 'Physics', 'IQ/H', '1', 'B213', '@TL 6+ Optional Specialty@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('489', '2', 'Physiology', 'IQ/H', '1', 'B213', '@Specialty@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('490', '2', 'Pickpocket', 'DX/H', '1', 'B213', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('491', '2', 'Piloting', 'DX/A', '1', 'B214', '@Flying vehicle class@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('492', '2', 'Piloting', 'DX/A', '1', 'B214', 'Aerospace', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('493', '2', 'Piloting', 'DX/A', '1', 'B214', 'Autogyro', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('494', '2', 'Piloting', 'DX/A', '1', 'B214', 'Contragravity', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('495', '2', 'Piloting', 'DX/A', '1', 'B214', 'Flight Pack', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('496', '2', 'Piloting', 'DX/A', '1', 'B214', 'Glider', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('497', '2', 'Piloting', 'DX/A', '1', 'B214', 'Heavy Airplane', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('498', '2', 'Piloting', 'DX/A', '1', 'B214', 'Helicopter', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('499', '2', 'Piloting', 'DX/A', '1', 'B214', 'High-Performance Airplane', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('500', '2', 'Piloting', 'DX/A', '1', 'B214', 'High-Performance Spaecraft', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('501', '2', 'Piloting', 'DX/A', '1', 'B214', 'Light Airplane', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('502', '2', 'Piloting', 'DX/A', '1', 'B214', 'Lighter-Than-Air', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('503', '2', 'Piloting', 'DX/A', '1', 'B214', 'Lightsail', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('504', '2', 'Piloting', 'DX/A', '1', 'B214', 'Low-G Wings', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('505', '2', 'Piloting', 'DX/A', '1', 'B214', 'Low-Performance Spacecraft', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('506', '2', 'Piloting', 'DX/A', '1', 'B214', 'Ultralight', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('507', '2', 'Piloting', 'DX/A', '1', 'B214', 'Vertol', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('508', '2', 'Poetry', 'IQ/A', '1', 'B214', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('509', '2', 'Poisons', 'IQ/H', '1', 'B214', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('510', '2', 'Polearm', 'DX/A', '1', 'B208', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('511', '2', 'Politics', 'IQ/A', '1', 'B215', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('512', '2', 'Power Blow', 'Will/H', '1', 'B215', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('513', '2', 'Pressure Points', 'IQ/H', '1', 'B215', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('514', '2', 'Pressure Secrets', 'IQ/VH', '1', 'B215', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('515', '2', 'Professional Skill', 'IQ/A', '1', 'B215', '@Mental Skill@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('516', '2', 'Professional Skill', 'DX/A', '1', 'B215', '@Physical Skill@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('517', '2', 'Propaganda', 'IQ/A', '1', 'B216', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('518', '2', 'Prospecting', 'IQ/A', '1', 'B216', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('519', '2', 'Psychology', 'IQ/H', '1', 'B216', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('520', '2', 'Public Speaking', 'IQ/A', '1', 'B216', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('521', '2', 'Push', 'DX/H', '1', 'B216', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('522', '2', 'Rapier', 'DX/A', '1', 'B208', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('523', '2', 'Religious Ritual', 'IQ/H', '1', 'B217', '@Specialty@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('524', '2', 'Research', 'IQ/A', '1', 'B217', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('525', '2', 'Riding', 'DX/A', '1', 'B217', '@Specialty@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('526', '2', 'Riding', 'DX/A', '1', 'B217', 'Camel', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('527', '2', 'Riding', 'DX/A', '1', 'B217', 'Dolphin', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('528', '2', 'Riding', 'DX/A', '1', 'B217', 'Dragon', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('529', '2', 'Riding', 'DX/A', '1', 'B217', 'Equine', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('530', '2', 'Ritual Magic', 'IQ/VH', '1', 'B218', '@Specialty@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('531', '2', 'Running', 'HT/A', '1', 'B218', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('532', '2', 'Saber', 'DX/A', '1', 'B208', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('533', '2', 'Savoir-Faire', 'IQ/E', '1', 'B218', '@Social group@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('534', '2', 'Savoir-Faire', 'IQ/E', '1', 'B218', 'Dojo', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('535', '2', 'Savoir-Faire', 'IQ/E', '1', 'B218', 'High Society', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('536', '2', 'Savoir-Faire', 'IQ/E', '1', 'B218', 'Mafia', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('537', '2', 'Savoir-Faire', 'IQ/E', '1', 'B218', 'Military', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('538', '2', 'Savoir-Faire', 'IQ/E', '1', 'B218', 'Police', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('539', '2', 'Savoir-Faire', 'IQ/E', '1', 'B218', 'Servant', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('540', '2', 'Scrounging', 'Per/E', '1', 'B218', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('541', '2', 'Scuba', 'IQ/A', '1', 'B219', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('542', '2', 'Seamanship', 'IQ/E', '1', 'B185', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('543', '2', 'Search', 'Per/A', '1', 'B219', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('544', '2', 'Sewing', 'DX/E', '1', 'B219', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('545', '2', 'Sex Appeal', 'HT/A', '1', 'B219', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('546', '2', 'Shadowing', 'IQ/A', '1', 'B219', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('547', '2', 'Shield', 'DX/E', '1', 'B220', 'Buckler', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('548', '2', 'Shield', 'DX/E', '1', 'B220', 'Force Shield', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('549', '2', 'Shield', 'DX/E', '1', 'B220', 'Shield', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('550', '2', 'Shiphandling', 'IQ/H', '1', 'B220', '@Ship class@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('551', '2', 'Shiphandling', 'IQ/H', '1', 'B220', 'Airship', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('552', '2', 'Shiphandling', 'IQ/H', '1', 'B220', 'Ship', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('553', '2', 'Shiphandling', 'IQ/H', '1', 'B220', 'Spaceship', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('554', '2', 'Shiphandling', 'IQ/H', '1', 'B220', 'Starship', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('555', '2', 'Shiphandling', 'IQ/H', '1', 'B220', 'Submarine', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('556', '2', 'Shortsword', 'DX/A', '1', 'B209', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('557', '2', 'Singing', 'HT/E', '1', 'B220', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('558', '2', 'Skating', 'HT/H', '1', 'B220', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('559', '2', 'Skiing', 'HT/H', '1', 'B221', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('560', '2', 'Sleight of Hand', 'DX/H', '1', 'B221', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('561', '2', 'Sling', 'DX/H', '1', 'B221', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('562', '2', 'Smallsword', 'DX/A', '1', 'B208', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('563', '2', 'Smith', 'IQ/A', '1', 'B221', 'Copper', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('564', '2', 'Smith', 'IQ/A', '1', 'B221', 'Iron', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('565', '2', 'Smith', 'IQ/A', '1', 'B221', 'Lead & Tin', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('566', '2', 'Smuggling', 'IQ/A', '1', 'B221', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('567', '2', 'Sociology', 'IQ/H', '1', 'B221', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('568', '2', 'Soldier', 'IQ/A', '1', 'B221', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('569', '2', 'Spacer', 'IQ/E', '1', 'B185', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('570', '2', 'Spear', 'DX/A', '1', 'B208', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('571', '2', 'Spear Thrower', 'DX/A', '1', 'B222', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('572', '2', 'Speed-Reading', 'IQ/A', '1', 'B222', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('573', '2', 'Sports', 'DX/A', '1', 'B222', '@Speciality@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('574', '2', 'Staff', 'DX/A', '1', 'B208', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('575', '2', 'Stage Combat', 'DX/A', '1', 'B222', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [encumbrance_penalty_multiplier], [FK_skill_list])
  VALUES ('576', '2', 'Stealth', 'DX/A', '1', 'B222', '1', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('577', '2', 'Strategy', 'IQ/H', '1', 'B222', 'Land', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('578', '2', 'Strategy', 'IQ/H', '1', 'B222', 'Naval', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('579', '2', 'Strategy', 'IQ/H', '1', 'B222', 'Space', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('580', '2', 'Streetwise', 'IQ/A', '1', 'B223', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('581', '2', 'Submarine', 'DX/A', '1', 'B222', 'Free-Flooding Sub', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('582', '2', 'Submarine', 'DX/A', '1', 'B222', 'Large Sub', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('583', '2', 'Submarine', 'DX/A', '1', 'B222', 'Min-Sub', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('584', '2', 'Submariner', 'IQ/E', '1', 'B185', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('585', '2', 'Suggest', 'Will/H', '1', 'B191', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('586', '2', 'Sumo Wrestling', 'DX/A', '1', 'B223', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('587', '2', 'Surgery', 'IQ/VH', '1', 'B223', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('588', '2', 'Survival', 'Per/A', '1', 'B223', '@Environment@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('589', '2', 'Survival', 'Per/A', '1', 'B223', 'Arctic', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('590', '2', 'Survival', 'Per/A', '1', 'B223', 'Bank', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('591', '2', 'Survival', 'Per/A', '1', 'B223', 'Deep Ocean Vent', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('592', '2', 'Survival', 'Per/A', '1', 'B223', 'Desert', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('593', '2', 'Survival', 'Per/A', '1', 'B223', 'Fresh-Water Lake', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('594', '2', 'Survival', 'Per/A', '1', 'B223', 'Island/Beach', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('595', '2', 'Survival', 'Per/A', '1', 'B223', 'Jungle', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('596', '2', 'Survival', 'Per/A', '1', 'B223', 'Mountain', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('597', '2', 'Survival', 'Per/A', '1', 'B223', 'Open Ocean', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('598', '2', 'Survival', 'Per/A', '1', 'B223', 'Plains', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('599', '2', 'Survival', 'Per/A', '1', 'B223', 'Reef', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('600', '2', 'Survival', 'Per/A', '1', 'B223', 'River/Stream', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('601', '2', 'Survival', 'Per/A', '1', 'B223', 'Salt-Water Sea', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('602', '2', 'Survival', 'Per/A', '1', 'B223', 'Swampland', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('603', '2', 'Survival', 'Per/A', '1', 'B223', 'Tropical Lagoon', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('604', '2', 'Survival', 'Per/A', '1', 'B223', 'Woodlands', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('605', '2', 'Sway Emotions', 'Will/H', '1', 'B192', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [encumbrance_penalty_multiplier], [FK_skill_list])
  VALUES ('606', '2', 'Swimming', 'HT/E', '1', 'B224', '2', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('607', '2', 'Symbol Drawing', 'IQ/H', '1', 'B224', '@Specialty@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('608', '2', 'Tactics', 'IQ/H', '1', 'B224', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('609', '2', 'Teaching', 'IQ/A', '1', 'B224', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('610', '2', 'Teamster', 'IQ/A', '1', 'B225', '@Specialty@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('611', '2', 'Teamster', 'IQ/A', '1', 'B225', 'Equines', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('612', '2', 'Thaumatology', 'IQ/VH', '1', 'B225', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('613', '2', 'Theology', 'IQ/H', '1', 'B226', '@Specialty@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('614', '2', 'Throwing', 'DX/A', '1', 'B226', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('615', '2', 'Throwing Art', 'DX/H', '1', 'B226', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('616', '2', 'Thrown Weapon', 'DX/E', '1', 'B226', '@Specialty@', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('617', '2', 'Thrown Weapon', 'DX/E', '1', 'B226', 'Axe/Mace', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('618', '2', 'Thrown Weapon', 'DX/E', '1', 'B226', 'Dart', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('619', '2', 'Thrown Weapon', 'DX/E', '1', 'B226', 'Harpoon', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('620', '2', 'Thrown Weapon', 'DX/E', '1', 'B226', 'Knife', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('621', '2', 'Thrown Weapon', 'DX/E', '1', 'B226', 'Shuriken', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('622', '2', 'Thrown Weapon', 'DX/E', '1', 'B226', 'Spear', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [specialization], [FK_skill_list])
  VALUES ('623', '2', 'Thrown Weapon', 'DX/E', '1', 'B226', 'Stick', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('624', '2', 'Tonfa', 'DX/A', '1', 'B209', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('625', '2', 'Tracking', 'Per/A', '1', 'B226', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('626', '2', 'Traps', 'IQ/A', '1', 'B226', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('627', '2', 'Two-Handed Axe/Mace', 'DX/A', '1', 'B208', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('628', '2', 'Two-Handed Flail', 'DX/H', '1', 'B208', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('629', '2', 'Two-Handed Sword', 'DX/A', '1', 'B209', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('630', '2', 'Typing', 'DX/E', '1', 'B228', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('631', '2', 'Urban Survival', 'Per/A', '1', 'B228', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('632', '2', 'Vacc Suit', 'DX/A', '1', 'B192', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('633', '2', 'Ventriloquism', 'IQ/H', '1', 'B228', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('634', '2', 'Veterinary', 'IQ/H', '1', 'B228', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('635', '2', 'Weather Sense', 'IQ/A', '1', 'B209', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('636', '2', 'Weird Science', 'IQ/VH', '1', 'B228', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('637', '2', 'Whip', 'DX/A', '1', 'B209', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('638', '2', 'Wrestling', 'DX/A', '1', 'B228', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('639', '2', 'Writing', 'IQ/A', '1', 'B228', '1');
INSERT INTO [Item1].[CharDB].[skill] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('640', '2', 'Zen Archery', 'IQ/VH', '1', 'B228', '1');
IF EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[skill_list]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  DROP TABLE [Item1].[CharDB].[skill_list]
END;
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[skill_list]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[CharDB].[skill_list] (
    [PrimaryKey] VARCHAR(255)
   ,[id] VARCHAR(255)
   ,[version] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[CharDB].[skill_list] ([PrimaryKey], [id], [version])
  VALUES ('1', '7c9c4408-4180-4bab-bacf-cd5a4cd61eef', '1');
IF EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[skill_prereq]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  DROP TABLE [Item1].[CharDB].[skill_prereq]
END;
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
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('1', 'yes', '1');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('2', 'yes', 'Karate', '2');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('3', 'yes', 'meditation', '4');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('4', 'yes', 'breath control', '4');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('5', 'yes', '7');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('6', 'yes', '7');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('7', 'yes', 'Judo', '8');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('8', 'yes', 'Wrestling', '9');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('9', 'yes', 'computer programming', '10');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('10', 'yes', '@Unarmed or Melee Weapon Skill@', '11');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('11', 'yes', 'Brawling', '12');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('12', 'yes', 'Karate', '13');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('13', 'yes', '14');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('14', 'yes', '15');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('15', 'yes', '16');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('16', 'yes', '17');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('17', 'yes', '18');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('18', 'yes', '19');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('19', 'yes', '20');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('20', 'yes', '21');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('21', 'yes', '23');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('22', 'yes', 'metallurgy', '24');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('23', 'yes', 'chemistry', '24');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('24', 'yes', '25');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('25', 'yes', '26');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('26', 'yes', '27');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('27', 'yes', '29');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('28', 'yes', 'physics', '28');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('29', 'yes', '30');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('30', 'yes', '31');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('31', 'yes', '32');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('32', 'yes', '33');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('33', 'yes', '34');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('34', 'yes', '36');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('35', 'yes', 'physics', '35');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('36', 'yes', '37');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('37', 'yes', '@Unarmed or Melee Weapon Skill@', '39');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('38', 'yes', 'power blow', '41');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('39', 'yes', 'jumping', '41');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('40', 'yes', '@Combat Skill@', '43');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('41', 'yes', 'diplomacy', '45');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('42', 'yes', 'intimidation', '45');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('43', 'yes', 'leadership', '45');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('44', 'yes', 'diplomacy', '47');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('45', 'yes', 'intimidation', '47');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('46', 'yes', 'leadership', '47');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('47', 'yes', 'dancing', '46');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('48', 'yes', 'diplomacy', '49');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('49', 'yes', 'intimidation', '49');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('50', 'yes', 'leadership', '49');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('51', 'yes', 'musical instrument', '51');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('52', 'yes', 'musical instrument', '51');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('53', 'yes', 'musical instrument', '52');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('54', 'yes', 'singing', '52');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('55', 'yes', 'diplomacy', '54');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('56', 'yes', 'intimidation', '54');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('57', 'yes', 'leadership', '54');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('58', 'yes', 'performance', '53');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('59', 'yes', 'diplomacy', '56');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('60', 'yes', 'intimidation', '56');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('61', 'yes', 'leadership', '56');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('62', 'yes', 'stage combat', '55');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('63', 'yes', 'naturalist', '57');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('64', 'yes', 'riding', '58');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('65', 'yes', '60');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('66', 'yes', '60');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('67', 'yes', 'riding', '62');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('68', 'yes', '63');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('69', 'yes', '63');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('70', 'yes', '66');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('71', 'yes', '66');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('72', 'yes', '67');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('73', 'yes', 'naturalist', '68');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('74', 'yes', '69');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('75', 'yes', '70');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('76', 'yes', '73');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('77', 'yes', 'Computer Operation', '76');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('78', 'yes', 'swimming', '78');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('79', 'yes', '79');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('80', 'yes', 'leadership', '79');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('81', 'yes', 'airshipman', '79');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('82', 'yes', '80');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('83', 'yes', 'leadership', '80');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('84', 'yes', 'airshipman', '80');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('85', 'yes', 'seamanship', '81');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('86', 'yes', '81');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('87', 'yes', 'leadership', '81');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('88', 'yes', 'spacer', '82');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('89', 'yes', '82');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('90', 'yes', 'leadership', '82');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('91', 'yes', 'spacer', '83');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('92', 'yes', '83');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('93', 'yes', 'leadership', '83');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('94', 'yes', 'submariner', '84');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('95', 'yes', '84');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('96', 'yes', 'leadership', '84');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('97', 'yes', 'diving suit', '85');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('98', 'yes', 'scuba', '85');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('99', 'yes', '86');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('100', 'yes', '86');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('101', 'yes', 'first aid', '87');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('102', 'yes', 'physician', '87');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [Text], [FK_prereq_list])
  VALUES ('103', 'yes', 'meditation', '89');
INSERT INTO [Item1].[CharDB].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('104', 'yes', '89');
IF EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[specialization]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  DROP TABLE [Item1].[CharDB].[specialization]
END;
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
   ,[FK_weapon_bonus] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('1', 'is', '1');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('2', 'is anything', '2');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('3', 'is anything', '3');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('4', 'is anything', '4');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_weapon_bonus])
  VALUES ('5', 'is anything', '1');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_weapon_bonus])
  VALUES ('6', 'is anything', '2');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_weapon_bonus])
  VALUES ('7', 'is anything', '3');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('8', 'is', '5');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('9', 'is', '6');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('10', 'is anything', '7');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('11', 'is anything', '8');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('12', 'is', '9');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('13', 'is anything', '10');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('14', 'is anything', '11');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('15', 'is anything', '12');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('16', 'is', '13');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('17', 'is', '14');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('18', 'is', '15');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('19', 'is', '16');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('20', 'is', '17');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('21', 'is', '18');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('22', 'is', '19');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('23', 'is', '20');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('24', 'is', '21');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('25', 'is', '22');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('26', 'is', '23');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('27', 'is', '24');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('28', 'is', '25');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('29', 'is', '26');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('30', 'is', '27');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('31', 'is', '28');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('32', 'is', '29');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('33', 'is', '30');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('34', 'is', '31');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('35', 'is', '32');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('36', 'is', '33');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('37', 'is', '34');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('38', 'is', '35');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('39', 'is', '36');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('40', 'is anything', '37');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('41', 'is', '38');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('42', 'is', '39');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('43', 'is anything', '40');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('44', 'is', '41');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('45', 'is', '42');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('46', 'is', '43');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('47', 'is', '44');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('48', 'is', '45');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('49', 'is', '46');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('50', 'is', '47');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('51', 'is', '48');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('52', 'is', '49');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('53', 'is', '50');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('54', 'is', '51');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('55', 'is', '52');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('56', 'is', '53');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('57', 'is', '54');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('58', 'is', '55');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('59', 'is', '56');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('60', 'is', '57');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('61', 'is', '58');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('62', 'is', '59');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('63', 'is', '60');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('64', 'is', '61');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('65', 'is', '62');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('66', 'is', '63');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('67', 'is anything', '64');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('68', 'is', '65');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('69', 'is', '66');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_weapon_bonus])
  VALUES ('70', 'is anything', '4');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_weapon_bonus])
  VALUES ('71', 'is anything', '5');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('72', 'is anything', '67');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('73', 'is', '68');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('74', 'is', '69');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('75', 'is anything', '70');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('76', 'is anything', '71');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('77', 'is', '72');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('78', 'is anything', '73');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('79', 'is', '74');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('80', 'is', '75');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('81', 'is', '76');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('82', 'is anything', '77');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('83', 'is', '78');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('84', 'is', '79');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('85', 'is', '80');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('86', 'is', '81');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('87', 'is', '82');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('88', 'is', '83');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('89', 'is', '84');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('90', 'is', '85');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('91', 'is', '86');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('92', 'is', '87');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('93', 'is', '88');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('94', 'is', '89');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('95', 'is', '90');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('96', 'is', '91');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('97', 'is', '92');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('98', 'is', '93');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('99', 'is', '94');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('100', 'is', '95');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('101', 'is', '96');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('102', 'is', '97');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('103', 'is', '98');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('104', 'is', '99');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('105', 'is', '100');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('106', 'is', '101');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('107', 'is', '102');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('108', 'is', '103');
INSERT INTO [Item1].[CharDB].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('109', 'is', '104');
IF EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[technique]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  DROP TABLE [Item1].[CharDB].[technique]
END;
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
  VALUES ('1', '2', '4', 'Arm Lock', 'A', '1', 'B230', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('2', '2', '4', 'Arm Lock', 'A', '1', 'B230', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('3', '2', '0', 'Back Kick', 'H', '2', 'B230,MA67', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('4', '2', '0', 'Choke Hold', 'H', '2', 'B230,MA69', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('5', '2', '0', 'Choke Hold', 'H', '2', 'B230,MA69', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('6', '2', '5', 'Disarming', 'H', '2', 'B230,MA70', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('7', '2', '5', 'Disarming', 'H', '2', 'B230', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('8', '2', '5', 'Disarming', 'H', '2', 'B230', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('9', '2', '5', 'Disarming', 'H', '2', 'B230', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('10', '2', '5', 'Disarming', 'H', '2', 'B230', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('11', '2', '5', 'Disarming', 'H', '2', 'B230', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('12', '2', '0', 'Dual-Weapon Attack', 'H', '2', 'B230,MA83', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('13', '2', '0', 'Dual-Weapon Attack', 'H', '2', 'B230,MA83', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('14', '2', '0', 'Dual-Weapon Attack', 'H', '2', 'B230,MA83', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('15', '2', '0', 'Dual-Weapon Attack', 'H', '2', 'B230,MA83', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('16', '2', '0', 'Elbow Strike', 'A', '1', 'B230,MA71', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('17', '2', '0', 'Elbow Strike', 'A', '1', 'B230,MA71', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('18', '2', '4', 'Feint', 'H', '2', 'B231,MA73', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('19', '2', '4', 'Feint', 'H', '2', 'B231', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('20', '2', '4', 'Feint', 'H', '2', 'B231', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('21', '2', '4', 'Feint', 'H', '2', 'B231', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('22', '2', '4', 'Feint', 'H', '2', 'B231', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('23', '2', '4', 'Feint', 'H', '2', 'B231', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('24', '2', '4', 'Feint', 'H', '2', 'B231', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('25', '2', '0', 'Finger Lock', 'H', '2', 'B231,MA73', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('26', '2', '0', 'Ground Fighting', 'H', '2', 'B231,MA73', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('27', '2', '0', 'Ground Fighting', 'H', '2', 'B231', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('28', '2', '0', 'Ground Fighting', 'H', '2', 'B231', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('29', '2', '0', 'Ground Fighting', 'H', '2', 'B231', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('30', '2', '0', 'Ground Fighting', 'H', '2', 'B231', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('31', '2', '0', 'Ground Fighting', 'H', '2', 'B231', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('32', '2', '0', 'Horse Archery', 'H', '2', 'B231,MA74', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('33', '2', '0', 'Impersonate', 'A', '1', 'B233', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('34', '2', '0', 'Jump Kick', 'H', '2', 'B231,MA75', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('35', '2', '0', 'Kicking', 'H', '2', 'B231,MA75', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('36', '2', '0', 'Kicking', 'H', '2', 'B231,MA75', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('37', '2', '0', 'Knee Strike', 'A', '1', 'B232,MA76', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('38', '2', '0', 'Knee Strike', 'A', '1', 'B232', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('39', '2', '0', 'Lifesaving', 'H', '2', 'B233', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('40', '2', 'Motion-Picture Camera', 'A', '1', 'B233', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('41', '2', '3', 'Neck Snap', 'H', '2', 'B232,MA77', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('42', '2', '0', 'No-Landing Extraction', 'H', '2', 'B233', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('43', '2', '0', 'Off-Hand Weapon Training', 'H', '2', 'B232', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('44', '2', '0', 'Off-Hand Weapon Training', 'H', '2', 'B232', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('45', '2', '0', 'Off-Hand Weapon Training', 'H', '2', 'B232', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('46', '2', '0', 'Off-Hand Weapon Training', 'H', '2', 'B232', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('47', '2', '5', 'Retain Weapon', 'H', '2', 'B232,MA78', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('48', '2', '5', 'Retain Weapon (@Ranged Weapon@)', 'H', '2', 'B232,MA78', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('49', '2', '5', 'Retain Weapon', 'H', '2', 'B232', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('50', '2', '5', 'Retain Weapon', 'H', '2', 'B232', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('51', '2', '5', 'Retain Weapon', 'H', '2', 'B232', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('52', '2', '0', 'Rope Up', 'A', '1', 'B233', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('53', '2', '0', 'Scaling', 'H', '2', 'B233', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('54', '2', '0', 'Set Trap', 'H', '2', 'B233', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('55', '2', '0', 'Slip Handcuffs', 'H', '2', 'B233', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('56', '2', '0', 'Sweep', 'H', '2', 'B232,MA81', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('57', '2', '0', 'Sweep', 'H', '2', 'B232,MA81', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('58', '2', '0', 'Sweep', 'H', '2', 'B232,MA81', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('59', '2', '0', 'Sweep', 'H', '2', 'B232,MA81', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('60', '2', '0', 'Sweeping Kick', 'H', '2', 'B232,MA81', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('61', '2', '0', 'Sweeping Kick', 'H', '2', 'B232,MA81', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('62', '2', '0', 'Sweeping Kick', 'H', '2', 'B232,MA81', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('63', '2', '0', 'Sweeping Kick', 'H', '2', 'B232,MA81', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('64', '2', '0', 'Whirlwind Attack', 'H', '2', 'B232,MA89', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('65', '2', '0', 'Whirlwind Attack', 'H', '2', 'B232,MA89', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('66', '2', '0', 'Whirlwind Attack', 'H', '2', 'B232,MA89', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('67', '2', '0', 'Whirlwind Attack', 'H', '2', 'B232,MA89', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('68', '2', '0', 'Whirlwind Attack', 'H', '2', 'B232,MA89', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('69', '2', '0', 'Whirlwind Attack', 'H', '2', 'B232,MA89', '1');
INSERT INTO [Item1].[CharDB].[technique] ([PrimaryKey], [version], [limit], [name], [difficulty], [points], [reference], [FK_skill_list])
  VALUES ('70', '2', '0', 'Work by Touch', 'H', '2', 'B233', '1');
IF EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[weapon_bonus]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  DROP TABLE [Item1].[CharDB].[weapon_bonus]
END;
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[weapon_bonus]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[CharDB].[weapon_bonus] (
    [PrimaryKey] VARCHAR(255)
   ,[FK_skill] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[CharDB].[weapon_bonus] ([PrimaryKey], [FK_skill])
  VALUES ('1', '103');
INSERT INTO [Item1].[CharDB].[weapon_bonus] ([PrimaryKey], [FK_skill])
  VALUES ('2', '103');
INSERT INTO [Item1].[CharDB].[weapon_bonus] ([PrimaryKey], [FK_skill])
  VALUES ('3', '106');
INSERT INTO [Item1].[CharDB].[weapon_bonus] ([PrimaryKey], [FK_skill])
  VALUES ('4', '357');
INSERT INTO [Item1].[CharDB].[weapon_bonus] ([PrimaryKey], [FK_skill])
  VALUES ('5', '357');
IF EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[when_tl]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  DROP TABLE [Item1].[CharDB].[when_tl]
END;
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[CharDB].[when_tl]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[CharDB].[when_tl] (
    [PrimaryKey] VARCHAR(255)
   ,[compare] VARCHAR(255)
   ,[FK_prereq_list] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[CharDB].[when_tl] ([PrimaryKey], [compare], [FK_prereq_list])
  VALUES ('1', 'at least', '14');
INSERT INTO [Item1].[CharDB].[when_tl] ([PrimaryKey], [compare], [FK_prereq_list])
  VALUES ('2', 'at least', '15');
INSERT INTO [Item1].[CharDB].[when_tl] ([PrimaryKey], [compare], [FK_prereq_list])
  VALUES ('3', 'at least', '16');
INSERT INTO [Item1].[CharDB].[when_tl] ([PrimaryKey], [compare], [FK_prereq_list])
  VALUES ('4', 'at least', '17');
INSERT INTO [Item1].[CharDB].[when_tl] ([PrimaryKey], [compare], [FK_prereq_list])
  VALUES ('5', 'at least', '18');
INSERT INTO [Item1].[CharDB].[when_tl] ([PrimaryKey], [compare], [FK_prereq_list])
  VALUES ('6', 'at least', '19');
INSERT INTO [Item1].[CharDB].[when_tl] ([PrimaryKey], [compare], [FK_prereq_list])
  VALUES ('7', 'at least', '20');
INSERT INTO [Item1].[CharDB].[when_tl] ([PrimaryKey], [compare], [FK_prereq_list])
  VALUES ('8', 'at least', '21');
INSERT INTO [Item1].[CharDB].[when_tl] ([PrimaryKey], [compare], [FK_prereq_list])
  VALUES ('9', 'at least', '23');
INSERT INTO [Item1].[CharDB].[when_tl] ([PrimaryKey], [compare], [FK_prereq_list])
  VALUES ('10', 'at least', '25');
INSERT INTO [Item1].[CharDB].[when_tl] ([PrimaryKey], [compare], [FK_prereq_list])
  VALUES ('11', 'at least', '26');
INSERT INTO [Item1].[CharDB].[when_tl] ([PrimaryKey], [compare], [FK_prereq_list])
  VALUES ('12', 'at least', '27');
INSERT INTO [Item1].[CharDB].[when_tl] ([PrimaryKey], [compare], [FK_prereq_list])
  VALUES ('13', 'at least', '29');
INSERT INTO [Item1].[CharDB].[when_tl] ([PrimaryKey], [compare], [FK_prereq_list])
  VALUES ('14', 'at least', '30');
INSERT INTO [Item1].[CharDB].[when_tl] ([PrimaryKey], [compare], [FK_prereq_list])
  VALUES ('15', 'at least', '31');
INSERT INTO [Item1].[CharDB].[when_tl] ([PrimaryKey], [compare], [FK_prereq_list])
  VALUES ('16', 'at least', '32');
INSERT INTO [Item1].[CharDB].[when_tl] ([PrimaryKey], [compare], [FK_prereq_list])
  VALUES ('17', 'at least', '33');
INSERT INTO [Item1].[CharDB].[when_tl] ([PrimaryKey], [compare], [FK_prereq_list])
  VALUES ('18', 'at least', '34');
INSERT INTO [Item1].[CharDB].[when_tl] ([PrimaryKey], [compare], [FK_prereq_list])
  VALUES ('19', 'at least', '36');
INSERT INTO [Item1].[CharDB].[when_tl] ([PrimaryKey], [compare], [FK_prereq_list])
  VALUES ('20', 'at least', '69');
INSERT INTO [Item1].[CharDB].[when_tl] ([PrimaryKey], [compare], [FK_prereq_list])
  VALUES ('21', 'at least', '76');