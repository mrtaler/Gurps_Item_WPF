using System.Data.Entity;
using GurpsDb.GurpsModel;

namespace GurpsDb
{
    public class DbInit : DropCreateDatabaseIfModelChanges<ContextGurpsModel>
    {
        protected override void Seed(ContextGurpsModel context)
        {
            context.CharacterDbDbSet.Add(
            new CharacterDb
            {
                Name = "Taler",
                StrengthPoints = 1,
                DexterityPoints = 1,
                IntelligencePoints = 1,
                HealthPoints = 1,
                MaxHPPoints = 1,
                MaxFPPoints = 1,
                PerceptionPoints = 1,
                WillpowerPoints = 1,
                BasicSpeedPoints = 1,
                BasicMovePoints = 1
            });

            context.SaveChanges();
            base.Seed(context);
            //List<CharacterDb> characterDbs = new List<CharacterDb>
            //{
            //    new CharacterDb {Name = "Taler",BasicMovePoints = 2,BasicSpeedPoints = 2.3F,new CharSkill()}
            //};
        }
    }
}
