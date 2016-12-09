using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GurpsDb.GurpsModels;

namespace GurpsDb
{
    public class DbInit : DropCreateDatabaseIfModelChanges<GurpsModel>
    {
        protected override void Seed(GurpsModel context)
        {
            //List<CharacterDb> characterDbs = new List<CharacterDb>
            //{
            //    new CharacterDb {Name = "Taler",BasicMovePoints = 2,BasicSpeedPoints = 2.3F,new CharSkill()}
            //};
        }
    }
}
