﻿IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[inv].[attribute]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[inv].[attribute] (
    [PrimaryKey] VARCHAR(255)
   ,[limitation] VARCHAR(255)
   ,[Text] VARCHAR(255)
   ,[FK_attribute_bonus] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[inv].[attribute] ([PrimaryKey], [limitation], [Text], [FK_attribute_bonus])
  VALUES ('1', 'striking only', 'st', '1');
INSERT INTO [Item1].[inv].[attribute] ([PrimaryKey], [limitation], [Text], [FK_attribute_bonus])
  VALUES ('2', 'lifting only', 'st', '2');
INSERT INTO [Item1].[inv].[attribute] ([PrimaryKey], [limitation], [Text], [FK_attribute_bonus])
  VALUES ('3', 'striking only', 'st', '3');
INSERT INTO [Item1].[inv].[attribute] ([PrimaryKey], [limitation], [Text], [FK_attribute_bonus])
  VALUES ('4', 'lifting only', 'st', '4');
INSERT INTO [Item1].[inv].[attribute] ([PrimaryKey], [limitation], [Text], [FK_attribute_bonus])
  VALUES ('5', 'striking only', 'st', '5');
INSERT INTO [Item1].[inv].[attribute] ([PrimaryKey], [limitation], [Text], [FK_attribute_bonus])
  VALUES ('6', 'lifting only', 'st', '6');
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[inv].[attribute_bonus]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[inv].[attribute_bonus] (
    [PrimaryKey] VARCHAR(255)
   ,[amount] VARCHAR(255)
   ,[attribute] VARCHAR(255)
   ,[FK_equipment] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [FK_equipment])
  VALUES ('1', '10', '49');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [FK_equipment])
  VALUES ('2', '10', '49');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [FK_equipment])
  VALUES ('3', '15', '50');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [FK_equipment])
  VALUES ('4', '15', '50');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [FK_equipment])
  VALUES ('5', '20', '51');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [FK_equipment])
  VALUES ('6', '20', '51');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('7', '3', 'dodge', '152');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('8', '3', 'parry', '152');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('9', '3', 'block', '152');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('10', '2', 'dodge', '181');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('11', '2', 'parry', '181');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('12', '2', 'block', '181');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('13', '3', 'dodge', '206');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('14', '3', 'parry', '206');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('15', '3', 'block', '206');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('16', '3', 'dodge', '207');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('17', '3', 'parry', '207');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('18', '3', 'block', '207');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('19', '1', 'dodge', '227');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('20', '1', 'parry', '227');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('21', '1', 'block', '227');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('22', '1', 'dodge', '228');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('23', '1', 'parry', '228');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('24', '1', 'block', '228');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('25', '1', 'dodge', '229');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('26', '1', 'parry', '229');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('27', '1', 'block', '229');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('28', '1', 'dodge', '232');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('29', '1', 'parry', '232');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('30', '1', 'block', '232');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('31', '2', 'dodge', '233');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('32', '2', 'parry', '233');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('33', '2', 'block', '233');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('34', '2', 'dodge', '250');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('35', '2', 'parry', '250');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('36', '2', 'block', '250');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('37', '2', 'dodge', '251');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('38', '2', 'parry', '251');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('39', '2', 'block', '251');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('40', '2', 'dodge', '252');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('41', '2', 'parry', '252');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('42', '2', 'block', '252');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('43', '2', 'dodge', '253');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('44', '2', 'parry', '253');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('45', '2', 'block', '253');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('46', '1', 'dodge', '370');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('47', '1', 'parry', '370');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('48', '1', 'block', '370');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('49', '1', 'dodge', '371');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('50', '1', 'parry', '371');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('51', '1', 'block', '371');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('52', '1', 'dodge', '374');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('53', '1', 'parry', '374');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('54', '1', 'block', '374');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('55', '1', 'dodge', '375');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('56', '1', 'parry', '375');
INSERT INTO [Item1].[inv].[attribute_bonus] ([PrimaryKey], [amount], [attribute], [FK_equipment])
  VALUES ('57', '1', 'block', '375');
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[inv].[categories]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[inv].[categories] (
    [PrimaryKey] VARCHAR(255)
   ,[category] VARCHAR(255)
   ,[FK_equipment] VARCHAR(255)
   ,[FK_equipment_container] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('1', 'Medical Gear', '1');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('2', 'Medical Gear', '2');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('3', 'Missile Weapon', '3');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('4', 'Missile Weapon', '4');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('5', 'Footwear', '5');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('6', 'Footwear', '6');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('7', 'Footwear', '7');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('8', 'Missile Weapon', '8');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('9', 'Missile Weapon', '9');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('10', 'Missile Weapon', '10');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('11', 'Missile Weapon', '11');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('12', 'Missile Weapon', '12');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('13', 'Missile Weapon', '13');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('14', 'Missile Weapon', '14');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('15', 'Missile Weapon', '15');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('16', 'Missile Weapon', '16');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('17', 'Missile Weapon', '17');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('18', 'Missile Weapon', '18');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('19', 'Missile Weapon', '19');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('20', 'Missile Weapon', '20');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('21', 'Missile Weapon', '21');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('22', 'Melee Weapon', '22');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment_container])
  VALUES ('23', 'Camping and Survival Gear', '1');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment_container])
  VALUES ('24', 'Camping and Survival Gear', '2');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('25', 'Tools', '23');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('26', 'Gloves', '24');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('27', 'Gloves', '25');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('28', 'Gloves', '26');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('29', 'Headgear', '27');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('30', 'Headgear', '28');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('31', 'Headgear', '29');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('32', 'Headgear', '30');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('33', 'Headgear', '31');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('34', 'Headgear', '32');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('35', 'Headgear', '33');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('36', 'Headgear', '34');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('37', 'Body Armor', '35');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('38', 'Body Armor', '36');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('39', 'Body Armor', '37');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('40', 'Body Armor', '38');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('41', 'Body Armor', '39');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('42', 'Body Armor', '40');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('43', 'Body Armor', '41');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('44', 'Medical Gear', '42');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('45', 'Headgear', '43');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('46', 'Melee Weapon', '44');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('47', 'Melee Weapon', '45');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('48', 'Melee Weapon', '46');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('49', 'Communications and Information Gear', '47');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('50', 'Missile Weapon', '48');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('51', 'Environment Suits', '49');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('52', 'Environment Suits', '50');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('53', 'Environment Suits', '51');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('54', 'Environment Suits', '52');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('55', 'Environment Suits', '53');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('56', 'Environment Suits', '54');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('57', 'Missile Weapon', '55');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('58', 'Optics and Sensors', '56');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('59', 'Equestrian Gear', '57');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('60', 'Melee Weapon', '58');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('61', 'Camping and Survival Gear', '59');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('62', 'Missile Weapon', '60');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('63', 'Missile Weapon', '61');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('64', 'Missile Weapon', '62');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [FK_equipment])
  VALUES ('65', '63');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('66', 'Missile Weapon', '64');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('67', 'Missile Weapon', '65');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('68', 'Missile Weapon', '66');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('69', 'Footwear', '67');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment_container])
  VALUES ('70', 'Camping and Survival Gear', '3');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('71', 'Melee Weapon', '68');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('72', 'Melee Weapon', '69');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('73', 'Limb Armor', '70');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('74', 'Body Armor', '71');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('75', 'Body Armor', '72');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('76', 'Limb Armor', '73');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('77', 'Headgear', '74');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('78', 'Headgear', '75');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('79', 'Body Armor', '76');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [FK_equipment])
  VALUES ('80', '77');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [FK_equipment])
  VALUES ('81', '78');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('82', 'Camping and Survival Gear', '79');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('83', 'Camping and Survival Gear', '80');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('84', 'Optics and Sensors', '81');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('85', 'Optics and Sensors', '82');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('86', 'Optics and Sensors', '83');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('87', 'Camping and Survival Gear', '84');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('88', 'Camping and Survival Gear', '85');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment_container])
  VALUES ('89', 'Camping and Survival Gear', '4');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('90', 'Missile Weapon', '86');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('91', 'Melee Weapon', '87');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('92', 'Melee Weapon', '88');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('93', 'Communications and Information Gear', '89');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('94', 'Melee Weapon', '90');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('95', 'Camping and Survival Gear', '91');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('96', 'Camping and Survival Gear', '92');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('97', 'Body Armor', '93');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('98', 'Headgear', '94');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('99', 'Gloves', '95');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('100', 'Limb Armor', '96');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('101', 'Environment Suits', '97');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('102', 'Environment Suits', '98');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('103', 'Environment Suits', '99');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('104', 'Environment Suits', '100');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('105', 'Environment Suits', '101');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('106', 'Environment Suits', '102');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('107', 'Camping and Survival Gear', '103');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('108', 'Missile Weapon', '104');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('109', 'Communications and Information Gear', '105');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('110', 'Communications and Information Gear', '106');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('111', 'Money: GURPS Standard Medieval Coins', '107');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('112', 'Camping and Survival Gear', '108');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('113', 'Camping and Survival Gear', '109');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('114', 'Medical Gear', '110');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('115', 'Medical Gear', '111');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('116', 'Missile Weapon', '112');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('117', 'Missile Weapon', '113');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('118', 'Missile Weapon', '114');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('119', 'Missile Weapon', '115');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('120', 'Missile Weapon', '116');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('121', 'Missile Weapon', '117');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('122', 'Missile Weapon', '118');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('123', 'Missile Weapon', '119');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('124', 'Missile Weapon', '120');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('125', 'Missile Weapon', '121');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('126', 'Missile Weapon', '122');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('127', 'Missile Weapon', '123');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('128', 'Missile Weapon', '124');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('129', 'Missile Weapon', '125');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [FK_equipment])
  VALUES ('130', '126');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [FK_equipment])
  VALUES ('131', '127');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('132', 'Melee Weapon', '128');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('133', 'Tools', '129');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('134', 'Tools', '130');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [FK_equipment])
  VALUES ('135', '131');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('136', 'Missile Weapon', '132');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('137', 'Missile Weapon', '133');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [FK_equipment])
  VALUES ('138', '134');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('139', 'Missile Weapon', '135');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('140', 'Body Armor', '136');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('141', 'Communications and Information Gear', '137');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('142', 'Weapon and Combat Accessories', '138');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('143', 'Missile Weapon', '139');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('144', 'Missile Weapon', '140');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [FK_equipment])
  VALUES ('145', '141');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('146', 'Headgear', '142');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('147', 'Medical Gear', '143');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('148', 'Camping and Survival Gear', '144');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('149', 'Melee Weapon', '145');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('150', 'Body Armor', '146');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('151', 'Missile Weapon', '147');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('152', 'Camping and Survival Gear', '148');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('153', 'Camping and Survival Gear', '149');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('154', 'Missile Weapon', '150');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('155', 'Missile Weapon', '151');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('156', 'Shield', '152');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('157', 'Melee Weapon', '153');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('158', 'Headgear', '154');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('159', 'Headgear', '155');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('160', 'Body Armor', '156');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('161', 'Body Armor', '157');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('162', 'Body Armor', '158');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('163', 'Body Armor', '159');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('164', 'Melee Weapon', '160');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('165', 'Headgear', '161');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('166', 'Camping and Survival Gear', '162');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('167', 'Gloves', '163');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('168', 'Missile Weapon', '164');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('169', 'Missile Weapon', '165');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('170', 'Melee Weapon', '166');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('171', 'Money: GURPS Standard Medieval Coins', '167');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('172', 'Camping and Survival Gear', '168');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('173', 'Camping and Survival Gear', '169');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('174', 'Melee Weapon', '170');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('175', 'Headgear', '171');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('176', 'Melee Weapon', '172');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('177', 'Camping and Survival Gear', '173');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('178', 'Missile Weapon', '174');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('179', 'Melee Weapon', '175');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [FK_equipment])
  VALUES ('180', '176');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('181', 'Missile Weapon', '177');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('182', 'Missile Weapon', '178');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [FK_equipment])
  VALUES ('183', '179');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('184', 'Missile Weapon', '180');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('185', 'Clothing', '181');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('186', 'Gloves', '182');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('187', 'Limb Armor', '183');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('188', 'Limb Armor', '184');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('189', 'Limb Armor', '185');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('190', 'Limb Armor', '186');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('191', 'Body Armor', '187');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment_container])
  VALUES ('192', 'Weapon and Combat Accessories', '5');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('193', 'Missile Weapon', '188');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('194', 'Missile Weapon', '189');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment_container])
  VALUES ('195', 'Weapon and Combat Accessories', '6');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment_container])
  VALUES ('196', 'Weapon and Combat Accessories', '7');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [FK_equipment])
  VALUES ('197', '190');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('198', 'Equestrian Gear', '191');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('199', 'Missile Weapon', '192');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('200', 'Missile Weapon', '193');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('201', 'Missile Weapon', '194');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('202', 'Camping and Survival Gear', '195');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [FK_equipment])
  VALUES ('203', '196');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('204', 'Melee Weapon', '197');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('205', 'Melee Weapon', '198');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('206', 'Camping and Survival Gear', '199');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('207', 'Tools', '200');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('208', 'Melee Weapon', '201');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('209', 'Melee Weapon', '202');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('210', 'Camping and Survival Gear', '203');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment_container])
  VALUES ('211', 'Weapon and Combat Accessories', '8');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment_container])
  VALUES ('212', 'Weapon and Combat Accessories', '9');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [FK_equipment])
  VALUES ('213', '204');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('214', 'Missile Weapon', '205');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('215', 'Shield', '206');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('216', 'Shield', '207');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('217', 'Missile Weapon', '208');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [FK_equipment])
  VALUES ('218', '209');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('219', 'Missile Weapon', '210');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('220', 'Missile Weapon', '211');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('221', 'Weapon and Combat Accessories', '212');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('222', 'Missile Weapon', '213');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('223', 'Missile Weapon', '214');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [FK_equipment])
  VALUES ('224', '215');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [FK_equipment])
  VALUES ('225', '216');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('226', 'Body Armor', '217');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('227', 'Headgear', '218');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('228', 'Gloves', '219');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('229', 'Headgear', '220');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('230', 'Body Armor', '221');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('231', 'Limb Armor', '222');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('232', 'Limb Armor', '223');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('233', 'Headgear', '224');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('234', 'Missile Weapon', '225');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('235', 'Camping and Survival Gear', '226');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('236', 'Shield', '227');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('237', 'Shield', '228');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('238', 'Clothing', '229');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('239', 'Melee Weapon', '230');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('240', 'Body Armor', '231');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('241', 'Shield', '232');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('242', 'Shield', '233');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('243', 'Missile Weapon', '234');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [FK_equipment])
  VALUES ('244', '235');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('245', 'Melee Weapon', '236');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('246', 'Missile Weapon', '237');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('247', 'Body Armor', '238');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [FK_equipment])
  VALUES ('248', '239');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('249', 'Missile Weapon', '240');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('250', 'Headgear', '241');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('251', 'Body Armor', '242');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('252', 'Limb Armor', '243');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('253', 'Body Armor', '244');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('254', 'Limb Armor', '245');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('255', 'Camping and Survival Gear', '246');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('256', 'Camping and Survival Gear', '247');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('257', 'Missile Weapon', '248');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('258', 'Melee Weapon', '249');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('259', 'Shield', '250');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('260', 'Shield', '251');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('261', 'Shield', '252');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('262', 'Shield', '253');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('263', 'Missile Weapon', '254');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('264', 'Optics and Sensors', '255');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('265', 'Optics and Sensors', '256');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('266', 'Communications and Information Gear', '257');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('267', 'Communications and Information Gear', '258');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('268', 'Communications and Information Gear', '259');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('269', 'Melee Weapon', '260');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('270', 'Melee Weapon', '261');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('271', 'Melee Weapon', '262');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('272', 'Melee Weapon', '263');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('273', 'Melee Weapon', '264');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [FK_equipment])
  VALUES ('274', '265');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('275', 'Environment Suits', '266');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('276', 'Optics and Sensors', '267');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('277', 'Melee Weapon', '268');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('278', 'Camping and Survival Gear', '269');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('279', 'Camping and Survival Gear', '270');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('280', 'Missile Weapon', '271');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('281', 'Camping and Survival Gear', '272');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('282', 'Melee Weapon', '273');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('283', 'Tools', '274');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('284', 'Missile Weapon', '275');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('285', 'Missile Weapon', '276');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('286', 'Missile Weapon', '277');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('287', 'Missile Weapon', '278');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('288', 'Missile Weapon', '279');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('289', 'Missile Weapon', '280');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('290', 'Missile Weapon', '281');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('291', 'Missile Weapon', '282');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('292', 'Missile Weapon', '283');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('293', 'Missile Weapon', '284');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('294', 'Missile Weapon', '285');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('295', 'Missile Weapon', '286');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('296', 'Missile Weapon', '287');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('297', 'Missile Weapon', '288');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('298', 'Limb Armor', '289');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('299', 'Limb Armor', '290');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('300', 'Tools', '291');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('301', 'Tools', '292');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('302', 'Camping and Survival Gear', '293');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('303', 'Camping and Survival Gear', '294');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('304', 'Melee Weapon', '295');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('305', 'Tools', '296');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('306', 'Tools', '297');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('307', 'Tools', '298');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('308', 'Tools', '299');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('309', 'Tools', '300');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('310', 'Tools', '301');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('311', 'Tools', '302');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('312', 'Headgear', '303');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment_container])
  VALUES ('313', 'Camping and Survival Gear', '10');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('314', 'Missile Weapon', '304');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('315', 'Missile Weapon', '305');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('316', 'Missile Weapon', '306');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('317', 'Missile Weapon', '307');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('318', 'Missile Weapon', '308');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('319', 'Missile Weapon', '309');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('320', 'Missile Weapon', '310');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('321', 'Missile Weapon', '311');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('322', 'Missile Weapon', '312');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('323', 'Missile Weapon', '313');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('324', 'Missile Weapon', '314');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('325', 'Missile Weapon', '315');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('326', 'Missile Weapon', '316');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('327', 'Missile Weapon', '317');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('328', 'Missile Weapon', '318');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment_container])
  VALUES ('329', 'Camping and Survival Gear', '11');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('330', 'Melee Weapon', '319');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('331', 'Melee Weapon', '320');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('332', 'Communications and Information Gear', '321');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('333', 'Communications and Information Gear', '322');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('334', 'Communications and Information Gear', '323');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('335', 'Communications and Information Gear', '324');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('336', 'Melee Weapon', '325');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('337', 'Missile Weapon', '326');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('338', 'Missile Weapon', '327');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('339', 'Footwear', '328');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('340', 'Missile Weapon', '329');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('341', 'Missile Weapon', '330');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('342', 'Missile Weapon', '331');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('343', 'Missile Weapon', '332');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('344', 'Missile Weapon', '333');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('345', 'Camping and Survival Gear', '334');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('346', 'Camping and Survival Gear', '335');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('347', 'Camping and Survival Gear', '336');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('348', 'Camping and Survival Gear', '337');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('349', 'Missile Weapon', '338');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('350', 'Melee Weapon', '339');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('351', 'Equestrian Gear', '340');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment_container])
  VALUES ('352', 'Equestrian Gear', '12');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('353', 'Missile Weapon', '341');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('354', 'Footwear', '342');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('355', 'Melee Weapon', '343');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('356', 'Communications and Information Gear', '344');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('357', 'Tools', '345');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('358', 'Missile Weapon', '346');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('359', 'Body Armor', '347');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('360', 'Limb Armor', '348');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('361', 'Limb Armor', '349');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('362', 'Weapon and Combat Accessories', '350');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('363', 'Weapon and Combat Accessories', '351');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('364', 'Missile Weapon', '352');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('365', 'Camping and Survival Gear', '353');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('366', 'Melee Weapon', '354');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('367', 'Missile Weapon', '355');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('368', 'Footwear', '356');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('369', 'Missile Weapon', '357');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('370', 'Melee Weapon', '358');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('371', 'Melee Weapon', '359');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [FK_equipment])
  VALUES ('372', '360');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment_container])
  VALUES ('373', 'Weapon and Combat Accessories', '13');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('374', 'Tools', '361');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('375', 'Missile Weapon', '362');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('376', 'Weapon and Combat Accessories', '363');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('377', 'Money: GURPS Standard Medieval Coins', '364');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('378', 'Camping and Survival Gear', '365');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('379', 'Camping and Survival Gear', '366');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('380', 'Camping and Survival Gear', '367');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('381', 'Missile Weapon', '368');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [FK_equipment])
  VALUES ('382', '369');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('383', 'Shield', '370');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('384', 'Shield', '371');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [FK_equipment])
  VALUES ('385', '372');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [FK_equipment])
  VALUES ('386', '373');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('387', 'Shield', '374');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('388', 'Shield', '375');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('389', 'Melee Weapon', '376');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('390', 'Missile Weapon', '377');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('391', 'Missile Weapon', '378');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('392', 'Missile Weapon', '379');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('393', 'Missile Weapon', '380');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('394', 'Missile Weapon', '381');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('395', 'Footwear', '382');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('396', 'Environment Suits', '383');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('397', 'Environment Suits', '384');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('398', 'Environment Suits', '385');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('399', 'Environment Suits', '386');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('400', 'Environment Suits', '387');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('401', 'Environment Suits', '388');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('402', 'Environment Suits', '389');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('403', 'Environment Suits', '390');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [FK_equipment])
  VALUES ('404', '391');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('405', 'Tools', '392');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('406', 'Equestrian Gear', '393');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('407', 'Optics and Sensors', '394');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('408', 'Missile Weapon', '395');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('409', 'Body Armor', '396');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('410', 'Body Armor', '397');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('411', 'Body Armor', '398');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('412', 'Headgear', '399');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('413', 'Equestrian Gear', '400');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('414', 'Limb Armor', '401');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('415', 'Missile Weapon', '402');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('416', 'Tools', '403');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment_container])
  VALUES ('417', 'Camping and Survival Gear', '14');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('418', 'Medical Gear', '404');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('419', 'Body Armor', '405');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('420', 'Body Armor', '406');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('421', 'Body Armor', '407');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('422', 'Body Armor', '408');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('423', 'Body Armor', '409');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('424', 'Body Armor', '410');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('425', 'Body Armor', '411');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('426', 'Body Armor', '412');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('427', 'Optics and Sensors', '413');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('428', 'Camping and Survival Gear', '414');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('429', 'Camping and Survival Gear', '415');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('430', 'Camping and Survival Gear', '416');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('431', 'Camping and Survival Gear', '417');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment_container])
  VALUES ('432', 'Camping and Survival Gear', '15');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [FK_equipment])
  VALUES ('433', '418');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('434', 'Melee Weapon', '419');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('435', 'Melee Weapon', '420');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('436', 'Melee Weapon', '421');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('437', 'Melee Weapon', '422');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('438', 'Camping and Survival Gear', '423');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('439', 'Communications and Information Gear', '424');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('440', 'Camping and Survival Gear', '425');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('441', 'Communications and Information Gear', '426');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('442', 'Communications and Information Gear', '427');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('443', 'Missile Weapon', '428');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('444', 'Environment Suits', '429');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('445', 'Environment Suits', '430');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('446', 'Environment Suits', '431');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('447', 'Environment Suits', '432');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('448', 'Environment Suits', '433');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('449', 'Environment Suits', '434');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('450', 'Equestrian Gear', '435');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('451', 'Melee Weapon', '436');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('452', 'Camping and Survival Gear', '437');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('453', 'Communications and Information Gear', '438');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment_container])
  VALUES ('454', 'Weapon and Combat Accessories', '16');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('455', 'Missile Weapon', '439');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment_container])
  VALUES ('456', 'Tools', '17');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('457', 'Tools', '440');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('458', 'Melee Weapon', '441');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('459', 'Melee Weapon', '442');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('460', 'Melee Weapon', '443');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('461', 'Melee Weapon', '444');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('462', 'Melee Weapon', '445');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('463', 'Melee Weapon', '446');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('464', 'Melee Weapon', '447');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment_container])
  VALUES ('465', 'Camping and Survival Gear', '18');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [FK_equipment])
  VALUES ('466', '448');
