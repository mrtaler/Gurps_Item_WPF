using System.Collections.Generic;
using System.Data.Entity;
using GurpsDb.GurpsModel;

namespace GurpsDb
{
    public class DbInit : DropCreateDatabaseIfModelChanges<ContextGurpsModel>
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

            AttachmentSlot Laser = new AttachmentSlot("Laser Attachments");     //2
            AttachmentSlot Light = new AttachmentSlot("Light Attachments");      //3
            AttachmentSlot Bipod = new AttachmentSlot("Bipod Attachments");      //4
            AttachmentSlot Silenser = new AttachmentSlot("Silenser Attachments");   //5
            AttachmentSlot Launcher = new AttachmentSlot("Launcher Attachments");  //6
            AttachmentSlot Stock = new AttachmentSlot("Stock Attachments");     //7
            AttachmentSlot Bayonet = new AttachmentSlot("Bayonet Attachments");   //8
            AttachmentSlot Magazine = new AttachmentSlot("Magazine Attachments");   //9
            AttachmentSlot Internal = new AttachmentSlot("Internal Attachments");  //10
            AttachmentSlot External = new AttachmentSlot("External Attachments");  //11
            AttachmentSlot Rifle = new AttachmentSlot("Rifle Grenade");
            AttachmentSlot RocketLauncher = new AttachmentSlot("Rocket Launcher Slot");

            #region "Scope Attachments"
            AttachmentSlot Scope = new AttachmentSlot("Scope Attachments"); //1
            context.AttachmentMountDbSet.Add(new AttachmentMount("AK", Scope));
            context.AttachmentMountDbSet.Add(new AttachmentMount("M16A1-A2", Scope));
            context.AttachmentMountDbSet.Add(new AttachmentMount("m16a3", Scope));
            context.AttachmentMountDbSet.Add(new AttachmentMount("Mini14 Scope", Scope));
            context.AttachmentMountDbSet.Add(new AttachmentMount("HK G36 Scope", Scope));
            context.AttachmentMountDbSet.Add(new AttachmentMount("Galil", Scope));
            context.AttachmentMountDbSet.Add(new AttachmentMount("M14_Scope", Scope));
            context.AttachmentMountDbSet.Add(new AttachmentMount("Scout", Scope));
            context.AttachmentMountDbSet.Add(new AttachmentMount("SIG551_Scope", Scope));
            context.AttachmentMountDbSet.Add(new AttachmentMount("WR", Scope));
            context.AttachmentMountDbSet.Add(new AttachmentMount("HK MP5", Scope));
            context.AttachmentMountDbSet.Add(new AttachmentMount("built-in", Scope));
            context.AttachmentMountDbSet.Add(new AttachmentMount("SA80 Handle", Scope));
            context.AttachmentMountDbSet.Add(new AttachmentMount("SVD", Scope));
            context.AttachmentMountDbSet.Add(new AttachmentMount("L96A1 optic", Scope));
            context.AttachmentMountDbSet.Add(new AttachmentMount("M24_Scope", Scope));
            context.AttachmentMountDbSet.Add(new AttachmentMount("SIG Sniper Scope", Scope));
            context.AttachmentMountDbSet.Add(new AttachmentMount("L85A2 SCOPE", Scope));
            context.AttachmentMountDbSet.Add(new AttachmentMount("PSG", Scope));
            context.AttachmentMountDbSet.Add(new AttachmentMount("HK MSG-90", Scope));
            context.AttachmentMountDbSet.Add(new AttachmentMount("F2000 Scope", Scope));
            context.AttachmentMountDbSet.Add(new AttachmentMount("Zrak", Scope));
            context.AttachmentMountDbSet.Add(new AttachmentMount("Groza scope", Scope));
            context.AttachmentMountDbSet.Add(new AttachmentMount("Mosin_PU", Scope));
            context.AttachmentMountDbSet.Add(new AttachmentMount("G11 built-in", Scope));
            #endregion

            #endregion


            context.SaveChanges();
            base.Seed(context);
        }
    }
}
