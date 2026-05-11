public static class Darts
{
    private static readonly List<(Func<double, bool> Rule, int Score)> Rules =
    [
        (dist => dist <= 1,  10),
        (dist => dist <= 5,  5),
        (dist => dist <= 10, 1),
    ];
    
    public static int Score(double x, double y)
    {
        var dist = Math.Sqrt(x * x + y * y);;
        return Rules
            .FirstOrDefault(r => r.Rule(dist))
            .Score;
    }
}
