namespace GurpsDb.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _4m : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Armour", "UiIndex", "dbo.Item");
            DropForeignKey("dbo.GAvAttachClass", "IdAttach", "dbo.Attachment");
            DropForeignKey("dbo.Attachment", "UiIndex", "dbo.Item");
            DropForeignKey("dbo.Item", "UbCalibre", "dbo.Caliber");
            DropForeignKey("dbo.Explosive", "UiIndex", "dbo.Item");
            DropForeignKey("dbo.LoadBearingEquipment", "LbeIndex", "dbo.Item");
            DropIndex("dbo.Item", new[] { "UbCalibre" });
            DropIndex("dbo.Drug", new[] { "Id" });
            DropIndex("dbo.LoadBearingEquipment", new[] { "LbeIndex" });
            RenameColumn(table: "dbo.Drug", name: "Id", newName: "Item_UiIndex");
            DropPrimaryKey("dbo.Drug");
            AddColumn("dbo.Item", "HaveFingerPrintId", c => c.Boolean(nullable: false));
            AddColumn("dbo.Item", "Caliber_Id", c => c.Int());
            AddColumn("dbo.Armour", "Item_UiIndex", c => c.Int());
            AddColumn("dbo.Attachment", "Item_UiIndex", c => c.Int());
            AddColumn("dbo.Drug", "UiIndex", c => c.Int(nullable: false));
            AddColumn("dbo.Explosive", "Item_UiIndex", c => c.Int());
            AddColumn("dbo.LoadBearingEquipment", "Item_UiIndex", c => c.Int());
            AlterColumn("dbo.Item", "LockPickModifier", c => c.Decimal(precision: 18, scale: 2));
            AlterColumn("dbo.Item", "CrowbarModifier", c => c.Decimal(precision: 18, scale: 2));
            AlterColumn("dbo.Item", "DisarmModifier", c => c.Decimal(precision: 18, scale: 2));
            AlterColumn("dbo.Item", "RepairModifier", c => c.Decimal(precision: 18, scale: 2));
            AlterColumn("dbo.Item", "DamageChance", c => c.Decimal(precision: 18, scale: 2));
            AlterColumn("dbo.Drug", "Item_UiIndex", c => c.Int());
            AddPrimaryKey("dbo.Drug", "UiIndex");
            CreateIndex("dbo.Item", "Caliber_Id");
            CreateIndex("dbo.LoadBearingEquipment", "Item_UiIndex");
            CreateIndex("dbo.Armour", "Item_UiIndex");
            CreateIndex("dbo.Attachment", "Item_UiIndex");
            CreateIndex("dbo.Drug", "UiIndex");
            CreateIndex("dbo.Drug", "Item_UiIndex");
            CreateIndex("dbo.Explosive", "Item_UiIndex");
            AddForeignKey("dbo.Armour", "UiIndex", "dbo.Item", "UiIndex");
            AddForeignKey("dbo.Attachment", "UiIndex", "dbo.Item", "UiIndex");
            AddForeignKey("dbo.Drug", "UiIndex", "dbo.Item", "UiIndex");
            AddForeignKey("dbo.Explosive", "UiIndex", "dbo.Item", "UiIndex");
            AddForeignKey("dbo.Armour", "Item_UiIndex", "dbo.Item", "UiIndex");
            AddForeignKey("dbo.GAvAttachClass", "IdAttach", "dbo.Attachment", "UiIndex");
            AddForeignKey("dbo.Attachment", "Item_UiIndex", "dbo.Item", "UiIndex");
            AddForeignKey("dbo.Item", "Caliber_Id", "dbo.Caliber", "Id");
            AddForeignKey("dbo.Explosive", "Item_UiIndex", "dbo.Item", "UiIndex");
            AddForeignKey("dbo.LoadBearingEquipment", "Item_UiIndex", "dbo.Item", "UiIndex");
            DropColumn("dbo.Item", "RemoteTrigger");
            DropColumn("dbo.Item", "GasMask");
            DropColumn("dbo.Item", "Alcohol");
            DropColumn("dbo.Item", "Hardware");
            DropColumn("dbo.Item", "Medical");
            DropColumn("dbo.Item", "CamouflageKit");
            DropColumn("dbo.Item", "LocksmithKit");
            DropColumn("dbo.Item", "Toolkit");
            DropColumn("dbo.Item", "FirstAidKit");
            DropColumn("dbo.Item", "MedicalKit");
            DropColumn("dbo.Item", "WireCutters");
            DropColumn("dbo.Item", "Canteen");
            DropColumn("dbo.Item", "GasCan");
            DropColumn("dbo.Item", "Batteries");
            DropColumn("dbo.Item", "ContainsLiquid");
            DropColumn("dbo.Item", "MetalDetector");
            DropColumn("dbo.Item", "FingerPrintId");
            DropColumn("dbo.Item", "TripWireActivation");
            DropColumn("dbo.Item", "TripWire");
            DropColumn("dbo.Item", "Mount");
            DropColumn("dbo.Attachment", "SzAttName");
            DropColumn("dbo.Drug", "Name");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Drug", "Name", c => c.String(maxLength: 255));
            AddColumn("dbo.Attachment", "SzAttName", c => c.String(nullable: false, maxLength: 80));
            AddColumn("dbo.Item", "Mount", c => c.Boolean(nullable: false));
            AddColumn("dbo.Item", "TripWire", c => c.Boolean(nullable: false));
            AddColumn("dbo.Item", "TripWireActivation", c => c.Boolean(nullable: false));
            AddColumn("dbo.Item", "FingerPrintId", c => c.Boolean(nullable: false));
            AddColumn("dbo.Item", "MetalDetector", c => c.Boolean(nullable: false));
            AddColumn("dbo.Item", "ContainsLiquid", c => c.Boolean(nullable: false));
            AddColumn("dbo.Item", "Batteries", c => c.Boolean(nullable: false));
            AddColumn("dbo.Item", "GasCan", c => c.Boolean(nullable: false));
            AddColumn("dbo.Item", "Canteen", c => c.Boolean(nullable: false));
            AddColumn("dbo.Item", "WireCutters", c => c.Boolean(nullable: false));
            AddColumn("dbo.Item", "MedicalKit", c => c.Boolean(nullable: false));
            AddColumn("dbo.Item", "FirstAidKit", c => c.Boolean(nullable: false));
            AddColumn("dbo.Item", "Toolkit", c => c.Boolean(nullable: false));
            AddColumn("dbo.Item", "LocksmithKit", c => c.Boolean(nullable: false));
            AddColumn("dbo.Item", "CamouflageKit", c => c.Boolean(nullable: false));
            AddColumn("dbo.Item", "Medical", c => c.Boolean(nullable: false));
            AddColumn("dbo.Item", "Hardware", c => c.Boolean(nullable: false));
            AddColumn("dbo.Item", "Alcohol", c => c.Boolean(nullable: false));
            AddColumn("dbo.Item", "GasMask", c => c.Boolean(nullable: false));
            AddColumn("dbo.Item", "RemoteTrigger", c => c.Boolean(nullable: false));
            DropForeignKey("dbo.LoadBearingEquipment", "Item_UiIndex", "dbo.Item");
            DropForeignKey("dbo.Explosive", "Item_UiIndex", "dbo.Item");
            DropForeignKey("dbo.Item", "Caliber_Id", "dbo.Caliber");
            DropForeignKey("dbo.Attachment", "Item_UiIndex", "dbo.Item");
            DropForeignKey("dbo.GAvAttachClass", "IdAttach", "dbo.Attachment");
            DropForeignKey("dbo.Armour", "Item_UiIndex", "dbo.Item");
            DropForeignKey("dbo.Explosive", "UiIndex", "dbo.Item");
            DropForeignKey("dbo.Drug", "UiIndex", "dbo.Item");
            DropForeignKey("dbo.Attachment", "UiIndex", "dbo.Item");
            DropForeignKey("dbo.Armour", "UiIndex", "dbo.Item");
            DropIndex("dbo.Explosive", new[] { "Item_UiIndex" });
            DropIndex("dbo.Drug", new[] { "Item_UiIndex" });
            DropIndex("dbo.Drug", new[] { "UiIndex" });
            DropIndex("dbo.Attachment", new[] { "Item_UiIndex" });
            DropIndex("dbo.Armour", new[] { "Item_UiIndex" });
            DropIndex("dbo.LoadBearingEquipment", new[] { "Item_UiIndex" });
            DropIndex("dbo.Item", new[] { "Caliber_Id" });
            DropPrimaryKey("dbo.Drug");
            AlterColumn("dbo.Drug", "Item_UiIndex", c => c.Int(nullable: false));
            AlterColumn("dbo.Item", "DamageChance", c => c.Int(nullable: false));
            AlterColumn("dbo.Item", "RepairModifier", c => c.Int(nullable: false));
            AlterColumn("dbo.Item", "DisarmModifier", c => c.Int(nullable: false));
            AlterColumn("dbo.Item", "CrowbarModifier", c => c.Int(nullable: false));
            AlterColumn("dbo.Item", "LockPickModifier", c => c.Int(nullable: false));
            DropColumn("dbo.LoadBearingEquipment", "Item_UiIndex");
            DropColumn("dbo.Explosive", "Item_UiIndex");
            DropColumn("dbo.Drug", "UiIndex");
            DropColumn("dbo.Attachment", "Item_UiIndex");
            DropColumn("dbo.Armour", "Item_UiIndex");
            DropColumn("dbo.Item", "Caliber_Id");
            DropColumn("dbo.Item", "HaveFingerPrintId");
            AddPrimaryKey("dbo.Drug", "Id");
            RenameColumn(table: "dbo.Drug", name: "Item_UiIndex", newName: "Id");
            CreateIndex("dbo.LoadBearingEquipment", "LbeIndex");
            CreateIndex("dbo.Drug", "Id");
            CreateIndex("dbo.Item", "UbCalibre");
            AddForeignKey("dbo.LoadBearingEquipment", "LbeIndex", "dbo.Item", "UiIndex", cascadeDelete: true);
            AddForeignKey("dbo.Explosive", "UiIndex", "dbo.Item", "UiIndex", cascadeDelete: true);
            AddForeignKey("dbo.Item", "UbCalibre", "dbo.Caliber", "Id");
            AddForeignKey("dbo.Attachment", "UiIndex", "dbo.Item", "UiIndex", cascadeDelete: true);
            AddForeignKey("dbo.GAvAttachClass", "IdAttach", "dbo.Attachment", "UiIndex", cascadeDelete: true);
            AddForeignKey("dbo.Armour", "UiIndex", "dbo.Item", "UiIndex", cascadeDelete: true);
        }
    }
}
