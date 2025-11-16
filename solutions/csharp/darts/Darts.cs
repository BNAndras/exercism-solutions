
public static class Darts
{
    private static readonly List<(double MaxRadiusSquared, int Points)> Rules = new()
    {
        (1, 10),        // inner circle
        (25, 5),        // middle circle
        (100, 1)        // outer circle
    };
    
    public static int Score(double x, double y)
    {
        double distSquared = x * x + y * y;
        return Rules.FirstOrDefault(r => distSquared <= r.MaxRadiusSquared).Points;   
    }
}