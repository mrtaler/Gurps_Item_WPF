namespace GurpsDb.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _2m : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Clothes",
                c => new
                    {
                        UiIndex = c.Int(nullable: false),
                        ComfortTemperature = c.String(maxLength: 255),
                        Wearout = c.String(),
                    })
                .PrimaryKey(t => t.UiIndex)
                .ForeignKey("dbo.Item", t => t.UiIndex)
                .Index(t => t.UiIndex);
            
            CreateTable(
                "dbo.Drug",
                c => new
                    {
                        UiIndex = c.Int(nullable: false),
                        Type = c.String(),
                        Wearout = c.String(),
                        Addict = c.String(),
                    })
                .PrimaryKey(t => t.UiIndex)
                .ForeignKey("dbo.Item", t => t.UiIndex)
                .Index(t => t.UiIndex);
            
            CreateTable(
                "dbo.Food",
                c => new
                    {
                        UiIndex = c.Int(nullable: false),
                        GetEnergy = c.String(maxLength: 50),
                        StorageLife = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.UiIndex)
                .ForeignKey("dbo.Item", t => t.UiIndex)
                .Index(t => t.UiIndex);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Food", "UiIndex", "dbo.Item");
            DropForeignKey("dbo.Drug", "UiIndex", "dbo.Item");
            DropForeignKey("dbo.Clothes", "UiIndex", "dbo.Item");
            DropIndex("dbo.Food", new[] { "UiIndex" });
            DropIndex("dbo.Drug", new[] { "UiIndex" });
            DropIndex("dbo.Clothes", new[] { "UiIndex" });
            DropTable("dbo.Food");
            DropTable("dbo.Drug");
            DropTable("dbo.Clothes");
        }
    }
}
