using System;

namespace Item_WPF.addin
{

    /// <summary>
    /// Some Dice Class 
    /// </summary>
    public class Dice
    {
        /// <summary>
        /// функция бросателя
        /// </summary>
        /// <param name="numDice">количество кубиков</param>
        /// <param name="dice">число сторон</param>
        /// <returns></returns>
        public static int RollDie(int numDice, int dice)
        {
            int roll;
            int total = 0;
            Random rand = new Random();
            string Dice = "";
            for (int i = 1; i < (numDice) + 1; i++)
            {
                roll = (rand.Next(1, (dice + 1)));
                total += roll;
                Dice += roll + "\r\n";
            }
            Dice += total.ToString();
            return total;
        }

    }
}