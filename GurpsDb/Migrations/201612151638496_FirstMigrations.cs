namespace GurpsDb.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class FirstMigrations : DbMigration
    {
        public override void Up()
        {
            AddColumn("CharDB.GurpsCategory", "NameCategory", c => c.String(maxLength: 50));
            DropColumn("CharDB.GurpsCategory", "NamelCategory");
        }
        
        public override void Down()
        {
            AddColumn("CharDB.GurpsCategory", "NamelCategory", c => c.String(maxLength: 50));
            DropColumn("CharDB.GurpsCategory", "NameCategory");
        }
    }
}
