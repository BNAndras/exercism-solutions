public static class Darts
{
    private static readonly IReadOnlyList<(Func<double, bool> Rule, int Score)> StandardRules =
    [
        
        (d => d <= 1, 10),
        (d => d <= 5,  5),
        (d => d <= 10, 1)
    ];
    
    public static int Score(double x, double y, IReadOnlyList<(Func<double, bool> Rule, int Score)>? rules = null)
    {
        double distance = Math.Sqrt(x * x + y * y);
        return (rules ?? StandardRules)
            .FirstOrDefault(rule => rule.Rule(distance))
            .Score;     
    }
}