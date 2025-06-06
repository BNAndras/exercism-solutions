using System;

public class Player
{
    private static Random Rand => new Random();
    
    public int RollDie() =>
        Rand.Next(1, 19);

    public double GenerateSpellStrength() =>
        Rand.NextDouble() * 100;
}
