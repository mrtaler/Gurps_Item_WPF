namespace GurpsDb.Migrations
{
    using System;
    using System.Data.Entity.Migrations;

    public partial class _1Migrations : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.AttachmentMount", "IdAttacClass", "dbo.AttachmentSlot");
            DropForeignKey("dbo.GSubAttachClass", "Attachmentslot", "dbo.AttachmentSlot");
            DropPrimaryKey("dbo.AttachmentSlot");
            DropColumn("dbo.AttachmentSlot", "UiSlotIndex");
            AddColumn("dbo.AttachmentSlot", "Id", c => c.Int(nullable: false, identity: true));
            AddColumn("dbo.AttachmentSlot", "AttachmentSlotName", c => c.String(nullable: false, maxLength: 50));
            AlterColumn("dbo.Tl", "StartMoney", c => c.Decimal(nullable: false, precision: 19, scale: 4));
            AddPrimaryKey("dbo.AttachmentSlot", "Id");
            AddForeignKey("dbo.AttachmentMount", "IdAttacClass", "dbo.AttachmentSlot", "Id");
            AddForeignKey("dbo.GSubAttachClass", "Attachmentslot", "dbo.AttachmentSlot", "Id");
            DropColumn("dbo.AttachmentSlot", "SzSlotName");
        }

        public override void Down()
        {
            AddColumn("dbo.AttachmentSlot", "SzSlotName", c => c.String(nullable: false, maxLength: 50));
            AddColumn("dbo.AttachmentSlot", "UiSlotIndex", c => c.Int(nullable: false, identity: true));
            DropForeignKey("dbo.GSubAttachClass", "Attachmentslot", "dbo.AttachmentSlot");
            DropForeignKey("dbo.AttachmentMount", "IdAttacClass", "dbo.AttachmentSlot");
            DropPrimaryKey("dbo.AttachmentSlot");
            AlterColumn("dbo.Tl", "StartMoney", c => c.Decimal(precision: 19, scale: 4));
            DropColumn("dbo.AttachmentSlot", "AttachmentSlotName");
            DropColumn("dbo.AttachmentSlot", "Id");
            AddPrimaryKey("dbo.AttachmentSlot", "UiSlotIndex");
            AddForeignKey("dbo.GSubAttachClass", "Attachmentslot", "dbo.AttachmentSlot", "UiSlotIndex");
            AddForeignKey("dbo.AttachmentMount", "IdAttacClass", "dbo.AttachmentSlot", "UiSlotIndex");
        }
    }
}