INSERT INTO [Item1].[inv].[categories] ([PrimaryKey], [category], [FK_equipment])
  VALUES ('467', 'Camping and Survival Gear', '449');
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[inv].[category]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[inv].[category] (
    [PrimaryKey] VARCHAR(255)
   ,[category] VARCHAR(255)
   ,[FK_categories] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('1', 'Ammunition', '65');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('2', 'Missile Weapon', '65');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('3', 'Law-Enforcement', '80');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('4', 'Thief', '80');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('5', 'and Spy Gear', '80');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('6', 'Law-Enforcement', '81');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('7', 'Thief', '81');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('8', 'and Spy Gear', '81');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('9', 'Ammunition', '130');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('10', 'Missile Weapon', '130');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('11', 'Melee Weapon', '131');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('12', 'Missile Weapon', '131');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('13', 'Tools', '131');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('14', 'Melee Weapon', '135');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('15', 'Missile Weapon', '135');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('16', 'Law-Enforcement', '138');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('17', 'Thief', '138');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('18', 'and Spy Gear', '138');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('19', 'Law-Enforcement', '145');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('20', 'Thief', '145');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('21', 'and Spy Gear', '145');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('22', 'Law-Enforcement', '180');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('23', 'Thief', '180');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('24', 'and Spy Gear', '180');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('25', 'Melee Weapon', '183');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('26', 'Missile Weapon', '183');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('27', 'Law-Enforcement', '197');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('28', 'Thief', '197');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('29', 'and Spy Gear', '197');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('30', 'Melee Weapon', '203');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('31', 'Missile Weapon', '203');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('32', 'Melee Weapon', '213');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('33', 'Missile Weapon', '213');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('34', 'Law-Enforcement', '218');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('35', 'Thief', '218');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('36', 'and Spy Gear', '218');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('37', 'Ammunition', '224');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('38', 'Missile Weapon', '224');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('39', 'Ammunition', '225');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('40', 'Missile Weapon', '225');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('41', 'Law-Enforcement', '244');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('42', 'Thief', '244');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('43', 'and Spy Gear', '244');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('44', 'Melee Weapon', '248');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('45', 'Missile Weapon', '248');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('46', 'Law-Enforcement', '274');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('47', 'Thief', '274');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('48', 'and Spy Gear', '274');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('49', 'Law-Enforcement', '372');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('50', 'Thief', '372');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('51', 'and Spy Gear', '372');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('52', 'Ammunition', '382');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('53', 'Missile Weapon', '382');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('54', 'Melee Weapon', '385');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('55', 'Missile Weapon', '385');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('56', 'Melee Weapon', '386');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('57', 'Missile Weapon', '386');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('58', 'Melee Weapon', '404');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('59', 'Missile Weapon', '404');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('60', 'Melee Weapon', '433');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('61', 'Missile Weapon', '433');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('62', 'Melee Weapon', '466');
INSERT INTO [Item1].[inv].[category] ([PrimaryKey], [category], [FK_categories])
  VALUES ('63', 'Missile Weapon', '466');
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[inv].[contained_weight_prereq]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[inv].[contained_weight_prereq] (
    [PrimaryKey] VARCHAR(255)
   ,[has] VARCHAR(255)
   ,[compare] VARCHAR(255)
   ,[Text] VARCHAR(255)
   ,[FK_prereq_list] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[inv].[contained_weight_prereq] ([PrimaryKey], [has], [compare], [Text], [FK_prereq_list])
  VALUES ('1', 'yes', 'at most', '100 lb', '1');
INSERT INTO [Item1].[inv].[contained_weight_prereq] ([PrimaryKey], [has], [compare], [Text], [FK_prereq_list])
  VALUES ('2', 'yes', 'at most', '40 lb', '2');
INSERT INTO [Item1].[inv].[contained_weight_prereq] ([PrimaryKey], [has], [compare], [Text], [FK_prereq_list])
  VALUES ('3', 'yes', 'at most', '2 lb', '6');
INSERT INTO [Item1].[inv].[contained_weight_prereq] ([PrimaryKey], [has], [compare], [Text], [FK_prereq_list])
  VALUES ('4', 'yes', 'at most', '2 lb', '7');
INSERT INTO [Item1].[inv].[contained_weight_prereq] ([PrimaryKey], [has], [compare], [Text], [FK_prereq_list])
  VALUES ('5', 'yes', 'at most', '3 lb', '12');
INSERT INTO [Item1].[inv].[contained_weight_prereq] ([PrimaryKey], [has], [compare], [Text], [FK_prereq_list])
  VALUES ('6', 'yes', 'at most', '1 lb', '13');
INSERT INTO [Item1].[inv].[contained_weight_prereq] ([PrimaryKey], [has], [compare], [Text], [FK_prereq_list])
  VALUES ('7', 'yes', 'at most', '40 lb', '14');
INSERT INTO [Item1].[inv].[contained_weight_prereq] ([PrimaryKey], [has], [compare], [Text], [FK_prereq_list])
  VALUES ('8', 'yes', 'at most', '100 lb', '19');
INSERT INTO [Item1].[inv].[contained_weight_prereq] ([PrimaryKey], [has], [compare], [Text], [FK_prereq_list])
  VALUES ('9', 'yes', 'at most', '1 lb', '23');
INSERT INTO [Item1].[inv].[contained_weight_prereq] ([PrimaryKey], [has], [compare], [Text], [FK_prereq_list])
  VALUES ('10', 'yes', 'at most', '350 lb', '27');
INSERT INTO [Item1].[inv].[contained_weight_prereq] ([PrimaryKey], [has], [compare], [Text], [FK_prereq_list])
  VALUES ('11', 'yes', 'at most', '8 lb', '28');
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[inv].[default]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[inv].[default] (
    [PrimaryKey] VARCHAR(255)
   ,[type] VARCHAR(255)
   ,[modifier] VARCHAR(255)
   ,[name] VARCHAR(255)
   ,[specialization] VARCHAR(255)
   ,[FK_melee_weapon] VARCHAR(255)
   ,[FK_ranged_weapon] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('1', 'DX', '-4', '1');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('2', 'Skill', '-2', 'Guns', 'Pistol', '1');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('3', 'Skill', '0', 'Guns', 'Rifle', '1');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('4', 'Skill', '-2', 'Guns', 'Shotgun', '1');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('5', 'Skill', '-2', 'Guns', 'Light Machine Gun', '1');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('6', 'Skill', '-2', 'Guns', 'Submachine Gun', '1');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('7', 'Skill', '-2', 'Guns', 'Musket', '1');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('8', 'Skill', '-4', 'Guns', 'Grenade Launcher', '1');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('9', 'Skill', '-4', 'Guns', 'Gyroc', '1');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('10', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '1');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('11', 'Skill', '0', 'Gun!', '1');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('12', 'DX', '-4', '2');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('13', 'Skill', '-2', 'Guns', 'Pistol', '2');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('14', 'Skill', '0', 'Guns', 'Rifle', '2');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('15', 'Skill', '-2', 'Guns', 'Shotgun', '2');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('16', 'Skill', '-2', 'Guns', 'Light Machine Gun', '2');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('17', 'Skill', '-2', 'Guns', 'Submachine Gun', '2');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('18', 'Skill', '-2', 'Guns', 'Musket', '2');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('19', 'Skill', '-4', 'Guns', 'Grenade Launcher', '2');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('20', 'Skill', '-4', 'Guns', 'Gyroc', '2');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('21', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '2');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('22', 'Skill', '0', 'Gun!', '2');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('23', 'DX', '-4', '3');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('24', 'Skill', '-2', 'Guns', 'Pistol', '3');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('25', 'Skill', '0', 'Guns', 'Rifle', '3');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('26', 'Skill', '-2', 'Guns', 'Shotgun', '3');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('27', 'Skill', '-2', 'Guns', 'Light Machine Gun', '3');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('28', 'Skill', '-2', 'Guns', 'Submachine Gun', '3');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('29', 'Skill', '-2', 'Guns', 'Musket', '3');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('30', 'Skill', '-4', 'Guns', 'Grenade Launcher', '3');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('31', 'Skill', '-4', 'Guns', 'Gyroc', '3');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('32', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '3');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('33', 'Skill', '0', 'Gun!', '3');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('34', 'IQ', '-5', '4');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('35', 'Skill', '0', 'Artillery', 'Guided Missile', '4');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('36', 'DX', '-5', '5');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('37', 'Skill', '0', 'Spear Thrower', '5');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('38', 'Skill', '-4', 'Thrown Weapon (Spear)', '5');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('39', 'DX', '-5', '6');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('40', 'Skill', '0', 'Spear Thrower', '6');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('41', 'Skill', '-4', 'Thrown Weapon (Spear)', '6');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('42', 'DX', '-4', '7');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('43', 'Skill', '0', 'Guns', 'Pistol', '7');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('44', 'Skill', '-2', 'Guns', 'Rifle', '7');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('45', 'Skill', '-2', 'Guns', 'Shotgun', '7');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('46', 'Skill', '-2', 'Guns', 'Light Machine Gun', '7');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('47', 'Skill', '-2', 'Guns', 'Submachine Gun', '7');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('48', 'Skill', '-2', 'Guns', 'Musket', '7');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('49', 'Skill', '-4', 'Guns', 'Grenade Launcher', '7');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('50', 'Skill', '-4', 'Guns', 'Gyroc', '7');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('51', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '7');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('52', 'Skill', '0', 'Gun!', '7');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('53', 'DX', '-4', '8');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('54', 'Skill', '0', 'Guns', 'Pistol', '8');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('55', 'Skill', '-2', 'Guns', 'Rifle', '8');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('56', 'Skill', '-2', 'Guns', 'Shotgun', '8');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('57', 'Skill', '-2', 'Guns', 'Light Machine Gun', '8');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('58', 'Skill', '-2', 'Guns', 'Submachine Gun', '8');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('59', 'Skill', '-2', 'Guns', 'Musket', '8');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('60', 'Skill', '-4', 'Guns', 'Grenade Launcher', '8');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('61', 'Skill', '-4', 'Guns', 'Gyroc', '8');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('62', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '8');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('63', 'Skill', '0', 'Gun!', '8');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('64', 'DX', '-4', '9');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('65', 'Skill', '0', 'Guns', 'Pistol', '9');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('66', 'Skill', '-2', 'Guns', 'Rifle', '9');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('67', 'Skill', '-2', 'Guns', 'Shotgun', '9');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('68', 'Skill', '-2', 'Guns', 'Light Machine Gun', '9');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('69', 'Skill', '-2', 'Guns', 'Submachine Gun', '9');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('70', 'Skill', '-2', 'Guns', 'Musket', '9');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('71', 'Skill', '-4', 'Guns', 'Grenade Launcher', '9');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('72', 'Skill', '-4', 'Guns', 'Gyroc', '9');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('73', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '9');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('74', 'Skill', '0', 'Gun!', '9');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('75', 'DX', '-4', '10');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('76', 'Skill', '0', 'Guns', 'Pistol', '10');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('77', 'Skill', '-2', 'Guns', 'Rifle', '10');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('78', 'Skill', '-2', 'Guns', 'Shotgun', '10');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('79', 'Skill', '-2', 'Guns', 'Light Machine Gun', '10');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('80', 'Skill', '-2', 'Guns', 'Submachine Gun', '10');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('81', 'Skill', '-2', 'Guns', 'Musket', '10');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('82', 'Skill', '-4', 'Guns', 'Grenade Launcher', '10');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('83', 'Skill', '-4', 'Guns', 'Gyroc', '10');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('84', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '10');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('85', 'Skill', '0', 'Gun!', '10');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('86', 'DX', '-4', '11');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('87', 'Skill', '0', 'Guns', 'Pistol', '11');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('88', 'Skill', '-2', 'Guns', 'Rifle', '11');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('89', 'Skill', '-2', 'Guns', 'Shotgun', '11');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('90', 'Skill', '-2', 'Guns', 'Light Machine Gun', '11');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('91', 'Skill', '-2', 'Guns', 'Submachine Gun', '11');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('92', 'Skill', '-2', 'Guns', 'Musket', '11');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('93', 'Skill', '-4', 'Guns', 'Grenade Launcher', '11');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('94', 'Skill', '-4', 'Guns', 'Gyroc', '11');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('95', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '11');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('96', 'Skill', '0', 'Gun!', '11');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('97', 'DX', '-4', '12');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('98', 'Skill', '0', 'Guns', 'Pistol', '12');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('99', 'Skill', '-2', 'Guns', 'Rifle', '12');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('100', 'Skill', '-2', 'Guns', 'Shotgun', '12');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('101', 'Skill', '-2', 'Guns', 'Light Machine Gun', '12');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('102', 'Skill', '-2', 'Guns', 'Submachine Gun', '12');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('103', 'Skill', '-2', 'Guns', 'Musket', '12');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('104', 'Skill', '-4', 'Guns', 'Grenade Launcher', '12');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('105', 'Skill', '-4', 'Guns', 'Gyroc', '12');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('106', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '12');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('107', 'Skill', '0', 'Gun!', '12');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('108', 'DX', '-4', '13');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('109', 'Skill', '-2', 'Guns', 'Pistol', '13');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('110', 'Skill', '-2', 'Guns', 'Rifle', '13');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('111', 'Skill', '-2', 'Guns', 'Shotgun', '13');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('112', 'Skill', '0', 'Guns', 'Light Machine Gun', '13');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('113', 'Skill', '-2', 'Guns', 'Submachine Gun', '13');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('114', 'Skill', '-2', 'Guns', 'Musket', '13');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('115', 'Skill', '-4', 'Guns', 'Grenade Launcher', '13');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('116', 'Skill', '-4', 'Guns', 'Gyroc', '13');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('117', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '13');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('118', 'Skill', '0', 'Gun!', '13');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('119', 'DX', '-4', '14');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('120', 'Skill', '-2', 'Guns', 'Pistol', '14');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('121', 'Skill', '-2', 'Guns', 'Rifle', '14');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('122', 'Skill', '0', 'Guns', 'Shotgun', '14');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('123', 'Skill', '-2', 'Guns', 'Light Machine Gun', '14');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('124', 'Skill', '-2', 'Guns', 'Submachine Gun', '14');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('125', 'Skill', '-2', 'Guns', 'Musket', '14');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('126', 'Skill', '-4', 'Guns', 'Grenade Launcher', '14');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('127', 'Skill', '-4', 'Guns', 'Gyroc', '14');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('128', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '14');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('129', 'Skill', '0', 'Gun!', '14');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('130', 'DX', '-5', '1');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('131', 'Skill', '0', 'Axe/Mace', '1');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('132', 'Skill', '-4', 'Flail', '1');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('133', 'Skill', '-3', 'Two-Handed Axe/Mace', '1');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('134', 'DX', '-5', '2');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('135', 'Skill', '-4', 'Force Sword', '2');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('136', 'Skill', '0', 'Broadsword', '2');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('137', 'Skill', '-4', 'Rapier', '2');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('138', 'Skill', '-4', 'Saber', '2');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('139', 'Skill', '-2', 'Shortsword', '2');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('140', 'Skill', '-4', 'Two-Handed Sword', '2');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('141', 'Skill', '0', 'Sword!', '2');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('142', 'DX', '-5', '3');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('143', 'Skill', '-4', 'Force Sword', '3');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('144', 'Skill', '0', 'Broadsword', '3');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('145', 'Skill', '-4', 'Rapier', '3');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('146', 'Skill', '-4', 'Saber', '3');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('147', 'Skill', '-2', 'Shortsword', '3');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('148', 'Skill', '-4', 'Two-Handed Sword', '3');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('149', 'Skill', '0', 'Sword!', '3');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('150', 'DX', '-5', '4');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('151', 'Skill', '0', 'Two-Handed Sword', '4');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('152', 'Skill', '-4', 'Broadsword', '4');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('153', 'Skill', '-4', 'Force Sword', '4');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('154', 'Skill', '0', 'Sword!', '4');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('155', 'DX', '-5', '5');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('156', 'Skill', '0', 'Two-Handed Sword', '5');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('157', 'Skill', '-4', 'Broadsword', '5');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('158', 'Skill', '-4', 'Force Sword', '5');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('159', 'Skill', '0', 'Sword!', '5');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('160', 'DX', '-5', '6');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('161', 'Skill', '0', 'Shortsword', '6');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('162', 'Skill', '-2', 'Broadsword', '6');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('163', 'Skill', '-4', 'Force Sword', '6');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('164', 'Skill', '-3', 'Jitte/Sai', '6');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('165', 'Skill', '-4', 'Knife', '6');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('166', 'Skill', '-4', 'Saber', '6');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('167', 'Skill', '-4', 'Smallsword', '6');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('168', 'Skill', '-3', 'Tonfa', '6');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('169', 'Skill', '0', 'Sword!', '6');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('170', 'DX', '-5', '7');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('171', 'Skill', '0', 'Shortsword', '7');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('172', 'Skill', '-2', 'Broadsword', '7');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('173', 'Skill', '-4', 'Force Sword', '7');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('174', 'Skill', '-3', 'Jitte/Sai', '7');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('175', 'Skill', '-4', 'Knife', '7');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('176', 'Skill', '-4', 'Saber', '7');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('177', 'Skill', '-4', 'Smallsword', '7');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('178', 'Skill', '-3', 'Tonfa', '7');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('179', 'Skill', '0', 'Sword!', '7');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('180', 'DX', '-4', '15');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('181', 'Skill', '-2', 'Guns', 'Pistol', '15');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('182', 'Skill', '0', 'Guns', 'Rifle', '15');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('183', 'Skill', '-2', 'Guns', 'Shotgun', '15');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('184', 'Skill', '-2', 'Guns', 'Light Machine Gun', '15');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('185', 'Skill', '-2', 'Guns', 'Submachine Gun', '15');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('186', 'Skill', '-2', 'Guns', 'Musket', '15');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('187', 'Skill', '-4', 'Guns', 'Grenade Launcher', '15');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('188', 'Skill', '-4', 'Guns', 'Gyroc', '15');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('189', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '15');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('190', 'Skill', '0', 'Gun!', '15');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('191', 'DX', '-4', '16');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('192', 'Skill', '-4', 'Guns', 'Pistol', '16');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('193', 'Skill', '-4', 'Guns', 'Rifle', '16');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('194', 'Skill', '-4', 'Guns', 'Shotgun', '16');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('195', 'Skill', '-4', 'Guns', 'Light Machine Gun', '16');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('196', 'Skill', '-4', 'Guns', 'Submachine Gun', '16');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('197', 'Skill', '-4', 'Guns', 'Musket', '16');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('198', 'Skill', '-4', 'Guns', 'Grenade Launcher', '16');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('199', 'Skill', '-4', 'Guns', 'Gyroc', '16');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('200', 'Skill', '0', 'Guns', 'Light Anti-Armor Weapon', '16');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('201', 'Skill', '0', 'Gun!', '16');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('202', 'Skill', '0', 'Brawling', '8');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('203', 'DX', '0', '8');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('204', 'DX', '-4', '17');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('205', 'Skill', '-4', 'Guns', 'Pistol', '17');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('206', 'Skill', '0', 'Beam Weapons', 'Pistol', '17');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('207', 'Skill', '-4', 'Beam Weapons', 'Rifle', '17');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('208', 'Skill', '-4', 'Beam Weapons', 'Projector', '17');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('209', 'Skill', '0', 'Gun!', '17');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('210', 'DX', '-4', '18');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('211', 'Skill', '-4', 'Guns', 'Rifle', '18');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('212', 'Skill', '-4', 'Beam Weapons', 'Pistol', '18');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('213', 'Skill', '0', 'Beam Weapons', 'Rifle', '18');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('214', 'Skill', '-4', 'Beam Weapons', 'Projector', '18');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('215', 'Skill', '0', 'Gun!', '18');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('216', 'DX', '-6', '19');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('217', 'Skill', '0', 'Blowpipe', '19');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('218', 'DX', '-4', '20');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('219', 'Skill', '-2', 'Guns', 'Pistol', '20');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('220', 'Skill', '-2', 'Guns', 'Rifle', '20');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('221', 'Skill', '0', 'Guns', 'Shotgun', '20');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('222', 'Skill', '-2', 'Guns', 'Light Machine Gun', '20');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('223', 'Skill', '-2', 'Guns', 'Submachine Gun', '20');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('224', 'Skill', '-2', 'Guns', 'Musket', '20');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('225', 'Skill', '-4', 'Guns', 'Grenade Launcher', '20');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('226', 'Skill', '-4', 'Guns', 'Gyroc', '20');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('227', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '20');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('228', 'Skill', '0', 'Gun!', '20');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('229', 'Skill', '0', 'Bolas', '21');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('230', 'DX', '-4', '22');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('231', 'Skill', '-2', 'Guns', 'Pistol', '22');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('232', 'Skill', '0', 'Guns', 'Rifle', '22');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('233', 'Skill', '-2', 'Guns', 'Shotgun', '22');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('234', 'Skill', '-2', 'Guns', 'Light Machine Gun', '22');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('235', 'Skill', '-2', 'Guns', 'Submachine Gun', '22');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('236', 'Skill', '-2', 'Guns', 'Musket', '22');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('237', 'Skill', '-4', 'Guns', 'Grenade Launcher', '22');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('238', 'Skill', '-4', 'Guns', 'Gyroc', '22');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('239', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '22');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('240', 'Skill', '0', 'Gun!', '22');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('241', 'DX', '0', '9');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('242', 'Skill', '0', 'Boxing', '9');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('243', 'Skill', '0', 'Brawling', '9');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('244', 'Skill', '0', 'Karate', '9');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('245', 'DX', '-5', '10');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('246', 'Skill', '-4', 'Force Sword', '10');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('247', 'Skill', '0', 'Broadsword', '10');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('248', 'Skill', '-4', 'Rapier', '10');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('249', 'Skill', '-4', 'Saber', '10');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('250', 'Skill', '-2', 'Shortsword', '10');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('251', 'Skill', '-4', 'Two-Handed Sword', '10');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('252', 'Skill', '0', 'Sword!', '10');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('253', 'DX', '-5', '11');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('254', 'Skill', '-4', 'Force Sword', '11');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('255', 'Skill', '0', 'Broadsword', '11');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('256', 'Skill', '-4', 'Rapier', '11');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('257', 'Skill', '-4', 'Saber', '11');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('258', 'Skill', '-2', 'Shortsword', '11');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('259', 'Skill', '-4', 'Two-Handed Sword', '11');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('260', 'Skill', '0', 'Sword!', '11');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('261', 'DX', '-4', '23');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('262', 'Skill', '-2', 'Guns', 'Pistol', '23');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('263', 'Skill', '0', 'Guns', 'Rifle', '23');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('264', 'Skill', '-2', 'Guns', 'Shotgun', '23');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('265', 'Skill', '-2', 'Guns', 'Light Machine Gun', '23');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('266', 'Skill', '-2', 'Guns', 'Submachine Gun', '23');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('267', 'Skill', '-2', 'Guns', 'Musket', '23');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('268', 'Skill', '-4', 'Guns', 'Grenade Launcher', '23');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('269', 'Skill', '-4', 'Guns', 'Gyroc', '23');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('270', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '23');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('271', 'Skill', '0', 'Gun!', '23');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('272', 'DX', '-5', '12');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('273', 'Skill', '0', 'Shortsword', '12');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('274', 'Skill', '-2', 'Broadsword', '12');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('275', 'Skill', '-4', 'Force Sword', '12');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('276', 'Skill', '-3', 'Jitte/Sai', '12');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('277', 'Skill', '-4', 'Knife', '12');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('278', 'Skill', '-4', 'Saber', '12');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('279', 'Skill', '-4', 'Smallsword', '12');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('280', 'Skill', '-3', 'Tonfa', '12');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('281', 'Skill', '0', 'Sword!', '12');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('282', 'DX', '-5', '13');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('283', 'Skill', '-4', 'Force Sword', '13');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('284', 'Skill', '0', 'Broadsword', '13');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('285', 'Skill', '-4', 'Rapier', '13');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('286', 'Skill', '-4', 'Saber', '13');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('287', 'Skill', '-2', 'Shortsword', '13');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('288', 'Skill', '-4', 'Two-Handed Sword', '13');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('289', 'Skill', '0', 'Sword!', '13');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('290', 'DX', '-5', '14');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('291', 'Skill', '-4', 'Force Sword', '14');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('292', 'Skill', '0', 'Broadsword', '14');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('293', 'Skill', '-4', 'Rapier', '14');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('294', 'Skill', '-4', 'Saber', '14');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('295', 'Skill', '-2', 'Shortsword', '14');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('296', 'Skill', '-4', 'Two-Handed Sword', '14');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('297', 'Skill', '0', 'Sword!', '14');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('298', 'DX', '-5', '15');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('299', 'Skill', '0', 'Two-Handed Axe/Mace', '15');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('300', 'Skill', '-3', 'Axe/Mace', '15');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('301', 'Skill', '-4', 'Polearm', '15');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('302', 'Skill', '-4', 'Two-Handed Flail', '15');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('303', 'DX', '-5', '24');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('304', 'Skill', '0', 'Bow', '24');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('305', 'DX', '-4', '25');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('306', 'Skill', '0', 'Crossbow', '25');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('307', 'DX', '-4', '26');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('308', 'Skill', '0', 'Crossbow', '26');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('309', 'DX', '-4', '27');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('310', 'Skill', '0', 'Crossbow', '27');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('311', 'DX', '-4', '28');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('312', 'Skill', '0', 'Crossbow', '28');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('313', 'DX', '-4', '29');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('314', 'Skill', '0', 'Crossbow', '29');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('315', 'DX', '-4', '30');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('316', 'Skill', '0', 'Crossbow', '30');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('317', 'DX', '-4', '31');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('318', 'Skill', '0', 'Crossbow', '31');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('319', 'DX', '-4', '32');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('320', 'Skill', '0', 'Crossbow', '32');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('321', 'DX', '-4', '33');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('322', 'Skill', '0', 'Crossbow', '33');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('323', 'DX', '-4', '34');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('324', 'Skill', '0', 'Crossbow', '34');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('325', 'DX', '-4', '35');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('326', 'Skill', '0', 'Crossbow', '35');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('327', 'DX', '-4', '36');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('328', 'Skill', '0', 'Crossbow', '36');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('329', 'DX', '-4', '37');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('330', 'Skill', '0', 'Crossbow', '37');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('331', 'DX', '-4', '38');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('332', 'Skill', '0', 'Crossbow', '38');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('333', 'DX', '-6', '16');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('334', 'Skill', '-1', 'Axe/Mace', '16');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('335', 'Skill', '-5', 'Flail', '16');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('336', 'Skill', '-4', 'Two-Handed Axe/Mace', '16');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('337', 'DX', '-5', '39');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('338', 'Skill', '-1', 'Thrown Weapon', 'Axe/Mace', '39');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('339', 'DX', '-5', '17');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('340', 'Skill', '0', 'Shortsword', '17');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('341', 'Skill', '-2', 'Broadsword', '17');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('342', 'Skill', '-4', 'Force Sword', '17');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('343', 'Skill', '-3', 'Jitte/Sai', '17');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('344', 'Skill', '-4', 'Knife', '17');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('345', 'Skill', '-4', 'Saber', '17');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('346', 'Skill', '-4', 'Smallsword', '17');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('347', 'Skill', '-3', 'Tonfa', '17');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('348', 'Skill', '0', 'Sword!', '17');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('349', 'DX', '-5', '18');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('350', 'Skill', '0', 'Shortsword', '18');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('351', 'Skill', '-2', 'Broadsword', '18');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('352', 'Skill', '-4', 'Force Sword', '18');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('353', 'Skill', '-3', 'Jitte/Sai', '18');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('354', 'Skill', '-4', 'Knife', '18');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('355', 'Skill', '-4', 'Saber', '18');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('356', 'Skill', '-4', 'Smallsword', '18');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('357', 'Skill', '-3', 'Tonfa', '18');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('358', 'Skill', '0', 'Sword!', '18');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('359', 'DX', '-4', '19');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('360', 'Skill', '0', 'Knife', '19');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('361', 'Skill', '-3', 'Force Sword', '19');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('362', 'Skill', '-3', 'Main-Gauche', '19');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('363', 'Skill', '-3', 'Shortsword', '19');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('364', 'Skill', '0', 'Sword!', '19');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('365', 'DX', '-4', '40');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('366', 'Skill', '0', 'Thrown Weapon', 'Knife', '40');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('367', 'DX', '-4', '41');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('368', 'Skill', '-2', 'Guns', 'Pistol', '41');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('369', 'Skill', '0', 'Guns', 'Rifle', '41');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('370', 'Skill', '-2', 'Guns', 'Shotgun', '41');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('371', 'Skill', '-2', 'Guns', 'Light Machine Gun', '41');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('372', 'Skill', '-2', 'Guns', 'Submachine Gun', '41');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('373', 'Skill', '-2', 'Guns', 'Musket', '41');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('374', 'Skill', '-4', 'Guns', 'Grenade Launcher', '41');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('375', 'Skill', '-4', 'Guns', 'Gyroc', '41');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('376', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '41');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('377', 'Skill', '0', 'Gun!', '41');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('378', 'DX', '-4', '42');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('379', 'Skill', '0', 'Guns', 'Pistol', '42');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('380', 'Skill', '-2', 'Guns', 'Rifle', '42');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('381', 'Skill', '-2', 'Guns', 'Shotgun', '42');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('382', 'Skill', '-2', 'Guns', 'Light Machine Gun', '42');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('383', 'Skill', '-2', 'Guns', 'Submachine Gun', '42');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('384', 'Skill', '-2', 'Guns', 'Musket', '42');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('385', 'Skill', '-4', 'Guns', 'Grenade Launcher', '42');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('386', 'Skill', '-4', 'Guns', 'Gyroc', '42');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('387', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '42');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('388', 'Skill', '0', 'Gun!', '42');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('389', 'DX', '-4', '43');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('390', 'Skill', '-2', 'Guns', 'Pistol', '43');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('391', 'Skill', '-2', 'Guns', 'Rifle', '43');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('392', 'Skill', '0', 'Guns', 'Shotgun', '43');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('393', 'Skill', '-2', 'Guns', 'Light Machine Gun', '43');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('394', 'Skill', '-2', 'Guns', 'Submachine Gun', '43');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('395', 'Skill', '-2', 'Guns', 'Musket', '43');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('396', 'Skill', '-4', 'Guns', 'Grenade Launcher', '43');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('397', 'Skill', '-4', 'Guns', 'Gyroc', '43');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('398', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '43');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('399', 'Skill', '0', 'Gun!', '43');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('400', 'DX', '-4', '44');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('401', 'Skill', '-4', 'Guns', 'Rifle', '44');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('402', 'Skill', '-4', 'Beam Weapons', 'Pistol', '44');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('403', 'Skill', '0', 'Beam Weapons', 'Rifle', '44');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('404', 'Skill', '-4', 'Beam Weapons', 'Projector', '44');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('405', 'Skill', '0', 'Gun!', '44');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('406', 'DX', '-4', '45');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('407', 'Skill', '-4', 'Guns', 'Pistol', '45');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('408', 'Skill', '0', 'Beam Weapons', 'Pistol', '45');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('409', 'Skill', '-4', 'Beam Weapons', 'Rifle', '45');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('410', 'Skill', '-4', 'Beam Weapons', 'Projector', '45');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('411', 'Skill', '0', 'Gun!', '45');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('412', 'DX', '-6', '20');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('413', 'Skill', '0', 'Two-Handed Flail', '20');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('414', 'Skill', '-3', 'Flail', '20');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('415', 'Skill', '-4', 'Kusari', '20');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('416', 'Skill', '-4', 'Two-Handed Axe/Mace', '20');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('417', 'DX', '-4', '46');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('418', 'Skill', '0', 'Liquid Projector', 'Flamethrower', '46');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('419', 'Skill', '-4', 'Liquid Projector', 'Sprayer', '46');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('420', 'Skill', '-4', 'Liquid Projector', 'Squirt Gun', '46');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('421', 'Skill', '-4', 'Liquid Projector', 'Water Cannon', '46');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('422', 'DX', '-4', '47');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('423', 'Skill', '-2', 'Guns', 'Pistol', '47');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('424', 'Skill', '-2', 'Guns', 'Rifle', '47');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('425', 'Skill', '-2', 'Guns', 'Shotgun', '47');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('426', 'Skill', '-2', 'Guns', 'Light Machine Gun', '47');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('427', 'Skill', '-2', 'Guns', 'Submachine Gun', '47');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('428', 'Skill', '0', 'Guns', 'Musket', '47');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('429', 'Skill', '-4', 'Guns', 'Grenade Launcher', '47');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('430', 'Skill', '-4', 'Guns', 'Gyroc', '47');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('431', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '47');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('432', 'Skill', '0', 'Gun!', '47');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('433', 'DX', '-4', '48');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('434', 'Skill', '0', 'Guns', 'Pistol', '48');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('435', 'Skill', '-2', 'Guns', 'Rifle', '48');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('436', 'Skill', '-2', 'Guns', 'Shotgun', '48');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('437', 'Skill', '-2', 'Guns', 'Light Machine Gun', '48');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('438', 'Skill', '-2', 'Guns', 'Submachine Gun', '48');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('439', 'Skill', '-2', 'Guns', 'Musket', '48');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('440', 'Skill', '-4', 'Guns', 'Grenade Launcher', '48');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('441', 'Skill', '-4', 'Guns', 'Gyroc', '48');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('442', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '48');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('443', 'Skill', '0', 'Gun!', '48');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('444', 'DX', '-5', '22');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('445', 'Skill', '-3', 'Broadsword', '22');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('446', 'Skill', '0', 'Force Sword', '22');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('447', 'Skill', '-3', 'Saber', '22');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('448', 'Skill', '-3', 'Shortsword', '22');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('449', 'Skill', '-3', 'Smallsword', '22');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('450', 'Skill', '-3', 'Two-Handed Sword', '22');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('451', 'Skill', '0', 'Sword!', '22');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('452', 'Skill', '0', 'Garrote', '23');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('453', 'DX', '-4', '23');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('454', 'DX', '-4', '49');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('455', 'Skill', '-2', 'Guns', 'Pistol', '49');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('456', 'Skill', '-2', 'Guns', 'Rifle', '49');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('457', 'Skill', '-2', 'Guns', 'Shotgun', '49');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('458', 'Skill', '-2', 'Guns', 'Light Machine Gun', '49');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('459', 'Skill', '0', 'Guns', 'Submachine Gun', '49');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('460', 'Skill', '-2', 'Guns', 'Musket', '49');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('461', 'Skill', '-4', 'Guns', 'Grenade Launcher', '49');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('462', 'Skill', '-4', 'Guns', 'Gyroc', '49');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('463', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '49');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('464', 'Skill', '0', 'Gun!', '49');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('465', 'DX', '-4', '50');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('466', 'Skill', '-2', 'Guns', 'Pistol', '50');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('467', 'Skill', '0', 'Guns', 'Rifle', '50');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('468', 'Skill', '-2', 'Guns', 'Shotgun', '50');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('469', 'Skill', '-2', 'Guns', 'Light Machine Gun', '50');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('470', 'Skill', '-2', 'Guns', 'Submachine Gun', '50');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('471', 'Skill', '-2', 'Guns', 'Musket', '50');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('472', 'Skill', '-4', 'Guns', 'Grenade Launcher', '50');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('473', 'Skill', '-4', 'Guns', 'Gyroc', '50');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('474', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '50');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('475', 'Skill', '0', 'Gun!', '50');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('476', 'DX', '-5', '24');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('477', 'Skill', '0', 'Polearm', '24');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('478', 'Skill', '-4', 'Spear', '24');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('479', 'Skill', '-4', 'Staff', '24');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('480', 'Skill', '-4', 'Two-Handed Axe/Mace', '24');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('481', 'DX', '-5', '25');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('482', 'Skill', '0', 'Polearm', '25');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('483', 'Skill', '-4', 'Spear', '25');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('484', 'Skill', '-4', 'Staff', '25');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('485', 'Skill', '-4', 'Two-Handed Axe/Mace', '25');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('486', 'DX', '-5', '26');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('487', 'Skill', '0', 'Two-Handed Axe/Mace', '26');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('488', 'Skill', '-3', 'Axe/Mace', '26');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('489', 'Skill', '-4', 'Polearm', '26');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('490', 'Skill', '-4', 'Two-Handed Flail', '26');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('491', 'DX', '-5', '27');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('492', 'Skill', '0', 'Two-Handed Sword', '27');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('493', 'Skill', '-4', 'Broadsword', '27');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('494', 'Skill', '-4', 'Force Sword', '27');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('495', 'Skill', '0', 'Sword!', '27');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('496', 'DX', '-5', '28');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('497', 'Skill', '0', 'Two-Handed Sword', '28');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('498', 'Skill', '-4', 'Broadsword', '28');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('499', 'Skill', '-4', 'Force Sword', '28');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('500', 'Skill', '0', 'Sword!', '28');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('501', 'DX', '-4', '51');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('502', 'Skill', '-4', 'Guns', 'Pistol', '51');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('503', 'Skill', '-4', 'Guns', 'Rifle', '51');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('504', 'Skill', '-4', 'Guns', 'Shotgun', '51');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('505', 'Skill', '-4', 'Guns', 'Light Machine Gun', '51');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('506', 'Skill', '-4', 'Guns', 'Submachine Gun', '51');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('507', 'Skill', '-4', 'Guns', 'Musket', '51');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('508', 'Skill', '-4', 'Guns', 'Grenade Launcher', '51');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('509', 'Skill', '0', 'Guns', 'Gyroc', '51');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('510', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '51');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('511', 'Skill', '0', 'Gun!', '51');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('512', 'DX', '-5', '29');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('513', 'Skill', '0', 'Polearm', '29');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('514', 'Skill', '-4', 'Spear', '29');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('515', 'Skill', '-4', 'Staff', '29');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('516', 'Skill', '-4', 'Two-Handed Axe/Mace', '29');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('517', 'DX', '-5', '30');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('518', 'Skill', '0', 'Polearm', '30');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('519', 'Skill', '-4', 'Spear', '30');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('520', 'Skill', '-4', 'Staff', '30');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('521', 'Skill', '-4', 'Two-Handed Axe/Mace', '30');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('522', 'DX', '-5', '31');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('523', 'Skill', '0', 'Polearm', '31');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('524', 'Skill', '-4', 'Spear', '31');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('525', 'Skill', '-4', 'Staff', '31');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('526', 'Skill', '-4', 'Two-Handed Axe/Mace', '31');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('527', 'DX', '-4', '52');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('528', 'Skill', '-2', 'Guns', 'Pistol', '52');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('529', 'Skill', '-2', 'Guns', 'Rifle', '52');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('530', 'Skill', '-2', 'Guns', 'Shotgun', '52');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('531', 'Skill', '-2', 'Guns', 'Light Machine Gun', '52');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('532', 'Skill', '-2', 'Guns', 'Submachine Gun', '52');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('533', 'Skill', '0', 'Guns', 'Musket', '52');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('534', 'Skill', '-4', 'Guns', 'Grenade Launcher', '52');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('535', 'Skill', '-4', 'Guns', 'Gyroc', '52');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('536', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '52');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('537', 'Skill', '0', 'Gun!', '52');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('538', 'Skill', '0', 'Thrown Weapon (Harpoon)', '53');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('539', 'DX', '-4', '53');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('540', 'Skill', '-2', 'Thrown Weapon (Spear)', '53');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('541', 'DX', '-5', '32');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('542', 'Skill', '0', 'Axe/Mace', '32');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('543', 'Skill', '-4', 'Flail', '32');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('544', 'Skill', '-3', 'Two-Handed Axe/Mace', '32');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('545', 'DX', '-4', '54');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('546', 'Skill', '0', 'Thrown Weapon', 'Axe/Mace', '54');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('547', 'DX', '-4', '55');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('548', 'Skill', '-4', 'Guns', 'Rifle', '55');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('549', 'Skill', '-4', 'Beam Weapons', 'Pistol', '55');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('550', 'Skill', '0', 'Beam Weapons', 'Rifle', '55');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('551', 'Skill', '-4', 'Beam Weapons', 'Projector', '55');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('552', 'Skill', '0', 'Gun!', '55');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('553', 'Block', '0', 'Cloak', '33');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('554', 'Skill', '0', 'Cloak', '56');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('555', 'Skill', '-4', 'Net', '56');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('556', 'Skill', '-4', 'Shield', '56');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('557', 'DX', '-5', '56');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('558', 'DX', '-4', '57');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('559', 'Skill', '-4', 'Gunner', 'Catapult', '57');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('560', 'Skill', '-4', 'Gunner', 'Beams', '57');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('561', 'Skill', '-4', 'Gunner', 'Cannon', '57');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('562', 'Skill', '0', 'Gunner', 'Machine Gun', '57');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('563', 'Skill', '-4', 'Gunner', 'Rockets', '57');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('564', 'DX', '-4', '58');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('565', 'Skill', '0', 'Guns', 'Pistol', '58');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('566', 'Skill', '-2', 'Guns', 'Rifle', '58');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('567', 'Skill', '-2', 'Guns', 'Shotgun', '58');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('568', 'Skill', '-2', 'Guns', 'Light Machine Gun', '58');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('569', 'Skill', '-2', 'Guns', 'Submachine Gun', '58');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('570', 'Skill', '-2', 'Guns', 'Musket', '58');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('571', 'Skill', '-4', 'Guns', 'Grenade Launcher', '58');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('572', 'Skill', '-4', 'Guns', 'Gyroc', '58');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('573', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '58');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('574', 'Skill', '0', 'Gun!', '58');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('575', 'DX', '-4', '59');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('576', 'Skill', '-4', 'Guns', 'Pistol', '59');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('577', 'Skill', '-4', 'Guns', 'Rifle', '59');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('578', 'Skill', '-4', 'Guns', 'Shotgun', '59');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('579', 'Skill', '-4', 'Guns', 'Light Machine Gun', '59');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('580', 'Skill', '-4', 'Guns', 'Submachine Gun', '59');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('581', 'Skill', '-4', 'Guns', 'Musket', '59');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('582', 'Skill', '0', 'Guns', 'Grenade Launcher', '59');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('583', 'Skill', '-4', 'Guns', 'Gyroc', '59');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('584', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '59');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('585', 'Skill', '0', 'Gun!', '59');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('586', 'DX', '-4', '60');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('587', 'Skill', '-4', 'Guns', 'Pistol', '60');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('588', 'Skill', '-4', 'Guns', 'Rifle', '60');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('589', 'Skill', '-4', 'Guns', 'Shotgun', '60');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('590', 'Skill', '-4', 'Guns', 'Light Machine Gun', '60');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('591', 'Skill', '-4', 'Guns', 'Submachine Gun', '60');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('592', 'Skill', '-4', 'Guns', 'Musket', '60');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('593', 'Skill', '0', 'Guns', 'Grenade Launcher', '60');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('594', 'Skill', '-4', 'Guns', 'Gyroc', '60');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('595', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '60');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('596', 'Skill', '0', 'Gun!', '60');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('597', 'DX', '-4', '61');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('598', 'Skill', '-4', 'Guns', 'Pistol', '61');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('599', 'Skill', '-4', 'Guns', 'Rifle', '61');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('600', 'Skill', '-4', 'Guns', 'Shotgun', '61');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('601', 'Skill', '-4', 'Guns', 'Light Machine Gun', '61');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('602', 'Skill', '-4', 'Guns', 'Submachine Gun', '61');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('603', 'Skill', '-4', 'Guns', 'Musket', '61');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('604', 'Skill', '0', 'Guns', 'Grenade Launcher', '61');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('605', 'Skill', '-4', 'Guns', 'Gyroc', '61');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('606', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '61');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('607', 'Skill', '0', 'Gun!', '61');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('608', 'DX', '-4', '62');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('609', 'Skill', '-2', 'Guns', 'Pistol', '62');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('610', 'Skill', '0', 'Guns', 'Rifle', '62');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('611', 'Skill', '-2', 'Guns', 'Shotgun', '62');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('612', 'Skill', '-2', 'Guns', 'Light Machine Gun', '62');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('613', 'Skill', '-2', 'Guns', 'Submachine Gun', '62');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('614', 'Skill', '-2', 'Guns', 'Musket', '62');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('615', 'Skill', '-4', 'Guns', 'Grenade Launcher', '62');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('616', 'Skill', '-4', 'Guns', 'Gyroc', '62');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('617', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '62');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('618', 'Skill', '0', 'Gun!', '62');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('619', 'DX', '-4', '63');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('620', 'Skill', '-4', 'Guns', 'Pistol', '63');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('621', 'Skill', '-4', 'Guns', 'Rifle', '63');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('622', 'Skill', '-4', 'Guns', 'Shotgun', '63');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('623', 'Skill', '-4', 'Guns', 'Light Machine Gun', '63');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('624', 'Skill', '-4', 'Guns', 'Submachine Gun', '63');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('625', 'Skill', '-4', 'Guns', 'Musket', '63');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('626', 'Skill', '0', 'Guns', 'Grenade Launcher', '63');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('627', 'Skill', '-4', 'Guns', 'Gyroc', '63');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('628', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '63');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('629', 'Skill', '0', 'Gun!', '63');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('630', 'DX', '-5', '34');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('631', 'Skill', '0', 'Spear', '34');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('632', 'Skill', '-4', 'Polearm', '34');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('633', 'Skill', '-2', 'Staff', '34');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('634', 'DX', '-4', '64');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('635', 'Skill', '0', 'Thrown Weapon', 'Spear', '64');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('636', 'Skill', '-4', 'Spear Thrower', '64');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('637', 'Skill', '-2', 'Thrown Weapon', 'Harpoon', '64');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('638', 'DX', '-5', '35');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('639', 'Skill', '-4', 'Force Sword', '35');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('640', 'Skill', '0', 'Broadsword', '35');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('641', 'Skill', '-4', 'Rapier', '35');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('642', 'Skill', '-4', 'Saber', '35');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('643', 'Skill', '-2', 'Shortsword', '35');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('644', 'Skill', '-4', 'Two-Handed Sword', '35');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('645', 'Skill', '0', 'Sword!', '35');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('646', 'DX', '-5', '36');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('647', 'Skill', '-4', 'Force Sword', '36');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('648', 'Skill', '0', 'Broadsword', '36');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('649', 'Skill', '-4', 'Rapier', '36');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('650', 'Skill', '-4', 'Saber', '36');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('651', 'Skill', '-2', 'Shortsword', '36');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('652', 'Skill', '-4', 'Two-Handed Sword', '36');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('653', 'Skill', '0', 'Sword!', '36');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('654', 'DX', '-5', '37');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('655', 'Skill', '0', 'Two-Handed Sword', '37');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('656', 'Skill', '-4', 'Broadsword', '37');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('657', 'Skill', '-4', 'Force Sword', '37');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('658', 'Skill', '0', 'Sword!', '37');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('659', 'DX', '-5', '38');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('660', 'Skill', '0', 'Two-Handed Sword', '38');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('661', 'Skill', '-4', 'Broadsword', '38');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('662', 'Skill', '-4', 'Force Sword', '38');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('663', 'Skill', '0', 'Sword!', '38');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('664', 'DX', '-6', '39');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('665', 'Skill', '0', 'Kusari', '39');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('666', 'Skill', '-3', 'Monowire Whip', '39');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('667', 'Skill', '-4', 'Two-Handed Flail', '39');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('668', 'Skill', '-3', 'Whip', '39');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('669', 'DX', '-5', '40');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('670', 'Skill', '-3', 'Spear', '40');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('671', 'Skill', '0', 'Lance', '40');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('672', 'DX', '-4', '41');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('673', 'Skill', '0', 'Knife', '41');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('674', 'Skill', '-3', 'Force Sword', '41');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('675', 'Skill', '-3', 'Main-Gauche', '41');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('676', 'Skill', '-3', 'Shortsword', '41');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('677', 'Skill', '0', 'Sword!', '41');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('678', 'DX', '-4', '42');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('679', 'Skill', '0', 'Knife', '42');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('680', 'Skill', '-3', 'Force Sword', '42');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('681', 'Skill', '-3', 'Main-Gauche', '42');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('682', 'Skill', '-3', 'Shortsword', '42');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('683', 'Skill', '0', 'Sword!', '42');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('684', 'DX', '-4', '65');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('685', 'Skill', '0', 'Thrown Weapon', 'Knife', '65');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('686', 'Skill', '0', 'Net', '66');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('687', 'Skill', '-5', 'Cloak', '66');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('688', 'DX', '-4', '43');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('689', 'Skill', '-2', 'Shield', 'Buckler', '43');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('690', 'Skill', '-2', 'Shield', 'Force Shield', '43');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('691', 'Skill', '0', 'Shield', 'Shield', '43');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('692', 'DX', '-4', '44');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('693', 'Skill', '-2', 'Shield', 'Buckler', '44');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('694', 'Skill', '-2', 'Shield', 'Force Shield', '44');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('695', 'Skill', '0', 'Shield', 'Shield', '44');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('696', 'Skill', '0', 'Lasso', '67');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('697', 'DX', '-4', '68');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('698', 'Skill', '-4', 'Guns', 'Pistol', '68');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('699', 'Skill', '0', 'Beam Weapons', 'Pistol', '68');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('700', 'Skill', '-4', 'Beam Weapons', 'Rifle', '68');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('701', 'Skill', '-4', 'Beam Weapons', 'Projector', '68');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('702', 'Skill', '0', 'Gun!', '68');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('703', 'DX', '-4', '69');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('704', 'Skill', '-4', 'Guns', 'Rifle', '69');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('705', 'Skill', '-4', 'Beam Weapons', 'Pistol', '69');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('706', 'Skill', '0', 'Beam Weapons', 'Rifle', '69');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('707', 'Skill', '-4', 'Beam Weapons', 'Projector', '69');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('708', 'Skill', '0', 'Gun!', '69');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('709', 'DX', '-4', '70');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('710', 'Skill', '-4', 'Guns', 'Rifle', '70');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('711', 'Skill', '-4', 'Beam Weapons', 'Pistol', '70');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('712', 'Skill', '0', 'Beam Weapons', 'Rifle', '70');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('713', 'Skill', '-4', 'Beam Weapons', 'Projector', '70');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('714', 'Skill', '0', 'Gun!', '70');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('715', 'DX', '-4', '71');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('716', 'Skill', '-4', 'Guns', 'Pistol', '71');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('717', 'Skill', '-4', 'Guns', 'Rifle', '71');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('718', 'Skill', '-4', 'Guns', 'Shotgun', '71');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('719', 'Skill', '-4', 'Guns', 'Light Machine Gun', '71');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('720', 'Skill', '-4', 'Guns', 'Submachine Gun', '71');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('721', 'Skill', '-4', 'Guns', 'Musket', '71');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('722', 'Skill', '-4', 'Guns', 'Grenade Launcher', '71');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('723', 'Skill', '-4', 'Guns', 'Gyroc', '71');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('724', 'Skill', '0', 'Guns', 'Light Anti-Armor Weapon', '71');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('725', 'Skill', '0', 'Gun!', '71');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('726', 'DX', '-4', '72');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('727', 'Skill', '-2', 'Guns', 'Pistol', '72');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('728', 'Skill', '0', 'Guns', 'Rifle', '72');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('729', 'Skill', '-2', 'Guns', 'Shotgun', '72');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('730', 'Skill', '-2', 'Guns', 'Light Machine Gun', '72');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('731', 'Skill', '-2', 'Guns', 'Submachine Gun', '72');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('732', 'Skill', '-2', 'Guns', 'Musket', '72');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('733', 'Skill', '-4', 'Guns', 'Grenade Launcher', '72');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('734', 'Skill', '-4', 'Guns', 'Gyroc', '72');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('735', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '72');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('736', 'Skill', '0', 'Gun!', '72');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('737', 'DX', '-4', '45');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('738', 'Skill', '-2', 'Shield', 'Shield', '45');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('739', 'Skill', '-2', 'Shield', 'Force Shield', '45');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('740', 'Skill', '0', 'Shield', 'Buckler', '45');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('741', 'DX', '-4', '46');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('742', 'Skill', '-2', 'Shield', 'Shield', '46');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('743', 'Skill', '-2', 'Shield', 'Force Shield', '46');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('744', 'Skill', '0', 'Shield', 'Buckler', '46');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('745', 'Block', '0', 'Cloak', '47');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('746', 'DX', '-5', '73');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('747', 'Skill', '0', 'Cloak', '73');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('748', 'Skill', '-4', 'Net', '73');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('749', 'Skill', '-4', 'Shield', '73');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('750', 'DX', '-5', '48');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('751', 'Skill', '-4', 'Force Sword', '48');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('752', 'Skill', '0', 'Broadsword', '48');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('753', 'Skill', '-4', 'Rapier', '48');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('754', 'Skill', '-4', 'Saber', '48');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('755', 'Skill', '-2', 'Shortsword', '48');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('756', 'Skill', '-4', 'Two-Handed Sword', '48');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('757', 'Skill', '0', 'Sword!', '48');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('758', 'DX', '-5', '49');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('759', 'Skill', '-4', 'Force Sword', '49');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('760', 'Skill', '0', 'Broadsword', '49');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('761', 'Skill', '-4', 'Rapier', '49');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('762', 'Skill', '-4', 'Saber', '49');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('763', 'Skill', '-2', 'Shortsword', '49');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('764', 'Skill', '-4', 'Two-Handed Sword', '49');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('765', 'Skill', '0', 'Sword!', '49');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('766', 'DX', '-4', '50');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('767', 'Skill', '-2', 'Shield', 'Buckler', '50');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('768', 'Skill', '-2', 'Shield', 'Force Shield', '50');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('769', 'Skill', '0', 'Shield', 'Shield', '50');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('770', 'DX', '-4', '51');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('771', 'Skill', '-2', 'Shield', 'Buckler', '51');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('772', 'Skill', '-2', 'Shield', 'Force Shield', '51');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('773', 'Skill', '0', 'Shield', 'Shield', '51');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('774', 'DX', '-4', '74');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('775', 'Skill', '-2', 'Guns', 'Pistol', '74');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('776', 'Skill', '-2', 'Guns', 'Rifle', '74');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('777', 'Skill', '-2', 'Guns', 'Shotgun', '74');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('778', 'Skill', '0', 'Guns', 'Light Machine Gun', '74');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('779', 'Skill', '-2', 'Guns', 'Submachine Gun', '74');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('780', 'Skill', '-2', 'Guns', 'Musket', '74');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('781', 'Skill', '-4', 'Guns', 'Grenade Launcher', '74');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('782', 'Skill', '-4', 'Guns', 'Gyroc', '74');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('783', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '74');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('784', 'Skill', '0', 'Gun!', '74');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('785', 'DX', '-5', '52');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('786', 'Skill', '0', 'Spear', '52');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('787', 'Skill', '-4', 'Polearm', '52');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('788', 'Skill', '-2', 'Staff', '52');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('789', 'DX', '-5', '53');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('790', 'Skill', '0', 'Spear', '53');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('791', 'Skill', '-4', 'Polearm', '53');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('792', 'Skill', '-2', 'Staff', '53');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('793', 'DX', '-5', '75');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('794', 'Skill', '0', 'Bow', '75');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('795', 'DX', '-5', '54');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('796', 'Skill', '0', 'Axe/Mace', '54');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('797', 'Skill', '-4', 'Flail', '54');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('798', 'Skill', '-3', 'Two-Handed Axe/Mace', '54');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('799', 'DX', '-4', '76');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('800', 'Skill', '0', 'Thrown Weapon', 'Axe/Mace', '76');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('801', 'DX', '-4', '77');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('802', 'Skill', '-2', 'Guns', 'Pistol', '77');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('803', 'Skill', '-2', 'Guns', 'Rifle', '77');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('804', 'Skill', '-2', 'Guns', 'Shotgun', '77');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('805', 'Skill', '-2', 'Guns', 'Light Machine Gun', '77');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('806', 'Skill', '0', 'Guns', 'Submachine Gun', '77');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('807', 'Skill', '-2', 'Guns', 'Musket', '77');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('808', 'Skill', '-4', 'Guns', 'Grenade Launcher', '77');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('809', 'Skill', '-4', 'Guns', 'Gyroc', '77');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('810', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '77');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('811', 'Skill', '0', 'Gun!', '77');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('812', 'DX', '-4', '78');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('813', 'Skill', '-2', 'Guns', 'Pistol', '78');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('814', 'Skill', '-2', 'Guns', 'Rifle', '78');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('815', 'Skill', '-2', 'Guns', 'Shotgun', '78');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('816', 'Skill', '-2', 'Guns', 'Light Machine Gun', '78');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('817', 'Skill', '-2', 'Guns', 'Submachine Gun', '78');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('818', 'Skill', '0', 'Guns', 'Musket', '78');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('819', 'Skill', '-4', 'Guns', 'Grenade Launcher', '78');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('820', 'Skill', '-4', 'Guns', 'Gyroc', '78');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('821', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '78');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('822', 'Skill', '0', 'Gun!', '78');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('823', 'DX', '-5', '55');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('824', 'Skill', '0', 'Two-Handed Axe/Mace', '55');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('825', 'Skill', '-3', 'Axe/Mace', '55');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('826', 'Skill', '-4', 'Polearm', '55');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('827', 'Skill', '-4', 'Two-Handed Flail', '55');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('828', 'DX', '-4', '56');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('829', 'Skill', '-2', 'Shield', 'Shield', '56');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('830', 'Skill', '-2', 'Shield', 'Force Shield', '56');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('831', 'Skill', '0', 'Shield', 'Buckler', '56');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('832', 'DX', '-4', '57');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('833', 'Skill', '-2', 'Shield', 'Shield', '57');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('834', 'Skill', '-2', 'Shield', 'Force Shield', '57');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('835', 'Skill', '0', 'Shield', 'Buckler', '57');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('836', 'DX', '-4', '58');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('837', 'Skill', '0', 'Shield', 'Buckler', '58');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('838', 'Skill', '0', 'Shield', 'Force Shield', '58');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('839', 'Skill', '0', 'Shield', 'Shield', '58');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('840', 'DX', '-4', '59');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('841', 'Skill', '-2', 'Shield', 'Buckler', '59');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('842', 'Skill', '-2', 'Shield', 'Force Shield', '59');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('843', 'Skill', '0', 'Shield', 'Shield', '59');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('844', 'Skill', '0', 'Net', '79');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('845', 'Skill', '-5', 'Cloak', '79');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('846', 'DX', '-6', '60');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('847', 'Skill', '0', 'Monowire Whip', '60');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('848', 'Skill', '-3', 'Kusari', '60');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('849', 'Skill', '-3', 'Whip', '60');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('850', 'DX', '-6', '61');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('851', 'Skill', '0', 'Flail', '61');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('852', 'Skill', '-4', 'Axe/Mace', '61');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('853', 'Skill', '-3', 'Two-Handed Flail', '61');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('854', 'DX', '-5', '62');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('855', 'Skill', '0', 'Polearm', '62');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('856', 'Skill', '-4', 'Spear', '62');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('857', 'Skill', '-4', 'Staff', '62');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('858', 'Skill', '-4', 'Two-Handed Axe/Mace', '62');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('859', 'DX', '-5', '63');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('860', 'Skill', '0', 'Polearm', '63');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('861', 'Skill', '-4', 'Spear', '63');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('862', 'Skill', '-4', 'Staff', '63');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('863', 'Skill', '-4', 'Two-Handed Axe/Mace', '63');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('864', 'DX', '-5', '64');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('865', 'Skill', '0', 'Staff', '64');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('866', 'Skill', '-4', 'Polearm', '64');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('867', 'Skill', '-2', 'Spear', '64');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('868', 'DX', '-5', '65');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('869', 'Skill', '0', 'Staff', '65');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('870', 'Skill', '-4', 'Polearm', '65');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('871', 'Skill', '-2', 'Spear', '65');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('872', 'DX', '-5', '66');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('873', 'Skill', '0', 'Two-Handed Sword', '66');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('874', 'Skill', '-4', 'Broadsword', '66');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('875', 'Skill', '-4', 'Force Sword', '66');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('876', 'Skill', '0', 'Sword!', '66');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('877', 'DX', '-5', '67');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('878', 'Skill', '0', 'Two-Handed Sword', '67');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('879', 'Skill', '-4', 'Broadsword', '67');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('880', 'Skill', '-4', 'Force Sword', '67');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('881', 'Skill', '0', 'Sword!', '67');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('882', 'Skill', '0', 'Flail', '68');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('883', 'Skill', '-4', 'Axe/Mace', '68');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('884', 'Skill', '-3', 'Two-Handed Flail', '68');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('885', 'DX', '-6', '68');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('886', 'DX', '-4', '80');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('887', 'Skill', '-2', 'Guns', 'Pistol', '80');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('888', 'Skill', '-2', 'Guns', 'Rifle', '80');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('889', 'Skill', '-2', 'Guns', 'Shotgun', '80');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('890', 'Skill', '-2', 'Guns', 'Light Machine Gun', '80');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('891', 'Skill', '0', 'Guns', 'Submachine Gun', '80');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('892', 'Skill', '-2', 'Guns', 'Musket', '80');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('893', 'Skill', '-4', 'Guns', 'Grenade Launcher', '80');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('894', 'Skill', '-4', 'Guns', 'Gyroc', '80');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('895', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '80');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('896', 'Skill', '0', 'Gun!', '80');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('897', 'DX', '-5', '69');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('898', 'Skill', '0', 'Axe/Mace', '69');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('899', 'Skill', '-4', 'Flail', '69');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('900', 'Skill', '-3', 'Two-Handed Axe/Mace', '69');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('901', 'DX', '-4', '81');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('902', 'Skill', '0', 'Crossbow', '81');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('903', 'DX', '-4', '82');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('904', 'Skill', '0', 'Crossbow', '82');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('905', 'DX', '-4', '83');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('906', 'Skill', '0', 'Crossbow', '83');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('907', 'DX', '-4', '84');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('908', 'Skill', '0', 'Crossbow', '84');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('909', 'DX', '-4', '85');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('910', 'Skill', '0', 'Crossbow', '85');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('911', 'DX', '-4', '86');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('912', 'Skill', '0', 'Crossbow', '86');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('913', 'DX', '-4', '87');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('914', 'Skill', '0', 'Crossbow', '87');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('915', 'DX', '-4', '88');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('916', 'Skill', '0', 'Crossbow', '88');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('917', 'DX', '-4', '89');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('918', 'Skill', '0', 'Crossbow', '89');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('919', 'DX', '-4', '90');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('920', 'Skill', '0', 'Crossbow', '90');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('921', 'DX', '-4', '91');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('922', 'Skill', '0', 'Crossbow', '91');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('923', 'DX', '-4', '92');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('924', 'Skill', '0', 'Crossbow', '92');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('925', 'DX', '-4', '93');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('926', 'Skill', '0', 'Crossbow', '93');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('927', 'DX', '-4', '94');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('928', 'Skill', '0', 'Crossbow', '94');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('929', 'DX', '-5', '70');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('930', 'Skill', '0', 'Polearm', '70');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('931', 'Skill', '-4', 'Spear', '70');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('932', 'Skill', '-4', 'Staff', '70');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('933', 'Skill', '-4', 'Two-Handed Axe/Mace', '70');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('934', 'DX', '-5', '71');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('935', 'Skill', '0', 'Polearm', '71');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('936', 'Skill', '-4', 'Spear', '71');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('937', 'Skill', '-4', 'Staff', '71');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('938', 'Skill', '-4', 'Two-Handed Axe/Mace', '71');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('939', 'DX', '-4', '95');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('940', 'Skill', '0', 'Crossbow', '95');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('941', 'DX', '-4', '96');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('942', 'Skill', '0', 'Crossbow', '96');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('943', 'DX', '-4', '97');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('944', 'Skill', '0', 'Crossbow', '97');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('945', 'DX', '-4', '98');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('946', 'Skill', '0', 'Crossbow', '98');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('947', 'DX', '-4', '99');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('948', 'Skill', '0', 'Crossbow', '99');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('949', 'DX', '-4', '100');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('950', 'Skill', '0', 'Crossbow', '100');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('951', 'DX', '-4', '101');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('952', 'Skill', '0', 'Crossbow', '101');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('953', 'DX', '-4', '102');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('954', 'Skill', '0', 'Crossbow', '102');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('955', 'DX', '-4', '103');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('956', 'Skill', '0', 'Crossbow', '103');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('957', 'DX', '-4', '104');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('958', 'Skill', '0', 'Crossbow', '104');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('959', 'DX', '-4', '105');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('960', 'Skill', '0', 'Crossbow', '105');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('961', 'DX', '-4', '106');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('962', 'Skill', '0', 'Crossbow', '106');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('963', 'DX', '-4', '107');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('964', 'Skill', '0', 'Crossbow', '107');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('965', 'DX', '-4', '108');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('966', 'Skill', '0', 'Crossbow', '108');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('967', 'DX', '-4', '109');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('968', 'Skill', '-2', 'Guns', 'Pistol', '109');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('969', 'Skill', '-2', 'Guns', 'Rifle', '109');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('970', 'Skill', '0', 'Guns', 'Shotgun', '109');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('971', 'Skill', '-2', 'Guns', 'Light Machine Gun', '109');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('972', 'Skill', '-2', 'Guns', 'Submachine Gun', '109');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('973', 'Skill', '-2', 'Guns', 'Musket', '109');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('974', 'Skill', '-4', 'Guns', 'Grenade Launcher', '109');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('975', 'Skill', '-4', 'Guns', 'Gyroc', '109');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('976', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '109');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('977', 'Skill', '0', 'Gun!', '109');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('978', 'DX', '-5', '72');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('979', 'Skill', '0', 'Staff', '72');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('980', 'Skill', '-4', 'Polearm', '72');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('981', 'Skill', '-2', 'Spear', '72');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('982', 'DX', '-5', '73');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('983', 'Skill', '0', 'Staff', '73');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('984', 'Skill', '-4', 'Polearm', '73');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('985', 'Skill', '-2', 'Spear', '73');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('986', 'DX', '-5', '74');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('987', 'Skill', '0', 'Two-Handed Sword', '74');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('988', 'Skill', '-4', 'Broadsword', '74');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('989', 'Skill', '-4', 'Force Sword', '74');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('990', 'Skill', '0', 'Sword!', '74');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('991', 'DX', '-5', '75');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('992', 'Skill', '0', 'Two-Handed Sword', '75');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('993', 'Skill', '-4', 'Broadsword', '75');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('994', 'Skill', '-4', 'Force Sword', '75');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('995', 'Skill', '0', 'Sword!', '75');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('996', 'DX', '-5', '76');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('997', 'Skill', '0', 'Rapier', '76');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('998', 'Skill', '-4', 'Broadsword', '76');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('999', 'Skill', '-3', 'Main-Gauche', '76');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1000', 'Skill', '-3', 'Saber', '76');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1001', 'Skill', '-3', 'Smallsword', '76');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1002', 'Skill', '0', 'Sword!', '76');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('1003', 'DX', '-5', '110');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('1004', 'Skill', '0', 'Bow', '110');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('1005', 'DX', '-4', '111');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1006', 'Skill', '-2', 'Guns', 'Pistol', '111');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1007', 'Skill', '0', 'Guns', 'Rifle', '111');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1008', 'Skill', '-2', 'Guns', 'Shotgun', '111');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1009', 'Skill', '-2', 'Guns', 'Light Machine Gun', '111');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1010', 'Skill', '-2', 'Guns', 'Submachine Gun', '111');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1011', 'Skill', '-2', 'Guns', 'Musket', '111');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1012', 'Skill', '-4', 'Guns', 'Grenade Launcher', '111');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1013', 'Skill', '-4', 'Guns', 'Gyroc', '111');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1014', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '111');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('1015', 'Skill', '0', 'Gun!', '111');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('1016', 'DX', '-4', '112');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1017', 'Skill', '0', 'Guns', 'Pistol', '112');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1018', 'Skill', '-2', 'Guns', 'Rifle', '112');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1019', 'Skill', '-2', 'Guns', 'Shotgun', '112');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1020', 'Skill', '-2', 'Guns', 'Light Machine Gun', '112');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1021', 'Skill', '-2', 'Guns', 'Submachine Gun', '112');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1022', 'Skill', '-2', 'Guns', 'Musket', '112');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1023', 'Skill', '-4', 'Guns', 'Grenade Launcher', '112');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1024', 'Skill', '-4', 'Guns', 'Gyroc', '112');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1025', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '112');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('1026', 'Skill', '0', 'Gun!', '112');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('1027', 'DX', '-4', '113');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1028', 'Skill', '0', 'Guns', 'Pistol', '113');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1029', 'Skill', '-2', 'Guns', 'Rifle', '113');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1030', 'Skill', '-2', 'Guns', 'Shotgun', '113');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1031', 'Skill', '-2', 'Guns', 'Light Machine Gun', '113');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1032', 'Skill', '-2', 'Guns', 'Submachine Gun', '113');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1033', 'Skill', '-2', 'Guns', 'Musket', '113');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1034', 'Skill', '-4', 'Guns', 'Grenade Launcher', '113');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1035', 'Skill', '-4', 'Guns', 'Gyroc', '113');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1036', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '113');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('1037', 'Skill', '0', 'Gun!', '113');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('1038', 'DX', '-4', '114');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1039', 'Skill', '0', 'Guns', 'Pistol', '114');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1040', 'Skill', '-2', 'Guns', 'Rifle', '114');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1041', 'Skill', '-2', 'Guns', 'Shotgun', '114');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1042', 'Skill', '-2', 'Guns', 'Light Machine Gun', '114');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1043', 'Skill', '-2', 'Guns', 'Submachine Gun', '114');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1044', 'Skill', '-2', 'Guns', 'Musket', '114');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1045', 'Skill', '-4', 'Guns', 'Grenade Launcher', '114');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1046', 'Skill', '-4', 'Guns', 'Gyroc', '114');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1047', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '114');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('1048', 'Skill', '0', 'Gun!', '114');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('1049', 'DX', '-4', '115');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1050', 'Skill', '0', 'Guns', 'Pistol', '115');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1051', 'Skill', '-2', 'Guns', 'Rifle', '115');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1052', 'Skill', '-2', 'Guns', 'Shotgun', '115');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1053', 'Skill', '-2', 'Guns', 'Light Machine Gun', '115');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1054', 'Skill', '-2', 'Guns', 'Submachine Gun', '115');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1055', 'Skill', '-2', 'Guns', 'Musket', '115');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1056', 'Skill', '-4', 'Guns', 'Grenade Launcher', '115');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1057', 'Skill', '-4', 'Guns', 'Gyroc', '115');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1058', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '115');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('1059', 'Skill', '0', 'Gun!', '115');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('1060', 'DX', '-4', '116');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1061', 'Skill', '-2', 'Guns', 'Pistol', '116');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1062', 'Skill', '0', 'Guns', 'Rifle', '116');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1063', 'Skill', '-2', 'Guns', 'Shotgun', '116');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1064', 'Skill', '-2', 'Guns', 'Light Machine Gun', '116');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1065', 'Skill', '-2', 'Guns', 'Submachine Gun', '116');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1066', 'Skill', '-2', 'Guns', 'Musket', '116');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1067', 'Skill', '-4', 'Guns', 'Grenade Launcher', '116');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1068', 'Skill', '-4', 'Guns', 'Gyroc', '116');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1069', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '116');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('1070', 'Skill', '0', 'Gun!', '116');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('1071', 'DX', '-4', '117');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1072', 'Skill', '-4', 'Guns', 'Pistol', '117');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1073', 'Skill', '-4', 'Guns', 'Rifle', '117');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1074', 'Skill', '-4', 'Guns', 'Shotgun', '117');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1075', 'Skill', '-4', 'Guns', 'Light Machine Gun', '117');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1076', 'Skill', '-4', 'Guns', 'Submachine Gun', '117');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1077', 'Skill', '-4', 'Guns', 'Musket', '117');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1078', 'Skill', '-4', 'Guns', 'Grenade Launcher', '117');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1079', 'Skill', '-4', 'Guns', 'Gyroc', '117');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1080', 'Skill', '0', 'Guns', 'Light Anti-Armor Weapon', '117');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('1081', 'Skill', '0', 'Gun!', '117');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1082', 'DX', '-5', '77');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1083', 'Skill', '0', 'Saber', '77');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1084', 'Skill', '-4', 'Broadsword', '77');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1085', 'Skill', '-3', 'Main-Gauche', '77');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1086', 'Skill', '-3', 'Rapier', '77');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1087', 'Skill', '-4', 'Shortsword', '77');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1088', 'Skill', '-3', 'Smallsword', '77');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1089', 'Skill', '0', 'Sword!', '77');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1090', 'DX', '-5', '78');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1091', 'Skill', '0', 'Saber', '78');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1092', 'Skill', '-4', 'Broadsword', '78');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1093', 'Skill', '-3', 'Main-Gauche', '78');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1094', 'Skill', '-3', 'Rapier', '78');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1095', 'Skill', '-4', 'Shortsword', '78');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1096', 'Skill', '-3', 'Smallsword', '78');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1097', 'Skill', '0', 'Sword!', '78');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('1098', 'IQ', '-5', '118');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1099', 'Skill', '0', 'Artillery', 'Guided Missile', '118');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1100', 'DX', '0', '79');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1101', 'Skill', '0', 'Brawling', '79');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('1102', 'DX', '-4', '119');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1103', 'Skill', '-2', 'Guns', 'Pistol', '119');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1104', 'Skill', '-2', 'Guns', 'Rifle', '119');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1105', 'Skill', '-2', 'Guns', 'Shotgun', '119');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1106', 'Skill', '0', 'Guns', 'Light Machine Gun', '119');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1107', 'Skill', '-2', 'Guns', 'Submachine Gun', '119');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1108', 'Skill', '-2', 'Guns', 'Musket', '119');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1109', 'Skill', '-4', 'Guns', 'Grenade Launcher', '119');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1110', 'Skill', '-4', 'Guns', 'Gyroc', '119');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1111', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '119');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('1112', 'Skill', '0', 'Gun!', '119');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('1113', 'DX', '-4', '120');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1114', 'Skill', '0', 'Gunner', 'Catapult', '120');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1115', 'Skill', '-4', 'Gunner', 'Beams', '120');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1116', 'Skill', '-4', 'Gunner', 'Cannon', '120');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1117', 'Skill', '-4', 'Gunner', 'Machine Gun', '120');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1118', 'Skill', '-4', 'Gunner', 'Rockets', '120');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1119', 'DX', '-5', '80');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1120', 'Skill', '0', 'Two-Handed Axe/Mace', '80');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1121', 'Skill', '-3', 'Axe/Mace', '80');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1122', 'Skill', '-4', 'Polearm', '80');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1123', 'Skill', '-4', 'Two-Handed Flail', '80');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1124', 'DX', '-5', '81');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1125', 'Skill', '0', 'Two-Handed Axe/Mace', '81');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1126', 'Skill', '-3', 'Axe/Mace', '81');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1127', 'Skill', '-4', 'Polearm', '81');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1128', 'Skill', '-4', 'Two-Handed Flail', '81');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('1129', 'DX', '-4', '121');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1130', 'Skill', '-2', 'Guns', 'Pistol', '121');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1131', 'Skill', '0', 'Guns', 'Rifle', '121');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1132', 'Skill', '-2', 'Guns', 'Shotgun', '121');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1133', 'Skill', '-2', 'Guns', 'Light Machine Gun', '121');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1134', 'Skill', '-2', 'Guns', 'Submachine Gun', '121');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1135', 'Skill', '-2', 'Guns', 'Musket', '121');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1136', 'Skill', '-4', 'Guns', 'Grenade Launcher', '121');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1137', 'Skill', '-4', 'Guns', 'Gyroc', '121');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1138', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '121');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('1139', 'Skill', '0', 'Gun!', '121');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('1140', 'DX', '-5', '122');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('1141', 'Skill', '0', 'Bow', '122');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1142', 'DX', '-5', '82');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1143', 'Skill', '0', 'Smallsword', '82');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1144', 'Skill', '-3', 'Main-Gauche', '82');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1145', 'Skill', '-3', 'Rapier', '82');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1146', 'Skill', '-3', 'Saber', '82');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1147', 'Skill', '-4', 'Shortsword', '82');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1148', 'Skill', '0', 'Sword!', '82');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1149', 'DX', '-5', '83');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1150', 'Skill', '0', 'Smallsword', '83');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1151', 'Skill', '-3', 'Main-Gauche', '83');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1152', 'Skill', '-3', 'Rapier', '83');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1153', 'Skill', '-3', 'Saber', '83');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1154', 'Skill', '-4', 'Shortsword', '83');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1155', 'Skill', '0', 'Sword!', '83');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1156', 'DX', '-5', '84');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1157', 'Skill', '0', 'Shortsword', '84');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1158', 'Skill', '-2', 'Broadsword', '84');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1159', 'Skill', '-4', 'Force Sword', '84');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1160', 'Skill', '-3', 'Jitte/Sai', '84');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1161', 'Skill', '-4', 'Knife', '84');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1162', 'Skill', '-4', 'Saber', '84');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1163', 'Skill', '-4', 'Smallsword', '84');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1164', 'Skill', '-3', 'Tonfa', '84');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1165', 'Skill', '0', 'Sword!', '84');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1166', 'DX', '-5', '85');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1167', 'Skill', '0', 'Shortsword', '85');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1168', 'Skill', '-2', 'Broadsword', '85');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1169', 'Skill', '-4', 'Force Sword', '85');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1170', 'Skill', '-3', 'Jitte/Sai', '85');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1171', 'Skill', '-4', 'Knife', '85');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1172', 'Skill', '-4', 'Saber', '85');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1173', 'Skill', '-4', 'Smallsword', '85');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1174', 'Skill', '-3', 'Tonfa', '85');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1175', 'Skill', '0', 'Sword!', '85');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('1176', 'DX', '-4', '123');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1177', 'Skill', '0', 'Thrown Weapon', 'Shuriken', '123');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('1178', 'Skill', '-2', 'Throwing', '123');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('1179', 'DX', '-6', '124');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('1180', 'Skill', '0', 'Sling', '124');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1181', 'DX', '-4', '86');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('1182', 'Skill', '-2', 'Shield', 'Shield', '86');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('1183', 'Skill', '-2', 'Shield', 'Force Shield', '86');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('1184', 'Skill', '0', 'Shield', 'Buckler', '86');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1185', 'DX', '-4', '87');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('1186', 'Skill', '-2', 'Shield', 'Shield', '87');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('1187', 'Skill', '-2', 'Shield', 'Force Shield', '87');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('1188', 'Skill', '0', 'Shield', 'Buckler', '87');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1189', 'DX', '-4', '88');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1190', 'Skill', '0', 'Knife', '88');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1191', 'Skill', '-3', 'Force Sword', '88');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1192', 'Skill', '-3', 'Main-Gauche', '88');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1193', 'Skill', '-3', 'Shortsword', '88');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1194', 'Skill', '0', 'Sword!', '88');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1195', 'DX', '-4', '89');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1196', 'Skill', '0', 'Knife', '89');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1197', 'Skill', '-3', 'Force Sword', '89');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1198', 'Skill', '-3', 'Main-Gauche', '89');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1199', 'Skill', '-3', 'Shortsword', '89');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1200', 'Skill', '0', 'Sword!', '89');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('1201', 'DX', '-4', '125');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1202', 'Skill', '0', 'Thrown Weapon', 'Knife', '125');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1203', 'DX', '-5', '90');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1204', 'Skill', '0', 'Axe/Mace', '90');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1205', 'Skill', '-4', 'Flail', '90');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1206', 'Skill', '-3', 'Two-Handed Axe/Mace', '90');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('1207', 'DX', '-4', '126');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1208', 'Skill', '0', 'Thrown Weapon', 'Axe/Mace', '126');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1209', 'DX', '-4', '91');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('1210', 'Skill', '-2', 'Shield', 'Buckler', '91');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('1211', 'Skill', '-2', 'Shield', 'Force Shield', '91');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('1212', 'Skill', '0', 'Shield', 'Shield', '91');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1213', 'DX', '-4', '92');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('1214', 'Skill', '-2', 'Shield', 'Buckler', '92');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('1215', 'Skill', '-2', 'Shield', 'Force Shield', '92');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_melee_weapon])
  VALUES ('1216', 'Skill', '0', 'Shield', 'Shield', '92');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1217', 'DX', '-5', '93');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1218', 'Skill', '0', 'Smallsword', '93');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1219', 'Skill', '-3', 'Main-Gauche', '93');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1220', 'Skill', '-3', 'Rapier', '93');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1221', 'Skill', '-3', 'Saber', '93');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1222', 'Skill', '-4', 'Shortsword', '93');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1223', 'Skill', '0', 'Sword!', '93');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('1224', 'DX', '-4', '127');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1225', 'Skill', '-2', 'Guns', 'Pistol', '127');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1226', 'Skill', '-2', 'Guns', 'Rifle', '127');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1227', 'Skill', '-2', 'Guns', 'Shotgun', '127');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1228', 'Skill', '-2', 'Guns', 'Light Machine Gun', '127');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1229', 'Skill', '0', 'Guns', 'Submachine Gun', '127');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1230', 'Skill', '-2', 'Guns', 'Musket', '127');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1231', 'Skill', '-4', 'Guns', 'Grenade Launcher', '127');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1232', 'Skill', '-4', 'Guns', 'Gyroc', '127');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1233', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '127');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('1234', 'Skill', '0', 'Gun!', '127');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('1235', 'DX', '-4', '128');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1236', 'Skill', '-2', 'Guns', 'Pistol', '128');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1237', 'Skill', '-2', 'Guns', 'Rifle', '128');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1238', 'Skill', '-2', 'Guns', 'Shotgun', '128');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1239', 'Skill', '-2', 'Guns', 'Light Machine Gun', '128');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1240', 'Skill', '0', 'Guns', 'Submachine Gun', '128');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1241', 'Skill', '-2', 'Guns', 'Musket', '128');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1242', 'Skill', '-4', 'Guns', 'Grenade Launcher', '128');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1243', 'Skill', '-4', 'Guns', 'Gyroc', '128');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1244', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '128');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('1245', 'Skill', '0', 'Gun!', '128');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('1246', 'DX', '-4', '129');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1247', 'Skill', '-2', 'Guns', 'Pistol', '129');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1248', 'Skill', '-2', 'Guns', 'Rifle', '129');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1249', 'Skill', '-2', 'Guns', 'Shotgun', '129');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1250', 'Skill', '-2', 'Guns', 'Light Machine Gun', '129');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1251', 'Skill', '0', 'Guns', 'Submachine Gun', '129');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1252', 'Skill', '-2', 'Guns', 'Musket', '129');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1253', 'Skill', '-4', 'Guns', 'Grenade Launcher', '129');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1254', 'Skill', '-4', 'Guns', 'Gyroc', '129');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1255', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '129');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('1256', 'Skill', '0', 'Gun!', '129');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('1257', 'DX', '-4', '130');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1258', 'Skill', '-2', 'Guns', 'Pistol', '130');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1259', 'Skill', '0', 'Guns', 'Rifle', '130');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1260', 'Skill', '-2', 'Guns', 'Shotgun', '130');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1261', 'Skill', '-2', 'Guns', 'Light Machine Gun', '130');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1262', 'Skill', '-2', 'Guns', 'Submachine Gun', '130');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1263', 'Skill', '-2', 'Guns', 'Musket', '130');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1264', 'Skill', '-4', 'Guns', 'Grenade Launcher', '130');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1265', 'Skill', '-4', 'Guns', 'Gyroc', '130');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1266', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '130');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('1267', 'Skill', '0', 'Gun!', '130');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('1268', 'DX', '-4', '131');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1269', 'Skill', '0', 'Guns', 'Pistol', '131');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1270', 'Skill', '-2', 'Guns', 'Rifle', '131');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1271', 'Skill', '-2', 'Guns', 'Shotgun', '131');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1272', 'Skill', '-2', 'Guns', 'Light Machine Gun', '131');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1273', 'Skill', '-2', 'Guns', 'Submachine Gun', '131');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1274', 'Skill', '-2', 'Guns', 'Musket', '131');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1275', 'Skill', '-4', 'Guns', 'Grenade Launcher', '131');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1276', 'Skill', '-4', 'Guns', 'Gyroc', '131');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1277', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '131');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('1278', 'Skill', '0', 'Gun!', '131');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1279', 'DX', '-5', '94');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1280', 'Skill', '0', 'Spear', '94');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1281', 'Skill', '-4', 'Polearm', '94');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1282', 'Skill', '-2', 'Staff', '94');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1283', 'DX', '-5', '95');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1284', 'Skill', '0', 'Spear', '95');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1285', 'Skill', '-4', 'Polearm', '95');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1286', 'Skill', '-2', 'Staff', '95');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('1287', 'DX', '-4', '132');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1288', 'Skill', '0', 'Thrown Weapon', 'Spear', '132');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('1289', 'Skill', '-4', 'Spear Thrower', '132');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1290', 'Skill', '-2', 'Thrown Weapon', 'Harpoon', '132');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('1291', 'Skill', '0', 'Sling', '133');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('1292', 'DX', '-6', '133');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1293', 'Skill', '0', 'Brawling', '96');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1294', 'DX', '0', '96');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1295', 'DX', '-5', '97');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1296', 'Skill', '0', 'Axe/Mace', '97');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1297', 'Skill', '-4', 'Flail', '97');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1298', 'Skill', '-3', 'Two-Handed Axe/Mace', '97');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('1299', 'DX', '-4', '134');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1300', 'Skill', '0', 'Thrown Weapon', 'Axe/Mace', '134');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1301', 'DX', '-5', '98');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1302', 'Skill', '0', 'Broadsword', '98');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1303', 'Skill', '-4', 'Force Sword', '98');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1304', 'Skill', '-4', 'Rapier', '98');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1305', 'Skill', '-4', 'Saber', '98');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1306', 'Skill', '-2', 'Shortsword', '98');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1307', 'Skill', '0', 'Two-Handed Sword', '98');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1308', 'Skill', '0', 'Sword!', '98');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1309', 'DX', '-5', '99');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1310', 'Skill', '0', 'Broadsword', '99');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1311', 'Skill', '-4', 'Force Sword', '99');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1312', 'Skill', '-4', 'Rapier', '99');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1313', 'Skill', '-4', 'Saber', '99');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1314', 'Skill', '-2', 'Shortsword', '99');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1315', 'Skill', '0', 'Two-Handed Sword', '99');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1316', 'Skill', '0', 'Sword!', '99');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1317', 'DX', '-5', '100');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1318', 'Skill', '0', 'Two-Handed Sword', '100');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1319', 'Skill', '-4', 'Broadsword', '100');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1320', 'Skill', '-4', 'Force Sword', '100');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1321', 'Skill', '0', 'Sword!', '100');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1322', 'DX', '-5', '101');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1323', 'Skill', '0', 'Two-Handed Sword', '101');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1324', 'Skill', '-4', 'Broadsword', '101');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1325', 'Skill', '-4', 'Force Sword', '101');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1326', 'Skill', '0', 'Sword!', '101');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1327', 'DX', '-5', '102');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1328', 'Skill', '-4', 'Force Sword', '102');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1329', 'Skill', '0', 'Broadsword', '102');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1330', 'Skill', '-4', 'Rapier', '102');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1331', 'Skill', '-4', 'Saber', '102');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1332', 'Skill', '-2', 'Shortsword', '102');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1333', 'Skill', '-4', 'Two-Handed Sword', '102');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1334', 'Skill', '0', 'Sword!', '102');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1335', 'DX', '-5', '103');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1336', 'Skill', '-4', 'Force Sword', '103');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1337', 'Skill', '0', 'Broadsword', '103');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1338', 'Skill', '-4', 'Rapier', '103');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1339', 'Skill', '-4', 'Saber', '103');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1340', 'Skill', '-2', 'Shortsword', '103');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1341', 'Skill', '-4', 'Two-Handed Sword', '103');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1342', 'Skill', '0', 'Sword!', '103');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1343', 'DX', '-5', '104');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1344', 'Skill', '0', 'Two-Handed Sword', '104');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1345', 'Skill', '-4', 'Broadsword', '104');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1346', 'Skill', '-4', 'Force Sword', '104');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1347', 'Skill', '0', 'Sword!', '104');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1348', 'DX', '-5', '105');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1349', 'Skill', '0', 'Two-Handed Sword', '105');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1350', 'Skill', '-4', 'Broadsword', '105');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1351', 'Skill', '-4', 'Force Sword', '105');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1352', 'Skill', '0', 'Sword!', '105');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('1353', 'DX', '-4', '135');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1354', 'Skill', '-4', 'Guns', 'Pistol', '135');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1355', 'Skill', '-4', 'Guns', 'Rifle', '135');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1356', 'Skill', '-4', 'Guns', 'Shotgun', '135');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1357', 'Skill', '-4', 'Guns', 'Light Machine Gun', '135');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1358', 'Skill', '-4', 'Guns', 'Submachine Gun', '135');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1359', 'Skill', '-4', 'Guns', 'Musket', '135');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1360', 'Skill', '0', 'Guns', 'Grenade Launcher', '135');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1361', 'Skill', '-4', 'Guns', 'Gyroc', '135');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1362', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '135');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('1363', 'Skill', '0', 'Gun!', '135');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1364', 'DX', '-5', '106');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1365', 'Skill', '0', 'Two-Handed Axe/Mace', '106');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1366', 'Skill', '-3', 'Axe/Mace', '106');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1367', 'Skill', '-4', 'Polearm', '106');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1368', 'Skill', '-4', 'Two-Handed Flail', '106');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('1369', 'DX', '-4', '136');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1370', 'Skill', '0', 'Guns', 'Pistol', '136');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1371', 'Skill', '-2', 'Guns', 'Rifle', '136');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1372', 'Skill', '-2', 'Guns', 'Shotgun', '136');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1373', 'Skill', '-2', 'Guns', 'Light Machine Gun', '136');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1374', 'Skill', '-2', 'Guns', 'Submachine Gun', '136');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1375', 'Skill', '-2', 'Guns', 'Musket', '136');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1376', 'Skill', '-4', 'Guns', 'Grenade Launcher', '136');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1377', 'Skill', '-4', 'Guns', 'Gyroc', '136');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1378', 'Skill', '-4', 'Guns', 'Light Anti-Armor Weapon', '136');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_ranged_weapon])
  VALUES ('1379', 'Skill', '0', 'Gun!', '136');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1380', 'DX', '-5', '107');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1381', 'Skill', '0', 'Whip', '107');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1382', 'Skill', '-3', 'Kusari', '107');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1383', 'Skill', '-3', 'Monowire Whip', '107');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1384', 'DX', '-5', '108');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1385', 'Skill', '0', 'Whip', '108');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1386', 'Skill', '-3', 'Kusari', '108');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1387', 'Skill', '-3', 'Monowire Whip', '108');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1388', 'DX', '-5', '109');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1389', 'Skill', '0', 'Whip', '109');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1390', 'Skill', '-3', 'Kusari', '109');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1391', 'Skill', '-3', 'Monowire Whip', '109');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1392', 'DX', '-5', '110');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1393', 'Skill', '0', 'Whip', '110');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1394', 'Skill', '-3', 'Kusari', '110');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1395', 'Skill', '-3', 'Monowire Whip', '110');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1396', 'DX', '-5', '111');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1397', 'Skill', '0', 'Whip', '111');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1398', 'Skill', '-3', 'Kusari', '111');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1399', 'Skill', '-3', 'Monowire Whip', '111');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1400', 'DX', '-5', '112');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1401', 'Skill', '0', 'Whip', '112');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1402', 'Skill', '-3', 'Kusari', '112');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1403', 'Skill', '-3', 'Monowire Whip', '112');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1404', 'DX', '-5', '113');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1405', 'Skill', '0', 'Whip', '113');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1406', 'Skill', '-3', 'Kusari', '113');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1407', 'Skill', '-3', 'Monowire Whip', '113');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_melee_weapon])
  VALUES ('1408', 'DX', '-4', '114');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1409', 'Skill', '0', 'Knife', '114');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1410', 'Skill', '-3', 'Force Sword', '114');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1411', 'Skill', '-3', 'Main-Gauche', '114');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1412', 'Skill', '-3', 'Shortsword', '114');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [FK_melee_weapon])
  VALUES ('1413', 'Skill', '0', 'Sword!', '114');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [FK_ranged_weapon])
  VALUES ('1414', 'DX', '-4', '137');
