public class Player
{
    private static readonly Random Rnd = new();
    public int RollDie() =>
        Rnd.Next(1, 10);

    public double GenerateSpellStrength() =>
        Rnd.NextDouble() * 100;
}
