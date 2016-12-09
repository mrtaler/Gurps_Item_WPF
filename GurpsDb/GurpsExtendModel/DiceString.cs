﻿using System.Diagnostics;

namespace GurpsDb.GurpsExtendModel
{
    public class DiceString
    {
        public int Count { get; private set; }
        public int Modifier { get; private set; }

        public DiceString(int count, int modifier = 0)
        {
            Debug.Assert(count > 0);

            Count = count;
            Modifier = modifier;
        }

        public override string ToString()
        {
            if (Modifier > 0)
                return Count.ToString() + "d+" + Modifier.ToString();
            if (Modifier < 0)
                return Count.ToString() + "d-" + (-Modifier).ToString();

            Debug.Assert(Modifier == 0);
            return Count.ToString() + "d";
        }
    }
}
