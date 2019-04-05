namespace GurpsDb.DbInitialData
{
    using GurpsDb.GurpsModel;

    public static class AttachmentSlotInit
    {
        static AttachmentSlotInit()
        {
            ScopeAttachmentSlot = new AttachmentSlot("Scope Attachments");
            LaserAttachmentSlot = new AttachmentSlot("Laser Attachments");
            LightAttachmentSlot = new AttachmentSlot("Light Attachments");
            BipodAttachmentSlot = new AttachmentSlot("Bipod Attachments");
            SilenserAttachmentSlot = new AttachmentSlot("Silenser Attachments");
            LauncherAttachmentSlot = new AttachmentSlot("Launcher Attachments");
            StockAttachmentSlot = new AttachmentSlot("Stock Attachments");
            BayonetAttachmentSlot = new AttachmentSlot("Bayonet Attachments");
            MagazineAttachmentSlot = new AttachmentSlot("Magazine Attachments");
            InternalAttachmentSlot = new AttachmentSlot("Internal Attachments");
            ExternalAttachmentSlot = new AttachmentSlot("External Attachments");
            RifleGrenadeAttachmentSlot = new AttachmentSlot("Rifle Grenade");
            RocketLauncherAttachmentSlot = new AttachmentSlot("Rocket Launcher Slot");
        }


        public static readonly AttachmentSlot ScopeAttachmentSlot;

        public static readonly AttachmentSlot LaserAttachmentSlot;

        public static readonly AttachmentSlot LightAttachmentSlot;

        public static readonly AttachmentSlot BipodAttachmentSlot;

        public static readonly AttachmentSlot SilenserAttachmentSlot;

        public static readonly AttachmentSlot LauncherAttachmentSlot;

        public static readonly AttachmentSlot StockAttachmentSlot;

        public static readonly AttachmentSlot BayonetAttachmentSlot;

        public static readonly AttachmentSlot MagazineAttachmentSlot;

        public static readonly AttachmentSlot InternalAttachmentSlot;

        public static readonly AttachmentSlot ExternalAttachmentSlot;

        public static readonly AttachmentSlot RifleGrenadeAttachmentSlot;

        public static readonly AttachmentSlot RocketLauncherAttachmentSlot;


    }
}