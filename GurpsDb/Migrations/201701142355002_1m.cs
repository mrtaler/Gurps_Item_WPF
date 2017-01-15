namespace GurpsDb.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _1m : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Item", "Clothes_Id", "dbo.Clothes");
            DropForeignKey("dbo.Item", "Food_Id", "dbo.Food");
            DropIndex("dbo.Item", new[] { "Clothes_Id" });
            DropIndex("dbo.Item", new[] { "Food_Id" });
            DropColumn("dbo.Item", "Clothes_Id");
            DropColumn("dbo.Item", "Food_Id");
            DropTable("dbo.Clothes");
            DropTable("dbo.Food");
        }
        
        public override void Down()
        {
            CreateTable(
                "dbo.Food",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.Clothes",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(maxLength: 255),
                    })
                .PrimaryKey(t => t.Id);
            
            AddColumn("dbo.Item", "Food_Id", c => c.Int());
            AddColumn("dbo.Item", "Clothes_Id", c => c.Int());
            CreateIndex("dbo.Item", "Food_Id");
            CreateIndex("dbo.Item", "Clothes_Id");
            AddForeignKey("dbo.Item", "Food_Id", "dbo.Food", "Id");
            AddForeignKey("dbo.Item", "Clothes_Id", "dbo.Clothes", "Id");
        }
    }
}
