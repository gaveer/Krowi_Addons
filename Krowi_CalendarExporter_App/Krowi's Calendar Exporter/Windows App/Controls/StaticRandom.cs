using System;
using System.Threading;

namespace Windows_App.Controls
{
    public static class StaticRandom
    {
        private static Random rnd = new Random();

        public static int GetRandom(int min, int max)
        {
            return rnd.Next(min, max);
        }
    }
}