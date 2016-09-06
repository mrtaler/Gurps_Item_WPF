USE item1
GO

DECLARE @RC int
DECLARE @name varchar(80)
DECLARE @class_ofItem varchar(80)
DECLARE @Weight int
DECLARE @ST int
DECLARE @Bulk varchar(80)
DECLARE @Cost money
DECLARE @Lcin varchar(10)
DECLARE @TLin varchar(10)
DECLARE @Desc varchar(max)
DECLARE @ROF int
DECLARE @Recoill int
DECLARE @DefACCc int
DECLARE @Half_Rangee int
DECLARE @FullRangee int
DECLARE @Damagee varchar(50)
DECLARE @TypeOfDamage varchar(50)
DECLARE @Shotss int
DECLARE @AddinChamber bit
DECLARE @TimeForreload int
DECLARE @singlereload bit
DECLARE @Returns int
DECLARE @asd INT
--SET @name = '' 
--SET @class_ofItem = '' 
--SET @Weight = 0 
--SET @ST = 0 
--SET @Bulk = '' 
--SET @Cost = 0 
--SET @Lcin = '' 
--SET @TLin = '' 
--SET @Desc = '' 
--SET @ROF = 0 
--SET @Recoill = 0 
--SET @DefACCc = 0 
--SET @Half_Rangee = 0 
--SET @FullRangee = 0 
--SET @Damagee = '' 
--SET @TypeOfDamage = '' 
--SET @Shotss = 0 
--SET @AddinChamber = 0 
--SET @TimeForreload = 0 
--SET @singlereload = 0 

--EXECUTE @RC = dbo.NEW_ITEMWeap @name
--                              ,@class_ofItem
--                              ,@Weight
--                              ,@ST
--                              ,@Bulk
--                              ,@Cost
--                              ,@Lcin
--                              ,@TLin
--                              ,@Desc
--                              ,@ROF
--                              ,@Recoill
--                              ,@DefACCc
--                              ,@Half_Rangee
--                              ,@FullRangee
--                              ,@Damagee
--                              ,@TypeOfDamage
--                              ,@Shotss
--                              ,@AddinChamber
--                              ,@TimeForreload
--                              ,@singlereload
--                              ,@Returns OUTPUT
--GO


