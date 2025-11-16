public static class ResistorColorDuo
{
    public static int Value(string[] colors) =>
        ColorCode(colors[0]) * 10 + ColorCode(colors[1]);
    
    private static int ColorCode(string color) =>
        ColorValues[color];
    
    private static readonly IReadOnlyDictionary<string, int> ColorValues = new Dictionary<string, int>
    {
        {"black",  0},
        {"brown",  1},
        {"red",    2},
        {"orange", 3},
        {"yellow", 4},
        {"green",  5},
        {"blue",   6},
        {"violet", 7},
        {"grey",   8},
        {"white",  9}
    };
}
