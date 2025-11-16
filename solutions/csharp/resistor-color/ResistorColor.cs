public static class ResistorColor
{
    public static int ColorCode(string color) =>
        ColorValues[color];

    public static string[] Colors() => ColorValues.Keys.ToArray();

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