EXECUTE @RC = dbo.NEW_ITEMWeap @name = 'Thompson Contender, 5.56x45mm, Guns (Ptl)',	  @class_ofItem='Gun',	@Weight = 4,	  @ST = 11,	@Bulk = '-5',	@Cost  = 580,	@Lcin = 'LC3',	@TLin= 'TL7',	@Desc= ' ',	@ROF = 1,	@Recoill = 2,	@DefACCc= 6,	@Half_Rangee= 350,	@FullRangee= 2600,	@Damagee= '5d-3',	@TypeOfDamage= 'pi',	@Shotss= 1,	@AddinChamber= 0,	@TimeForreload= 5,	@singlereload= 0, @Returns = @asd
EXECUTE @RC = dbo.NEW_ITEMWeap @name = 'Beretta M78 .223 Rem',                    	  @class_ofItem='Gun',	@Weight = 12.5,	@ST =11,	@Bulk = '-5',	@Cost  = 1400,	@Lcin = 'LC3',	@TLin= 'TL7',	@Desc= ' ',	@ROF = 11,	@Recoill = 1,	@DefACCc= 4,	@Half_Rangee= 800,	@FullRangee= 2800,	@Damagee= '5d+1',	@TypeOfDamage= 'pi',	@Shotss= 30,	@AddinChamber= 0,	@TimeForreload= 3,	@singlereload= 0, @Returns  = @asd
EXECUTE @RC = dbo.NEW_ITEMWeap @name = 'Armalite AR-10 .308 Win',                  	  @class_ofItem='Gun',	@Weight = 9.5,	@ST =12,	@Bulk = '-5',	@Cost  = 1300,	@Lcin = 'LC3',	@TLin= 'TL7',	@Desc= ' ',	@ROF = 11,	@Recoill = 2,	@DefACCc= 3,	@Half_Rangee= 800,	@FullRangee= 2800,	@Damagee= '7d',	@TypeOfDamage= 'pi',	@Shotss= 20,	@AddinChamber= 0,	@TimeForreload= 3,	@singlereload= 0,@Returns  = @asd
EXECUTE @RC = dbo.NEW_ITEMWeap @name = 'AK-47, 7.62x39mm M-43',                     	@class_ofItem='Gun',	@Weight = 10,	  @ST =10,	@Bulk = '-5',	@Cost  = 290,	@Lcin = 'LC3',	@TLin= 'TL6',	@Desc= ' ',	@ROF = 10,	@Recoill = 1,	@DefACCc= 4,	@Half_Rangee= 400,	@FullRangee= 3000,	@Damagee= '5d+1',	@TypeOfDamage= 'pi',	@Shotss= 30,	@AddinChamber= 1,	@TimeForreload= 3,	@singlereload= 0,@Returns  = @asd
EXECUTE @RC = dbo.NEW_ITEMWeap @name = 'Valmet M62 / M76, 7.62x39mm',                	@class_ofItem='Gun',	@Weight = 9.5,	@ST =10,	@Bulk = '-5',	@Cost  = 550,	@Lcin = 'LC3',	@TLin= 'TL7',	@Desc= ' ',	@ROF = 0,	@Recoill = 2,	@DefACCc= 3,	@Half_Rangee= 400,	@FullRangee= 3000,	@Damagee= '5d+1',	@TypeOfDamage= 'pi',	@Shotss= 30,	@AddinChamber= 1,	@TimeForreload= 3,	@singlereload= 0,@Returns  = @asd
EXECUTE @RC = dbo.NEW_ITEMWeap @name = 'OTs-14-4A, 7.62x39mm',	                      @class_ofItem='Gun',	@Weight = 9.1,	@ST =10,	@Bulk = '-5',	@Cost  = 900,	@Lcin = 'LC3',	@TLin= 'TL7',	@Desc= ' ',	@ROF = 11,	@Recoill = 2,	@DefACCc= 4,	@Half_Rangee= 400,	@FullRangee= 3000,	@Damagee= '5d+1',	@TypeOfDamage= 'pi',	@Shotss= 20,	@AddinChamber= 1,	@TimeForreload= 3,	@singlereload= 0,@Returns  = @asd
EXECUTE @RC = dbo.NEW_ITEMWeap @name = 'Valmet M76,7.62mmR',                          @class_ofItem='Gun',	@Weight = 7.5,	@ST =10,	@Bulk = '-5',	@Cost  = 300,	@Lcin = 'LC3',	@TLin= 'TL7',	@Desc= ' ',	@ROF = 11,	@Recoill = 1,	@DefACCc= 4,	@Half_Rangee= 400,	@FullRangee= 3011,	@Damagee= '5d+1',	@TypeOfDamage= 'pi',	@Shotss= 30,	@AddinChamber= 1,	@TimeForreload= 3,	@singlereload= 0,@Returns  = @asd
EXECUTE @RC = dbo.NEW_ITEMWeap @name = 'Galil SAR .308 Win',	@class_ofItem='Gun',	@Weight = 9.2,	@ST =10,	@Bulk = '-5',	@Cost  = 600,	@Lcin = 'LC3',	@TLin= 'TL7',	@Desc= ' ',	@ROF = 11,	@Recoill = 2,	@DefACCc= 4,	@Half_Rangee= 800,	@FullRangee= 3710,	@Damagee= '7d',	@TypeOfDamage= 'pi',	@Shotss= 20,	@AddinChamber= 1,	@TimeForreload= 3,	@singlereload= 0,@Returns  = @asd
EXECUTE @RC = dbo.NEW_ITEMWeap @name = 'M60E1, .308 Win',	@class_ofItem='Gun',	@Weight = 29,	@ST =13,	@Bulk = '-5',	@Cost  = 1300,	@Lcin = 'LC3',	@TLin= 'TL7',	@Desc= ' ',	@ROF = 10,	@Recoill = 1,	@DefACCc= 5,	@Half_Rangee= 1000,	@FullRangee= 4700,	@Damagee= '7d',	@TypeOfDamage= 'pi',	@Shotss= 100,	@AddinChamber= 0,	@TimeForreload= 5,	@singlereload= 0,@Returns  = @asd
EXECUTE @RC = dbo.NEW_ITEMWeap @name = 'M60E2, .308 Win',	@class_ofItem='Gun',	@Weight = 29,	@ST =13,	@Bulk = '-5',	@Cost  = 1300,	@Lcin = 'LC3',	@TLin= 'TL7',	@Desc= ' ',	@ROF = 10,	@Recoill = 1,	@DefACCc= 5,	@Half_Rangee= 1000,	@FullRangee= 4700,	@Damagee= '7d',	@TypeOfDamage= 'pi',	@Shotss= 100,	@AddinChamber= 0,	@TimeForreload= 5,	@singlereload= 0,@Returns  = @asd
EXECUTE @RC = dbo.NEW_ITEMWeap @name = 'FN FAL, .308 Win',	@class_ofItem='Gun',	@Weight = 11,	@ST =11,	@Bulk = '-5',	@Cost  = 900,	@Lcin = 'LC2',	@TLin= 'TL7',	@Desc= ' ',	@ROF = 11,	@Recoill = 3,	@DefACCc= 5,	@Half_Rangee= 1000,	@FullRangee= 4200,	@Damagee= '7d',	@TypeOfDamage= 'pi',	@Shotss= 20,	@AddinChamber= 1,	@TimeForreload= 3,	@singlereload= 0,@Returns  = @asd
EXECUTE @RC = dbo.NEW_ITEMWeap @name = 'H&K G3A3  .308 Win',	@class_ofItem='Gun',	@Weight = 11,	@ST =11,	@Bulk = '-5',	@Cost  = 550,	@Lcin = 'LC3',	@TLin= 'TL7',	@Desc= ' ',	@ROF = 10,	@Recoill = 2,	@DefACCc= 4,	@Half_Rangee= 1000,	@FullRangee= 4600,	@Damagee= '7d',	@TypeOfDamage= 'pi',	@Shotss= 20,	@AddinChamber= 1,	@TimeForreload= 3,	@singlereload= 0,@Returns  = @asd
EXECUTE @RC = dbo.NEW_ITEMWeap @name = 'H&K G3/SG1, .308 Win',	@class_ofItem='Gun',	@Weight = 13.8,	@ST =11,	@Bulk = '-5',	@Cost  = 2200,	@Lcin = 'LC3',	@TLin= 'TL7',	@Desc= ' ',	@ROF = 10,	@Recoill = 2,	@DefACCc= 4,	@Half_Rangee= 1000,	@FullRangee= 4600,	@Damagee= '7d',	@TypeOfDamage= 'pi',	@Shotss= 20,	@AddinChamber= 1,	@TimeForreload= 3,	@singlereload= 0,@Returns  = @asd
EXECUTE @RC = dbo.NEW_ITEMWeap @name = 'Galil AR, .308 Win',	@class_ofItem='Gun',	@Weight = 11.5,	@ST =10,	@Bulk = '-5',	@Cost  = 600,	@Lcin = 'LC3',	@TLin= 'TL7',	@Desc= ' ',	@ROF = 10,	@Recoill = 2,	@DefACCc= 4,	@Half_Rangee= 1000,	@FullRangee= 4655,	@Damagee= '7d',	@TypeOfDamage= 'pi',	@Shotss= 25,	@AddinChamber= 1,	@TimeForreload= 3,	@singlereload= 0,@Returns  = @asd
EXECUTE @RC = dbo.NEW_ITEMWeap @name = 'H&K G3A3 ZF, .308 Win',	@class_ofItem='Gun',	@Weight = 11,	@ST =11,	@Bulk = '-5',	@Cost  = 550,	@Lcin = 'LC3',	@TLin= 'TL7',	@Desc= ' ',	@ROF = 10,	@Recoill = 2,	@DefACCc= 4,	@Half_Rangee= 1000,	@FullRangee= 4655,	@Damagee= '7d',	@TypeOfDamage= 'pi',	@Shotss= 20,	@AddinChamber= 1,	@TimeForreload= 3,	@singlereload= 0,@Returns  = @asd
EXECUTE @RC = dbo.NEW_ITEMWeap @name = 'H&K G3A4  .308 Win',	@class_ofItem='Gun',	@Weight = 11,	@ST =11,	@Bulk = '-5',	@Cost  = 550,	@Lcin = 'LC3',	@TLin= 'TL7',	@Desc= ' ',	@ROF = 10,	@Recoill = 2,	@DefACCc= 4,	@Half_Rangee= 1000,	@FullRangee= 4655,	@Damagee= '7d',	@TypeOfDamage= 'pi',	@Shotss= 20,	@AddinChamber= 1,	@TimeForreload= 3,	@singlereload= 0,@Returns  = @asd
EXECUTE @RC = dbo.NEW_ITEMWeap @name = 'H&K G3KA4  .308 Win',	@class_ofItem='Gun',	@Weight = 11,	@ST =11,	@Bulk = '-5',	@Cost  = 550,	@Lcin = 'LC3',	@TLin= 'TL7',	@Desc= ' ',	@ROF = 10,	@Recoill = 2,	@DefACCc= 4,	@Half_Rangee= 1000,	@FullRangee= 4655,	@Damagee= '7d',	@TypeOfDamage= 'pi',	@Shotss= 20,	@AddinChamber= 1,	@TimeForreload= 3,	@singlereload= 0,@Returns  = @asd
EXECUTE @RC = dbo.NEW_ITEMWeap @name = 'M14, .308 Win',	@class_ofItem='Gun',	@Weight = 12.75,	@ST =11,	@Bulk = '-5',	@Cost  = 700,	@Lcin = 'LC3',	@TLin= 'TL7',	@Desc= ' ',	@ROF = 11,	@Recoill = 2,	@DefACCc= 4,	@Half_Rangee= 1000,	@FullRangee= 4655,	@Damagee= '7d',	@TypeOfDamage= 'pi',	@Shotss= 20,	@AddinChamber= 0,	@TimeForreload= 3,	@singlereload= 0,@Returns  = @asd
EXECUTE @RC = dbo.NEW_ITEMWeap @name = 'M134 Minigun, .308 Win',	@class_ofItem='Gun',	@Weight = 72,	@ST =1,	@Bulk = '-5',	@Cost  = 3000,	@Lcin = 'LC3',	@TLin= 'TL7',	@Desc= ' ',	@ROF = 100,	@Recoill = 3,	@DefACCc= 8,	@Half_Rangee= 1000,	@FullRangee= 4655,	@Damagee= '7d',	@TypeOfDamage= 'pi',	@Shotss= 4000,	@AddinChamber= 0,	@TimeForreload= 30,	@singlereload= 0,@Returns  = @asd
EXECUTE @RC = dbo.NEW_ITEMWeap @name = 'M60B, .308 Win',	@class_ofItem='Gun',	@Weight = 29,	@ST =13,	@Bulk = '-5',	@Cost  = 3000,	@Lcin = 'LC3',	@TLin= 'TL7',	@Desc= ' ',	@ROF = 10,	@Recoill = 1,	@DefACCc= 4,	@Half_Rangee= 1000,	@FullRangee= 4700,	@Damagee= '7d',	@TypeOfDamage= 'pi',	@Shotss= 100,	@AddinChamber= 0,	@TimeForreload= 5,	@singlereload= 0,@Returns  = @asd
EXECUTE @RC = dbo.NEW_ITEMWeap @name = 'M60D, .308 Win',	@class_ofItem='Gun',	@Weight = 29,	@ST =13,	@Bulk = '-5',	@Cost  = 3000,	@Lcin = 'LC3',	@TLin= 'TL7',	@Desc= ' ',	@ROF = 10,	@Recoill = 1,	@DefACCc= 4,	@Half_Rangee= 1000,	@FullRangee= 4700,	@Damagee= '7d',	@TypeOfDamage= 'pi',	@Shotss= 100,	@AddinChamber= 0,	@TimeForreload= 5,	@singlereload= 0,@Returns  = @asd
EXECUTE @RC = dbo.NEW_ITEMWeap @name = 'M60E3, .308 Win',	@class_ofItem='Gun',	@Weight = 25,	@ST =12,	@Bulk = '-5',	@Cost  = 3200,	@Lcin = 'LC3',	@TLin= 'TL7',	@Desc= ' ',	@ROF = 10,	@Recoill = 1,	@DefACCc= 4,	@Half_Rangee= 1000,	@FullRangee= 4700,	@Damagee= '7d',	@TypeOfDamage= 'pi',	@Shotss= 100,	@AddinChamber= 0,	@TimeForreload= 5,	@singlereload= 0,@Returns  = @asd
EXECUTE @RC = dbo.NEW_ITEMWeap @name = 'M60E4, .308 Win',	@class_ofItem='Gun',	@Weight = 25,	@ST =12,	@Bulk = '-5',	@Cost  = 3200,	@Lcin = 'LC3',	@TLin= 'TL7',	@Desc= ' ',	@ROF = 10,	@Recoill = 1,	@DefACCc= 4,	@Half_Rangee= 1000,	@FullRangee= 4700,	@Damagee= '7d',	@TypeOfDamage= 'pi',	@Shotss= 100,	@AddinChamber= 0,	@TimeForreload= 5,	@singlereload= 0,@Returns  = @asd
EXECUTE @RC = dbo.NEW_ITEMWeap @name = 'L96A1 .308 Win',	@class_ofItem='Gun',	@Weight = 14.2,	@ST =11,	@Bulk = '-5',	@Cost  = 2100,	@Lcin = 'LC3',	@TLin= 'TL7',	@Desc= ' ',	@ROF = 1,	@Recoill = 2,	@DefACCc= 6,	@Half_Rangee= 1200,	@FullRangee= 4700,	@Damagee= '7d',	@TypeOfDamage= 'pi',	@Shotss= 10,	@AddinChamber= 0,	@TimeForreload= 3,	@singlereload= 0,@Returns  = @asd
EXECUTE @RC = dbo.NEW_ITEMWeap @name = 'FR-F2, .308 Win',	@class_ofItem='Gun',	@Weight = 12.8,	@ST =12,	@Bulk = '-5',	@Cost  = 1500,	@Lcin = 'LC3',	@TLin= 'TL7',	@Desc= ' ',	@ROF = 1,	@Recoill = 2,	@DefACCc= 5,	@Half_Rangee= 1200,	@FullRangee= 4700,	@Damagee= '7d',	@TypeOfDamage= 'pi',	@Shotss= 10,	@AddinChamber= 0,	@TimeForreload= 3,	@singlereload= 0,@Returns  = @asd
EXECUTE @RC = dbo.NEW_ITEMWeap @name = 'L85A2 (5.56x45mm NATO)',	@class_ofItem='Gun',	@Weight = 11.2,	@ST =8,	@Bulk = '-4',	@Cost  = 1100,	@Lcin = 'LC2',	@TLin= 'TL8',	@Desc= ' ',	@ROF = 12,	@Recoill = 2,	@DefACCc= 4,	@Half_Rangee= 500,	@FullRangee= 3200,	@Damagee= '5d',	@TypeOfDamage= 'pi',	@Shotss= 30,	@AddinChamber= 1,	@TimeForreload= 3,	@singlereload= 0,@Returns  = @asd
EXECUTE @RC = dbo.NEW_ITEMWeap @name = 'L85A1 w/SUSAT (5.56x45mm NATO)',	@class_ofItem='Gun',	@Weight = 12.1,	@ST =8,	@Bulk = '-4',	@Cost  = 1200,	@Lcin = 'LC2',	@TLin= 'TL8',	@Desc= ' ',	@ROF = 12,	@Recoill = 2,	@DefACCc= 5,	@Half_Rangee= 500,	@FullRangee= 3200,	@Damagee= '5d',	@TypeOfDamage= 'pi',	@Shotss= 30,	@AddinChamber= 1,	@TimeForreload= 3,	@singlereload= 0,@Returns  = @asd
EXECUTE @RC = dbo.NEW_ITEMWeap @name = 'L85A2 w/SUSAT (5.56x45mm NATO)',	@class_ofItem='Gun',	@Weight = 12.1,	@ST =8,	@Bulk = '-4',	@Cost  = 1500,	@Lcin = 'LC2',	@TLin= 'TL8',	@Desc= ' ',	@ROF = 12,	@Recoill = 2,	@DefACCc= 5,	@Half_Rangee= 500,	@FullRangee= 3200,	@Damagee= '5d ',	@TypeOfDamage= 'pi',	@Shotss= 30,	@AddinChamber= 1,	@TimeForreload= 3,	@singlereload= 0,@Returns  = @asd
