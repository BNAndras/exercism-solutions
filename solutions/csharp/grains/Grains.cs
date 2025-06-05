public static class Grains
{
    public static ulong Square(int n)
    {
        if (n is < 1 or > 64)
            throw new ArgumentOutOfRangeException(nameof(n));

        return (ulong) Math.Pow(2, n - 1);
    }

    public static ulong Total() =>
        (ulong) Math.Pow(2, 64);
}