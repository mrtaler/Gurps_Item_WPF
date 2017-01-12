namespace GurpsDb.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _3m : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Item", "UbWeight", c => c.Decimal(nullable: false, precision: 19, scale: 4));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Item", "UbWeight", c => c.Decimal(nullable: false, precision: 7, scale: 3));
        }
    }
}
