using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using GurpsDb.GurpsModel;

namespace GurpsDb
{
    public class DbInit : DropCreateDatabaseAlways<ContextGurpsModel>
    {
        protected override void Seed(ContextGurpsModel context)
        {
            #region TL INIT
            context.TlDbSet.Add(new Tl("TL0", "Каменный век (доисторический период и далее). $250", 250M));
            context.TlDbSet.Add(new Tl("TL1", "Бронзовый век (3500 лет до н.э. и позже). $500", 500M));
            context.TlDbSet.Add(new Tl("TL2", "Железный век (1200 лет до н.э. и позже). $750", 750M));
            context.TlDbSet.Add(new Tl("TL3", "Средневековье (600 г. н.э. и позже). $1.000", 1000M));
            context.TlDbSet.Add(new Tl("TL4", "Эпоха парусов (1450 г. и позже). $2.000", 2000M));
            context.TlDbSet.Add(new Tl("TL5", "Промышленный переворот (1730 г. и позже). $5.000", 5000M));
            context.TlDbSet.Add(new Tl("TL6", "Эпоха механики (1880 г. и позже). $10.000", 10000M));
            context.TlDbSet.Add(new Tl("TL7", "Атомная эпоха (1940 г. и позже). $15.000", 15000M));
            context.TlDbSet.Add(new Tl("TL8", "Цифровая эпоха (1980 г. и позже). $20.000", 20000M));
            context.TlDbSet.Add(new Tl("TL9", "Эпоха микротехники (2025 г. и позже?). $30.000", 30000M));
            context.TlDbSet.Add(new Tl("TL10", "Эпоха роботизации (2070 г. и позже?) $50.000", 50000M));
            context.TlDbSet.Add(new Tl("TL11", "Эпоха экзотических материалов. $75.000", 75000M));
            context.TlDbSet.Add(new Tl("TL12", "Все что пожелает Мастер. $100.000", 100000M));
            #endregion
            #region LC INIT
            context.LcDbSet.Add(new Lc("LC4", "Открытый", "Открытый. В большинстве обществ изделие свободно доступно, но в обществах с сильным контролем его доступ или использование могут быть ограничены. Примеры: компьютер; меч;ружьё; мотороллер"));
            context.LcDbSet.Add(new Lc("LC3", "Лицензируемый", "Лицензируемый. В большинстве обществ изделие нуждается в государственной регистрации. Регистрация может включать в себя плату или освидетельствование и быть запрещенной для преступников, несовершеннолет них и т.д. Примеры: автомобиль; пистолет; охотничья винтовка"));
            context.LcDbSet.Add(new Lc("LC2", "Ограниченный", "Ограниченный. В большинстве обществ только представители военных, полицейских, или разведывательных служб могут владеть таким изделием, хотя некоторым гражданам с лицензией могут разрешить его получаение в частную собственность. Примеры: штурмовая винтовка, бронеавтомобиль."));
            context.LcDbSet.Add(new Lc("LC1", "Военный", "Военный. В большинстве обществ изделие доступно только вооруженным силам или секретным разведслужбам. Примеры: противотанковое оружие; боевая техника."));
            context.LcDbSet.Add(new Lc("LC0", "Запрещенный", "Запрещенный. Изделие ограничено вооруженными силами отдельных государств, которые очень постараются не допустить к нему частных лиц и страны «третьего мира». Примеры: ядерное и биологическое оружие."));
            #endregion
            #region ATTACHMENTSLOT + Attachmentmount
            List<AttachmentSlot> attachmentSlotList = new List<AttachmentSlot>
            {
                new AttachmentSlot("Scope Attachments"),
                new AttachmentSlot("Laser Attachments"),     //2
                new AttachmentSlot("Light Attachments"),      //3
                new AttachmentSlot("Bipod Attachments"),      //4
                new AttachmentSlot("Silenser Attachments"),   //5
                new AttachmentSlot("Launcher Attachments"), //6
                new AttachmentSlot("Stock Attachments"),    //7
                new AttachmentSlot("Bayonet Attachments"),   //8
                new AttachmentSlot("Magazine Attachments"),   //9
                new AttachmentSlot("Internal Attachments"), //10
                new AttachmentSlot("External Attachments"),  //11
                new AttachmentSlot("Rifle Grenade"),
                new AttachmentSlot("Rocket Launcher Slot")
            };



            #region "Scope Attachments"
            context.AttachmentMountDbSet.Add(new AttachmentMount("AK", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("M16A1-A2", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("m16a3", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("Mini14 Scope", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("HK G36 Scope", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("Galil", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("M14_Scope", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("Scout", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("SIG551_Scope", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("WR", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("HK MP5", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("built-in", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("SA80 Handle", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("SVD", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("L96A1 optic", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("M24_Scope", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("SIG Sniper Scope", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("L85A2 SCOPE", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("PSG", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("HK MSG-90", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("F2000 Scope", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("Zrak", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("Groza scope", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("Mosin_PU", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("G11 built-in", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments"))));
            #endregion
            #region Laser Attachments--2
            context.AttachmentMountDbSet.Add(new AttachmentMount("built-in", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Laser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("WR", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Laser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("HK", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Laser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("Barrel Mount", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Laser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("F2000 Laser", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Laser Attachments"))));
            #endregion
            #region Light Attachments--3
            context.AttachmentMountDbSet.Add(new AttachmentMount("F2000 Light", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Light Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("WR", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Light Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("HK", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Light Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("Barrel Mount", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Light Attachments"))));
            #endregion
            #region Bipod Attachments--4
            context.AttachmentMountDbSet.Add(new AttachmentMount("built-in", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Bipod Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("WR", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Bipod Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("Г‘Г‚98", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Bipod Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("SniperBipod", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Bipod Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("L96A1 bipod", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Bipod Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("L86_Bipod", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Bipod Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("G36_bipod", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Bipod Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("BM1", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Bipod Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("AssaultBipod", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Bipod Attachments"))));

            #endregion
            #region--  (N'Silenser Attachments'),   --5

            context.AttachmentMountDbSet.Add(new AttachmentMount(".300 BLK", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("5,7mm (FN)", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("5,7mm (P90)", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("VZ82", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("Std 9mm Para", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("APB", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("Bizon 9x18", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("GSh-18", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("HK MP5-40", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("Std 45 ACP", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("UMP45", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("AEK919K", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("M24x1,5", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("MAC", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("PBS-7,62x39", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("UZI", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("RM", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("QM", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("Supressor-5,56", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("L85A2", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("SR25", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("SIG - 7,62", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("Saiga", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("AK", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("Galil", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("M76", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("PBS - 5,45", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("Supressor-7,62", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("SV98", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("built-in", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments"))));
            #endregion
            #region--  (N'Launcher Attachments'),   --6

            context.AttachmentMountDbSet.Add(new AttachmentMount("Scar", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Launcher Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("built-in", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Launcher Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("M203PI", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Launcher Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("M203", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Launcher Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("GP-30", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Launcher Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("HK", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Launcher Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("F2000 Launcher", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Launcher Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("IMC40", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Launcher Attachments"))));
            #endregion
            #region--(N'Stock Attachments'),      --7

            context.AttachmentMountDbSet.Add(new AttachmentMount("WR", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Stock Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("built-in", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Stock Attachments"))));
            #endregion
            #region--(N'Bayonet Attachments'),    --8

            context.AttachmentMountDbSet.Add(new AttachmentMount("Knifes", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Bayonet Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("StdBayonet", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Bayonet Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("built-in", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Bayonet Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("Mosin_Bayonet", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Bayonet Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("M9", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Bayonet Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("FAL", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Bayonet Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("HK", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Bayonet Attachments"))));
            context.AttachmentMountDbSet.Add(new AttachmentMount("throw", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Bayonet Attachments"))));
            #endregion

            context.AttachmentMountDbSet.Add(new AttachmentMount("None", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments"))));//1
            context.AttachmentMountDbSet.Add(new AttachmentMount("None", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Laser Attachments"))));//2
            context.AttachmentMountDbSet.Add(new AttachmentMount("None", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Light Attachments"))));//3
            context.AttachmentMountDbSet.Add(new AttachmentMount("None", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Bipod Attachments"))));//4
            context.AttachmentMountDbSet.Add(new AttachmentMount("None", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments"))));//5
            context.AttachmentMountDbSet.Add(new AttachmentMount("None", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Launcher Attachments"))));//6
            context.AttachmentMountDbSet.Add(new AttachmentMount("None", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Stock Attachments"))));//7
            context.AttachmentMountDbSet.Add(new AttachmentMount("None", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Bayonet Attachments"))));//8
            context.AttachmentMountDbSet.Add(new AttachmentMount("None", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Magazine Attachments"))));//9
            context.AttachmentMountDbSet.Add(new AttachmentMount("None", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Internal Attachments"))));//10
            context.AttachmentMountDbSet.Add(new AttachmentMount("None", attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments"))));//11
            #endregion
            #region GAttack+gSubAttach
            List<GAttachClass> gAttachClassList = new List<GAttachClass>
            {
             new GAttachClass { NameClass = "Def" },//1
             new GAttachClass { NameClass = "SIGHTS AND AIMING AIDS" },//2
             new GAttachClass { NameClass = "SOUND SUPPRESSORS" },//3
             new GAttachClass { NameClass = "STOCKS, TRIPODS, AND BIPODS" } ,//4
             new GAttachClass { NameClass = "HOLSTERS, SCABBARDS, AND SLINGS" }  ,//5
             new GAttachClass { NameClass = "MAGAZINE MODIFICATIONS AND RELOADING AIDS" } ,//6
             new GAttachClass { NameClass = "MISCELLANEOUS ACCESSORIES AND MODIFICATIONS" } //7
            };
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Telescopic Sights", GAttachClass = gAttachClassList.First(p => p.NameClass == "SIGHTS AND AIMING AIDS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments")) });//1
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Improved-Visibility Sights", GAttachClass = gAttachClassList.First(p => p.NameClass == "SIGHTS AND AIMING AIDS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments")) });//2
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Collimating Sight", GAttachClass = gAttachClassList.First(p => p.NameClass == "SIGHTS AND AIMING AIDS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments")) });//3
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Reflex Sight", GAttachClass = gAttachClassList.First(p => p.NameClass == "SIGHTS AND AIMING AIDS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments")) });//4
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Night Sights", GAttachClass = gAttachClassList.First(p => p.NameClass == "SIGHTS AND AIMING AIDS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments")) });//5
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Computer Sights", GAttachClass = gAttachClassList.First(p => p.NameClass == "SIGHTS AND AIMING AIDS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments")) });//6
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Thermal-Imaging Sights", GAttachClass = gAttachClassList.First(p => p.NameClass == "SIGHTS AND AIMING AIDS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments")) });//7
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Targeting Lasers", GAttachClass = gAttachClassList.First(p => p.NameClass == "SIGHTS AND AIMING AIDS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Laser Attachments")) });                        //8
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Tactical Lights", GAttachClass = gAttachClassList.First(p => p.NameClass == "SIGHTS AND AIMING AIDS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Light Attachments")) });                        // --9
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Tripods and Other Mounts", GAttachClass = gAttachClassList.First(p => p.NameClass == "STOCKS, TRIPODS, AND BIPODS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Bipod Attachments")) });               // --10
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Bipods", GAttachClass = gAttachClassList.First(p => p.NameClass == "STOCKS, TRIPODS, AND BIPODS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Bipod Attachments")) });                                 // --11
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Baffle Suppressors", GAttachClass = gAttachClassList.First(p => p.NameClass == "SOUND SUPPRESSORS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments")) });                    //  --12
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Wiper Suppressors", GAttachClass = gAttachClassList.First(p => p.NameClass == "SOUND SUPPRESSORS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments")) });                     //  --13
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Extended Magazines", GAttachClass = gAttachClassList.First(p => p.NameClass == "MAGAZINE MODIFICATIONS AND RELOADING AIDS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Magazine Attachments")) });                    // --14
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Drum magazines", GAttachClass = gAttachClassList.First(p => p.NameClass == "MAGAZINE MODIFICATIONS AND RELOADING AIDS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Magazine Attachments")) });                      //    --15
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "High-density magazines", GAttachClass = gAttachClassList.First(p => p.NameClass == "MAGAZINE MODIFICATIONS AND RELOADING AIDS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Magazine Attachments")) });   //               --16
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Speedloaders", GAttachClass = gAttachClassList.First(p => p.NameClass == "MAGAZINE MODIFICATIONS AND RELOADING AIDS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Magazine Attachments")) });//                            --17
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Clamped Magazines", GAttachClass = gAttachClassList.First(p => p.NameClass == "MAGAZINE MODIFICATIONS AND RELOADING AIDS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Magazine Attachments")) });//                      --18
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Pistol Stocks", GAttachClass = gAttachClassList.First(p => p.NameClass == "STOCKS, TRIPODS, AND BIPODS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Stock Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Shooting Sticks", GAttachClass = gAttachClassList.First(p => p.NameClass == "STOCKS, TRIPODS, AND BIPODS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Stock Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Folding Stock", GAttachClass = gAttachClassList.First(p => p.NameClass == "STOCKS, TRIPODS, AND BIPODS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Stock Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Belt Holster (TL5)", GAttachClass = gAttachClassList.First(p => p.NameClass == "HOLSTERS, SCABBARDS, AND SLINGS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Lanyard (TL5)", GAttachClass = gAttachClassList.First(p => p.NameClass == "HOLSTERS, SCABBARDS, AND SLINGS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Military Holster (TL5)", GAttachClass = gAttachClassList.First(p => p.NameClass == "HOLSTERS, SCABBARDS, AND SLINGS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Rifle Sling (TL5)", GAttachClass = gAttachClassList.First(p => p.NameClass == "HOLSTERS, SCABBARDS, AND SLINGS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Scabbard (TL5)", GAttachClass = gAttachClassList.First(p => p.NameClass == "HOLSTERS, SCABBARDS, AND SLINGS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Shoulder Holster (TL5)", GAttachClass = gAttachClassList.First(p => p.NameClass == "HOLSTERS, SCABBARDS, AND SLINGS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Sleeve Holster (TL6)", GAttachClass = gAttachClassList.First(p => p.NameClass == "HOLSTERS, SCABBARDS, AND SLINGS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Fast-Draw Rig (TL7)", GAttachClass = gAttachClassList.First(p => p.NameClass == "HOLSTERS, SCABBARDS, AND SLINGS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Patrol Sling (TL7)", GAttachClass = gAttachClassList.First(p => p.NameClass == "HOLSTERS, SCABBARDS, AND SLINGS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Undercover Holster (TL7)", GAttachClass = gAttachClassList.First(p => p.NameClass == "HOLSTERS, SCABBARDS, AND SLINGS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Retention Holster (TL8)", GAttachClass = gAttachClassList.First(p => p.NameClass == "HOLSTERS, SCABBARDS, AND SLINGS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Gun-Cleaning Kit", GAttachClass = gAttachClassList.First(p => p.NameClass == "MISCELLANEOUS ACCESSORIES AND MODIFICATIONS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Gun Case", GAttachClass = gAttachClassList.First(p => p.NameClass == "MISCELLANEOUS ACCESSORIES AND MODIFICATIONS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Brass Catchers", GAttachClass = gAttachClassList.First(p => p.NameClass == "MISCELLANEOUS ACCESSORIES AND MODIFICATIONS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Slide-Lock", GAttachClass = gAttachClassList.First(p => p.NameClass == "MISCELLANEOUS ACCESSORIES AND MODIFICATIONS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Accessory Rails", GAttachClass = gAttachClassList.First(p => p.NameClass == "MISCELLANEOUS ACCESSORIES AND MODIFICATIONS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Drag Bag", GAttachClass = gAttachClassList.First(p => p.NameClass == "MISCELLANEOUS ACCESSORIES AND MODIFICATIONS"), SubAttachDescription = " ", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            #endregion
            #region INSERT dbo.GurpsClass(name)
            context.GurpsClassDbSet.Add(new GurpsClass { Name = "None" });              //1
            context.GurpsClassDbSet.Add(new GurpsClass { Name = "Artillery" });         //2
            context.GurpsClassDbSet.Add(new GurpsClass { Name = "Beam Weapons" });      //3
            context.GurpsClassDbSet.Add(new GurpsClass { Name = "Gunner" });            //4
            context.GurpsClassDbSet.Add(new GurpsClass { Name = "Guns" });              //5
            context.GurpsClassDbSet.Add(new GurpsClass { Name = "Liquid Projector" });  // 6     
            context.GurpsClassDbSet.Add(new GurpsClass { Name = "Thrown Weapon" });     //7
            #endregion
            #region INSERT dbo.ItemClass(name)
            context.ItemClassDbSet.Add(new ItemClass { Name = "All" });
            context.ItemClassDbSet.Add(new ItemClass { Name = "Weapon" });
            context.ItemClassDbSet.Add(new ItemClass { Name = "Ammo" });
            context.ItemClassDbSet.Add(new ItemClass { Name = "Attachment" });
            context.ItemClassDbSet.Add(new ItemClass { Name = "Random Item" });
            context.ItemClassDbSet.Add(new ItemClass { Name = "EXPLOSIVE" });
            context.ItemClassDbSet.Add(new ItemClass { Name = "Drug" });
            context.ItemClassDbSet.Add(new ItemClass { Name = "LOADBEARINGEQUIPMENT" });
            context.ItemClassDbSet.Add(new ItemClass { Name = "ARMOUR" });

            #endregion
            #region INSERT dbo.ItemSubClass
            context.ItemSubClassDbSet.Add(new ItemSubClass("Normal", context.ItemClassDbSet.Local.First(p => p.Name == "EXPLOSIVE"), "ExplosionType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Stun", context.ItemClassDbSet.Local.First(p => p.Name == "EXPLOSIVE"), "ExplosionType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Tear Gas", context.ItemClassDbSet.Local.First(p => p.Name == "EXPLOSIVE"), "ExplosionType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Mustard Gas", context.ItemClassDbSet.Local.First(p => p.Name == "EXPLOSIVE"), "ExplosionType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Flare", context.ItemClassDbSet.Local.First(p => p.Name == "EXPLOSIVE"), "ExplosionType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Noise", context.ItemClassDbSet.Local.First(p => p.Name == "EXPLOSIVE"), "ExplosionType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Smoke", context.ItemClassDbSet.Local.First(p => p.Name == "EXPLOSIVE"), "ExplosionType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Creature Gas", context.ItemClassDbSet.Local.First(p => p.Name == "EXPLOSIVE"), "ExplosionType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Fire", context.ItemClassDbSet.Local.First(p => p.Name == "EXPLOSIVE"), "ExplosionType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Flashbang", context.ItemClassDbSet.Local.First(p => p.Name == "EXPLOSIVE"), "ExplosionType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Signal Shell", context.ItemClassDbSet.Local.First(p => p.Name == "EXPLOSIVE"), "ExplosionType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("None", context.ItemClassDbSet.Local.First(p => p.Name == "Drug"), "DrugType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Adrenaline", context.ItemClassDbSet.Local.First(p => p.Name == "Drug"), "DrugType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Alcohol", context.ItemClassDbSet.Local.First(p => p.Name == "Drug"), "DrugType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Regeneration", context.ItemClassDbSet.Local.First(p => p.Name == "Drug"), "DrugType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Damage Resistance", context.ItemClassDbSet.Local.First(p => p.Name == "Drug"), "DrugType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Strength", context.ItemClassDbSet.Local.First(p => p.Name == "Drug"), "DrugType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Agility", context.ItemClassDbSet.Local.First(p => p.Name == "Drug"), "DrugType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Dexterity", context.ItemClassDbSet.Local.First(p => p.Name == "Drug"), "DrugType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Wisdom", context.ItemClassDbSet.Local.First(p => p.Name == "Drug"), "DrugType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Perception", context.ItemClassDbSet.Local.First(p => p.Name == "Drug"), "DrugType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Psychosis", context.ItemClassDbSet.Local.First(p => p.Name == "Drug"), "DrugType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Nervousness", context.ItemClassDbSet.Local.First(p => p.Name == "Drug"), "DrugType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Reflex", context.ItemClassDbSet.Local.First(p => p.Name == "Drug"), "DrugType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Claustrophobia", context.ItemClassDbSet.Local.First(p => p.Name == "Drug"), "DrugType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Heat Intolerance", context.ItemClassDbSet.Local.First(p => p.Name == "Drug"), "DrugType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Fear of Insects", context.ItemClassDbSet.Local.First(p => p.Name == "Drug"), "DrugType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Forgetfulness", context.ItemClassDbSet.Local.First(p => p.Name == "Drug"), "DrugType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Stim", context.ItemClassDbSet.Local.First(p => p.Name == "Drug"), "DrugType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Blindness", context.ItemClassDbSet.Local.First(p => p.Name == "Drug"), "DrugType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Unconsciousness", context.ItemClassDbSet.Local.First(p => p.Name == "Drug"), "DrugType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Barrage", context.ItemClassDbSet.Local.First(p => p.Name == "Drug"), "DrugType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Vision", context.ItemClassDbSet.Local.First(p => p.Name == "Drug"), "DrugType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Tunnel Vision", context.ItemClassDbSet.Local.First(p => p.Name == "Drug"), "DrugType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Occulin", context.ItemClassDbSet.Local.First(p => p.Name == "Drug"), "DrugType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Cure", context.ItemClassDbSet.Local.First(p => p.Name == "Drug"), "DrugType", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Nothing", context.ItemClassDbSet.Local.First(p => p.Name == "LOADBEARINGEQUIPMENT"), "LBEClass", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Thigh Pack", context.ItemClassDbSet.Local.First(p => p.Name == "LOADBEARINGEQUIPMENT"), "LBEClass", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Vest", context.ItemClassDbSet.Local.First(p => p.Name == "LOADBEARINGEQUIPMENT"), "LBEClass", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Combat Pack", context.ItemClassDbSet.Local.First(p => p.Name == "LOADBEARINGEQUIPMENT"), "LBEClass", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Backpack", context.ItemClassDbSet.Local.First(p => p.Name == "LOADBEARINGEQUIPMENT"), "LBEClass", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Helmet", context.ItemClassDbSet.Local.First(p => p.Name == "ARMOUR"), "ArmourClass", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Vest", context.ItemClassDbSet.Local.First(p => p.Name == "ARMOUR"), "ArmourClass", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Leggings", context.ItemClassDbSet.Local.First(p => p.Name == "ARMOUR"), "ArmourClass", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Plate", context.ItemClassDbSet.Local.First(p => p.Name == "ARMOUR"), "ArmourClass", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Vehicle", context.ItemClassDbSet.Local.First(p => p.Name == "ARMOUR"), "ArmourClass", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Firearm", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "Weapon", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("винтовки", context.ItemClassDbSet.Local.First(p => p.Name == "Ammo"), "Ammo", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("пистолет", context.ItemClassDbSet.Local.First(p => p.Name == "Ammo"), "Ammo", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Гранатомёты", context.ItemClassDbSet.Local.First(p => p.Name == "Ammo"), "Ammo", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Автоматические Пушки", context.ItemClassDbSet.Local.First(p => p.Name == "Ammo"), "Ammo", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("дробовики", context.ItemClassDbSet.Local.First(p => p.Name == "Ammo"), "Ammo", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("миномёты", context.ItemClassDbSet.Local.First(p => p.Name == "Ammo"), "Ammo", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("противотанковые пушки", context.ItemClassDbSet.Local.First(p => p.Name == "Ammo"), "Ammo", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Attachment", context.ItemClassDbSet.Local.First(p => p.Name == "Attachment"), "Attachment", null));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Normal", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Liquid Projector")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Guided Missile", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Artillery")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Torpedoes", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Artillery")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Catapult", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Artillery")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Cannon", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Artillery")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Beams", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Artillery")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Bombs", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Artillery")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Projector", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Beam Weapons")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Pistol", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Beam Weapons")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Rifle", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Beam Weapons")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Machine Gun", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Gunner")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Catapult", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Gunner")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Rockets", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Gunner")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Cannon", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Gunner")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Beams", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Gunner")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Light Anti-Armor Weapon", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Guns")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Light Machine Gun", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Guns")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Grenade Launcher", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Guns")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Submachine Gun", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Guns")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Shotgun", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Guns")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Musket", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Guns")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Pistol", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Guns")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Gyroc", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Guns")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Rifle", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Guns")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Flamethrower", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Liquid Projector")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Water Cannon", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Liquid Projector")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Squirt Gun", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Liquid Projector")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Sprayer", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Liquid Projector")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Axe/Mace", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Thrown Weapon")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Shuriken", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Thrown Weapon")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Harpoon", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Thrown Weapon")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Knife", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Thrown Weapon")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Spear", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Thrown Weapon")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Stick", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Thrown Weapon")));
            context.ItemSubClassDbSet.Add(new ItemSubClass("Dart", context.ItemClassDbSet.Local.First(p => p.Name == "Weapon"), "WeaponType", context.GurpsClassDbSet.Local.First(p => p.Name == "Thrown Weapon")));
            #endregion
            #region INSERT INTO TypeOfDamage      
            context.TypeOfDamageDbSet.Add(new TypeOfDamage("pi+", "piersing", "0.5"));
            context.TypeOfDamageDbSet.Add(new TypeOfDamage("pi-", " ", "0.5"));
            context.TypeOfDamageDbSet.Add(new TypeOfDamage("pi", " ", "1.0"));
            context.TypeOfDamageDbSet.Add(new TypeOfDamage("pi++", " ", "2.0"));
            context.TypeOfDamageDbSet.Add(new TypeOfDamage("spec", " ", "1.0"));
            context.TypeOfDamageDbSet.Add(new TypeOfDamage("tox", " ", "1.0"));
            context.TypeOfDamageDbSet.Add(new TypeOfDamage("aff", " ", "1.0"));
            context.TypeOfDamageDbSet.Add(new TypeOfDamage("burn", " ", "1.0"));
            context.TypeOfDamageDbSet.Add(new TypeOfDamage("cor", " ", "1.0"));
            context.TypeOfDamageDbSet.Add(new TypeOfDamage("cr", " ", "1.0"));
            context.TypeOfDamageDbSet.Add(new TypeOfDamage("cut", " ", "1.5"));
            context.TypeOfDamageDbSet.Add(new TypeOfDamage("fat", " ", "1.0"));
            context.TypeOfDamageDbSet.Add(new TypeOfDamage("imp", " ", "2.0"));
            context.TypeOfDamageDbSet.Add(new TypeOfDamage("ex", " ", "1.0"));
            #endregion
            #region INSERT INTO Type_of_Box
            context.TypeOfBoxeDbSet.Add(new TypeOfBox("Shop"));
            context.TypeOfBoxeDbSet.Add(new TypeOfBox("LootBox"));
            context.TypeOfBoxeDbSet.Add(new TypeOfBox("PersonalBox"));
            #endregion
            #region INSERT INTO[LaserColorEf]
            context.LaserColorEfDbSet.Add(new LaserColorEf("Red", 0.33M));
            context.LaserColorEfDbSet.Add(new LaserColorEf("Orange", 0.50M));
            context.LaserColorEfDbSet.Add(new LaserColorEf("Green", 2.00M));
            context.LaserColorEfDbSet.Add(new LaserColorEf("Infrared", 1.00M));
            #endregion
            #region INSERT INTO WeaponAttackType
            context.WeaponAttackTypeDbSet.Add(new WeaponAttackType("Primary", "ee"));
            context.WeaponAttackTypeDbSet.Add(new WeaponAttackType("Follow-up", "ee"));
            context.WeaponAttackTypeDbSet.Add(new WeaponAttackType("Linked", "ee"));
            #endregion

            context.WeaponDbSet.Add
            (
                new Weapon
                (
                    weaponDamage: new WeaponDamage
                    (
                        damage: "7d",
                        weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")),
                        typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi+"),
                        typeOfDamage1: null
                    ),
                    name: "Royal Ordnance L1A1 w/SUIT (7.62x51mm)",
                    itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"),
                    tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")),
                    lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC2"))
                )
                {
                    //weapon
                    Rof = 3,
                    FullAuto = false,
                    Recoil = 3,
                    DefAcc = 5,
                    AccAddin = 2,
                    RofForSh = null,
                    HalfRange = 1000M,
                    FullRange = 4200M,
                    Shots = 20,
                    AddInChamber = true,
                    TimeForReload = 3,
                    SingleReload = false,
                    //item
                    UbWeight = 11.5M,
                    MinSt = 11,
                    ItemSize = "3",
                    UsPrice = 1100M,
                    SzItemDesc = "d",
                    TwoHanded = true
                }
            );


            #region ads
            context.WeaponDbSet.Add
             (
                 new Weapon
                 (
                     weaponDamage: new WeaponDamage
                     (
                         damage: "5dx15", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "9K112 Kobra ATGM(125mm Tank Round)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Guided Missile")).First(p => p.GurpsClass.Name == "Artillery"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC1")))
                 { Rof = 1, FullAuto = false, Recoil = 1, DefAcc = 3, AccAddin = null, RofForSh = null, HalfRange = 250M, FullRange = 4000M, Shots = 1, AddInChamber = false, TimeForReload = 6, SingleReload = false, UbWeight = 45.3M, MinSt = 0, ItemSize = "--", UsPrice = 8200M, TwoHanded = false });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "6dx6", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "9K116 Bastion ATGM(100mm Tank Round)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Guided Missile")).First(p => p.GurpsClass.Name == "Artillery"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC1")))
                           { Rof = 1, FullAuto = false, Recoil = 1, DefAcc = 6, AccAddin = null, RofForSh = null, HalfRange = 330M, FullRange = 5000M, Shots = 1, AddInChamber = false, TimeForReload = 5, SingleReload = false, UbWeight = 39M, MinSt = 0, ItemSize = "--", UsPrice = 13400M, TwoHanded = false });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5dx12", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "9K120 Refleks ATGM(125mm Tank Round)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Guided Missile")).First(p => p.GurpsClass.Name == "Artillery"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC1")))
                           { Rof = 1, FullAuto = false, Recoil = 1, DefAcc = 7, AccAddin = null, RofForSh = null, HalfRange = 330M, FullRange = 5000M, Shots = 1, AddInChamber = false, TimeForReload = 6, SingleReload = false, UbWeight = 46.4M, MinSt = 0, ItemSize = "--", UsPrice = 13800M, TwoHanded = false });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "6dx13", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "9M1114 Kokon ATGM", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Guided Missile")).First(p => p.GurpsClass.Name == "Artillery"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC1")))
                           { Rof = 1, FullAuto = false, Recoil = 1, DefAcc = 3, AccAddin = null, RofForSh = null, HalfRange = 450M, FullRange = 5000M, Shots = 2, AddInChamber = false, TimeForReload = 20, SingleReload = false, UbWeight = 132.5M, MinSt = 0, ItemSize = "--", UsPrice = 6400M, TwoHanded = false });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5dx12", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "9M119 Svir ATGM(125mm Tank Round)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Guided Missile")).First(p => p.GurpsClass.Name == "Artillery"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC1")))
                           { Rof = 1, FullAuto = false, Recoil = 1, DefAcc = 8, AccAddin = null, RofForSh = null, HalfRange = 340M, FullRange = 4100M, Shots = 1, AddInChamber = false, TimeForReload = 6, SingleReload = false, UbWeight = 41.4M, MinSt = 0, ItemSize = "--", UsPrice = 13400M, TwoHanded = false });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "6dx13", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "9P135M Konkurs - M ATGM", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Guided Missile")).First(p => p.GurpsClass.Name == "Artillery"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC1")))
                           { Rof = 1, FullAuto = false, Recoil = 1, DefAcc = 4, AccAddin = null, RofForSh = null, HalfRange = 200M, FullRange = 4000M, Shots = 1, AddInChamber = false, TimeForReload = 20, SingleReload = false, UbWeight = 51M, MinSt = 0, ItemSize = "--", UsPrice = 5700M, TwoHanded = false });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "6dx25", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "BGM - 71D TOW2 ATGM", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Guided Missile")).First(p => p.GurpsClass.Name == "Artillery"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC1")))
                           { Rof = 1, FullAuto = false, Recoil = 1, DefAcc = 3, AccAddin = null, RofForSh = null, HalfRange = 300M, FullRange = 5400M, Shots = 1, AddInChamber = false, TimeForReload = 20, SingleReload = false, UbWeight = 50M, MinSt = 0, ItemSize = "--", UsPrice = 6300M, TwoHanded = false });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "6dx17", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "BGM - 71F TOW2B ATGM", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Guided Missile")).First(p => p.GurpsClass.Name == "Artillery"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC1")))
                           { Rof = 1, FullAuto = false, Recoil = 1, DefAcc = 3, AccAddin = null, RofForSh = null, HalfRange = 300M, FullRange = 5700M, Shots = 1, AddInChamber = false, TimeForReload = 20, SingleReload = false, UbWeight = 50M, MinSt = 0, ItemSize = "--", UsPrice = 7100M, TwoHanded = false });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "6dx50", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "SA - 19 SAM", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Guided Missile")).First(p => p.GurpsClass.Name == "Artillery"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC1")))
                           { Rof = 1, FullAuto = false, Recoil = 1, DefAcc = 6, AccAddin = null, RofForSh = null, HalfRange = 600M, FullRange = 8000M, Shots = 1, AddInChamber = false, TimeForReload = 20, SingleReload = false, UbWeight = 89M, MinSt = 0, ItemSize = "--", UsPrice = 12500M, TwoHanded = false });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5dx7", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "Armbrust(80mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Light Anti-Armor Weapon")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC1")))
                           { Rof = 1, FullAuto = false, Recoil = 1, DefAcc = 4, AccAddin = null, RofForSh = null, HalfRange = 300M, FullRange = 500M, Shots = 1, AddInChamber = false, TimeForReload = 0, SingleReload = false, UbWeight = 13M, MinSt = 10, ItemSize = " - 4", UsPrice = 1052M, TwoHanded = true });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "4d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "Colt M203(40x46mmSR)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Grenade Launcher")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC1")))
                           { Rof = 1, FullAuto = false, Recoil = 2, DefAcc = 2, AccAddin = null, RofForSh = null, HalfRange = 150M, FullRange = 4400M, Shots = 1, AddInChamber = false, TimeForReload = 4, SingleReload = false, UbWeight = 3.5M, MinSt = 11, ItemSize = " - ", UsPrice = 500M, TwoHanded = true });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "3d - 1", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi-"), typeOfDamage1: null), name: "CZ Vz.24(7.62x25mm Tokarev)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Submachine Gun")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC2")))
                           { Rof = 10, FullAuto = false, Recoil = 2, DefAcc = 3, AccAddin = null, RofForSh = null, HalfRange = 160M, FullRange = 1900M, Shots = 32, AddInChamber = false, TimeForReload = 3, SingleReload = false, UbWeight = 8.1M, MinSt = 10, ItemSize = " - 4", UsPrice = 300M, TwoHanded = true });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "3d - 1", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Enfield Sterling L - 2A3(9x19mm Parabellum)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Submachine Gun")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC2")))
                           { Rof = 9, FullAuto = false, Recoil = 2, DefAcc = 3, AccAddin = null, RofForSh = null, HalfRange = 160M, FullRange = 1900M, Shots = 34, AddInChamber = false, TimeForReload = 3, SingleReload = false, UbWeight = 7.6M, MinSt = 10, ItemSize = " - 4", UsPrice = 350M, TwoHanded = true });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d - 1", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Enfield Sterling L - 34A1(9x19mm Parabellum)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Submachine Gun")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC1")))
                           { Rof = 8, FullAuto = false, Recoil = 2, DefAcc = 3, AccAddin = null, RofForSh = null, HalfRange = 100M, FullRange = 1100M, Shots = 34, AddInChamber = false, TimeForReload = 3, SingleReload = false, UbWeight = 9.5M, MinSt = 10, ItemSize = " - 4", UsPrice = 1200M, TwoHanded = true });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "3d - 1", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "ERMA MP.40(9x19mm Parabellum)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Submachine Gun")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL6")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC2")))
                           { Rof = 8, FullAuto = true, Recoil = 2, DefAcc = 3, AccAddin = null, RofForSh = null, HalfRange = 160M, FullRange = 1900M, Shots = 32, AddInChamber = false, TimeForReload = 3, SingleReload = false, UbWeight = 10.5M, MinSt = 10, ItemSize = " - 4", UsPrice = 1000M, TwoHanded = true });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d + 1", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi+"), typeOfDamage1: null), name: "Guide Lamp M - 3A1 \"Greasegun\"(.45 ACP)",
                               itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Submachine Gun")).First(p => p.GurpsClass.Name == "Guns"),
                               tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")),
                               lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC2")))
                           { Rof = 8, FullAuto = true, Recoil = 3, DefAcc = 3, AccAddin = null, RofForSh = null, HalfRange = 190M, FullRange = 1750M, Shots = 30, AddInChamber = false, TimeForReload = 3, SingleReload = false, UbWeight = 10.2M, MinSt = 11, ItemSize = " - 4", UsPrice = 450M, TwoHanded = true });
            context.WeaponDbSet.Add
                       (
                new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d",
                                   weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")),
                                   typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "H & K PSG1(7.62x51mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                {
                    Rof = 1,
                    FullAuto = false,
                    Recoil = 3,
                    DefAcc = 6,
                    AccAddin = 2,
                    RofForSh = null,
                    HalfRange = 1000M,
                    FullRange = 4200M,
                    Shots = 1,
                    AddInChamber = false,
                    TimeForReload = 4,
                    SingleReload = false,
                    UbWeight = 16M,
                    MinSt = 11,
                    ItemSize = " - 5",
                    UsPrice = 4500M,
                    TwoHanded = true
                });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "6d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "IMI BT / AT 52 Rifle Grenade", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Grenade Launcher")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC1")))
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 2,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 100M,
                               FullRange = 300M,
                               Shots = 1,
                               AddInChamber = false,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 1.1M,
                               MinSt = 11,
                               ItemSize = " - ",
                               UsPrice = 75M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "3d - 1", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "IMI MP1 \"Uzi\"(9x19mm Parabellum)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Submachine Gun")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC2")))
                           {
                               Rof = 10,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 160M,
                               FullRange = 1900M,
                               Shots = 32,
                               AddInChamber = false,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 9.5M,
                               MinSt = 10,
                               ItemSize = " - 4",
                               UsPrice = 300M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "1d + 2", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "KBP GP - 30(40mm VOG - 25)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Grenade Launcher")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC1")))
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 2,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 150M,
                               FullRange = 460M,
                               Shots = 1,
                               AddInChamber = false,
                               TimeForReload = 4,
                               SingleReload = false,
                               UbWeight = 3.3M,
                               MinSt = 11,
                               ItemSize = " - ",
                               UsPrice = 250M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "6dx6", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "M136 AT - 4(84mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Light Anti-Armor Weapon")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC1")))
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 1,
                               DefAcc = 3,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 330M,
                               FullRange = 2300M,
                               Shots = 1,
                               AddInChamber = false,
                               TimeForReload = 0,
                               SingleReload = false,
                               UbWeight = 42565M,
                               MinSt = 10,
                               ItemSize = " - 5",
                               UsPrice = 1500M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "6dx4", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "M72A2(66mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Light Anti-Armor Weapon")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC1")))
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 1,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 200M,
                               FullRange = 300M,
                               Shots = 1,
                               AddInChamber = false,
                               TimeForReload = 0,
                               SingleReload = false,
                               UbWeight = 5M,
                               MinSt = 10,
                               ItemSize = " - 4",
                               UsPrice = 250M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "8d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "Mecar 35mm HE - RFL - 35 Rifle Grenade", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Grenade Launcher")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC1")))
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 1,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 150M,
                               FullRange = 400M,
                               Shots = 1,
                               AddInChamber = false,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 2M,
                               MinSt = 11,
                               ItemSize = " - ",
                               UsPrice = 50M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "6dx6", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "cr"), typeOfDamage1: context.TypeOfDamageDbSet.Local.First(p => p.Name == "ex")), name: "Mk.153 Mod.1 SMAW(83mm Rocket)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Light Anti-Armor Weapon")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC1")))
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 1,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 1000M,
                               Shots = 1,
                               AddInChamber = false,
                               TimeForReload = 4,
                               SingleReload = false,
                               UbWeight = 29.5M,
                               MinSt = 10,
                               ItemSize = " - 5",
                               UsPrice = 13000M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d + 1", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Tulamash SKS(7.62x39mm M - 43)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 5,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3100M,
                               Shots = 10,
                               AddInChamber = false,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 8.9M,
                               MinSt = 9,
                               ItemSize = " - 5",
                               UsPrice = 150M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "ZB Vz.54(7.62x54mmR)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL6")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 4,
                               DefAcc = 5,
                               AccAddin = 2,
                               RofForSh = null,
                               HalfRange = 800M,
                               FullRange = 3900M,
                               Shots = 5,
                               AddInChamber = false,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 12.4M,
                               MinSt = 10,
                               ItemSize = " - 5",
                               UsPrice = 300M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "S & W Military and Police(.38 Special)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL6")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 2,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 110M,
                               FullRange = 1200M,
                               Shots = 6,
                               AddInChamber = false,
                               TimeForReload = 3,
                               SingleReload = true,
                               UbWeight = 2.2M,
                               MinSt = 9,
                               ItemSize = " - 2",
                               UsPrice = 300M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "1d + 2", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Remington 396 Sporting(12ga 2 3 / 4\")", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Shotgun")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC4")))
                           {
                               Rof = 2,
                               FullAuto = false,
                               Recoil = 1,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = 9,
                               HalfRange = 50M,
                               FullRange = 125M,
                               Shots = 2,
                               AddInChamber = false,
                               TimeForReload = 3,
                               SingleReload = true,
                               UbWeight = 8.3M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 2660M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "1d + 2", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Stoeger / IGA Uplander(12ga 2 3 / 4\")", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Shotgun")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC4")))
                           {
                               Rof = 2,
                               FullAuto = false,
                               Recoil = 1,
                               DefAcc = 2,
                               AccAddin = null,
                               RofForSh = 9,
                               HalfRange = 50M,
                               FullRange = 125M,
                               Shots = 2,
                               AddInChamber = false,
                               TimeForReload = 3,
                               SingleReload = true,
                               UbWeight = 7M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 450M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d + 2", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Beretta M92(9x19mm Parabellum)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 2,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 160M,
                               FullRange = 1800M,
                               Shots = 15,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 2.8M,
                               MinSt = 9,
                               ItemSize = " - 2",
                               UsPrice = 700M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d + 2", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Browning \"Highpower\"(9x19mm Parabellum)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL6")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 2,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 160M,
                               FullRange = 1800M,
                               Shots = 13,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 2.4M,
                               MinSt = 9,
                               ItemSize = " - 2",
                               UsPrice = 780M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi+"), typeOfDamage1: null), name: "Colt M1911A1(.45 ACP)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL6")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 2,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 150M,
                               FullRange = 1600M,
                               Shots = 7,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 2.8M,
                               MinSt = 10,
                               ItemSize = " - 2",
                               UsPrice = 850M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "H & K P7K3(.380 ACP)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 2,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 125M,
                               FullRange = 1500M,
                               Shots = 8,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 1.75M,
                               MinSt = 8,
                               ItemSize = " - 2",
                               UsPrice = 1050M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d + 2", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "H & K P7M13(9x19mm Parabellum)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 2,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 160M,
                               FullRange = 1800M,
                               Shots = 13,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 2.3M,
                               MinSt = 9,
                               ItemSize = " - 2",
                               UsPrice = 1100M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d + 2", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "H & K P7M8(9x19mm Parabellum)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 2,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 160M,
                               FullRange = 1800M,
                               Shots = 8,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 1.8M,
                               MinSt = 9,
                               ItemSize = " - 2",
                               UsPrice = 1050M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Izhmekh Makarov(9x18mm Makarov)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 2,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 110M,
                               FullRange = 1200M,
                               Shots = 8,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 1.8M,
                               MinSt = 8,
                               ItemSize = " - 2",
                               UsPrice = 250M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "1d + 1", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi-"), typeOfDamage1: null), name: "Ruger Standard MK1(.22 LR)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 3,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 70M,
                               FullRange = 1400M,
                               Shots = 9,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 2.5M,
                               MinSt = 7,
                               ItemSize = " - 2",
                               UsPrice = 300M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d + 1", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "SIG - Sauer M11(9x19mm Parabellum)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 1,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 140M,
                               FullRange = 1800M,
                               Shots = 13,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 2.1M,
                               MinSt = 9,
                               ItemSize = " - 2",
                               UsPrice = 700M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi+"), typeOfDamage1: null), name: "Springfield Armory XD - 45(.45 ACP)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 2,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 150M,
                               FullRange = 1600M,
                               Shots = 13,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 2.4M,
                               MinSt = 10,
                               ItemSize = " - 2",
                               UsPrice = 500M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d + 2", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi-"), typeOfDamage1: null), name: "Tokarev TT - 33(7.62x25mm Tokarev)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL6")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 2,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 180M,
                               FullRange = 2000M,
                               Shots = 8,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 2.1M,
                               MinSt = 9,
                               ItemSize = " - 2",
                               UsPrice = 350M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "1d + 1", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi-"), typeOfDamage1: null), name: "Walther PP(.22 LR)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL6")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 2,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 70M,
                               FullRange = 1400M,
                               Shots = 10,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 1.8M,
                               MinSt = 7,
                               ItemSize = " - 1",
                               UsPrice = 500M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d - 1", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi-"), typeOfDamage1: null), name: "Walther PP(.32 ACP)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL6")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 1,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 120M,
                               FullRange = 1300M,
                               Shots = 8,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 1.8M,
                               MinSt = 8,
                               ItemSize = " - 1",
                               UsPrice = 500M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Walther PP(.380 ACP)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL6")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 1,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 120M,
                               FullRange = 1300M,
                               Shots = 7,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 1.8M,
                               MinSt = 8,
                               ItemSize = " - 1",
                               UsPrice = 500M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Z.M.Lucznik P - 64(9x18mm Makarov)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 1,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 125M,
                               FullRange = 1500M,
                               Shots = 8,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 1.8M,
                               MinSt = 8,
                               ItemSize = " - 1",
                               UsPrice = 450M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Z.M.Lucznik P - 83(9x18mm Makarov)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Pistol")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 1,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 125M,
                               FullRange = 1500M,
                               Shots = 8,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 1.8M,
                               MinSt = 8,
                               ItemSize = " - 1",
                               UsPrice = 450M,
                               TwoHanded = false
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "8d + 1", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Accuracy International G22(.300 Win Mag)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 6,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 1300M,
                               FullRange = 5000M,
                               Shots = 5,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 15.8M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 5650M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "9d + 1", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Accuracy International L115A1(.338 Lapua Magnum)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 4,
                               DefAcc = 6,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 1500M,
                               FullRange = 5500M,
                               Shots = 4,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 17.5M,
                               MinSt = 11,
                               ItemSize = " - 6",
                               UsPrice = 5650M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Accuracy International L96A1(7.62x51mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 6,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 1000M,
                               FullRange = 4200M,
                               Shots = 10,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 15M,
                               MinSt = 11,
                               ItemSize = " - 6",
                               UsPrice = 5200M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "13d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi+"), typeOfDamage1: null), name: "Barrett M82A1A(.50 BMG)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 4,
                               DefAcc = 7,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 2200M,
                               FullRange = 7400M,
                               Shots = 10,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 32M,
                               MinSt = 13,
                               ItemSize = " - 7",
                               UsPrice = 6900M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "13d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi+"), typeOfDamage1: null), name: "Barrett M82A1A w / AN / PVS10(.50 BMG)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 4,
                               DefAcc = 7,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 2200M,
                               FullRange = 7400M,
                               Shots = 10,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 36M,
                               MinSt = 13,
                               ItemSize = " - 7",
                               UsPrice = 15500M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "13d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi+"), typeOfDamage1: null), name: "Barrett M82A1A w / Simrad KN - 200(.50 BMG)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 4,
                               DefAcc = 7,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 2200M,
                               FullRange = 7400M,
                               Shots = 10,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 35.4M,
                               MinSt = 13,
                               ItemSize = " - 7",
                               UsPrice = 7400M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Bushmaster M15(5.56x45mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 5,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3200M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 8.9M,
                               MinSt = 8,
                               ItemSize = " - 5",
                               UsPrice = 1500M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Colt M16A1(5.56x45mm M - 193)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC2")))
                           {
                               Rof = 13,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 5,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3200M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 8M,
                               MinSt = 8,
                               ItemSize = " - 5",
                               UsPrice = 540M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Colt M16A2(5.56x45mm NATO)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC2")))
                           {
                               Rof = 9,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 5,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3200M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 8.9M,
                               MinSt = 8,
                               ItemSize = " - 5",
                               UsPrice = 800M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "4d + 1", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi-"), typeOfDamage1: null), name: "Colt M4A1(5.56x45mm NATO)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC2")))
                           {
                               Rof = 15,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 420M,
                               FullRange = 2700M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 7.25M,
                               MinSt = 8,
                               ItemSize = " - 4",
                               UsPrice = 900M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Diemaco C - 7(5.56x45mm NATO)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC2")))
                           {
                               Rof = 13,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 5,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3200M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 8.9M,
                               MinSt = 8,
                               ItemSize = " - 5",
                               UsPrice = 800M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Diemaco C - 7FT w / C79 ELCAN(5.56x45mm NATO)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC2")))
                           {
                               Rof = 13,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 5,
                               AccAddin = 1,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3200M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 10.4M,
                               MinSt = 8,
                               ItemSize = " - 5",
                               UsPrice = 1600M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Enfield L42A1(7.62x51mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL6")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 5,
                               AccAddin = 2,
                               RofForSh = null,
                               HalfRange = 1000M,
                               FullRange = 4200M,
                               Shots = 10,
                               AddInChamber = true,
                               TimeForReload = 5,
                               SingleReload = false,
                               UbWeight = 10.7M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 1700M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "FN FAL(7.62x51mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC2")))
                           {
                               Rof = 11,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 5,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 1000M,
                               FullRange = 4200M,
                               Shots = 20,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 11M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 900M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "4d + 2", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi-"), typeOfDamage1: null), name: "H & K G11(4.73x33mm CLTA)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC1")))
                           {
                               Rof = 9,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 5,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3000M,
                               Shots = 45,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 11.25M,
                               MinSt = 8,
                               ItemSize = " - 4",
                               UsPrice = 1500M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "H & K G3(7.62x51mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC2")))
                           {
                               Rof = 10,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 5,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 1000M,
                               FullRange = 4200M,
                               Shots = 20,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 11.4M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 550M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "H & K G41(5.56x45mm NATO)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC2")))
                           {
                               Rof = 14,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 5,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3200M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 10.1M,
                               MinSt = 8,
                               ItemSize = " - 5",
                               UsPrice = 750M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "3d - 1", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "H & K MP5A2(9x19mm Parabellum)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Submachine Gun")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC2")))
                           {
                               Rof = 13,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 160M,
                               FullRange = 1900M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 6M,
                               MinSt = 10,
                               ItemSize = " - 4",
                               UsPrice = 1100M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "3d - 1", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "H & K MP5A3(9x19mm Parabellum)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Submachine Gun")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC2")))
                           {
                               Rof = 13,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 160M,
                               FullRange = 1900M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 7.5M,
                               MinSt = 10,
                               ItemSize = " - 4",
                               UsPrice = 1100M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "H & K MP5SD2(9x19mm Parabellum)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Submachine Gun")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC1")))
                           {
                               Rof = 13,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 100M,
                               FullRange = 1100M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 6.8M,
                               MinSt = 10,
                               ItemSize = " - 4",
                               UsPrice = 1850M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "2d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "H & K MP5SD3(9x19mm Parabellum)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Submachine Gun")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC1")))
                           {
                               Rof = 13,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 100M,
                               FullRange = 1100M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 8.3M,
                               MinSt = 10,
                               ItemSize = " - 4",
                               UsPrice = 1850M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Izhmash AK - 74(5.45x39mm M - 74)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC2")))
                           {
                               Rof = 11,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3800M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 9M,
                               MinSt = 8,
                               ItemSize = " - 5",
                               UsPrice = 250M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d + 1", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Izhmash AKM(7.62x39mm M - 43)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC2")))
                           {
                               Rof = 10,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3100M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 11.3M,
                               MinSt = 9,
                               ItemSize = " - 5",
                               UsPrice = 290M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "4d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi-"), typeOfDamage1: null), name: "Izhmash AKS - 74U(5.45x39mm M - 74)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC2")))
                           {
                               Rof = 11,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 3,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 300M,
                               FullRange = 2500M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 7M,
                               MinSt = 8,
                               ItemSize = " - 4 * ",
                               UsPrice = 250M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Izhmash AN - 94(5.45x39mm M - 74)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC2")))
                           {
                               Rof = 10,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3800M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 9.7M,
                               MinSt = 8,
                               ItemSize = " - 5 * ",
                               UsPrice = 1150M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d + 2", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Izhmash RPK(7.62x39mm M - 43)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC1")))
                           {
                               Rof = 10,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 400M,
                               FullRange = 3000M,
                               Shots = 40,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 12.4M,
                               MinSt = 10,
                               ItemSize = " - 5",
                               UsPrice = 490M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d + 1", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Izhmash RPK - 74(5.45x39mm M - 74)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC1")))
                           {
                               Rof = 11,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 600M,
                               FullRange = 3200M,
                               Shots = 45,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 12M,
                               MinSt = 10,
                               ItemSize = " - 5",
                               UsPrice = 500M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Izhmash SVD(7.62x54mmR)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 5,
                               AccAddin = 2,
                               RofForSh = null,
                               HalfRange = 800M,
                               FullRange = 3900M,
                               Shots = 10,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 10.1M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 1200M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Mauser K.98k(7.92x57mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL6")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 4,
                               DefAcc = 5,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 1000M,
                               FullRange = 4000M,
                               Shots = 5,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 8.9M,
                               MinSt = 10,
                               ItemSize = " - 5",
                               UsPrice = 300M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Parker - Hale C3A1 MRSW(7.62x51mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 5,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 1000M,
                               FullRange = 4200M,
                               Shots = 5,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 10.9M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 4000M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Remington M21(7.62x51mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC2")))
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 6,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 1000M,
                               FullRange = 4200M,
                               Shots = 20,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 12.7M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 2400M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "8d + 1", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Remington M24A1 SWS(.300 Win Mag)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 6,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 1300M,
                               FullRange = 5000M,
                               Shots = 5,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 13.4M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 3400M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "8d + 1", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Remington M24A1 SWS w / AN / PVS10(.300 Win Mag)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 6,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 1300M,
                               FullRange = 5000M,
                               Shots = 5,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 17.4M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 12000M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "9d + 1", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Remington M24A2 SWS(.338 Lapua Magnum)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 4,
                               DefAcc = 6,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 1500M,
                               FullRange = 5500M,
                               Shots = 4,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 13.9M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 3400M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "9d + 1", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Remington M24A2 SWS w / AN / PVS10(.338 Lapua Mag)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 4,
                               DefAcc = 6,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 1500M,
                               FullRange = 5500M,
                               Shots = 4,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 17.9M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 12000M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Royal Ordnance L1A1(7.62x51mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC2")))
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 5,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 1000M,
                               FullRange = 4200M,
                               Shots = 20,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 11M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 900M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Royal Ordnance L1A1 w / SUIT(7.62x51mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC2")))
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 5,
                               AccAddin = 2,
                               RofForSh = null,
                               HalfRange = 1000M,
                               FullRange = 4200M,
                               Shots = 20,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 11.5M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 1100M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Royal Ordnance L85A1(5.56x45mm NATO)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC2")))
                           {
                               Rof = 12,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3200M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 11.2M,
                               MinSt = 8,
                               ItemSize = " - 4",
                               UsPrice = 800M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Royal Ordnance L85A1 w / SUSAT(5.56x45mm NATO)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC2")))
                           {
                               Rof = 12,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 5,
                               AccAddin = 2,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3200M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 12.1M,
                               MinSt = 8,
                               ItemSize = " - 4",
                               UsPrice = 1200M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Royal Ordnance L85A2(5.56x45mm NATO)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC2")))
                           {
                               Rof = 12,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3200M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 11.2M,
                               MinSt = 8,
                               ItemSize = " - 4",
                               UsPrice = 1100M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Royal Ordnance L85A2 w / SUSAT(5.56x45mm NATO)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC2")))
                           {
                               Rof = 12,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 5,
                               AccAddin = 2,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3200M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 12.1M,
                               MinSt = 8,
                               ItemSize = " - 4",
                               UsPrice = 1500M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Royal Ordnance L86A1(5.56x45mm NATO)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC2")))
                           {
                               Rof = 13,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 6,
                               AccAddin = 2,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3500M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 13M,
                               MinSt = 9,
                               ItemSize = " - 5",
                               UsPrice = 1600M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Royal Ordnance L86A2(5.56x45mm NATO)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC2")))
                           {
                               Rof = 13,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 6,
                               AccAddin = 2,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3500M,
                               Shots = 30,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 13M,
                               MinSt = 9,
                               ItemSize = " - 5",
                               UsPrice = 1900M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "1d + 2", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi-"), typeOfDamage1: null), name: "Ruger 10 / 22(.22 LR)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC4")))
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 3,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 85M,
                               FullRange = 1200M,
                               Shots = 10,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 5.2M,
                               MinSt = 6,
                               ItemSize = " - 4",
                               UsPrice = 150M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Ruger Mini - 14(5.56x45mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 5,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 500M,
                               FullRange = 3000M,
                               Shots = 20,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 7.3M,
                               MinSt = 9,
                               ItemSize = " - 4",
                               UsPrice = 600M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Springfield M14(7.62x51mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC2")))
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 5,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 1000M,
                               FullRange = 4200M,
                               Shots = 20,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = false,
                               UbWeight = 10.3M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 950M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "1d + 1", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Benelli M1014(12ga 3\")", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Shotgun")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 3,
                               FullAuto = false,
                               Recoil = 1,
                               DefAcc = 3,
                               AccAddin = null,
                               RofForSh = 9,
                               HalfRange = 50M,
                               FullRange = 125M,
                               Shots = 6,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = true,
                               UbWeight = 8.4M,
                               MinSt = 10,
                               ItemSize = " - 5",
                               UsPrice = 950M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "5d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Marlin Model 336(.30 - 30 Win)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL6")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 4,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 450M,
                               FullRange = 3000M,
                               Shots = 6,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = true,
                               UbWeight = 7M,
                               MinSt = 10,
                               ItemSize = " - 4",
                               UsPrice = 300M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "1d + 2", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi-"), typeOfDamage1: null), name: "Marlin Model 881(.22 LR)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC4")))
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 2,
                               DefAcc = 5,
                               AccAddin = null,
                               RofForSh = null,
                               HalfRange = 85M,
                               FullRange = 1200M,
                               Shots = 17,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = true,
                               UbWeight = 5.6M,
                               MinSt = 6,
                               ItemSize = " - 4",
                               UsPrice = 655M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "1d + 1", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Mossberg M590(12ga 3\")", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Shotgun")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC4")))
                           {
                               Rof = 2,
                               FullAuto = false,
                               Recoil = 1,
                               DefAcc = 3,
                               AccAddin = null,
                               RofForSh = 9,
                               HalfRange = 50M,
                               FullRange = 125M,
                               Shots = 9,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = true,
                               UbWeight = 8.7M,
                               MinSt = 10,
                               ItemSize = " - 5",
                               UsPrice = 600M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Remington M24 SWS(7.62x51mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 6,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 1000M,
                               FullRange = 4200M,
                               Shots = 6,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = true,
                               UbWeight = 13.4M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 3400M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Remington M24 SWS w / AN / PVS10(7.62x51mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC2")))
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 6,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 1000M,
                               FullRange = 4200M,
                               Shots = 6,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = true,
                               UbWeight = 17.4M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 12000M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Remington M40A3 RWS(7.62x51mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 7,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 1000M,
                               FullRange = 4200M,
                               Shots = 6,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = true,
                               UbWeight = 14.8M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 3400M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Remington M40A3 RWS w / AN / PVS10(7.62x51mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 7,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 1000M,
                               FullRange = 4200M,
                               Shots = 6,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = true,
                               UbWeight = 18.8M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 12000M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Remington M40A3 RWS w / Simrad KN - 200(7.62x51mm)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL8")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 3,
                               DefAcc = 7,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 1000M,
                               FullRange = 4200M,
                               Shots = 6,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = true,
                               UbWeight = 18.2M,
                               MinSt = 11,
                               ItemSize = " - 5",
                               UsPrice = 4900M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (

                                   damage: "1d + 2", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Remington Model 870P(12ga 3\")", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Shotgun")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC4")))
                           {
                               Rof = 2,
                               FullAuto = false,
                               Recoil = 1,
                               DefAcc = 2,
                               AccAddin = null,
                               RofForSh = 9,
                               HalfRange = 50M,
                               FullRange = 125M,
                               Shots = 7,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = true,
                               UbWeight = 8M,
                               MinSt = 10,
                               ItemSize = " - 5",
                               UsPrice = 400M,
                               TwoHanded = true
                           });
            context.WeaponDbSet.Add
                       (
                           new Weapon
                           (
                               weaponDamage: new WeaponDamage
                               (
                                   damage: "7d", weaponAttackType: context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary")), typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi"), typeOfDamage1: null), name: "Winchester Model 70(.30 - 06)", itemSubClass: context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns"), tl: context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7")), lc: context.LcDbSet.Local.First(p => p.NameLc.Contains("LC3")))
                           {
                               Rof = 1,
                               FullAuto = false,
                               Recoil = 4,
                               DefAcc = 6,
                               AccAddin = 3,
                               RofForSh = null,
                               HalfRange = 1000M,
                               FullRange = 4200M,
                               Shots = 4,
                               AddInChamber = true,
                               TimeForReload = 3,
                               SingleReload = true,
                               UbWeight = 8.7M,
                               MinSt = 10,
                               ItemSize = " - 5",
                               UsPrice = 1640M,
                               TwoHanded = true
                           });


            #endregion

            var qt = context.ItemClassDbSet.ToList();
            context.SaveChanges();
            base.Seed(context);
        }
    }
}
