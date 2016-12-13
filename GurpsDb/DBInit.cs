using System.Data.Entity;
using GurpsDb.GurpsModel;

namespace GurpsDb
{
    public class DbInit : DropCreateDatabaseIfModelChanges<ContextGurpsModel>
    {
        protected override void Seed(ContextGurpsModel context)
        {
            //List<CharacterDb> characterDbs = new List<CharacterDb>
            //{
            //    new CharacterDb {Name = "Taler",BasicMovePoints = 2,BasicSpeedPoints = 2.3F,new CharSkill()}
            //};
        }
    }
}
