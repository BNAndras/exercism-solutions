public static class ResistorColorDuo
{
    public static int Value(string[] colors)
    {
        if (colors is [{ } color1, { } color2, ..])
        {
            return color1.Value() * 10  + color2.Value();
        }

        return 0;
    }
}

public static class StringExtensions
{
    public static int Value(this string color) =>
        color.ToLowerInvariant() switch
        {
            "black" => 0,
            "brown" => 1,
            "red" => 2,
            "orange" => 3,
            "yellow" => 4,
            "green" => 5,
            "blue" => 6,
            "violet" => 7,
            "grey" => 8,
            "white" => 9,
            _ => 0
        };
}
