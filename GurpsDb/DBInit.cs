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
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Telescopic Sights", GAttachClass = gAttachClassList.First(p => p.NameClass == "SIGHTS AND AIMING AIDS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments")) });//1
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Improved-Visibility Sights", GAttachClass = gAttachClassList.First(p => p.NameClass == "SIGHTS AND AIMING AIDS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments")) });//2
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Collimating Sight", GAttachClass = gAttachClassList.First(p => p.NameClass == "SIGHTS AND AIMING AIDS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments")) });//3
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Reflex Sight", GAttachClass = gAttachClassList.First(p => p.NameClass == "SIGHTS AND AIMING AIDS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments")) });//4
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Night Sights", GAttachClass = gAttachClassList.First(p => p.NameClass == "SIGHTS AND AIMING AIDS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments")) });//5
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Computer Sights", GAttachClass = gAttachClassList.First(p => p.NameClass == "SIGHTS AND AIMING AIDS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments")) });//6
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Thermal-Imaging Sights", GAttachClass = gAttachClassList.First(p => p.NameClass == "SIGHTS AND AIMING AIDS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Scope Attachments")) });//7
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Targeting Lasers", GAttachClass = gAttachClassList.First(p => p.NameClass == "SIGHTS AND AIMING AIDS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Laser Attachments")) });                        //8
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Tactical Lights", GAttachClass = gAttachClassList.First(p => p.NameClass == "SIGHTS AND AIMING AIDS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Light Attachments")) });                        // --9
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Tripods and Other Mounts", GAttachClass = gAttachClassList.First(p => p.NameClass == "STOCKS, TRIPODS, AND BIPODS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Bipod Attachments")) });               // --10
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Bipods", GAttachClass = gAttachClassList.First(p => p.NameClass == "STOCKS, TRIPODS, AND BIPODS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Bipod Attachments")) });                                 // --11
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Baffle Suppressors", GAttachClass = gAttachClassList.First(p => p.NameClass == "SOUND SUPPRESSORS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments")) });                    //  --12
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Wiper Suppressors", GAttachClass = gAttachClassList.First(p => p.NameClass == "SOUND SUPPRESSORS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Silenser Attachments")) });                     //  --13
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Extended Magazines", GAttachClass = gAttachClassList.First(p => p.NameClass == "MAGAZINE MODIFICATIONS AND RELOADING AIDS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Magazine Attachments")) });                    // --14
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Drum magazines", GAttachClass = gAttachClassList.First(p => p.NameClass == "MAGAZINE MODIFICATIONS AND RELOADING AIDS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Magazine Attachments")) });                      //    --15
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "High-density magazines", GAttachClass = gAttachClassList.First(p => p.NameClass == "MAGAZINE MODIFICATIONS AND RELOADING AIDS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Magazine Attachments")) });   //               --16
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Speedloaders", GAttachClass = gAttachClassList.First(p => p.NameClass == "MAGAZINE MODIFICATIONS AND RELOADING AIDS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Magazine Attachments")) });//                            --17
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Clamped Magazines", GAttachClass = gAttachClassList.First(p => p.NameClass == "MAGAZINE MODIFICATIONS AND RELOADING AIDS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Magazine Attachments")) });//                      --18
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Pistol Stocks", GAttachClass = gAttachClassList.First(p => p.NameClass == "STOCKS, TRIPODS, AND BIPODS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Stock Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Shooting Sticks", GAttachClass = gAttachClassList.First(p => p.NameClass == "STOCKS, TRIPODS, AND BIPODS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Stock Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Folding Stock", GAttachClass = gAttachClassList.First(p => p.NameClass == "STOCKS, TRIPODS, AND BIPODS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("Stock Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Belt Holster (TL5)", GAttachClass = gAttachClassList.First(p => p.NameClass == "HOLSTERS, SCABBARDS, AND SLINGS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Lanyard (TL5)", GAttachClass = gAttachClassList.First(p => p.NameClass == "HOLSTERS, SCABBARDS, AND SLINGS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Military Holster (TL5)", GAttachClass = gAttachClassList.First(p => p.NameClass == "HOLSTERS, SCABBARDS, AND SLINGS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Rifle Sling (TL5)", GAttachClass = gAttachClassList.First(p => p.NameClass == "HOLSTERS, SCABBARDS, AND SLINGS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Scabbard (TL5)", GAttachClass = gAttachClassList.First(p => p.NameClass == "HOLSTERS, SCABBARDS, AND SLINGS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Shoulder Holster (TL5)", GAttachClass = gAttachClassList.First(p => p.NameClass == "HOLSTERS, SCABBARDS, AND SLINGS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Sleeve Holster (TL6)", GAttachClass = gAttachClassList.First(p => p.NameClass == "HOLSTERS, SCABBARDS, AND SLINGS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Fast-Draw Rig (TL7)", GAttachClass = gAttachClassList.First(p => p.NameClass == "HOLSTERS, SCABBARDS, AND SLINGS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Patrol Sling (TL7)", GAttachClass = gAttachClassList.First(p => p.NameClass == "HOLSTERS, SCABBARDS, AND SLINGS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Undercover Holster (TL7)", GAttachClass = gAttachClassList.First(p => p.NameClass == "HOLSTERS, SCABBARDS, AND SLINGS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Retention Holster (TL8)", GAttachClass = gAttachClassList.First(p => p.NameClass == "HOLSTERS, SCABBARDS, AND SLINGS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Gun-Cleaning Kit", GAttachClass = gAttachClassList.First(p => p.NameClass == "MISCELLANEOUS ACCESSORIES AND MODIFICATIONS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Gun Case", GAttachClass = gAttachClassList.First(p => p.NameClass == "MISCELLANEOUS ACCESSORIES AND MODIFICATIONS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Brass Catchers", GAttachClass = gAttachClassList.First(p => p.NameClass == "MISCELLANEOUS ACCESSORIES AND MODIFICATIONS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Slide-Lock", GAttachClass = gAttachClassList.First(p => p.NameClass == "MISCELLANEOUS ACCESSORIES AND MODIFICATIONS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Accessory Rails", GAttachClass = gAttachClassList.First(p => p.NameClass == "MISCELLANEOUS ACCESSORIES AND MODIFICATIONS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
            context.GSubAttachClassDbSet.Add(new GSubAttachClass { SubAttachName = "Drag Bag", GAttachClass = gAttachClassList.First(p => p.NameClass == "MISCELLANEOUS ACCESSORIES AND MODIFICATIONS"), SubAttachDescription = "", Attachmentslot1 = attachmentSlotList.First(p => p.AttachmentSlotName.Contains("External Attachments")) });
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
            context.TypeOfDamageDbSet.Add(new TypeOfDamage("pi-", "", "0.5"));
            context.TypeOfDamageDbSet.Add(new TypeOfDamage("pi", "", "1.0"));
            context.TypeOfDamageDbSet.Add(new TypeOfDamage("pi++", "", "2.0"));
            context.TypeOfDamageDbSet.Add(new TypeOfDamage("spec", "", "1.0"));
            context.TypeOfDamageDbSet.Add(new TypeOfDamage("tox", "", "1.0"));
            context.TypeOfDamageDbSet.Add(new TypeOfDamage("aff", "", "1.0"));
            context.TypeOfDamageDbSet.Add(new TypeOfDamage("burn", "", "1.0"));
            context.TypeOfDamageDbSet.Add(new TypeOfDamage("cor", "", "1.0"));
            context.TypeOfDamageDbSet.Add(new TypeOfDamage("cr", "", "1.0"));
            context.TypeOfDamageDbSet.Add(new TypeOfDamage("cut", "", "1.5"));
            context.TypeOfDamageDbSet.Add(new TypeOfDamage("fat", "", "1.0"));
            context.TypeOfDamageDbSet.Add(new TypeOfDamage("imp", "", "2.0"));
            context.TypeOfDamageDbSet.Add(new TypeOfDamage("ex", "", "1.0"));
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

            /*   
             *   SET @name = N'Royal Ordnance L1A1 w/SUIT (7.62x51mm)'
                    SET @class_ofItem = N'Gun'
                    SET @WeaponClass = N'Guns'
                    SET @WeaponType = N'Rifle'
                    SET @Bulk = N'-5'
                                       */
            var usItemClass = context.ItemSubClassDbSet.Local.Where(p => p.NameSub.Contains("Rifle")).First(p => p.GurpsClass.Name == "Guns");
            var primaryDamType = context.WeaponAttackTypeDbSet.Local.First(p => p.Name.Contains("Primary"));
            var tl = context.TlDbSet.Local.First(p => p.NameTl.Contains("TL7"));
            var lc = context.LcDbSet.Local.First(p => p.NameLc.Contains("LC2"));
            var weapDamage = new WeaponDamage
                (
                damage: "7d",
                weaponAttackType: primaryDamType,
                typeOfDamage: context.TypeOfDamageDbSet.Local.First(p => p.Name == "pi+")
                );
            context.WeaponDbSet.Add
            (
                new Weapon
                (
                    weaponDamage: weapDamage,
                    name: "Royal Ordnance L1A1 w/SUIT (7.62x51mm)",
                    itemSubClass: usItemClass,
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
            var qt = context.ItemClassDbSet.ToList();
            context.SaveChanges();
            base.Seed(context);
        }
    }
}