INSERT INTO [Item1].[inv].[default] ([PrimaryKey], [type], [modifier], [name], [specialization], [FK_ranged_weapon])
  VALUES ('1415', 'Skill', '0', 'Thrown Weapon', 'Knife', '137');
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[inv].[dr_bonus]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[inv].[dr_bonus] (
    [PrimaryKey] VARCHAR(255)
   ,[location] VARCHAR(255)
   ,[amount] VARCHAR(255)
   ,[FK_equipment] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('1', 'feet', '6', '5');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('2', 'feet', '9', '6');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('3', 'feet', '12', '7');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('4', 'hands', '8', '24');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('5', 'hands', '12', '25');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('6', 'hands', '16', '26');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('7', 'skull', '12', '27');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('8', 'skull', '18', '28');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('9', 'skull', '24', '29');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('10', 'skull', '36', '30');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('11', 'eyes', '10', '31');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('12', 'face', '10', '31');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('13', 'eyes', '15', '32');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('14', 'face', '15', '32');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('15', 'eyes', '20', '33');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('16', 'face', '20', '33');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('17', 'eyes', '30', '34');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('18', 'face', '30', '34');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('19', 'torso', '12', '35');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('20', 'arms', '12', '35');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('21', 'legs', '12', '35');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('22', 'torso', '18', '36');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('23', 'arms', '18', '36');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('24', 'legs', '18', '36');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('25', 'torso', '24', '37');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('26', 'arms', '24', '37');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('27', 'legs', '24', '37');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('28', 'torso', '8', '38');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('29', 'torso', '12', '39');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('30', 'torso', '16', '40');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('31', 'torso', '24', '41');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('32', 'skull', '6', '43');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('33', 'face', '6', '43');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('34', 'neck', '50', '49');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('35', 'torso', '70', '49');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('36', 'groin', '50', '49');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('37', 'arms', '50', '49');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('38', 'hands', '50', '49');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('39', 'legs', '50', '49');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('40', 'feet', '50', '49');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('41', 'neck', '75', '50');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('42', 'torso', '105', '50');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('43', 'groin', '75', '50');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('44', 'arms', '75', '50');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('45', 'hands', '75', '50');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('46', 'legs', '75', '50');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('47', 'feet', '75', '50');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('48', 'neck', '100', '51');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('49', 'torso', '140', '51');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('50', 'groin', '100', '51');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('51', 'arms', '100', '51');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('52', 'hands', '100', '51');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('53', 'legs', '100', '51');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('54', 'feet', '100', '51');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('55', 'eyes', '50', '52');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('56', 'skull', '70', '52');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('57', 'face', '50', '52');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('58', 'eyes', '75', '53');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('59', 'skull', '105', '53');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('60', 'face', '75', '53');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('61', 'eyes', '100', '54');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('62', 'skull', '140', '54');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('63', 'face', '100', '54');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('64', 'feet', '2', '67');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('65', 'arms', '3', '70');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('66', 'torso', '4', '71');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('67', 'torso', '5', '72');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('68', 'groin', '5', '72');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('69', 'legs', '3', '73');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('70', 'face', '3', '74');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('71', 'skull', '3', '74');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('72', 'skull', '3', '75');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('73', 'torso', '2', '76');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('74', 'arms', '2', '76');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('75', 'legs', '2', '76');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('76', 'groin', '1', '93');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('77', 'torso', '1', '93');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('78', 'skull', '1', '94');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('79', 'hands', '1', '95');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('80', 'arms', '1', '96');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('81', 'neck', '30', '97');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('82', 'torso', '50', '97');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('83', 'groin', '30', '97');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('84', 'arms', '30', '97');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('85', 'hands', '30', '97');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('86', 'legs', '30', '97');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('87', 'feet', '30', '97');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('88', 'neck', '45', '98');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('89', 'torso', '75', '98');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('90', 'groin', '45', '98');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('91', 'arms', '45', '98');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('92', 'hands', '45', '98');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('93', 'legs', '45', '98');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('94', 'feet', '45', '98');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('95', 'neck', '60', '99');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('96', 'torso', '100', '99');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('97', 'groin', '60', '99');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('98', 'arms', '60', '99');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('99', 'hands', '60', '99');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('100', 'legs', '60', '99');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('101', 'feet', '60', '99');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('102', 'eyes', '12', '100');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('103', 'skull', '18', '100');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('104', 'face', '12', '100');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('105', 'eyes', '18', '101');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('106', 'skull', '27', '101');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('107', 'face', '18', '101');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('108', 'eyes', '24', '102');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('109', 'skull', '36', '102');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('110', 'face', '24', '102');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('111', 'torso', '5', '136');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('112', 'groin', '5', '136');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('113', 'face', '4', '142');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('114', 'torso', '7', '146');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('115', 'skull', '5', '154');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('116', 'face', '1', '155');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('117', 'eyes', '1', '155');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('118', 'torso', '5', '156');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('119', 'groin', '5', '156');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('120', 'torso', '20', '157');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('121', 'groin', '1', '158');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('122', 'torso', '1', '159');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('123', 'face', '2', '161');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('124', 'eyes', '2', '161');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('125', 'hands', '4', '163');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('126', 'neck', '7', '171');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('127', 'face', '7', '171');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('128', 'skull', '7', '171');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('129', 'hands', '5', '182');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('130', 'legs', '2', '183');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('131', 'arms', '2', '184');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('132', 'arms', '7', '185');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('133', 'legs', '7', '186');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('134', 'torso', '7', '187');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('135', 'groin', '7', '187');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('136', 'torso', '2', '217');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('137', 'groin', '2', '217');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('138', 'skull', '1', '218');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('139', 'hands', '2', '219');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('140', 'skull', '2', '220');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('141', 'face', '2', '220');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('142', 'torso', '1', '221');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('143', 'arms', '1', '221');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('144', 'legs', '1', '222');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('145', 'groin', '1', '223');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('146', 'legs', '1', '223');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('147', 'skull', '4', '224');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('148', 'face', '4', '224');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('149', 'torso', '3', '231');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('150', 'torso', '5', '238');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('151', 'skull', '4', '241');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('152', 'neck', '4', '241');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('153', 'torso', '4', '242');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('154', 'groin', '4', '242');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('155', 'legs', '4', '243');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('156', 'torso', '4', '244');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('157', 'arms', '4', '245');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('158', 'skull', '1', '266');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('159', 'neck', '1', '266');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('160', 'torso', '1', '266');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('161', 'groin', '1', '266');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('162', 'arms', '1', '266');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('163', 'hands', '1', '266');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('164', 'legs', '1', '266');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('165', 'feet', '1', '266');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('166', 'arms', '6', '289');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('167', 'legs', '6', '290');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('168', 'skull', '4', '303');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('169', 'feet', '2', '328');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('170', 'torso', '4', '347');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('171', 'groin', '4', '347');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('172', 'legs', '4', '348');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('173', 'arms', '4', '349');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('174', 'feet', '1', '356');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('175', 'feet', '4', '382');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('176', 'neck', '30', '383');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('177', 'torso', '50', '383');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('178', 'groin', '30', '383');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('179', 'arms', '30', '383');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('180', 'hands', '30', '383');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('181', 'legs', '30', '383');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('182', 'feet', '30', '383');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('183', 'neck', '45', '384');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('184', 'torso', '75', '384');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('185', 'groin', '45', '384');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('186', 'arms', '45', '384');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('187', 'hands', '45', '384');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('188', 'legs', '45', '384');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('189', 'feet', '45', '384');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('190', 'neck', '60', '385');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('191', 'torso', '100', '385');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('192', 'groin', '60', '385');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('193', 'arms', '60', '385');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('194', 'hands', '60', '385');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('195', 'legs', '60', '385');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('196', 'feet', '60', '385');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('197', 'eyes', '30', '386');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('198', 'skull', '40', '386');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('199', 'face', '30', '386');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('200', 'eyes', '45', '387');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('201', 'skull', '60', '387');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('202', 'face', '45', '387');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('203', 'eyes', '60', '388');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('204', 'skull', '80', '388');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('205', 'face', '60', '388');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('206', 'eyes', '3', '389');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('207', 'skull', '3', '389');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('208', 'face', '3', '389');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('209', 'neck', '2', '390');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('210', 'torso', '2', '390');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('211', 'groin', '2', '390');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('212', 'arms', '2', '390');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('213', 'hands', '2', '390');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('214', 'legs', '2', '390');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('215', 'feet', '2', '390');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('216', 'torso', '5', '396');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('217', 'groin', '6', '397');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('218', 'torso', '6', '397');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('219', 'groin', '5', '398');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('220', 'torso', '5', '398');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('221', 'skull', '4', '399');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('222', 'groin', '3', '401');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('223', 'legs', '3', '401');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('224', 'skull', '20', '405');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('225', 'neck', '20', '405');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('226', 'torso', '20', '405');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('227', 'groin', '20', '405');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('228', 'arms', '20', '405');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('229', 'hands', '20', '405');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('230', 'legs', '20', '405');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('231', 'feet', '20', '405');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('232', 'skull', '30', '406');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('233', 'neck', '30', '406');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('234', 'torso', '30', '406');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('235', 'groin', '30', '406');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('236', 'arms', '30', '406');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('237', 'hands', '30', '406');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('238', 'legs', '30', '406');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('239', 'feet', '30', '406');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('240', 'skull', '40', '407');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('241', 'neck', '40', '407');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('242', 'torso', '40', '407');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('243', 'groin', '40', '407');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('244', 'arms', '40', '407');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('245', 'hands', '40', '407');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('246', 'legs', '40', '407');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('247', 'feet', '40', '407');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('248', 'torso', '12', '408');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('249', 'groin', '12', '408');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('250', 'torso', '18', '409');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('251', 'groin', '18', '409');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('252', 'torso', '24', '410');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('253', 'groin', '24', '410');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('254', 'torso', '32', '411');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('255', 'groin', '32', '411');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('256', 'torso', '23', '412');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('257', 'neck', '6', '429');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('258', 'torso', '6', '429');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('259', 'groin', '6', '429');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('260', 'arms', '6', '429');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('261', 'hands', '6', '429');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('262', 'legs', '6', '429');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('263', 'feet', '6', '429');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('264', 'neck', '9', '430');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('265', 'torso', '9', '430');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('266', 'groin', '9', '430');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('267', 'arms', '9', '430');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('268', 'hands', '9', '430');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('269', 'legs', '9', '430');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('270', 'feet', '9', '430');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('271', 'neck', '12', '431');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('272', 'torso', '12', '431');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('273', 'groin', '12', '431');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('274', 'arms', '12', '431');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('275', 'hands', '12', '431');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('276', 'legs', '12', '431');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('277', 'feet', '12', '431');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('278', 'eyes', '6', '432');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('279', 'skull', '6', '432');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('280', 'face', '6', '432');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('281', 'eyes', '9', '433');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('282', 'skull', '9', '433');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('283', 'face', '9', '433');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('284', 'eyes', '12', '434');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('285', 'skull', '12', '434');
INSERT INTO [Item1].[inv].[dr_bonus] ([PrimaryKey], [location], [amount], [FK_equipment])
  VALUES ('286', 'face', '12', '434');
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[inv].[equipment]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[inv].[equipment] (
    [PrimaryKey] VARCHAR(255)
   ,[version] VARCHAR(255)
   ,[quantity] VARCHAR(255)
   ,[description] VARCHAR(255)
   ,[tech_level] VARCHAR(255)
   ,[legality_class] VARCHAR(255)
   ,[value] VARCHAR(255)
   ,[reference] VARCHAR(255)
   ,[notes] VARCHAR(255)
   ,[weight] VARCHAR(255)
   ,[FK_equipment_list] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [FK_equipment_list])
  VALUES ('1', '3', '1', 'Antibiotic', '6', '4', '20', 'B289', 'Prevents or cures (in 1d days) infections.', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('2', '3', '1', 'Antitoxin Kit', '6', '4', '25', 'B289', 'Antidote for specific poison. 10 uses', '0.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('3', '3', '1', 'Arrow', '0', '4', '2', 'B276', '0.1 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('4', '3', '1', 'Arrow, Bodkin', '3', '4', '2', 'B277', 'Changes damage to piercing with armor divisor of (2).', '0.1 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('5', '3', '1', 'Assault Boots', '9', '4', '150', 'B284', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('6', '3', '1', 'Assault Boots', '10', '4', '150', 'B284', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('7', '3', '1', 'Assault Boots', '11', '4', '150', 'B284', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('8', '3', '1', 'Assault Carbine, 5.56mm', '8', '2', '900', 'B279', '7.3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('9', '3', '1', 'Assault Rifle, 5.56mm', '7', '2', '800', 'B279', '9 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('10', '3', '1', 'Assault Rifle, 7.62mmS', '7', '2', '300', 'B279', '10.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('11', '3', '1', 'ATGM, 115mm', '7', '1', '20000', 'B281', '37 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('12', '3', '1', 'Atlatl w/Dart', '0', '4', '20', 'B276', '1 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('13', '3', '1', 'Atlatl w/Javelin', '0', '4', '30', 'B276', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('14', '3', '1', 'Auto Pistol, .40', '8', '3', '640', 'B278', '2.1 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('15', '3', '1', 'Auto Pistol, .44M', '8', '3', '750', 'B278', '4.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('16', '3', '1', 'Auto Pistol, .45', '6', '3', '300', 'B278', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('17', '3', '1', 'Auto Pistol, 9mm', '6', '3', '350', 'B278', '2.4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('18', '3', '1', 'Auto Pistol, 9mm', '7', '3', '600', 'B278', '2.6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('19', '3', '1', 'Auto Pistol, 9mm', '8', '3', '800', 'B278', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('20', '3', '1', 'Auto Rifle, 7.62mm', '6', '2', '6500', 'B281', '22 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('21', '3', '1', 'Auto Shotgun, 12G', '7', '3', '950', 'B279', '8.4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('22', '3', '1', 'Axe', '0', '4', '50', 'B271', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('23', '3', '1', 'Balance and Weights', '1', '4', '35', 'B289', 'For weighing goods', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [FK_equipment_list])
  VALUES ('24', '3', '1', 'Ballistic Gloves', '9', '4', '150', 'B284', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [FK_equipment_list])
  VALUES ('25', '3', '1', 'Ballistic Gloves', '10', '4', '150', 'B284', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [FK_equipment_list])
  VALUES ('26', '3', '1', 'Ballistic Gloves', '11', '4', '150', 'B284', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('27', '3', '1', 'Ballistic Helmet', '8', '3', '250', 'B285', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('28', '3', '1', 'Ballistic Helmet', '9', '3', '250', 'B285', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('29', '3', '1', 'Ballistic Helmet', '10', '3', '250', 'B285', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('30', '3', '1', 'Ballistic Helmet', '11', '3', '250', 'B285', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('31', '3', '1', 'Ballistic Helmet Visor', '8', '3', '100', 'B285', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('32', '3', '1', 'Ballistic Helmet Visor', '9', '3', '100', 'B285', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('33', '3', '1', 'Ballistic Helmet Visor', '10', '3', '100', 'B285', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('34', '3', '1', 'Ballistic Helmet Visor', '11', '3', '100', 'B285', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('35', '3', '1', 'Ballistic Suit', '9', '3', '1000', 'B284', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('36', '3', '1', 'Ballistic Suit', '10', '3', '1000', 'B284', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('37', '3', '1', 'Ballistic Suit', '11', '3', '1000', 'B284', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('38', '3', '1', 'Ballistic Vest', '8', '3', '400', 'B284', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('39', '3', '1', 'Ballistic Vest', '9', '3', '400', 'B284', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('40', '3', '1', 'Ballistic Vest', '10', '3', '400', 'B284', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('41', '3', '1', 'Ballistic Vest', '11', '3', '400', 'B284', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('42', '3', '1', 'Bandages', '4', '10', 'B289', 'Bandages for a  half-dozen wounds. Might be clean cloth, adhesive dressings, or spray-on "Plastiskin", depending on TL. Basic equipment for First Aid skill.', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('43', '3', '1', 'Barrel Helm', '3', '3', '240', 'B284', '10 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('44', '3', '1', 'Bastard Sword', '3', '4', '650', 'B271', '5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('45', '3', '1', 'Bastard Sword', '3', '4', '650', 'B274', 'Using Two-Handed Sword skill', '5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('46', '3', '1', 'Baton', '0', '4', '20', 'B273', '1 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [FK_equipment_list])
  VALUES ('47', '3', '1', 'Batteries', '6', '4', '1', 'B288', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('48', '3', '1', 'Battle Rifle, 7.62mm', '7', '2', '900', 'B279', '11 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('49', '3', '1', 'Battle Suit', '9', '1', '80000', 'B285', '150 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('50', '3', '1', 'Battle Suit', '10', '1', '80000', 'B285', '150 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('51', '3', '1', 'Battle Suit', '11', '1', '80000', 'B285', '150 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('52', '3', '1', 'Battle Suit Helmet', '9', '1', '10000', 'B285', '15 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('53', '3', '1', 'Battle Suit Helmet', '10', '1', '10000', 'B285', '15 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('54', '3', '1', 'Battle Suit Helmet', '11', '1', '10000', 'B285', '15 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('55', '3', '1', 'Bazooka, 60mm', '7', '1', '1000', 'B281', '16.7 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('56', '3', '1', 'Binoculars', '6', '4', '400', 'B289', 'Gives (TL-4) levels of Telescopic Vision.', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('57', '3', '1', 'Bit and Bridle', '1', '4', '35', 'B289', '+2 to control horse, or +3 if using both hands', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('58', '3', '1', 'Blackjack', '1', '4', '20', 'B271', '1 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('59', '3', '1', 'Blanket', '1', '4', '20', 'B288', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('60', '3', '1', 'Blaster Pistol', '11', '3', '2200', 'B280', '1.6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('61', '3', '1', 'Blaster Rifle', '11', '2', '18000', 'B280', '10 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('62', '3', '1', 'Blowpipe', '0', '4', '30', 'B275', '1 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('63', '3', '1', 'Blowpipe Darts', '0', '4', '0.1', 'B276', '0.05 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('64', '3', '1', 'Blunderbuss, 8G', '4', '4', '150', 'B279', '12 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('65', '3', '1', 'Bolas', '0', '4', '20', 'B275', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('66', '3', '1', 'Bolt-Action Rifle, 7.62mm', '6', '3', '350', 'B279', '8.9 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('67', '3', '1', 'Boots', '2', '80', 'B284', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('68', '3', '1', 'Brass Knuckles', '1', '4', '10', 'B271', '0.25 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('69', '3', '1', 'Broadsword', '2', '4', '500', 'B271', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('70', '3', '1', 'Bronze Armbands', '1', '4', '180', 'B283', '9 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('71', '3', '1', 'Bronze Breastplate', '1', '3', '400', 'B283', '20 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('72', '3', '1', 'Bronze Corselet', '1', '3', '1300', 'B283', '40 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('73', '3', '1', 'Bronze Greaves', '1', '4', '270', 'B283', '17 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('74', '3', '1', 'Bronze Helmet', '1', '4', '160', 'B284', '7.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('75', '3', '1', 'Bronze Pot-Helm', '1', '4', '60', 'B284', '5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('76', '3', '1', 'Buff Coat', '4', '4', '210', 'B283', '16 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('77', '3', '1', 'Bug Stomper', '7', '4', '1200', 'B289', 'Jams bugs in 10-yard radius. 8 hrs.', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [FK_equipment_list])
  VALUES ('78', '3', '1', 'Bug, Audio', '7', '4', '200', 'B289', '-7 to spot, 1/4-mile range, transmits for 1 week.', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('79', '3', '1', 'Cable, Steel, 1.5", 10 yards', '5', '4', '100', 'B288', 'Supports 3,700 lbs.', '17 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('80', '3', '1', 'Cable, Steel, 1.5", 20 yards', '5', '4', '200', 'B288', 'Supports 3,700 lbs.', '34 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('81', '3', '1', 'Camcorder', '8', '4', '1000', 'B289', 'Has 10x zoom. Gives Night Vision 5. 7 hrs.', '1 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('82', '3', '1', 'Camera, 35mm', '6', '4', '50', 'B289', 'Basic equipment for Photography skill. Extra film is 32 shots ($10, neg.).', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [FK_equipment_list])
  VALUES ('83', '3', '1', 'Camera-Film', '6', '4', '10', 'B289', 'Extra film with 32 shots', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('84', '3', '1', 'Camp Stove, Small', '6', '4', '50', 'B288', 'Uses 1/4 gallon of kerosene per 4 hrs', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('85', '3', '1', 'Candle, Tallow', '1', '4', '5', 'B288', 'Lasts 12 hours', '1 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('86', '3', '1', 'Cartridge Rifle, .45', '5', '3', '200', 'B279', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('87', '3', '1', 'Cattle Prod', '7', '4', '50', 'B273', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('88', '3', '1', 'Cavalry Saber', '4', '4', '500', 'B271', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('89', '3', '1', 'Cell Phone', '8', '4', '250', 'B288', 'Only works in some areas; $20/month fee., 10 hrs.', '0.25 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('90', '3', '1', 'Chainsaw', '6', '4', '150', 'B274', '13 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('91', '3', '1', 'Cigarette Lighter', '6', '4', '10', 'B288', '0.01 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('92', '3', '1', 'Climbing Gear', '2', '4', '20', 'B288', 'Hammer, spikes, carabiners', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('93', '3', '1', 'Cloth Armor', '1', '30', 'B283', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [value], [reference], [FK_equipment_list])
  VALUES ('94', '3', '1', 'Cloth Cap', '1', '5', 'B284', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [value], [reference], [FK_equipment_list])
  VALUES ('95', '3', '1', 'Cloth Gloves', '1', '15', 'B284', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('96', '3', '1', 'Cloth Sleeves', '1', '20', 'B283', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('97', '3', '1', 'Combat Hardsuit', '9', '2', '10000', 'B285', '30 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('98', '3', '1', 'Combat Hardsuit', '10', '2', '10000', 'B285', '30 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('99', '3', '1', 'Combat Hardsuit', '11', '2', '10000', 'B285', '30 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('100', '3', '1', 'Combat Hardsuit Helmet', '9', '2', '2000', 'B285', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('101', '3', '1', 'Combat Hardsuit Helmet', '10', '2', '2000', 'B285', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('102', '3', '1', 'Combat Hardsuit Helmet', '11', '2', '2000', 'B285', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('103', '3', '1', 'Compass', '6', '4', '50', 'B288', '0.144 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('104', '3', '1', 'Composite Bow', '1', '4', '900', 'B275', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('105', '3', '1', 'Computer, Laptop', '8', '4', '1500', 'B288', 'Modem plugs into phone. 2 hrs.', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('106', '3', '1', 'Computer, Wearable', '8', '4', '1000', 'B288', 'Display glasses and wireless modem. 8 hrs.', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('107', '3', '1', 'Copper Farthing', '4', '1', 'B264', '0.008 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('108', '3', '1', 'Cord, 3/16", 10 yards', '0', '4', '1', 'B288', 'Supports 90 lbs.', '0.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('109', '3', '1', 'Cord, 3/16", 20 yards', '0', '4', '2', 'B288', 'Supports 90 lbs.', '1 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('110', '3', '1', 'Crash Kit/TL0-5', '0-5', '4', '200', 'B289', 'A complete kit for treating serous injuries. Includes sterile bandages, sutures, and drugs appropriate for the TL. Counts as improvised gear (-5) for Surgery', '10 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('111', '3', '1', 'Crash Kit/TL6+', '6+', '4', '200', 'B289', 'A complete kit for treating serous injuries. Includes sterile bandages, sutures, and drugs appropriate for the TL. Includes IV drip, needle, and plasma. Counts as improvised gear (-5) for Surgery', '10 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('112', '3', '1', 'Crossbow (ST7)', '2', '4', '150', 'B276', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('113', '3', '1', 'Crossbow (ST8)', '2', '4', '155', 'B276', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('114', '3', '1', 'Crossbow (ST9)', '2', '4', '160', 'B276', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('115', '3', '1', 'Crossbow (ST10)', '2', '4', '165', 'B276', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('116', '3', '1', 'Crossbow (ST11)', '2', '4', '170', 'B276', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('117', '3', '1', 'Crossbow (ST12)', '2', '4', '175', 'B276', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('118', '3', '1', 'Crossbow (ST13)', '2', '4', '185', 'B276', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('119', '3', '1', 'Crossbow (ST14)', '2', '4', '195', 'B276', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('120', '3', '1', 'Crossbow (ST15)', '2', '4', '205', 'B276', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('121', '3', '1', 'Crossbow (ST16)', '2', '4', '215', 'B276', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('122', '3', '1', 'Crossbow (ST17)', '2', '4', '230', 'B276', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('123', '3', '1', 'Crossbow (ST18)', '2', '4', '245', 'B276', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('124', '3', '1', 'Crossbow (ST19)', '2', '4', '260', 'B276', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('125', '3', '1', 'Crossbow (ST20)', '2', '4', '275', 'B276', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('126', '3', '1', 'Crossbow Bolt', '2', '4', '2', 'B276', '0.06 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('127', '3', '1', 'Crowbar, 3''', '2', '4', '20', 'B289', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('128', '3', '1', 'Cutlass', '4', '4', '300', 'B273', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('129', '3', '1', 'Cutting Torch', '6', '4', '500', 'B289', '1d+3(2) burn per second. Each gas bottle gives 30 seconds of cutting. Extra gas bottles are $50, 15 lbs. per bottle.', '30 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('130', '3', '1', 'Cutting Torch Gas Bottle', '6', '4', '50', 'B289', 'Extra Gas Bottle', '15 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('131', '3', '1', 'Dagger', '1', '4', '20', 'B272', '0.25 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('132', '3', '1', 'Dart Rifle, 11mm', '8', '4', '1200', 'B279', '6.6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('133', '3', '1', 'Derringer, .41', '5', '3', '100', 'B278', '0.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('134', '3', '1', 'Disguise Kit', '5', '4', '200', 'B289', '10 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('135', '3', '1', 'Double Shotgun, 10G', '5', '4', '450', 'B279', '10 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('136', '3', '1', 'Douple Mail Hauberk', '3', '3', '520', 'B283', '44 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('137', '3', '1', 'Drum', '0', '4', '40', 'B288', 'Audible for several miles', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('138', '3', '1', 'Ear Muffs', '6', '4', '200', 'B289', 'Block loud noises (e.g. gunshots). Give Protected Hearing.', '1 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('139', '3', '1', 'Electrolaser Carbine', '9', '3', '3900', 'B280', '3.7 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('140', '3', '1', 'Electrolaser Pistol', '9', '4', '1800', 'B280', '2.2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('141', '3', '1', 'Electronic "Lockpicks"', '7', '4', '1500', 'B289', '+2 to pick electronic locks', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('142', '3', '1', 'Face Mask', '3', '3', '100', 'B284', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('143', '3', '1', 'First Aid Kit', '4', '50', 'B289', 'A complete kit for treating wounds, with bandages, ointments, etc.', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('144', '3', '1', 'Fishhooks & Line', '0', '4', '50', 'B288', '0.01 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('145', '3', '1', 'Flail', '2', '4', '100', 'B274', '8 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('146', '3', '1', 'Flak Jacket', '6', '3', '500', 'B284', '20 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('147', '3', '1', 'Flamethrower', '6', '1', '1800', 'B281', '70 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('148', '3', '1', 'Flashlight, Heavy', '6', '4', '20', 'B288', '30'' beam, lasts 5 hours', '1 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('149', '3', '1', 'Flashlight, Mini', '7', '4', '10', 'B288', '15'' beam, lasts 1 hour', '0.25 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('150', '3', '1', 'Flintlock Musket, .75', '4', '4', '200', 'B279', '13 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('151', '3', '1', 'Flintlock Pistol, .51', '4', '3', '200', 'B278', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('152', '3', '1', 'Force Shield', '^', '3', '1500', 'B287', '0.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('153', '3', '1', 'Force Sword', '^', '2', '10000', 'B272', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('154', '3', '1', 'Frag Helmet', '7', '4', '125', 'B285', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('155', '3', '1', 'Frag Helmet Visor', '7', '4', '25', 'B285', '1.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('156', '3', '1', 'Frag Vest', '7', '3', '350', 'B284', '9 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('157', '3', '1', 'Frag Vest Plate Inserts', '7', '3', '300', 'B284', '15 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [value], [reference], [FK_equipment_list])
  VALUES ('158', '3', '1', 'Fur Loincloth', '0', '10', 'B283', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('159', '3', '1', 'Fur Tunic', '0', '25', 'B283', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('160', '3', '1', 'Garrote', '0', '4', '2', 'B272', '0.01 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('161', '3', '1', 'Gas Mask', '6', '4', '100', 'B285', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('162', '3', '1', 'Gasoline, 1 Gallon', '6', '4', '2', 'B288', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('163', '3', '1', 'Gauntlets', '2', '4', '100', 'B284', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('164', '3', '1', 'Gauss PDW, 4mm', '10', '2', '3600', 'B278', '4.6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('165', '3', '1', 'Gauss Rifle, 4mm', '10', '2', '7100', 'B279', '8.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('166', '3', '1', 'Glaive', '1', '4', '100', 'B272', '8 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('167', '3', '1', 'Gold Coin', '4', '80', 'B264', '0.004 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('168', '3', '1', 'GPS Receiver', '8', '4', '200', 'B288', 'Satellite-updated, lasts 24 hours; Grants Absolute Direction (Requires Signal)', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('169', '3', '1', 'Grapnel', '5', '4', '20', 'B288', 'Supports 300 lbs; throw to STx2 yards', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('170', '3', '1', 'Great Axe', '1', '4', '100', 'B274', '8 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('171', '3', '1', 'Great Helm', '3', '3', '340', 'B284', '10 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('172', '3', '1', 'Greatsword', '3', '4', '800', 'B274', '7 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('173', '3', '1', 'Group Basics', '0', '4', '50', 'B288', 'Basic equipment for Cooking and Survival skill for a group. Cook pot, rope, hatchet etc., for 3-8 campers.', '20 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('174', '3', '1', 'Gyroc Pistol, 15mm', '9', '3', '200', 'B278', '1 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('175', '3', '1', 'Halberd', '3', '4', '150', 'B272', '12 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('176', '3', '1', 'Handcuffs', '5', '4', '40', 'B289', '0.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('177', '3', '1', 'Handgonne, .90', '3', '3', '300', 'B279', '15 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('178', '3', '1', 'Harpoon', '2', '4', '60', 'B276', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('179', '3', '1', 'Hatchet', '0', '4', '40', 'B271', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('180', '3', '1', 'Heavy Blaster', '11', '1', '23000', 'B280', '20 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('181', '3', '1', 'Heavy Cloak', '1', '50', 'B287', '5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('182', '3', '1', 'Heavy Gauntlets', '3', '3', '250', 'B284', '2.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('183', '3', '1', 'Heavy Leather Leggings', '1', '4', '60', 'B283', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('184', '3', '1', 'Heavy Leather Sleeves', '1', '4', '50', 'B283', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('185', '3', '1', 'Heavy Plate Arms', '3', '3', '1500', 'B283', '20 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('186', '3', '1', 'Heavy Plate Legs', '3', '3', '1600', 'B283', '25 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('187', '3', '1', 'Heavy Steel Corselet', '3', '3', '2300', 'B283', '45 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('188', '3', '1', 'HMG, .50', '6', '1', '14000', 'B281', '116 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('189', '3', '1', 'Holdout Pistol, .380', '7', '3', '300', 'B278', '1.3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [FK_equipment_list])
  VALUES ('190', '3', '1', 'Homing Beacon', '7', '4', '40', 'B289', 'Scanner tracks at 1-mile range. 12 hrs.', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('191', '3', '1', 'Horseshoes, Set', '3', '4', '50', 'B289', 'Shod horses get +2 HT on any rolls for stamina on long rides', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [value], [reference], [FK_equipment_list])
  VALUES ('192', '3', '1', 'ICW Integral, 25mm', '9', '0', 'B281', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('193', '3', '1', 'ICW, 6.8mm', '9', '1', '7000', 'B279', '12 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [value], [reference], [FK_equipment_list])
  VALUES ('194', '3', '1', 'Integral, 25mm', '9', '0', 'B281', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('195', '3', '1', 'Iron Spike/Piton', '2', '4', '1', 'B288', '0.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('196', '3', '1', 'Javelin', '1', '4', '30', 'B273', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('197', '3', '1', 'Katana', '3', '4', '650', 'B271', '5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('198', '3', '1', 'Katana', '3', '4', '650', 'B274', 'Using Two-Handed Sword skill', '5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('199', '3', '1', 'Kerosene, 1 Gallon', '6', '4', '2', 'B288', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [FK_equipment_list])
  VALUES ('200', '3', '1', 'Knitting Needles, Pair', '3', '4', '5', 'B289', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('201', '3', '1', 'Kusari', '3', '4', '70', 'B272', '5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('202', '3', '1', 'Lance', '2', '4', '60', 'B272', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('203', '3', '1', 'Lantern', '2', '4', '20', 'B288', 'Uses 1 pint of oil per 24 hours', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('204', '3', '1', 'Large Knife', '0', '4', '40', 'B272', '1 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('205', '3', '1', 'Large Net', '0', '4', '40', 'B276', '20 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('206', '3', '1', 'Large Shield', '1', '4', '90', 'B287', '25 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('207', '3', '1', 'Large Shield with Spike', '1', '4', '110', 'B287', '30 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('208', '3', '1', 'Lariat', '1', '4', '40', 'B276', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('209', '3', '1', 'Laser Microphone', '8', '4', '500', 'B289', 'Eavesdrop through glass. 300-yd. range.', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('210', '3', '1', 'Laser Pistol', '10', '3', '2800', 'B280', '3.3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('211', '3', '1', 'Laser Rifle', '10', '2', '10000', 'B280', '10 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [FK_equipment_list])
  VALUES ('212', '3', '1', 'Laser Sight', '8', '4', '100', 'B289', '+1 to skill; see Laser Sights (B412). 6 hrs.', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('213', '3', '1', 'Laser Sniper Rifle', '9', '1', '20000', 'B280', '20 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('214', '3', '1', 'LAW, 84mm', '8', '1', '750', 'B281', '14.7 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('215', '3', '1', 'Lead Pellet (Prodd)', '2', '4', '0.1', 'B276', '0.06 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('216', '3', '1', 'Lead Pellet (Sling)', '2', '4', '0.1', 'B276', 'Gives +1 damage, double range', '0.05 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('217', '3', '1', 'Leather Armor', '1', '4', '100', 'B283', '10 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [FK_equipment_list])
  VALUES ('218', '3', '1', 'Leather Cap', '1', '4', '32', 'B284', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [value], [reference], [FK_equipment_list])
  VALUES ('219', '3', '1', 'Leather Gloves', '1', '30', 'B284', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('220', '3', '1', 'Leather Helm', '1', '4', '20', 'B284', '0.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('221', '3', '1', 'Leather Jacket', '1', '50', 'B283', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('222', '3', '1', 'Leather Leggings', '1', '40', 'B283', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('223', '3', '1', 'Leather Pants', '1', '40', 'B283', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('224', '3', '1', 'Legionary Helmet', '2', '3', '150', 'B284', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('225', '3', '1', 'Lever-Action Carbine, .30', '5', '3', '300', 'B279', '7 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('226', '3', '1', 'Life Jacket', '6', '4', '100', 'B288', 'Floats up to 350 lbs.', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('227', '3', '1', 'Light Buckler', '4', '25', 'B287', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('228', '3', '1', 'Light Buckler with Spike', '1', '4', '45', 'B287', '7 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('229', '3', '1', 'Light Cloak', '1', '20', 'B287', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('230', '3', '1', 'Light Club', '0', '4', '5', 'B271', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('231', '3', '1', 'Light Scale Armor', '2', '4', '150', 'B283', '15 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('232', '3', '1', 'Light Shield', '4', '25', 'B287', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('233', '3', '1', 'Light Shield with Spike', '1', '4', '45', 'B287', '7 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('234', '3', '1', 'LMG, 7.62mm', '6', '1', '6600', 'B281', '30 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [FK_equipment_list])
  VALUES ('235', '3', '1', 'Lockpicks', '3', '4', '50', 'B289', 'Basic equipment for Lockpicking skill', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('236', '3', '1', 'Long Spear', '2', '4', '60', 'B273', '5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('237', '3', '1', 'Longbow', '0', '4', '200', 'B275', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('238', '3', '1', 'Lorcia Segmentata', '2', '3', '680', 'B283', '26 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('239', '3', '1', 'Mace', '2', '4', '50', 'B271', '5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('240', '3', '1', 'Machine Pistol, 9mm', '7', '2', '900', 'B278', '5.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('241', '3', '1', 'Mail Coif', '2', '3', '55', 'B284', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('242', '3', '1', 'Mail Hauberk', '2', '3', '230', 'B283', '25 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('243', '3', '1', 'Mail Leggings', '2', '3', '110', 'B283', '15 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('244', '3', '1', 'Mail Shirt', '2', '4', '150', 'B283', '16 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('245', '3', '1', 'Mail Sleeves', '2', '3', '70', 'B283', '9 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('246', '3', '1', 'Match, Single, Waterproof', '6', '4', '0.3', 'B288', '0.001 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('247', '3', '1', 'Matches, Waterproof', '6', '4', '1.5', 'B288', 'Box of 50', '0.051 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('248', '3', '1', 'Matchlock Musket, .80', '4', '4', '150', 'B279', '20 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('249', '3', '1', 'Maul', '0', '4', '80', 'B274', '12 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('250', '3', '1', 'Medium Buckler', '1', '4', '60', 'B287', '15 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('251', '3', '1', 'Medium Buckler with Spike', '1', '4', '80', 'B287', '20 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('252', '3', '1', 'Medium Shield', '1', '4', '60', 'B287', '15 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('253', '3', '1', 'Medium Shield with Spike', '1', '4', '80', 'B287', '20 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('254', '3', '1', 'Melee Net', '2', '4', '20', 'B276', '5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('255', '3', '1', 'Metal Detector Wand', '7', '4', '50', 'B289', '+3 to find metal items. 8 hrs.', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [FK_equipment_list])
  VALUES ('256', '3', '1', 'Mini-Camera, Digital', '8', '4', '500', 'B289', 'Stores pictures on optical disk.', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('257', '3', '1', 'Mini-Recorder', '7', '4', '200', 'B288', 'Palm-sized, with 3-hour tape', '0.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [FK_equipment_list])
  VALUES ('258', '3', '1', 'Mini-Recorder, Digital', '8', '4', '0', 'B288', 'Palm-sized, 3 hrs. recording time', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [FK_equipment_list])
  VALUES ('259', '3', '1', 'Mini-Recorder-Tape', '7', '4', '5', 'B288', '3-hour tape', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('260', '3', '1', 'Monowire Whip', '^', '4', '900', 'B272', '0.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('261', '3', '1', 'Morningstar', '3', '4', '80', 'B272', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('262', '3', '1', 'Naginata', '2', '4', '100', 'B272', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('263', '3', '1', 'Naginata', '2', '4', '100', 'B273', 'Using the blunt end', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('264', '3', '1', 'Naginata', '2', '4', '100', 'B274', 'Using Two-Handed Sword skill', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [FK_equipment_list])
  VALUES ('265', '3', '1', 'Nanobug', '8', '4', '100', 'B289', 'Pinhead-sized audio-visual bug (-10 to spot)', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('266', '3', '1', 'NBC Suit', '7', '4', '150', 'B285', '3.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('267', '3', '1', 'Night Vision Goggles', '8', '4', '600', 'B289', 'Give Night Vision 9. 8 hrs.', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('268', '3', '1', 'Nunchaku', '3', '4', '20', 'B272', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('269', '3', '1', 'Oil, Lantern, 1 Pint', '2', '4', '2', 'B288', '1 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('270', '3', '1', 'Parachute', '6', '4', '1000', 'B288', '30 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('271', '3', '1', 'PDW, 4.6mm', '8', '2', '800', 'B278', '3.9 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('272', '3', '1', 'Personal Basics', '0', '4', '5', 'B288', 'Minimum gear for camping: -2 to any Survival roll without it. Includes utensils, tinderbox or flint and steel, towel, etc., as TL permits.', '1 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('273', '3', '1', 'Pick', '3', '4', '70', 'B271', 'May get stuck', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('274', '3', '1', 'Pickaxe', '2', '4', '15', 'B289', 'Improves digging speed', '8 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('275', '3', '1', 'Pistol Crossbow (ST7)', '3', '4', '150', 'B276', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('276', '3', '1', 'Pistol Crossbow (ST8)', '3', '4', '155', 'B276', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('277', '3', '1', 'Pistol Crossbow (ST9)', '3', '4', '160', 'B276', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('278', '3', '1', 'Pistol Crossbow (ST10)', '3', '4', '165', 'B276', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('279', '3', '1', 'Pistol Crossbow (ST11)', '3', '4', '170', 'B276', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('280', '3', '1', 'Pistol Crossbow (ST12)', '3', '4', '175', 'B276', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('281', '3', '1', 'Pistol Crossbow (ST13)', '3', '4', '185', 'B276', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('282', '3', '1', 'Pistol Crossbow (ST14)', '3', '4', '195', 'B276', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('283', '3', '1', 'Pistol Crossbow (ST15)', '3', '4', '205', 'B276', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('284', '3', '1', 'Pistol Crossbow (ST16)', '3', '4', '215', 'B276', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('285', '3', '1', 'Pistol Crossbow (ST17)', '3', '4', '230', 'B276', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('286', '3', '1', 'Pistol Crossbow (ST18)', '3', '4', '245', 'B276', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('287', '3', '1', 'Pistol Crossbow (ST19)', '3', '4', '260', 'B276', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('288', '3', '1', 'Pistol Crossbow (ST20)', '3', '4', '275', 'B276', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('289', '3', '1', 'Plate Arms', '3', '3', '1000', 'B283', '15 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('290', '3', '1', 'Plate Legs', '3', '3', '1100', 'B283', '20 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('291', '3', '1', 'Plow, Iron', '2', '4', '220', 'B289', 'Works rough soils', '120 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('292', '3', '1', 'Plow, Wooden', '1', '4', '55', 'B289', 'Pulled by oxen', '60 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('293', '3', '1', 'Pole, 6''', '0', '4', '5', 'B288', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('294', '3', '1', 'Pole, 10''', '0', '4', '8', 'B288', '5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('295', '3', '1', 'Poleaxe', '3', '4', '120', 'B272', '10 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('296', '3', '1', 'Portable Tool Kit, Armoury', '1', '4', '600', 'B289', '20 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('297', '3', '1', 'Portable Tool Kit, Carpentry', '1', '4', '300', 'B289', '20 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('298', '3', '1', 'Portable Tool Kit, Electrician', '6', '4', '600', 'B289', '20 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('299', '3', '1', 'Portable Tool Kit, Electronics Repair', '6', '4', '1200', 'B289', '10 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('300', '3', '1', 'Portable Tool Kit, Explosives', '5', '4', '600', 'B289', '20 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('301', '3', '1', 'Portable Tool Kit, Machinist', '5', '4', '600', 'B289', '20 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('302', '3', '1', 'Portable Tool Kit, Mechanic', '5', '4', '600', 'B289', '20 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('303', '3', '1', 'Pot-Helm', '3', '4', '100', 'B284', '5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('304', '3', '1', 'Prodd (ST7)', '3', '4', '150', 'B276', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('305', '3', '1', 'Prodd (ST8)', '3', '4', '155', 'B276', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('306', '3', '1', 'Prodd (ST9)', '3', '4', '160', 'B276', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('307', '3', '1', 'Prodd (ST10)', '3', '4', '165', 'B276', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('308', '3', '1', 'Prodd (ST11)', '3', '4', '170', 'B276', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('309', '3', '1', 'Prodd (ST12)', '3', '4', '175', 'B276', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('310', '3', '1', 'Prodd (ST13)', '3', '4', '185', 'B276', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('311', '3', '1', 'Prodd (ST14)', '3', '4', '195', 'B276', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('312', '3', '1', 'Prodd (ST15)', '3', '4', '205', 'B276', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('313', '3', '1', 'Prodd (ST16)', '3', '4', '215', 'B276', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('314', '3', '1', 'Prodd (ST17)', '3', '4', '230', 'B276', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('315', '3', '1', 'Prodd (ST18)', '3', '4', '245', 'B276', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('316', '3', '1', 'Prodd (ST19)', '3', '4', '260', 'B276', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('317', '3', '1', 'Prodd (ST20)', '3', '4', '275', 'B276', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('318', '3', '1', 'Pump Shotgun, 12G', '6', '4', '240', 'B279', '8 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('319', '3', '1', 'Quarterstaff', '0', '4', '10', 'B273', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('320', '3', '1', 'Quarterstaff', '0', '4', '10', 'B274', 'Using Two-Handed Sword skill', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('321', '3', '1', 'Radio, Backpack', '7', '4', '6000', 'B288', 'VHF radio. 20-mile range. 12 hrs.', '15 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('322', '3', '1', 'Radio, Hand', '7', '4', '100', 'B288', 'Classic "walkie-talkie." 2-mile range. 12 hrs.', '1 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('323', '3', '1', 'Radio, Headset', '8', '4', '500', 'B288', 'With throat mike. 1-mile range. 12 hrs.', '0.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('324', '3', '1', 'Radio, Headset, secure', '8', '4', '5000', 'B288', 'With throat mike. 1-mile range. Secure, encrypted version. 12 hrs.', '0.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('325', '3', '1', 'Rapier', '4', '4', '500', 'B273', '2.75 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('326', '3', '1', 'Regular Bow', '0', '4', '100', 'B275', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('327', '3', '1', 'Reich 2 .338 Tungsten Sniper', '9', '3', '5600', 'B279', '17.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('328', '3', '1', 'Reinforced Boots', '7', '75', 'B284', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('329', '3', '1', 'Revolver, .36', '5', '3', '150', 'B278', '2.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('330', '3', '1', 'Revolver, .38', '6', '3', '400', 'B278', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('331', '3', '1', 'Revolver, .44M', '7', '3', '900', 'B278', '3.25 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('332', '3', '1', 'Revolver, .357M', '7', '3', '500', 'B278', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('333', '3', '1', 'Rifle-Musket, .577', '5', '3', '150', 'B279', '8.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('334', '3', '1', 'Rope, 3/4", 10 yards', '1', '4', '25', 'B288', 'Supports 1,100 lbs.', '5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('335', '3', '1', 'Rope, 3/4", 20 yards', '1', '4', '50', 'B288', 'Supports 1,100 lbs.', '10 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('336', '3', '1', 'Rope, 3/8", 10 yards', '0', '4', '5', 'B288', 'Supports 300 lbs.', '1.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('337', '3', '1', 'Rope, 3/8", 20 yards', '0', '4', '10', 'B288', 'Supports 300 lbs.', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('338', '3', '1', 'RPG, 85mm', '7', '1', '800', 'B281', '21 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('339', '3', '1', 'Saber', '4', '4', '700', 'B273', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('340', '3', '1', 'Saddle and Tack', '2', '4', '150', 'B289', 'Basic equipment for Riding skill.', '15 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('341', '3', '1', 'SAM, 70mm', '8', '1', '38000', 'B281', '18 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('342', '3', '1', 'Sandals', '0', '25', 'B284', '0.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('343', '3', '1', 'Sap', '1', '4', '20', 'B271', '1 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('344', '3', '1', 'Satellite Phone', '8', '4', '3000', 'B288', 'Global range, satellite relay. 1 hr.', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('345', '3', '1', 'Saw', '0', '4', '150', 'B289', 'A lumberjack''s tool, not a carpentry saw', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('346', '3', '1', 'SAW, 5.56mm', '7', '1', '4800', 'B281', '24 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('347', '3', '1', 'Scale Armor', '2', '4', '420', 'B283', '35 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('348', '3', '1', 'Scale Leggings', '2', '3', '250', 'B283', '21 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('349', '3', '1', 'Scale Sleeves', '2', '3', '210', 'B283', '14 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('350', '3', '1', 'Scope, 4x', '6', '4', '150', 'B289', '+2 to Acc for aimed shots only.', '1.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('351', '3', '1', 'Scope, 4x, Thermal Imaging', '8', '4', '8000', 'B289', '+2 to Acc for aimed shots only. Gives the user Infravision. 2 hrs.', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('352', '3', '1', 'Scorpion', '2', '2', '5000', 'B281', '110 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('353', '3', '1', 'Scuba Gear', '6', '4', '1500', 'B288', 'Includes 2-hour underwater air tank', '32 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('354', '3', '1', 'Scythe', '1', '4', '15', 'B274', 'May get stuck in 2nd mode', '5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('355', '3', '1', 'Self-Loading Rifle, 7.62mm', '6', '3', '600', 'B279', '10 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('356', '3', '1', 'Shoes', '1', '40', 'B284', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('357', '3', '1', 'Short Bow', '0', '4', '50', 'B275', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('358', '3', '1', 'Short Staff', '0', '4', '20', 'B273', '1 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('359', '3', '1', 'Shortsword', '2', '4', '400', 'B273', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('360', '3', '1', 'Shotgun Mike', '6', '4', '250', 'B289', 'Gives (TL-5) levels of Parabolic Hearing.', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('361', '3', '1', 'Shovel', '1', '4', '12', 'B289', 'Speeds up digging', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('362', '3', '1', 'Shuriken', '3', '4', '3', 'B276', '0.1 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('363', '3', '1', 'Silencer, Pistol or SMG', '6', '4', '400', 'B289', 'Reduces damage by -1 per die; see Silencers (B412)', '1 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('364', '3', '1', 'Silver Coin', '4', '4', 'B264', '0.004 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('365', '3', '1', 'Sleeping Bag', '6', '4', '25', 'B288', '7 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('366', '3', '1', 'Sleeping Bag, Insulated', '7', '4', '100', 'B288', '+3 HT to resist freezing', '15 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('367', '3', '1', 'Sleeping Fur', '0', '4', '50', 'B288', '8 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('368', '3', '1', 'Sling', '0', '4', '20', 'B276', '0.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('369', '3', '1', 'Sling Stone', '0', '4', '0', 'B276', '0.05 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('370', '3', '1', 'Small Buckler', '4', '40', 'B287', '8 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('371', '3', '1', 'Small Buckler with Spike', '1', '4', '60', 'B287', '13 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('372', '3', '1', 'Small Knife', '0', '4', '30', 'B272', '0.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('373', '3', '1', 'Small Mace', '2', '4', '35', 'B271', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('374', '3', '1', 'Small Shield', '4', '40', 'B287', '8 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('375', '3', '1', 'Small Shield with Spike', '1', '4', '60', 'B287', '13 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('376', '3', '1', 'Smallsword', '4', '4', '400', 'B273', '1.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('377', '3', '1', 'SMG, .45', '6', '2', '2200', 'B278', '15.7 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('378', '3', '1', 'SMG, 9mm', '6', '2', '700', 'B278', '10.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('379', '3', '1', 'SMG, 9mm', '7', '2', '1200', 'B278', '7.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('380', '3', '1', 'Sniper Rifle, .338', '8', '3', '5600', 'B279', '17.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('381', '3', '1', 'Snub Revolver, .38', '6', '3', '250', 'B278', '1.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('382', '3', '1', 'Sollerets', '3', '3', '150', 'B284', '7 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('383', '3', '1', 'Space Armor', '9', '2', '20000', 'B285', '45 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('384', '3', '1', 'Space Armor', '10', '2', '20000', 'B285', '45 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('385', '3', '1', 'Space Armor', '11', '2', '20000', 'B285', '45 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('386', '3', '1', 'Space Armor Helmet', '9', '2', '3000', 'B285', '7 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('387', '3', '1', 'Space Armor Helmet', '10', '2', '3000', 'B285', '7 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('388', '3', '1', 'Space Armor Helmet', '11', '2', '3000', 'B285', '7 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('389', '3', '1', 'Space Helmet', '7', '4', '25000', 'B285', '10 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('390', '3', '1', 'Space Suit', '7', '4', '2000000', 'B285', '225 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('391', '3', '1', 'Spear', '0', '4', '40', 'B273', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('392', '3', '1', 'Spinning Wheel', '3', '4', '100', 'B289', 'Produces yarn six times as fast.', '40 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [FK_equipment_list])
  VALUES ('393', '3', '1', 'Spurs', '2', '4', '20', 'B289', '+1 to control a mount.', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [FK_equipment_list])
  VALUES ('394', '3', '1', 'Spy Camera', '6', '4', '500', 'B289', 'Holds 36 exposures, uses microfilm', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('395', '3', '1', 'Staff Sling', '1', '4', '20', 'B276', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('396', '3', '1', 'Steel Breastplate', '3', '3', '500', 'B283', '18 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('397', '3', '1', 'Steel Corselet', '3', '3', '1300', 'B283', '35 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('398', '3', '1', 'Steel Laminate Plate', '3', '3', '900', 'B283', '30 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('399', '3', '1', 'Steel Pot', '6', '4', '60', 'B285', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('400', '3', '1', 'Stirrups', '3', '4', '125', 'B289', 'Make it easy to mount a horse and give +1 to control mount. Required to use Lance skill. With ordinary saddle', '20 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('401', '3', '1', 'Studded Leather Skirt', '1', '60', 'B283', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('402', '3', '1', 'Stun Gun', '8', '4', '100', 'B271', '1 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('403', '3', '1', 'Suitcase Lab', '4', '3000', 'B289', 'Basic equipment for a specific scientific skill (e.g., Chemistry or Forensics).', '10 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('404', '3', '1', 'Surgical Instruments', '4', '300', 'B289', 'Includes scalpels, forceps, etc. Basic equipment für Surgery skill.', '15 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('405', '3', '1', 'Tactical Suit', '9', '2', '3000', 'B284', '15 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('406', '3', '1', 'Tactical Suit', '10', '2', '3000', 'B284', '15 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('407', '3', '1', 'Tactical Suit', '11', '2', '3000', 'B284', '15 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('408', '3', '1', 'Tactical Vest', '8', '2', '900', 'B284', '9 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('409', '3', '1', 'Tactical Vest', '9', '2', '900', 'B284', '9 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('410', '3', '1', 'Tactical Vest', '10', '2', '900', 'B284', '9 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('411', '3', '1', 'Tactical Vest', '11', '2', '900', 'B284', '9 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('412', '3', '1', 'Tactical Vest Trauma Plates', '8', '2', '600', 'B284', '9 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('413', '3', '1', 'Telescope', '4', '4', '500', 'B289', 'Gives (TL-3) levels of Telescopic Vision.', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('414', '3', '1', 'Tent, 1-Man', '0', '4', '50', 'B288', 'Includes ropes; no poles needed', '5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('415', '3', '1', 'Tent, 2-Man', '0', '4', '80', 'B288', 'Includes ropes; requires one 6'' pole', '12 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('416', '3', '1', 'Tent, 4-Man', '0', '4', '150', 'B288', 'Includes ropes; requires two 6'' poles', '30 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('417', '3', '1', 'Tent, 20-Man', '1', '4', '300', 'B288', 'Includes ropes; requires 12 6'' poles, 4 10'' poles', '100 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('418', '3', '1', 'Throwing Axe', '0', '4', '60', 'B271', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('419', '3', '1', 'Thrusting Bastard Sword', '3', '4', '750', 'B271', '5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('420', '3', '1', 'Thrusting Bastard Sword', '3', '4', '750', 'B274', 'Using Two-Handed Sword skill', '5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('421', '3', '1', 'Thrusting Broadsword', '2', '4', '600', 'B271', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('422', '3', '1', 'Thrusting Greatsword', '3', '4', '900', 'B274', '7 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('423', '3', '1', 'Torch', '0', '4', '3', 'B288', 'Burns for 1 hour', '1 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('424', '3', '1', 'Transistor Radio', '7', '4', '15', 'B288', 'Receive-only; picks up radio stations. 8 hrs.', '0.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('425', '3', '1', 'Traveler''s Rations', '0', '4', '2', 'B288', 'One meal', '0.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('426', '3', '1', 'TV Set, Mini', '7', '4', '150', 'B288', '5'''' x 5'''' flat-screen. 4 hrs.', '3 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('427', '3', '1', 'Typewriter, Manual', '6', '4', '200', 'B289', '10 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('428', '3', '1', 'Under-Barrel, 40mm', '7', '1', '500', 'B281', '3.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('429', '3', '1', 'Vacc Suit', '9', '4', '10000', 'B285', '25 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('430', '3', '1', 'Vacc Suit', '10', '4', '10000', 'B285', '25 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('431', '3', '1', 'Vacc Suit', '11', '4', '10000', 'B285', '25 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('432', '3', '1', 'Vacc Suit Helmet', '9', '4', '2000', 'B285', '5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('433', '3', '1', 'Vacc Suit Helmet', '10', '4', '2000', 'B285', '5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('434', '3', '1', 'Vacc Suit Helmet', '11', '4', '2000', 'B285', '5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('435', '3', '1', 'War Saddle', '3', '4', '250', 'B289', '+1 to Riding skill to stay seated, 50% chance user will stay seated even if unconscious. With stirrups', '35 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('436', '3', '1', 'Warhammer', '3', '4', '100', 'B274', 'May get stuck', '7 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('437', '3', '1', 'Water Purification Tablets', '6', '4', '5', 'B288', 'Bottle of 50; Purifies 1 quart each', '0.1 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('438', '3', '1', 'Wax Tablet', '1', '4', '10', 'B289', 'For writing; erasable', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('439', '3', '1', 'Wheel-Lock Pistol, .60', '4', '3', '200', 'B278', '3.25 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [notes], [weight], [FK_equipment_list])
  VALUES ('440', '3', '1', 'Whetstone', '1', '4', '5', 'B289', 'For sharpening tools and wapons', '1 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('441', '3', '1', 'Whip, 1 yard long', '1', '4', '20', 'B274', '2 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('442', '3', '1', 'Whip, 2 yards long', '1', '4', '40', 'B274', '4 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('443', '3', '1', 'Whip, 3 yards long', '1', '4', '60', 'B274', '6 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('444', '3', '1', 'Whip, 4 yards long', '1', '4', '80', 'B274', '8 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('445', '3', '1', 'Whip, 5 yards long', '1', '4', '100', 'B274', '10 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('446', '3', '1', 'Whip, 6 yards long', '1', '4', '120', 'B274', '12 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('447', '3', '1', 'Whip, 7 yards long', '1', '4', '140', 'B274', '14 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('448', '3', '1', 'Wooden Stake', '0', '4', '4', 'B272', '0.5 lb', '1');
INSERT INTO [Item1].[inv].[equipment] ([PrimaryKey], [version], [quantity], [description], [tech_level], [legality_class], [value], [reference], [weight], [FK_equipment_list])
  VALUES ('449', '3', '1', 'Wristwatch', '6', '4', '20', 'B288', '0.075 lb', '1');
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[inv].[equipment_container]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[inv].[equipment_container] (
    [PrimaryKey] VARCHAR(255)
   ,[version] VARCHAR(255)
   ,[open] VARCHAR(255)
   ,[description] VARCHAR(255)
   ,[tech_level] VARCHAR(255)
   ,[legality_class] VARCHAR(255)
   ,[value] VARCHAR(255)
   ,[weight] VARCHAR(255)
   ,[reference] VARCHAR(255)
   ,[notes] VARCHAR(255)
   ,[FK_equipment_list] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[inv].[equipment_container] ([PrimaryKey], [version], [open], [description], [tech_level], [legality_class], [value], [weight], [reference], [FK_equipment_list])
  VALUES ('1', '3', 'yes', 'Backpack, Frame', '1', '4', '100', '10 lb', 'B288', '1');
INSERT INTO [Item1].[inv].[equipment_container] ([PrimaryKey], [version], [open], [description], [tech_level], [legality_class], [value], [weight], [reference], [FK_equipment_list])
  VALUES ('2', '3', 'yes', 'Backpack, Small', '1', '4', '60', '3 lb', 'B288', '1');
INSERT INTO [Item1].[inv].[equipment_container] ([PrimaryKey], [version], [open], [description], [tech_level], [legality_class], [value], [weight], [reference], [FK_equipment_list])
  VALUES ('3', '3', 'yes', 'Bottle, Ceramic', '1', '4', '3', '1 lb', 'B288', '1');
INSERT INTO [Item1].[inv].[equipment_container] ([PrimaryKey], [version], [open], [description], [tech_level], [legality_class], [value], [weight], [reference], [FK_equipment_list])
  VALUES ('4', '3', 'yes', 'Canteen', '5', '4', '10', '1 lb', 'B288', '1');
INSERT INTO [Item1].[inv].[equipment_container] ([PrimaryKey], [version], [open], [description], [tech_level], [legality_class], [value], [weight], [reference], [notes], [FK_equipment_list])
  VALUES ('5', '3', 'yes', 'Hip Quiver', '0', '4', '15', '1 lb', 'B289', 'Holds 20 arrows or bolts', '1');
INSERT INTO [Item1].[inv].[equipment_container] ([PrimaryKey], [version], [open], [description], [tech_level], [legality_class], [value], [weight], [reference], [notes], [FK_equipment_list])
  VALUES ('6', '3', 'yes', 'Holster, Belt', '5', '4', '25', '0.5 lb', 'B289', 'Fits most pistols', '1');
INSERT INTO [Item1].[inv].[equipment_container] ([PrimaryKey], [version], [open], [description], [tech_level], [legality_class], [value], [weight], [reference], [notes], [FK_equipment_list])
  VALUES ('7', '3', 'yes', 'Holster, Shoulder', '5', '4', '50', '1 lb', 'B289', 'Allows use of Holdout, but gives -1 to Fast-Draw.', '1');
INSERT INTO [Item1].[inv].[equipment_container] ([PrimaryKey], [version], [open], [description], [tech_level], [legality_class], [value], [reference], [notes], [FK_equipment_list])
  VALUES ('8', '3', 'yes', 'Lanyard, Leather', '0', '4', '1', 'B289', 'Lets you retrieve a dropped weapon on a DX roll. Each attempt requires a Ready maneuver. Can be cut: -6 to hit, DR 2, HP 2.', '1');
INSERT INTO [Item1].[inv].[equipment_container] ([PrimaryKey], [version], [open], [description], [tech_level], [legality_class], [value], [reference], [notes], [FK_equipment_list])
  VALUES ('9', '3', 'yes', 'Lanyard, Woven Steel', '6', '4', '15', 'B289', 'Lets you retrieve a dropped weapon on a DX roll. Each attempt requires a Ready maneuver. Can be cut: -6 to hit, DR 6, HP 4.', '1');
INSERT INTO [Item1].[inv].[equipment_container] ([PrimaryKey], [version], [open], [description], [tech_level], [legality_class], [value], [weight], [reference], [FK_equipment_list])
  VALUES ('10', '3', 'yes', 'Pouch, Small', '1', '4', '10', '0.5 lb', 'B288', '1');
INSERT INTO [Item1].[inv].[equipment_container] ([PrimaryKey], [version], [open], [description], [tech_level], [legality_class], [value], [weight], [reference], [FK_equipment_list])
  VALUES ('11', '3', 'yes', 'Purse, Small', '1', '4', '10', '0.2 lb', 'B288', '1');
INSERT INTO [Item1].[inv].[equipment_container] ([PrimaryKey], [version], [open], [description], [tech_level], [legality_class], [value], [weight], [reference], [FK_equipment_list])
  VALUES ('12', '3', 'yes', 'Saddlebags', '1', '4', '100', '3 lb', 'B289', '1');
INSERT INTO [Item1].[inv].[equipment_container] ([PrimaryKey], [version], [open], [description], [tech_level], [legality_class], [value], [weight], [reference], [notes], [FK_equipment_list])
  VALUES ('13', '3', 'yes', 'Shoulder Quiver', '0', '4', '10', '0.5 lb', 'B289', 'Holds 12 arrows or bolts', '1');
INSERT INTO [Item1].[inv].[equipment_container] ([PrimaryKey], [version], [open], [description], [tech_level], [legality_class], [value], [weight], [reference], [notes], [FK_equipment_list])
  VALUES ('14', '3', 'yes', 'Suitcase, Hard', '5', '4', '250', '8 lb', 'B288', 'DR4, with key lock', '1');
INSERT INTO [Item1].[inv].[equipment_container] ([PrimaryKey], [version], [open], [description], [tech_level], [legality_class], [value], [weight], [reference], [notes], [FK_equipment_list])
  VALUES ('15', '3', 'yes', 'Thermos Bottle', '5', '4', '10', '2 lb', 'B288', 'Keeps 1 pint hot [24 hours] or cold [72 hours]', '1');
INSERT INTO [Item1].[inv].[equipment_container] ([PrimaryKey], [version], [open], [description], [tech_level], [legality_class], [value], [weight], [reference], [notes], [FK_equipment_list])
  VALUES ('16', '3', 'yes', 'Web Gear', '6', '4', '50', '2 lb', 'B289', 'Belt and suspenders with puches and rings for gear', '1');
INSERT INTO [Item1].[inv].[equipment_container] ([PrimaryKey], [version], [open], [description], [tech_level], [legality_class], [value], [weight], [reference], [notes], [FK_equipment_list])
  VALUES ('17', '3', 'yes', 'Wheelbarrow', '2', '4', '60', '18 lb', 'B289', 'Divide effective weight of load by 5a', '1');
INSERT INTO [Item1].[inv].[equipment_container] ([PrimaryKey], [version], [open], [description], [tech_level], [legality_class], [value], [weight], [reference], [FK_equipment_list])
  VALUES ('18', '3', 'yes', 'Wineskin', '0', '4', '10', '0.25 lb', 'B288', '1');
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[inv].[equipment_list]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[inv].[equipment_list] (
    [PrimaryKey] VARCHAR(255)
   ,[unique_id] VARCHAR(255)
   ,[version] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[inv].[equipment_list] ([PrimaryKey], [unique_id], [version])
  VALUES ('1', 'hv8irnjw:-jks2hyo6kqxr', '1');
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[inv].[melee_weapon]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[inv].[melee_weapon] (
    [PrimaryKey] VARCHAR(255)
   ,[damage] VARCHAR(255)
   ,[strength] VARCHAR(255)
   ,[usage] VARCHAR(255)
   ,[reach] VARCHAR(255)
   ,[parry] VARCHAR(255)
   ,[block] VARCHAR(255)
   ,[FK_equipment] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('1', 'sw+2 cut', '11', 'Swung', '1', '0U', 'No', '22');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('2', 'sw+1 cut', '11', 'Swung', '1,2', '0U', 'No', '44');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('3', 'thr+1 cr', '11', 'Thrust', '2', '0U', 'No', '44');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('4', 'sw+2 cut', '10†', 'Swung', '1,2', '0', 'No', '45');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('5', 'thr+2 cr', '10†', 'Thrust', '2', '0', 'No', '45');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('6', 'sw cr', '6', 'Swung', '1', '0', 'No', '46');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('7', 'thr cr', '6', 'Thrust', '1', '0', 'No', '46');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('8', 'thr cr', '7', 'Swung', 'C', '0', 'No', '58');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('9', 'thr cr', 'Punch', 'C', '0', 'No', '68');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('10', 'sw+1 cut', '10', 'Swung', '1', '0', 'No', '69');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('11', 'thr+1 cr', '10', 'Thrust', '1', '0', 'No', '69');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('12', '1d-3 burn', '3', 'Thrust', '1', '0', 'No', '87');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('13', 'sw+1 cut', '10', 'Swung', '1', '0', 'No', '88');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('14', 'thr+1 imp', '10', 'Thrust', '1', '0', 'No', '88');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [reach], [parry], [block], [FK_equipment])
  VALUES ('15', 'sw+1d cut', '10‡', '1', 'No', 'No', '90');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('16', 'sw+2 cr', '10', 'Swung', '1', '0U', 'No', '127');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('17', 'sw cut', '8', 'Swung', '1', '0', 'No', '128');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('18', 'thr imp', '8', 'Thrust', '1', '0', 'No', '128');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('19', 'thr-1 imp', '5', 'Thrust', 'C', '-1', 'No', '131');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('20', 'sw+4 cr', '13†', 'Swung', '1,2*', '0U', 'No', '145');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [reach], [parry], [block], [FK_equipment])
  VALUES ('21', '-', '-', '-', 'No', '+0', '152');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('22', '8d(5) burn', '3', 'Swung', '1,2', '0', 'No', '153');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [reach], [parry], [block], [FK_equipment])
  VALUES ('23', 'see B405', 'C', 'No', 'No', '160');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('24', 'sw+3 cut', '11‡', 'Swung', '2,3*', '0U', 'No', '166');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('25', 'thr+3 imp', '11†', 'Thrust', '1-3*', '0U', 'No', '166');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('26', 'sw+3 cut', '12‡', 'Swung', '1,2*', '0U', 'No', '170');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('27', 'sw+3 cut', '12†', 'Swung', '1,2', '0', 'No', '172');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('28', 'thr+2 cr', '12†', 'Thrust', '2', '0', 'No', '172');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('29', 'sw+5 cut', '13‡', 'Swung', '2,3*', '0U', 'No', '175');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('30', 'sw+4 imp (may stick)', '13‡', 'Swung Hook', '2,3*', '0U', 'No', '175');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('31', 'thr+3 imp', '12†', 'Thrust', '1-3*', '0U', 'No', '175');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('32', 'sw cut', '8', 'Swung', '1', '0', 'No', '179');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [reach], [parry], [block], [FK_equipment])
  VALUES ('33', '-', '-', '-', 'No', '+0', '181');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('34', 'thr+1 imp', '6', 'Thrust', '1', '0', 'No', '196');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('35', 'sw+1 cut', '11', 'Swung', '1,2', '0', 'No', '197');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('36', 'thr+1 imp', '11', 'Thrust', '1', '0', 'No', '197');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('37', 'sw+2 cut', '10†', 'Swung', '1,2', '0', 'No', '198');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('38', 'thr+1 imp', '10†', 'Thrust', '1', '0', 'No', '198');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('39', 'sw+2 cr', '11', 'Swung', '1-4*', '-2U', 'No', '201');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('40', 'thr+3 imp', '12', 'Thrust', '4', 'No', 'No', '202');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('41', 'sw-2 cut', '6', 'Swung', 'C,1', '-1', 'No', '204');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('42', 'thr imp', '6', 'Thrust', 'C', '-1', 'No', '204');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('43', 'thr cr', '0', 'Shield Bash', '1', 'No', '+0', '206');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('44', 'thr +1 cr', '0', 'Shield Bash', '1', 'No', '+0', '207');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [reach], [parry], [block], [FK_equipment])
  VALUES ('45', 'thr cr', '0', '1', 'No', '+0', '227');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [reach], [parry], [block], [FK_equipment])
  VALUES ('46', 'thr+1 cr', '0', '1', 'No', '+0', '228');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [reach], [parry], [block], [FK_equipment])
  VALUES ('47', '-', '-', '-', 'No', '+0', '229');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('48', 'sw+1 cr', '10', 'Swung', '1', '0', 'No', '230');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('49', 'thr+1 cr', '10', 'Thrust', '1', '0', 'No', '230');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('50', 'thr cr', '0', 'Shield Bash', '1', 'No', '+0', '232');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('51', 'thr+1 cr', '0', 'Shield Bash', '1', 'No', '+0', '233');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('52', 'thr+2 imp', '10', 'Thrust', '2,3*', '0U', 'No', '236');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('53', 'thr+3 imp', '10†', 'Thrust', '2,3*', '0', 'No', '236');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('54', 'sw+3 cr', '12', 'Swung', '1', '0U', 'No', '239');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('55', 'sw+4 cr', '13‡', 'Swung', '1,2*', '0U', 'No', '249');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [reach], [parry], [block], [FK_equipment])
  VALUES ('56', 'thr cr', '0', '1', 'No', '+0', '250');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [reach], [parry], [block], [FK_equipment])
  VALUES ('57', 'thr+1 cr', '0', '1', 'No', '+0', '251');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('58', 'thr cr', '0', 'Shield Bash', '1', 'No', '+0', '252');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('59', 'thr+1 cr', '0', 'Shield Bash', '1', 'No', '+0', '253');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [reach], [parry], [block], [FK_equipment])
  VALUES ('60', 'sw+1d-2(10) cut', '5', '1-7*', '-2U', 'No', '260');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('61', 'sw+3 cr', '12', 'Swung', '1', '0U', 'No', '261');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('62', 'sw+2 cut', '9†', 'Swung', '1,2*', '0U', 'No', '262');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('63', 'thr+3 imp', '9†', 'Thrust', '2', '0', 'No', '262');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('64', 'sw+2 cr', '9†', 'Swung', '1,2', '0U', 'No', '263');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('65', 'thr+2 cr', '9†', 'Thrust', '1,2', '0', 'No', '263');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('66', 'sw+3 cut', '9†', 'Swung', '2', '0U', 'No', '264');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('67', 'thr+3 imp', '9†', 'Thrust', '2', '0', 'No', '264');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('68', 'sw+1 cr', '7', 'Swung', '1', '0U', 'No', '268');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('69', 'sw+1 imp', '10', 'Swung', '1', '0U', 'No', '273');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('70', 'sw+4 cut', '12‡', 'Swung', '2,3*', '0U', 'No', '295');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('71', 'sw+4 cr', '12‡', 'Swung', '2,3*', '0U', 'No', '295');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('72', 'sw+2 cr', '7†', 'Swung', '1,2', '+2', 'No', '319');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('73', 'thr+2 cr', '7†', 'Thrust', '1,2', '+2', 'No', '319');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('74', 'sw+2 cr', '9†', 'Swung', '1,2', '0', 'No', '320');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('75', 'thr+1 cr', '9†', 'Thrust', '2', '0', 'No', '320');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('76', 'thr+1 imp', '9', 'Thrust', '1,2', '0F', 'No', '325');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('77', 'sw-1 cut', '8', 'Swung', '1', '0F', 'No', '339');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('78', 'thr+1 imp', '8', 'Thrust', '1', '0F', 'No', '339');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('79', 'thr cr', '7', 'Swung', 'C', '0', 'No', '343');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('80', 'sw+2 cut', '11‡', 'Swung', '1', '0U', 'No', '354');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('81', 'sw imp', '11‡', 'Thrust', '1', '0U', 'No', '354');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('82', 'sw cr', '6', 'Swung', '1', '0F', 'No', '358');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('83', 'thr cr', '6', 'Thrust', '1', '0F', 'No', '358');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('84', 'sw cut', '8', 'Swung', '1', '0', 'No', '359');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('85', 'thr imp', '8', 'Thrust', '1', '0', 'No', '359');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [reach], [parry], [block], [FK_equipment])
  VALUES ('86', 'thr cr', '0', '1', 'No', '+0', '370');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [reach], [parry], [block], [FK_equipment])
  VALUES ('87', 'thr+1 cr', '0', '1', 'No', '+0', '371');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('88', 'sw-3 cut', '5', 'Swung', 'C,1', '-1', 'No', '372');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('89', 'thr-1 imp', '5', 'Thrust', 'C', '-1', 'No', '372');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('90', 'sw+2 cr', '10', 'Swung', '1', '0U', 'No', '373');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('91', 'thr cr', '0', 'Shield Bash', '1', 'No', '+0', '374');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('92', 'thr+1 cr', '0', 'Shield Bash', '1', 'No', '+0', '375');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('93', 'thr+1 imp', '5', 'Thrust', '1', '0F', 'No', '376');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('94', 'thr+2 imp', '9', 'Thrust', '1*', '0', 'No', '391');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('95', 'thr+3 imp', '9†', 'Thrust', '1,2*', '0', 'No', '391');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [reach], [parry], [block], [FK_equipment])
  VALUES ('96', 'HT-3(0.5) aff', '2', 'C,1', 'No', 'No', '402');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('97', 'sw+2 cut', '11', 'Swung', '1', '0U', 'No', '418');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('98', 'sw+1 cut', '11', 'Swung', '1,2', '0U', 'No', '419');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('99', 'thr+2 imp', '11', 'Thrust', '2', '0U', 'No', '419');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('100', 'sw+2 cut', '10†', 'Swung', '1,2', '0', 'No', '420');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('101', 'thr+3 imp', '10†', 'Thrust', '2', '0', 'No', '420');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('102', 'sw+1 cut', '10', 'Swung', '1', '0', 'No', '421');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('103', 'thr+2 imp', '10', 'Thrust', '1', '0', 'No', '421');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('104', 'sw+3 cut', '12†', 'Swung', '1,2', '0', 'No', '422');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('105', 'thr+3 imp', '12†', 'Thrust', '2', '0', 'No', '422');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('106', 'sw+3 imp', '12‡', 'Swung', '1,2*', '0U', 'No', '436');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [reach], [parry], [block], [FK_equipment])
  VALUES ('107', 'sw-2(0.5) cr', '6', '1', '-2U', 'No', '441');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [reach], [parry], [block], [FK_equipment])
  VALUES ('108', 'sw-2(0.5) cr', '7', '1-2*', '-2U', 'No', '442');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [reach], [parry], [block], [FK_equipment])
  VALUES ('109', 'sw-2(0.5) cr', '8', '1-3*', '-2U', 'No', '443');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [reach], [parry], [block], [FK_equipment])
  VALUES ('110', 'sw-2(0.5) cr', '9', '1-4*', '-2U', 'No', '444');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [reach], [parry], [block], [FK_equipment])
  VALUES ('111', 'sw-2(0.5) cr', '10', '1-5*', '-2U', 'No', '445');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [reach], [parry], [block], [FK_equipment])
  VALUES ('112', 'sw-2(0.5) cr', '11', '1-6*', '-2U', 'No', '446');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [reach], [parry], [block], [FK_equipment])
  VALUES ('113', 'sw-2(0.5) cr', '12', '1-7*', '-2U', 'No', '447');
INSERT INTO [Item1].[inv].[melee_weapon] ([PrimaryKey], [damage], [strength], [usage], [reach], [parry], [block], [FK_equipment])
  VALUES ('114', 'thr(0.5) imp', '5', 'Thrust', 'C', '-1', 'No', '448');
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[inv].[name]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[inv].[name] (
    [PrimaryKey] VARCHAR(255)
   ,[compare] VARCHAR(255)
   ,[Text] VARCHAR(255)
   ,[FK_skill_bonus] VARCHAR(255)
   ,[FK_skill_prereq] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[inv].[name] ([PrimaryKey], [compare], [Text], [FK_skill_prereq])
  VALUES ('1', 'is', 'battlesuit', '1');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[name] ([PrimaryKey], [compare], [Text], [FK_skill_prereq])
  VALUES ('2', 'is', 'battlesuit', '2');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[name] ([PrimaryKey], [compare], [Text], [FK_skill_prereq])
  VALUES ('3', 'is', 'battlesuit', '3');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[name] ([PrimaryKey], [compare], [Text], [FK_skill_prereq])
  VALUES ('4', 'is', 'nbc suit', '4');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[name] ([PrimaryKey], [compare], [Text], [FK_skill_prereq])
  VALUES ('5', 'is', 'nbc suit', '5');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[name] ([PrimaryKey], [compare], [Text], [FK_skill_prereq])
  VALUES ('6', 'is', 'nbc suit', '6');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[name] ([PrimaryKey], [compare], [Text], [FK_skill_bonus])
  VALUES ('7', 'starts with', 'navigation', '1');
INSERT INTO [Item1].[inv].[name] ([PrimaryKey], [compare], [Text], [FK_skill_bonus])
  VALUES ('8', 'is', 'First Aid', '2');
INSERT INTO [Item1].[inv].[name] ([PrimaryKey], [compare], [Text], [FK_skill_bonus])
  VALUES ('9', 'is', 'First Aid', '3');
INSERT INTO [Item1].[inv].[name] ([PrimaryKey], [compare], [Text], [FK_skill_bonus])
  VALUES ('10', 'is', 'Disguise', '4');
INSERT INTO [Item1].[inv].[name] ([PrimaryKey], [compare], [Text], [FK_skill_bonus])
  VALUES ('11', 'is', 'First Aid', '5');
INSERT INTO [Item1].[inv].[name] ([PrimaryKey], [compare], [Text], [FK_skill_bonus])
  VALUES ('12', 'is', 'Escape', '6');
INSERT INTO [Item1].[inv].[name] ([PrimaryKey], [compare], [Text], [FK_skill_prereq])
  VALUES ('13', 'is', 'nbc suit', '7');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[name] ([PrimaryKey], [compare], [Text], [FK_skill_prereq])
  VALUES ('14', 'is', 'vacc suit', '8');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[name] ([PrimaryKey], [compare], [Text], [FK_skill_prereq])
  VALUES ('15', 'is', 'vacc suit', '9');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[name] ([PrimaryKey], [compare], [Text], [FK_skill_prereq])
  VALUES ('16', 'is', 'vacc suit', '10');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[name] ([PrimaryKey], [compare], [Text], [FK_skill_prereq])
  VALUES ('17', 'is', 'vacc suit', '11');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[name] ([PrimaryKey], [compare], [Text], [FK_skill_prereq])
  VALUES ('18', 'is', 'nbc suit', '12');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[name] ([PrimaryKey], [compare], [Text], [FK_skill_prereq])
  VALUES ('19', 'is', 'nbc suit', '13');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[name] ([PrimaryKey], [compare], [Text], [FK_skill_prereq])
  VALUES ('20', 'is', 'nbc suit', '14');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[name] ([PrimaryKey], [compare], [Text], [FK_skill_prereq])
  VALUES ('21', 'is', 'vacc suit', '15');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[name] ([PrimaryKey], [compare], [Text], [FK_skill_prereq])
  VALUES ('22', 'is', 'vacc suit', '16');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[name] ([PrimaryKey], [compare], [Text], [FK_skill_prereq])
  VALUES ('23', 'is', 'vacc suit', '17');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[inv].[prereq_list]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[inv].[prereq_list] (
    [PrimaryKey] VARCHAR(255)
   ,[all] VARCHAR(255)
   ,[FK_equipment] VARCHAR(255)
   ,[FK_equipment_container] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[inv].[prereq_list] ([PrimaryKey], [all], [FK_equipment_container])
  VALUES ('1', 'yes', '1');
INSERT INTO [Item1].[inv].[prereq_list] ([PrimaryKey], [all], [FK_equipment_container])
  VALUES ('2', 'yes', '2');
INSERT INTO [Item1].[inv].[prereq_list] ([PrimaryKey], [all], [FK_equipment])
  VALUES ('3', 'yes', '49');
Database Generic Error
Reason:  

Invalid column name 'FK_equipment'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[prereq_list] ([PrimaryKey], [all], [FK_equipment])
  VALUES ('4', 'yes', '50');
Database Generic Error
Reason:  

Invalid column name 'FK_equipment'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[prereq_list] ([PrimaryKey], [all], [FK_equipment])
  VALUES ('5', 'yes', '51');
Database Generic Error
Reason:  

Invalid column name 'FK_equipment'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[prereq_list] ([PrimaryKey], [all], [FK_equipment_container])
  VALUES ('6', 'yes', '3');
INSERT INTO [Item1].[inv].[prereq_list] ([PrimaryKey], [all], [FK_equipment_container])
  VALUES ('7', 'yes', '4');
INSERT INTO [Item1].[inv].[prereq_list] ([PrimaryKey], [all], [FK_equipment])
  VALUES ('8', 'yes', '97');
Database Generic Error
Reason:  

Invalid column name 'FK_equipment'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[prereq_list] ([PrimaryKey], [all], [FK_equipment])
  VALUES ('9', 'yes', '98');
Database Generic Error
Reason:  

Invalid column name 'FK_equipment'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[prereq_list] ([PrimaryKey], [all], [FK_equipment])
  VALUES ('10', 'yes', '99');
Database Generic Error
Reason:  

Invalid column name 'FK_equipment'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[prereq_list] ([PrimaryKey], [all], [FK_equipment])
  VALUES ('11', 'yes', '266');
Database Generic Error
Reason:  

Invalid column name 'FK_equipment'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[prereq_list] ([PrimaryKey], [all], [FK_equipment_container])
  VALUES ('12', 'yes', '10');
INSERT INTO [Item1].[inv].[prereq_list] ([PrimaryKey], [all], [FK_equipment_container])
  VALUES ('13', 'yes', '11');
INSERT INTO [Item1].[inv].[prereq_list] ([PrimaryKey], [all], [FK_equipment_container])
  VALUES ('14', 'yes', '12');
INSERT INTO [Item1].[inv].[prereq_list] ([PrimaryKey], [all], [FK_equipment])
  VALUES ('15', 'yes', '383');
Database Generic Error
Reason:  

Invalid column name 'FK_equipment'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[prereq_list] ([PrimaryKey], [all], [FK_equipment])
  VALUES ('16', 'yes', '384');
Database Generic Error
Reason:  

Invalid column name 'FK_equipment'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[prereq_list] ([PrimaryKey], [all], [FK_equipment])
  VALUES ('17', 'yes', '385');
Database Generic Error
Reason:  

Invalid column name 'FK_equipment'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[prereq_list] ([PrimaryKey], [all], [FK_equipment])
  VALUES ('18', 'yes', '390');
Database Generic Error
Reason:  

Invalid column name 'FK_equipment'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[prereq_list] ([PrimaryKey], [all], [FK_equipment_container])
  VALUES ('19', 'yes', '14');
INSERT INTO [Item1].[inv].[prereq_list] ([PrimaryKey], [all], [FK_equipment])
  VALUES ('20', 'yes', '405');
Database Generic Error
Reason:  

Invalid column name 'FK_equipment'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[prereq_list] ([PrimaryKey], [all], [FK_equipment])
  VALUES ('21', 'yes', '406');
Database Generic Error
Reason:  

Invalid column name 'FK_equipment'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[prereq_list] ([PrimaryKey], [all], [FK_equipment])
  VALUES ('22', 'yes', '407');
Database Generic Error
Reason:  

Invalid column name 'FK_equipment'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[prereq_list] ([PrimaryKey], [all], [FK_equipment_container])
  VALUES ('23', 'yes', '15');
INSERT INTO [Item1].[inv].[prereq_list] ([PrimaryKey], [all], [FK_equipment])
  VALUES ('24', 'yes', '429');
Database Generic Error
Reason:  

Invalid column name 'FK_equipment'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[prereq_list] ([PrimaryKey], [all], [FK_equipment])
  VALUES ('25', 'yes', '430');
Database Generic Error
Reason:  

Invalid column name 'FK_equipment'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[prereq_list] ([PrimaryKey], [all], [FK_equipment])
  VALUES ('26', 'yes', '431');
Database Generic Error
Reason:  

Invalid column name 'FK_equipment'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[prereq_list] ([PrimaryKey], [all], [FK_equipment_container])
  VALUES ('27', 'yes', '17');
INSERT INTO [Item1].[inv].[prereq_list] ([PrimaryKey], [all], [FK_equipment_container])
  VALUES ('28', 'yes', '18');
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[inv].[ranged_weapon]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[inv].[ranged_weapon] (
    [PrimaryKey] VARCHAR(255)
   ,[damage] VARCHAR(255)
   ,[strength] VARCHAR(255)
   ,[accuracy] VARCHAR(255)
   ,[range] VARCHAR(255)
   ,[rate_of_fire] VARCHAR(255)
   ,[shots] VARCHAR(255)
   ,[bulk] VARCHAR(255)
   ,[recoil] VARCHAR(255)
   ,[usage] VARCHAR(255)
   ,[FK_equipment] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('1', '4d+2 pi', '9†', '4', '400/3000', '15', '30+1(3)', '-3', '2', '8');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('2', '5d pi', '9†', '5', '500/3500', '12', '30+1(3)', '-4', '2', '9');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('3', '5d+1 pi', '10†', '4', '400/3000', '10', '30+1(3)', '-4', '2', '10');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('4', '6dx10(10) cr ex', '11B†', '3', '200/2000', '1', '1(20)', '-10', '1', '11');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('5', 'sw-1 imp', '5', '1', 'x3/x4', '1', '1(1)', '-3', '12');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('6', 'sw+1 imp', '6', '3', 'x2/x3', '1', '1(1)', '-4', '13');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('7', '2d pi+', '9', '2', '150/1900', '3', '15+1(3)', '-2', '2', '14');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('8', '3d pi+', '12', '2', '230/2500', '3', '9+1(3)', '-3', '4', '15');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('9', '2d pi+', '10', '2', '175/1700', '3', '7+1(3)', '-2', '3', '16');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('10', '2d+2 pi', '9', '2', '150/1850', '3', '8+1(3)', '-2', '2', '17');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('11', '2d+2 pi', '9', '2', '150/1850', '3', '15+1(3)', '-2', '2', '18');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('12', '2d+2 pi', '9', '2', '150/1900', '3', '18+1(3)', '-2', '2', '19');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('13', '7d pi', '12B†', '5', '1000/4200', '9!', '20(3)', '-6', '3', '20');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('14', '1d+1 pi', '10†', '3', '50/125', '3x9', '6+1(3i)', '-5', '1', '21');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('15', '7d pi', '11†', '5', '1000/4200', '11', '20+1(3)', '-5', '3', '48');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('16', '6dx2(10) cr ex', '10†', '3', '100/650', '1', '1(4)', '-6', '1', '55');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('17', '3d(5) burn', '4', '5', '300/900', '3', '200(3)', '-2', '1', '60');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('18', '6d(5) burn', '7†', '10+2', '700/2100', '3', '50(3)', '-4', '1', '61');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('19', '1d-3 pi-', '2', '1', 'x4', '1', '1(2)', '-6', '62');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('20', '1d pi-', '11†', '1', '15/100', '1x9', '1(15)', '-5', '1', '64');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('21', 'thr-1 cr (see B411)', '7', '0', 'x3', '1', 'T(1)', '-2', '65');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('22', '7d pi', '10†', '5', '1000/4200', '1', '5+1(3)', '-5', '4', '66');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('23', '5d pi+', '10†', '3', '600/2000', '1', '1(4)', '-6', '3', '86');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('24', 'thr+3 imp', '10†', '3', 'x20/x25', '1', '1(2)', '-7', '104');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('25', '1d+1 imp', '7†', '4', '140/175', '1', '1(4)', '-6', '112');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('26', '1d+1 imp', '8†', '4', '160/200', '1', '1(4)', '-6', '113');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('27', '1d+2 imp', '9†', '4', '180/225', '1', '1(4)', '-6', '114');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('28', '1d+2 imp', '10†', '4', '200/250', '1', '1(4)', '-6', '115');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('29', '1d+3 imp', '11†', '4', '220/275', '1', '1(4)', '-6', '116');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('30', '1d+3 imp', '12†', '4', '240/300', '1', '1(4)', '-6', '117');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('31', '2d imp', '13†', '4', '260/325', '1', '1(4)', '-6', '118');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('32', '2d imp', '14†', '4', '280/350', '1', '1(4)', '-6', '119');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('33', '2d+1 imp', '15†', '4', '300/375', '1', '1(4)', '-6', '120');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('34', '2d+1 imp', '16†', '4', '320/400', '1', '1(4)', '-6', '121');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('35', '2d+2 imp', '17†', '4', '340/425', '1', '1(4)', '-6', '122');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('36', '2d+2 imp', '18†', '4', '360/450', '1', '1(4)', '-6', '123');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('37', '2d+3 imp', '19†', '4', '380/475', '1', '1(4)', '-6', '124');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('38', '2d+3 imp', '20†', '4', '400/500', '1', '1(4)', '-6', '125');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [usage], [FK_equipment])
  VALUES ('39', 'sw+2 cr', '10', '1', 'x1/x1.5', '1', 'T(1)', '-3', 'Thrown', '127');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [usage], [FK_equipment])
  VALUES ('40', 'thr-1 imp', '5', '+0', 'x0.5/x1', '1', 'T(1)', '-1', 'Thrown', '131');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('41', '1d(0.2) pi-', '9†', '5+1', '45/145', '1', '1(3)', '-5', '2', '132');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('42', '1d pi+', '9', '1', '80/650', '1', '2(3i)', '-1', '2', '133');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('43', '1d+2 pi', '11†', '3', '50/125', '2x9', '2(3i)', '-5', '1', '135');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('44', '1d-3 burn', '4†', '8+1', '160/470', '3', '360(3)', '-4', '1', '139');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('45', '1d-3 burn', '4', '4', '40/80', '3', '180(3)', '-2', '1', '140');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('46', '3d burn', '10†', '-', '50', 'Jet', '10', '-8', '-', '147');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('47', '4d pi++', '10†', '2', '100/1500', '1', '1(15)', '-6', '4', '150');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('48', '2d-1 pi+', '10', '1', '75/450', '1', '1(20)', '-3', '2', '151');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('49', '4d(3) pi-', '9†', '6+1', '700/2900', '16', '80(3)', '-3', '2', '164');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('50', '6d+2(3) pi-', '10†', '7+2', '1200/4800', '12', '60(3)', '-4', '2', '165');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('51', '6d pi++', '9', '1', '1900', '3', '4(3i)', '-2', '1', '174');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('52', '2d pi++', '10†', '0', '100/600', '1', '1(60)', '-6', '4', '177');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('53', 'thr+5 imp', '11', '2', 'x1/x1.5', '1', 'T(1)', '-6', '178');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [usage], [FK_equipment])
  VALUES ('54', 'sw cut', '8', '1', 'x1.5/x2.5', '1', 'T(1)', '-2', 'Thrown', '179');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('55', '8d(5) burn', '10†', '10+4', '900/2700', '3', '90(5)', '-6', '1', '180');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [usage], [FK_equipment])
  VALUES ('56', 'Special', '8', '+1', '2', '1', 'T(1)', '-6', 'Thrown', '181');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('57', '13d+1 pi+', '20M†', '6', '1800/7400', '8!', '100(5)', '-8', '2', '188');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('58', '2d pi', '8', '1', '125/1500', '3', '5+1(3)', '-1', '3', '189');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [usage], [FK_equipment])
  VALUES ('59', '7d cr ex[3d]', '10', '4+2', '2200', '1', '3(3)', '-', '3', 'Fragmentation', '192');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [usage], [FK_equipment])
  VALUES ('60', '4d cr ex', '10', '4+2', '2200', '1', '3(3)', '-', '3', 'Concussion', '192');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [usage], [FK_equipment])
  VALUES ('61', 'HT-5 aff (10 yd)', '10', '4+2', '2200', '1', '3(3)', '-', '3', 'Stun', '192');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('62', '6d pi', '10†', '4+2', '700/4000', '15', '25+1(3)', '-5', '2', '193');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('63', '7d cr ex[3d]', '10', '4+2', '2200', '1', '3(3)', '-', '3', '194');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [usage], [FK_equipment])
  VALUES ('64', 'thr+1 imp', '6', '+3', 'x1.5/x2.5', '1', 'T(1)', '-4', 'Thrown', '196');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [usage], [FK_equipment])
  VALUES ('65', 'thr imp', '6', '+0', 'x0.8/x1.5', '1', 'T(1)', '-2', 'Thrown', '204');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('66', 'see B411', '11', '1', 'spec', '1', 'T(1)', '-6', '205');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('67', 'see B411', '7†', '0', 'spec', '1', 'T(spec)', '-2', '208');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('68', '3d(2) burn', '6', '6', '250/750', '10', '400(3)', '-2', '1', '210');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('69', '5d(2) burn', '7†', '12+2', '700/2100', '10', '150(3)', '-4', '1', '211');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('70', '5d(2) burn', '10†', '12+2', '1100/3300', '3', '75(3)', '-8', '1', '213');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('71', '6dx6(10) cr ex', '10†', '3', '330/2300', '1', '1(-)', '-5', '1', '214');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('72', '5d pi', '10†', '4', '450/3000', '1', '6+1(3i)', '-4', '2', '225');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [usage], [FK_equipment])
  VALUES ('73', 'Special', '5', '+1', '2', '1', 'T(1)', '-4', 'Thrown', '229');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('74', '7d pi', '13B†', '5', '1000/4200', '15!', '100(5)', '-6', '2', '234');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('75', 'thr+2 imp', '11†', '3', 'x15/x20', '1', '1(2)', '-8', '237');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('76', 'sw+3 cr', '12', '1', 'x0.5/x1', '1', 'T(1)', '-4', '239');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('77', '2d+2 pi', '12', '2', '160/1900', '20', '25+1(3)', '-3', '3', '240');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('78', '4d pi++', '10R†', '2', '100/600', '1', '1(60)', '-6', '3', '248');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('79', 'see B411', '8', '1', 'spec', '1', 'T(1)', '-4', '254');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('80', '4d+1 pi-', '7†', '3', '200/2000', '15', '20+1(3)', '-3', '2', '271');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('81', '1d-1 imp', '7', '1', '105/140', '1', '1(4)', '-4', '275');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('82', '1d-1 imp', '8', '1', '120/160', '1', '1(4)', '-4', '276');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('83', '1d imp', '9', '1', '135/180', '1', '1(4)', '-4', '277');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('84', '1d imp', '10', '1', '150/200', '1', '1(4)', '-4', '278');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('85', '1d+1 imp', '11', '1', '165/220', '1', '1(4)', '-4', '279');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('86', '1d+1 imp', '12', '1', '180/240', '1', '1(4)', '-4', '280');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('87', '1d+2 imp', '13', '1', '195/260', '1', '1(4)', '-4', '281');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('88', '1d+2 imp', '14', '1', '210/280', '1', '1(4)', '-4', '282');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('89', '1d+3 imp', '15', '1', '225/300', '1', '1(4)', '-4', '283');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('90', '1d+3 imp', '16', '1', '240/320', '1', '1(4)', '-4', '284');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('91', '2d imp', '17', '1', '255/340', '1', '1(4)', '-4', '285');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('92', '2d imp', '18', '1', '270/360', '1', '1(4)', '-4', '286');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('93', '2d+1 imp', '19', '1', '285/380', '1', '1(4)', '-4', '287');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('94', '2d+1 imp', '20', '1', '300/400', '1', '1(4)', '-4', '288');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('95', '1d+1 pi', '7†', '2', '140/175', '1', '1(4)', '-6', '304');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('96', '1d+1 pi', '8†', '2', '160/200', '1', '1(4)', '-6', '305');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('97', '1d+2 pi', '9†', '2', '180/225', '1', '1(4)', '-6', '306');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('98', '1d+2 pi', '10†', '2', '200/250', '1', '1(4)', '-6', '307');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('99', '1d+3 pi', '11†', '2', '220/275', '1', '1(4)', '-6', '308');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('100', '1d+3 pi', '12†', '2', '240/300', '1', '1(4)', '-6', '309');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('101', '2d pi', '13†', '2', '260/325', '1', '1(4)', '-6', '310');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('102', '2d pi', '14†', '2', '280/350', '1', '1(4)', '-6', '311');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('103', '2d+1 pi', '15†', '2', '300/375', '1', '1(4)', '-6', '312');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('104', '2d+1 pi', '16†', '2', '320/400', '1', '1(4)', '-6', '313');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('105', '2d+2 pi', '17†', '2', '340/425', '1', '1(4)', '-6', '314');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('106', '2d+2 pi', '18†', '2', '360/450', '1', '1(4)', '-6', '315');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('107', '2d+3 pi', '19†', '2', '380/475', '1', '1(4)', '-6', '316');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('108', '2d+3 pi', '20†', '2', '400/500', '1', '1(4)', '-6', '317');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('109', '1d+1 pi', '10†', '3', '50/125', '2x9', '5(3i)', '-5', '1', '318');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('110', 'thr+1 imp', '10†', '2', 'x15/x20', '1', '1(2)', '-7', '326');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('111', '7d+2 (2) pi', '11B†', '6+3', '1500/5500', '1', '4+1(3)', '-6', '4', '327');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('112', '2d-1 pi', '10', '1', '120/1300', '1', '6(3i)', '-2', '2', '329');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('113', '2d-1 pi', '8', '2', '120/1500', '3', '6(3i)', '-2', '2', '330');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('114', '3d pi+', '11', '2', '200/2500', '3', '6(3i)', '-3', '4', '331');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('115', '3d-1 pi', '10', '2', '185/2000', '3', '6(3i)', '-2', '3', '332');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('116', '4d pi+', '10†', '4', '700/2100', '1', '1(15)', '-6', '3', '333');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('117', '6dx3(10) cr ex', '10†', '3+1', '300/1000', '1', '1(5)', '-6', '1', '338');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('118', '6dx3 cr ex [6d]', '10†', '7', '1000/8800', '1', '1(20)', '-8', '1', '341');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('119', '5d+1 pi', '12B†', '5', '800/3500', '12!', '200(5)', '-6', '2', '346');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('120', '5d imp', '45M†', '3', '415/520', '1', '1(30)', '-10', '-', '352');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('121', '7d pi', '10†', '5', '1000/4200', '3', '8(3)', '-5', '3', '355');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('122', 'thr imp', '7†', '1', 'x10/x15', '1', '1(2)', '-6', '357');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('123', 'thr-1 cut', '5', '1', 'x0.5/x1', '1', 'T(1)', '0', '362');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('124', 'sw pi', '6', '0', 'x6/x10', '1', '1(2)', '-4', '368');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [usage], [FK_equipment])
  VALUES ('125', 'thr-1 imp', '5', '+0', 'x0.5/x1', '1', 'T(1)', '-1', 'Thrown', '372');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [usage], [FK_equipment])
  VALUES ('126', 'sw+2 cr', '10', '1', 'x1/x1.5', '1', 'T(1)', '-3', 'Thrown', '373');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('127', '2d+1 pi+', '11†', '3', '190/1750', '13', '50+1(5)', '-4', '3', '377');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('128', '3d-1 pi', '10†', '3', '160/1900', '8!', '32(3)', '-4', '2', '378');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('129', '3d-1 pi', '10†', '4', '160/1900', '13', '30+1(3)', '-4', '2', '379');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('130', '9d+1 pi', '11B†', '6+3', '1500/5500', '1', '4+1(3)', '-6', '4', '380');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('131', '1d+2 pi', '8', '1', '120/1250', '3', '5(3i)', '-1', '3', '381');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [usage], [FK_equipment])
  VALUES ('132', 'thr+3 imp', '9', '+2', 'x1/x1.5', '1', 'T(1)', '-6', 'Thrown', '391');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [FK_equipment])
  VALUES ('133', 'sw+1 pi', '7†', '1', 'x10/x15', '1', '1(2)', '-6', '395');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [usage], [FK_equipment])
  VALUES ('134', 'sw+2 cut', '11', '2', 'x1/x1.5', '1', 'T(1)', '-3', 'Thrown', '418');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('135', '4d(10) cr ex[2d]', '11', '2', '150/440', '1', '1(3)', '-', '2', '428');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [recoil], [FK_equipment])
  VALUES ('136', '1d+1 pi+', '10', '1', '75/400', '1', '1(20)', '-3', '2', '439');
INSERT INTO [Item1].[inv].[ranged_weapon] ([PrimaryKey], [damage], [strength], [accuracy], [range], [rate_of_fire], [shots], [bulk], [usage], [FK_equipment])
  VALUES ('137', 'thr(0.5) imp', '5', '+0', 'x0.5/x1', '1', 'T(1)', '-2', 'Thrown', '448');
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[inv].[skill_bonus]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[inv].[skill_bonus] (
    [PrimaryKey] VARCHAR(255)
   ,[amount] VARCHAR(255)
   ,[FK_equipment] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[inv].[skill_bonus] ([PrimaryKey], [amount], [FK_equipment])
  VALUES ('1', '1', '103');
INSERT INTO [Item1].[inv].[skill_bonus] ([PrimaryKey], [amount], [FK_equipment])
  VALUES ('2', '2', '110');
INSERT INTO [Item1].[inv].[skill_bonus] ([PrimaryKey], [amount], [FK_equipment])
  VALUES ('3', '2', '111');
INSERT INTO [Item1].[inv].[skill_bonus] ([PrimaryKey], [amount], [FK_equipment])
  VALUES ('4', '1', '134');
INSERT INTO [Item1].[inv].[skill_bonus] ([PrimaryKey], [amount], [FK_equipment])
  VALUES ('5', '1', '143');
INSERT INTO [Item1].[inv].[skill_bonus] ([PrimaryKey], [amount], [FK_equipment])
  VALUES ('6', '-5', '176');
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[inv].[skill_prereq]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[inv].[skill_prereq] (
    [PrimaryKey] VARCHAR(255)
   ,[has] VARCHAR(255)
   ,[FK_prereq_list] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[inv].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('1', 'yes', '3');
INSERT INTO [Item1].[inv].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('2', 'yes', '4');
INSERT INTO [Item1].[inv].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('3', 'yes', '5');
INSERT INTO [Item1].[inv].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('4', 'yes', '8');
INSERT INTO [Item1].[inv].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('5', 'yes', '9');
INSERT INTO [Item1].[inv].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('6', 'yes', '10');
INSERT INTO [Item1].[inv].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('7', 'yes', '11');
INSERT INTO [Item1].[inv].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('8', 'yes', '15');
INSERT INTO [Item1].[inv].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('9', 'yes', '16');
INSERT INTO [Item1].[inv].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('10', 'yes', '17');
INSERT INTO [Item1].[inv].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('11', 'yes', '18');
INSERT INTO [Item1].[inv].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('12', 'yes', '20');
INSERT INTO [Item1].[inv].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('13', 'yes', '21');
INSERT INTO [Item1].[inv].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('14', 'yes', '22');
INSERT INTO [Item1].[inv].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('15', 'yes', '24');
INSERT INTO [Item1].[inv].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('16', 'yes', '25');
INSERT INTO [Item1].[inv].[skill_prereq] ([PrimaryKey], [has], [FK_prereq_list])
  VALUES ('17', 'yes', '26');
IF NOT EXISTS (SELECT
      *
    FROM DBO.SYSOBJECTS
    WHERE id = OBJECT_ID(N'[Item1].[inv].[specialization]')
    AND OBJECTPROPERTY(id, N'ISUSERTABLE') = 1)
BEGIN
  CREATE TABLE [Item1].[inv].[specialization] (
    [PrimaryKey] VARCHAR(255)
   ,[compare] VARCHAR(255)
   ,[FK_skill_bonus] VARCHAR(255)
   ,[FK_skill_prereq] VARCHAR(255)
  )
END;
INSERT INTO [Item1].[inv].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('1', 'is anything', '1');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('2', 'is anything', '2');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('3', 'is anything', '3');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('4', 'is anything', '4');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('5', 'is anything', '5');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('6', 'is anything', '6');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[specialization] ([PrimaryKey], [compare], [FK_skill_bonus])
  VALUES ('7', 'is anything', '1');
INSERT INTO [Item1].[inv].[specialization] ([PrimaryKey], [compare], [FK_skill_bonus])
  VALUES ('8', 'is anything', '2');
INSERT INTO [Item1].[inv].[specialization] ([PrimaryKey], [compare], [FK_skill_bonus])
  VALUES ('9', 'is anything', '3');
INSERT INTO [Item1].[inv].[specialization] ([PrimaryKey], [compare], [FK_skill_bonus])
  VALUES ('10', 'is anything', '4');
INSERT INTO [Item1].[inv].[specialization] ([PrimaryKey], [compare], [FK_skill_bonus])
  VALUES ('11', 'is anything', '5');
INSERT INTO [Item1].[inv].[specialization] ([PrimaryKey], [compare], [FK_skill_bonus])
  VALUES ('12', 'is anything', '6');
INSERT INTO [Item1].[inv].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('13', 'is anything', '7');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('14', 'is anything', '8');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('15', 'is anything', '9');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('16', 'is anything', '10');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('17', 'is anything', '11');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('18', 'is anything', '12');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('19', 'is anything', '13');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('20', 'is anything', '14');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('21', 'is anything', '15');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('22', 'is anything', '16');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
INSERT INTO [Item1].[inv].[specialization] ([PrimaryKey], [compare], [FK_skill_prereq])
  VALUES ('23', 'is anything', '17');
Database Generic Error
Reason:  

Invalid column name 'FK_skill_prereq'.
Statement(s) could not be prepared.
