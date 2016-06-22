USE Item1
GO

DECLARE @RC int
DECLARE @name nvarchar(80)
DECLARE @weigth decimal(38, 3)
DECLARE @price MONEY

EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.175 BB',@weigth=0.0008, @price=0.003
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.22 Long Rifle (5.7x16mmR)',@weigth=0.0077, @price=0.1
EXECUTE @RC = dbo.NEW_ITEM_Ammo @name=N'.220 Swift (5.56x56mmR)',@weigth=0.033, @price=1
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
