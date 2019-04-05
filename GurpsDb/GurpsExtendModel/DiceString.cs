using System.Diagnostics;

namespace GurpsDb.GurpsExtendModel
{
    public class DiceString
    {
        public int Count { get; private set; }
        public int Modifier { get; private set; }

        public DiceString(int count, int modifier = 0)
        {
            Debug.Assert(count > 0);

            this.Count = count;
            this.Modifier = modifier;
        }

        public override string ToString()
        {
            if (this.Modifier > 0)
                return this.Count.ToString() + "d+" + this.Modifier.ToString();
            if (this.Modifier < 0)
                return this.Count.ToString() + "d-" + (-this.Modifier).ToString();

            Debug.Assert(this.Modifier == 0);
            return this.Count.ToString() + "d";
        }
    }
}
