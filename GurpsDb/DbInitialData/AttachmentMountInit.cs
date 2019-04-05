namespace GurpsDb.DbInitialData
{
    using GurpsDb.GurpsModel;

    public static class AttachmentMountInit
    {
        static AttachmentMountInit()
        {
            AKScope = new AttachmentMount("AK", AttachmentSlotInit.ScopeAttachmentSlot);
            M16A1A2Scope = new AttachmentMount("M16A1A2", AttachmentSlotInit.ScopeAttachmentSlot);
            M16A3Scope = new AttachmentMount("M16A3", AttachmentSlotInit.ScopeAttachmentSlot);
            MINI14Scope = new AttachmentMount("MINI14", AttachmentSlotInit.ScopeAttachmentSlot);
            HKG36Scope = new AttachmentMount("HK G36", AttachmentSlotInit.ScopeAttachmentSlot);
            GALILScope = new AttachmentMount("GALIL", AttachmentSlotInit.ScopeAttachmentSlot);
            M14Scope = new AttachmentMount("M14", AttachmentSlotInit.ScopeAttachmentSlot);
            SCOUTScope = new AttachmentMount("SCOUT", AttachmentSlotInit.ScopeAttachmentSlot);
            SIG551Scope = new AttachmentMount("SIG551", AttachmentSlotInit.ScopeAttachmentSlot);
            WRScope = new AttachmentMount("WR", AttachmentSlotInit.ScopeAttachmentSlot);
            HKMP5Scope = new AttachmentMount("HK MP5", AttachmentSlotInit.ScopeAttachmentSlot);
            BUILTINScope = new AttachmentMount("built-in", AttachmentSlotInit.ScopeAttachmentSlot);
            SA80Scope = new AttachmentMount("SA80", AttachmentSlotInit.ScopeAttachmentSlot);
            SVDScope = new AttachmentMount("SVD", AttachmentSlotInit.ScopeAttachmentSlot);
            L96A1Scope = new AttachmentMount("L96A1", AttachmentSlotInit.ScopeAttachmentSlot);
            M24Scope = new AttachmentMount("M24", AttachmentSlotInit.ScopeAttachmentSlot);
            SIGScope = new AttachmentMount("SIG", AttachmentSlotInit.ScopeAttachmentSlot);
            L85A2Scope = new AttachmentMount("L85A2", AttachmentSlotInit.ScopeAttachmentSlot);
            PSGScope = new AttachmentMount("PSG", AttachmentSlotInit.ScopeAttachmentSlot);
            HKMSG90Scope = new AttachmentMount("HK MSG-90", AttachmentSlotInit.ScopeAttachmentSlot);
            F2000Scope = new AttachmentMount("F2000", AttachmentSlotInit.ScopeAttachmentSlot);
            ZRAKScope = new AttachmentMount("Zrak", AttachmentSlotInit.ScopeAttachmentSlot);
            GROZAScope = new AttachmentMount("Groza", AttachmentSlotInit.ScopeAttachmentSlot);
            MOSINScope = new AttachmentMount("Mosin", AttachmentSlotInit.ScopeAttachmentSlot);
            G11Scope = new AttachmentMount("G11", AttachmentSlotInit.ScopeAttachmentSlot);

            BUILTINLaser = new AttachmentMount("built-in", AttachmentSlotInit.LaserAttachmentSlot);
            WRLaser = new AttachmentMount("WR", AttachmentSlotInit.LaserAttachmentSlot);
            HKLaser = new AttachmentMount("HK", AttachmentSlotInit.LaserAttachmentSlot);
            BarrelMountLaser = new AttachmentMount("Barrel Mount", AttachmentSlotInit.LaserAttachmentSlot);
            F2000Laser = new AttachmentMount("F2000 Laser", AttachmentSlotInit.LaserAttachmentSlot);

            F2000Light = new AttachmentMount("F2000 Light", AttachmentSlotInit.LightAttachmentSlot);
            WRLight = new AttachmentMount("WR", AttachmentSlotInit.LightAttachmentSlot);
            HKLight = new AttachmentMount("HK", AttachmentSlotInit.LightAttachmentSlot);
            BarrelMountLight = new AttachmentMount("Barrel Mount", AttachmentSlotInit.LightAttachmentSlot);


        }



        public static readonly AttachmentMount AKScope;
        public static readonly AttachmentMount M16A1A2Scope;
        public static readonly AttachmentMount M16A3Scope;
        public static readonly AttachmentMount MINI14Scope;
        public static readonly AttachmentMount HKG36Scope;
        public static readonly AttachmentMount GALILScope;
        public static readonly AttachmentMount M14Scope;
        public static readonly AttachmentMount SCOUTScope;
        public static readonly AttachmentMount SIG551Scope;
        public static readonly AttachmentMount WRScope;
        public static readonly AttachmentMount HKMP5Scope;
        public static readonly AttachmentMount BUILTINScope;
        public static readonly AttachmentMount SA80Scope;
        public static readonly AttachmentMount SVDScope;
        public static readonly AttachmentMount L96A1Scope;
        public static readonly AttachmentMount M24Scope;
        public static readonly AttachmentMount SIGScope;
        public static readonly AttachmentMount L85A2Scope;
        public static readonly AttachmentMount PSGScope;
        public static readonly AttachmentMount HKMSG90Scope;
        public static readonly AttachmentMount F2000Scope;
        public static readonly AttachmentMount ZRAKScope;
        public static readonly AttachmentMount GROZAScope;
        public static readonly AttachmentMount G11Scope;
        public static readonly AttachmentMount MOSINScope;

        public static readonly AttachmentMount BUILTINLaser;
        public static readonly AttachmentMount WRLaser;
        public static readonly AttachmentMount HKLaser;
        public static readonly AttachmentMount BarrelMountLaser;
        public static readonly AttachmentMount F2000Laser;

        public static readonly AttachmentMount F2000Light;
        public static readonly AttachmentMount WRLight;
        public static readonly AttachmentMount HKLight;
        public static readonly AttachmentMount BarrelMountLight;
    }
}