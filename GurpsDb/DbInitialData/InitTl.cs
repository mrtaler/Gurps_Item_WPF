namespace GurpsDb.DbInitialData
{
    using GurpsDb.GurpsModel;

    public static class InitTl
    {
        static InitTl()
        {
            Tl0 = new Tl("TL0", "Каменный век (доисторический период и далее). $250", 250M);
            Tl1 = new Tl("TL1", "Бронзовый век (3500 лет до н.э. и позже). $500", 500M);
            Tl2 = new Tl("TL2", "Железный век (1200 лет до н.э. и позже). $750", 750M);
            Tl3 = new Tl("TL3", "Средневековье (600 г. н.э. и позже). $1.000", 1000M);
            Tl4 = new Tl("TL4", "Эпоха парусов (1450 г. и позже). $2.000", 2000M);
            Tl5 = new Tl("TL5", "Промышленный переворот (1730 г. и позже). $5.000", 5000M);
            Tl6 = new Tl("TL6", "Эпоха механики (1880 г. и позже). $10.000", 10000M);
            Tl7 = new Tl("TL7", "Атомная эпоха (1940 г. и позже). $15.000", 15000M);
            Tl8 = new Tl("TL8", "Цифровая эпоха (1980 г. и позже). $20.000", 20000M);
            Tl9 = new Tl("TL9", "Эпоха микротехники (2025 г. и позже?). $30.000", 30000M);
            Tl10 = new Tl("TL10", "Эпоха роботизации (2070 г. и позже?) $50.000", 50000M);
            Tl11 = new Tl("TL11", "Эпоха экзотических материалов. $75.000", 75000M);
            Tl12 = new Tl("TL12", "Все что пожелает Мастер. $100.000", 100000M);
        }

        public static Tl Tl0;

        public static Tl Tl1;

        public static Tl Tl2;

        public static Tl Tl3;

        public static Tl Tl4;

        public static Tl Tl5;

        public static Tl Tl6;

        public static Tl Tl7;

        public static Tl Tl8;

        public static Tl Tl9;

        public static Tl Tl10;

        public static Tl Tl11;

        public static Tl Tl12;
    }
}