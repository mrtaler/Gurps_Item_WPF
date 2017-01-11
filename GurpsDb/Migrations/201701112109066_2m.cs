namespace GurpsDb.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _2m : DbMigration
    {
        public override void Up()
        {
            DropIndex("dbo.Item", new[] { "FoodType" });
            DropIndex("dbo.Item", new[] { "Clothestype" });
            RenameColumn(table: "dbo.Item", name: "Clothestype", newName: "Clothes_Id");
            RenameColumn(table: "dbo.Item", name: "FoodType", newName: "Food_Id");
            AlterColumn("dbo.Item", "Food_Id", c => c.Int());
            AlterColumn("dbo.Item", "Clothes_Id", c => c.Int());
            CreateIndex("dbo.Item", "Clothes_Id");
            CreateIndex("dbo.Item", "Food_Id");
            DropColumn("dbo.Item", "DrugType");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Item", "DrugType", c => c.Int(nullable: false));
            DropIndex("dbo.Item", new[] { "Food_Id" });
            DropIndex("dbo.Item", new[] { "Clothes_Id" });
            AlterColumn("dbo.Item", "Clothes_Id", c => c.Int(nullable: false));
            AlterColumn("dbo.Item", "Food_Id", c => c.Int(nullable: false));
            RenameColumn(table: "dbo.Item", name: "Food_Id", newName: "FoodType");
            RenameColumn(table: "dbo.Item", name: "Clothes_Id", newName: "Clothestype");
            CreateIndex("dbo.Item", "Clothestype");
            CreateIndex("dbo.Item", "FoodType");
        }
    }
}
