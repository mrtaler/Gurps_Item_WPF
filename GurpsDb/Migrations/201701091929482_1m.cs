namespace GurpsDb.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _1m : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.WeaponDamage", "IdWeapon", "dbo.Weapon");
            DropForeignKey("dbo.Weapon", "UiIndex", "dbo.Item");
            AddForeignKey("dbo.WeaponDamage", "IdWeapon", "dbo.Weapon", "UiIndex");
            AddForeignKey("dbo.Weapon", "UiIndex", "dbo.Item", "UiIndex");
            DropColumn("dbo.Weapon", "SzWeaponName");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Weapon", "SzWeaponName", c => c.String(nullable: false, maxLength: 80));
            DropForeignKey("dbo.Weapon", "UiIndex", "dbo.Item");
            DropForeignKey("dbo.WeaponDamage", "IdWeapon", "dbo.Weapon");
            AddForeignKey("dbo.Weapon", "UiIndex", "dbo.Item", "UiIndex", cascadeDelete: true);
            AddForeignKey("dbo.WeaponDamage", "IdWeapon", "dbo.Weapon", "UiIndex", cascadeDelete: true);
        }
    }
}
