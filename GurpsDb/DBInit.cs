using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using GurpsDb.GurpsModel;

namespace GurpsDb
{
    public class DbInit : DropCreateDatabaseIfModelChanges<ContextGurpsModel>
    {
        protected override void Seed(ContextGurpsModel context)
        {
            
        }
    }
}
